# Matriz de claims — HGW
**Fecha:** 2026-09-30 · **Método:** barrido automático de 25 páginas + revisión manual
**Hallazgos:** 944 coincidencias clasificadas en 4 categorías

---

## Clasificación

| Categoría | Hallazgos | Estado |
|-----------|-----------|--------|
| `PRODUCTO_FISICO_OK` | 616 | ✅ Aceptable — características físicas, no efectos |
| `AUTORIDAD_SIN_FUENTE` | 306 | ⚠️ `REQUIERE_FUENTE` |
| `TERAPEUTICO` | 12 | 🔴 Requiere revisión |
| `INGRESOS` | 10 | 🔴 **BLOQUEANTE** (frases del §11 del brief) |

---

## 🔴 BLOQUEANTES — frases explícitamente prohibidas por el brief §11

| # | Claim textual | Archivo(s) | Frase prohibida | Acción |
|---|--------------|-----------|-----------------|--------|
| B1 | "**Productos que se venden solos**" | `index.html`, `oportunidad.html`, `preguntas-frecuentes-hgw.html`, `testimonios-hgw.html` | "productos que se venden solos" | **ELIMINAR** |
| B2 | "**Sin inversión, sin riesgos**, con acompañamiento total" | `oportunidad-colombia.html`, `ciudad/oportunidad-hgw-colombia.html` | "negocio sin riesgo" | **ELIMINAR** |
| B3 | "Construye tu **libertad financiera**" (en **H1**) | `oportunidad.html`, `oportunidad-colombia.html`, `ciudad/oportunidad-hgw-colombia.html` | "libertad financiera" | **REESCRIBIR H1** |
| B4 | "Distribuidores en **15+ Ciudades**" (sin fuente) | mismas 3 + index | — | `REQUIERE_FUENTE` |
| B5 | "**40+ países**" | index + varias | §2 "no inventar" | `REQUIERE_FUENTE` |
| B6 | "**300+ patentes**" | index, ciencia-hgw, oportunidad + 20 más | §2 | `REQUIERE_FUENTE` |

> **B1 y B2 son los más graves**: son literalmente frases de la lista de prohibiciones del brief. Están en **producción** ahora mismo.

---

## 🔴 TERAPEUTICOS — requieren reescritura

| # | Claim | Archivo | Problema | Redacción permitida |
|---|-------|---------|----------|---------------------|
| T1 | "ayudando a **desintoxicar la piel** y promoviendo un ambiente celular óptimo" | `blog/beneficios-turmalina-piel` | "desintoxica" (prohibida) | "ayuda a mantener la piel limpia y fresca" |
| T2 | "Las antocianinas del arándano apoyan la **regeneración de la rodopsina**" | `dulces-de-arandano` | "regenera" + claim visual | "los arándanos contienen antioxidantes naturales" |
| T3 | "**Eliminación de bacterias**… Cutibacterium acnes" (resto) | `blog/beneficios-turmalina-piel` | claim antimicrobiano | "remueve impurezas y exceso de grasa" |
| T4 | "Propiedades de la turmalina… **Turmalina y acné**" (encabezado) | `blog/beneficios-turmalina-piel` | "acné" | "piel con tendencia grasa" |
| T5 | "**Brotes de acné** por desequilibrio del pH cutáneo" | `blog/jabon-vs-tradicional` | descripción de problemas del jabón tradicional — aceptable si es sobre el producto *tradicional*, revisar contexto | Mantener, contextualizar |

*Falsos positivos descartados: "No se **trata** solo de vender", "se **trata** de", "**combate**" en sentido figurado.*

---

## ⚠️ AUTORIDAD SIN FUENTE (`REQUIERE_FUENTE`) — 306 coincidencias

| Claim | Frecuencia | Archivos | Estado |
|-------|-----------|----------|--------|
| "300+ patentes" | ~86 | 20+ | `REQUIERE_FUENTE` — sin número de patente, país ni titular |
| "40+ países" | ~112 | index + 15 | `REQUIERE_FUENTE` — la fuente oficial muestra **15 mercados con catálogo** |
| Certificaciones FDA / ISO / GMP / Kosher / Halal | ~38 | ciencia-hgw, index | `REQUIERE_FUENTE` — sin número de certificado |
| "Dra. Deming Li" | ~44 | ciencia-hgw | `REQUIERE_FUENTE` — sin credenciales verificables |
| "30 años" / "26 años" | varias | index, ciencia-hgw | ⚠️ **INCONSISTENTE**: el sitio dice "30 años", fuentes externas dicen "26 años" |

### ⚠️ Inconsistencia detectada (dato duro)
- **hgwnatural.com** afirma: "**30 años** de trayectoria"
- **Frente externo (hgwmundial.com)**: "El grupo HGW Chile cuenta con más de **26 años** de actividades en Europa y Asia"
- **healthgreenworld.com.mx**: "HGW inició operaciones en Latinoamérica durante **2019**; primera oficina comercial en Perú en **marzo 2020**"

**Dos cifras distintas de antigüedad en el mismo ecosistema de marca.** No se puede publicar ninguna sin la fuente corporativa. → `REQUIERE_FUENTE`

---

## ✅ PRODUCTO_FISICO_OK — 616 coincidencias (no requieren acción)

Estos son **características físicas**, no efectos sobre la salud. Son correctos y **deben conservarse**:

| Característica | Por qué es segura |
|---------------|-------------------|
| "Iones negativos" / "aniones" | Propiedad física medible |
| "Turmalina" / "cristales de turmalina" | Composición del producto |
| "Infrarrojo lejano (FIR)" | Rango del espectro electromagnético |
| "Piezoeléctrico / piroeléctrico" | Propiedad física documentada del mineral |
| "Antocianinas", "antioxidantes" | Compuestos presentes de forma natural |

**Regla aplicada:** una **característica** no se convierte en **beneficio médico** sin evidencia. "La turmalina genera iones negativos" (✅ característica) ≠ "los iones negativos curan" (❌ efecto).

---

## Formato obligatorio para claims nuevos

Todo claim publicado debe poder rellenar esta ficha:

| Campo | Descripción |
|-------|-------------|
| **Claim** | Texto exacto |
| **Fuente** | URL / documento |
| **Evidencia** | Tipo: característica física / estudio / certificado |
| **Producto** | SKU afectado |
| **País** | Mercado donde se publica |
| **Nivel de riesgo** | Bajo / Medio / Alto |
| **Redacción permitida** | Texto aprobado |

### Frases **prohibidas** (lista del brief §11)
`cura` · `trata` · `previene` · `elimina enfermedades` · `reemplaza medicamentos` · `desintoxica` · `regenera` · `reduce enfermedades` · `combate enfermedades` · `equilibra hormonas` · `mejora enfermedades` · `garantiza resultados` · `ingresos garantizados` · `libertad financiera garantizada` · `ganancias aseguradas` · `negocio sin riesgo` · `productos que se venden solos`

### Frases **aprobadas** (ya validadas con el dueño)
`ayuda a controlar la grasa` · `más comodidad durante el período` · `complementar un estilo de vida saludable` · `sensación de frescura` · `puede contribuir a` · `algunas personas reportan` · `los resultados pueden variar`
