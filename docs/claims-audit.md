# Claims Audit — HGW Natural (hgwnatural.com)

**Fecha:** 19 sep 2026
**Alcance:** 27 archivos HTML del sitio (sitio estático GitHub Pages + Cloudflare)
**Motivo:** Sitio YMYL (salud/bienestar) + modelo multinivel. Las afirmaciones de salud y de ingresos tienen riesgo regulatorio y de políticas de Google.

## Metodología

Se escaneó el texto visible de las 27 páginas con patrones de: salud/condición, efecto fisiológico, inmunidad, autoridad (patentes/certificaciones/global), profesional, ingresos y testimonios.
Clasificación aplicada:

| Estado | Significado |
|--------|-------------|
| `SAFE` | Afirmación genérica de bienestar, sin promesa de resultado |
| `REQUIERE_FUENTE` | Afirmación concreta (dato/número) sin documento que la respalde |
| `REQUIERE_REVISION_REGULATORIA` | Afirmación de ingresos o salud con riesgo legal |
| `ELIMINAR` | Afirmación inventada o violación de política (reviews falsas) |

> ⚠️ REGLA: nada de esta auditoría se ha "corregido en silencio". Los cambios aplicados se documentan en `changelog.md`. Lo que requiere decisión humana queda marcado.

---

## 1. CRÍTICOS — ELIMINAR / CORREGIR YA

### 1.1 Reviews y rating inventados (VIOLACIÓN DE POLÍTICA DE GOOGLE)

| URL | Claim | Tipo | Estado | Acción |
|-----|-------|------|--------|--------|
| /pages/testimonios-hgw | Schema `AggregateRating` con `ratingValue: 5`, `ratingCount: 24` | Datos estructurados | `ELIMINAR` | Eliminar AggregateRating y los `Review` con nombres concretos (Carolina Pérez, María Rodríguez…) que no tienen fuente verificable. Google penaliza review markup sin reviews reales. |
| /pages/testimonios-hgw | 8 testimonios con nombre, ciudad y resultado | Testimonio | `ELIMINAR` | Los testimonios inventados violan la política de contenido y son riesgo legal. Requieren consentimiento y verificabilidad o deben retirarse. |

**Estado:** APPLIED (ver changelog) — se retiró el `AggregateRating` del schema. Los testimonios visibles quedan marcados para decisión del owner.

### 1.2 Afirmaciones de ingresos (RIESGO REGULATORIO — Superintendencia de Sociedades)

| URL | Claim | Tipo | Estado | Acción |
|-----|-------|------|--------|--------|
| /pages/oportunidad | "Distribuidores de tiempo completo reportan ingresos de $3.000.000 a $10.000.000+ mensuales" | Ingresos | `REQUIERE_REVISION_REGULATORIA` | No publicar cifras de ingresos sin documentación del plan de compensación y disclaimer. La ley colombiana de multinivel exige no presentar ingresos hipotéticos como típicos. |
| /pages/oportunidad | "Si vendes $2.000.000/mes ganas hasta $700.000 solo en venta directa" | Ingresos | `REQUIERE_REVISION_REGULATORIA` | Ejemplo hipotético presentado en tono factual. |
| /pages/oportunidad-colombia | "En 6 meses ya tengo un equipo de 12 personas y mis ingresos superaron los 4 millones mensuales" | Testimonio ingresos | `ELIMINAR` | Testimonio no verificable con cifra de ingresos. |
| /pages/oportunidad-colombia | "Distribuidores activos de tiempo parcial reportan ingresos desde 1 a 3 salarios mínimos mensuales" | Ingresos | `REQUIERE_REVISION_REGULATORIA` | Cifra sin fuente. |
| /pages/ciudad/oportunidad-hgw-colombia | (mismas cifras que oportunidad-colombia) | Ingresos | `REQUIERE_REVISION_REGULATORIA` | Duplicado del anterior. |
| /pages/blog/como-ser-distribuidor-hgw-colombia | "Distribuidores a tiempo parcial reportan ingresos adicionales de $500.000+" | Ingresos | `REQUIERE_REVISION_REGULATORIA` | Cifra sin fuente. |
| / (home) | "Miles de colombianos ya están generando ingresos con HGW" | Ingresos | `REQUIERE_FUENTE` | Afirmación cuantitativa vaga sin respaldo. |
| / (home) | "Ingresos pasivos recurrentes" | Ingresos | `REQUIERE_REVISION_REGULATORIA` | Promesa de ingreso pasivo. |

**Recomendación:** añadir disclaimer obligatorio en todas las páginas de negocio y eliminar cifras concretas no documentadas.

### 1.3 Afirmaciones de autoridad sin fuente (patentes / certificaciones / global)

| Claim | Apariciones | Tipo | Estado | Acción |
|-------|-------------|------|--------|--------|
| "300+ patentes internacionales" | ~86 | Autoridad | `REQUIERE_FUENTE` | Publicar número, país, titular y enlace oficial de cada patente en /evidencia, o reformular como "tecnología desarrollada por Green World Group" sin la cifra. |
| "Certificaciones FDA, ISO, GMP, Kosher, HALAL, CQC" | ~38 | Autoridad | `REQUIERE_FUENTE` | Publicar organismo, número de certificado y alcance. "FDA" suele citarse de forma incorrecta (la FDA no certifica suplementos; registrar como "instalaciones registradas FDA" si aplica). |
| "40+ países" | ~112 | Autoridad | `REQUIERE_FUENTE` | Verificar o reformular. |
| "4 fábricas en USA, Canadá y China" | ~20 | Autoridad | `REQUIERE_FUENTE` | Verificar ubicaciones y certificaciones. |
| "30 años de investigación" | ~30 | Autoridad | `REQUIERE_FUENTE` | Verificar fecha de fundación (se afirma 1994). |

### 1.4 Afirmaciones sobre la Dra. Deming Li

| Claim | Tipo | Estado | Acción |
|-------|------|--------|--------|
| "Dra. Deming Li, Ph.D. Biología, Cornell / Doctorado Wisconsin / Investigadora Michigan / Vicepresidenta Consejo de Salud de Tianjin / Presidenta de Green World Group" | Profesional | `REQUIERE_FUENTE` | Publicar en /dra-deming-li solo con fuentes verificables (perfil institucional, publicaciones, ORCID). Person Schema solo con datos verificados. No afirmar títulos sin documento. |

---

## 2. SALUD — revisar lenguaje

| URL | Claim | Estado | Acción |
|-----|-------|--------|--------|
| /pages/productos-hgw | "equilibran el pH" | `REQUIERE_FUENTE` | Reformular a "ayudan a mantener la sensación de frescura" o aportar fuente. |
| /pages/dulces-de-arandano, /ciencia-hgw, /productos-hgw | "inmunológica", "defensas", "sistema inmune" | `REQUIERE_FUENTE` | Los antioxidantes no "mejoran las defensas". Reformular a "antioxidantes presentes de forma natural". |
| /pages/crema-dental-herbal, /ciencia-hgw, /protectores | "bacterias", "hongos", "antibiótico" | `REQUIERE_REVISION_REGULATORIA` | Afirmaciones antimicrobianas requieren registro sanitario y evidencia. Reformular a lenguaje cosmético/de bienestar. |
| /pages/testimonios-hgw | "mejora notable en la apariencia de mi piel" | `SAFE` | Testimonio de cosmético (apariencia), aceptable si el testimonio es real. |

**Nota:** Las afirmaciones de enfermedad/curación ya fueron retiradas en la sesión anterior (jul 2026). Se verificó que no quedan "cura/trata/previene [enfermedad]".

---

## 3. SAFE — sin acción

- Descripciones de producto centradas en uso y presentación.
- Afirmaciones de bienestar genéricas ("complementar un estilo de vida saludable").
- Precios (son datos comerciales, no claims).
- Información de envíos y pagos.

---

## 4. RESUMEN

| Estado | Nº aprox. |
|--------|-----------|
| `ELIMINAR` | 12 |
| `REQUIERE_REVISION_REGULATORIA` | 14 |
| `REQUIERE_FUENTE` | 290+ |
| `SAFE` | — |

## 5. DECISIONES QUE REQUIEREN AL OWNER

1. ¿Existen documentos de las patentes/certificaciones? Si sí → publicarlos en /evidencia.
2. ¿Los testimonios son reales y con consentimiento? Si no → retirarlos.
3. ¿El plan de compensación tiene documento oficial? → publicar con disclaimer.
4. ¿La Dra. Deming Li tiene perfil verificable? → publicar fuentes.

Mientras no haya documentos, las afirmaciones deben marcarse como no verificadas o reformularse.
