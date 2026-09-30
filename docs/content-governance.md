# Gobernanza de contenido — HGW
**Fecha:** 2026-09-30 · **Aplica a:** todo contenido nuevo publicado en hgwnatural.com

---

## Regla de oro

> **Ningún contenido de producto o de negocio se publica automáticamente.**
> Todo pasa por los 6 controles. Si uno falla, no se publica.

---

## Los 6 controles

### 1. SEO CHECK
- [ ] Título ≤ 60 caracteres
- [ ] Meta descripción ≤ 160 caracteres
- [ ] Un solo `<h1>` por página
- [ ] Jerarquía H2/H3 coherente
- [ ] URL en minúsculas, con guiones, sin parámetros
- [ ] Enlazado interno: ≥3 enlaces entrantes desde páginas relevantes
- [ ] Sin canibalización con URL existente

### 2. FACT CHECK
- [ ] Cada cifra tiene fuente citada
- [ ] Cada fecha es verificable
- [ ] Cada nombre propio es real y verificable
- [ ] **Si no se puede verificar → marcar `REQUIERE_VERIFICACION` y NO publicar el dato**
- [ ] Sin datos inventados (patentes, certificados, países, años, reviews)

### 3. CLAIM CHECK
- [ ] Ninguna frase de la lista prohibida (§11 del brief)
- [ ] Características físicas ≠ efectos sobre la salud
- [ ] Los claims de bienestar usan lenguaje condicional
- [ ] Ficha de claim completa (ver `claims-matrix.md`)

### 4. REGULATORY CHECK
- [ ] Categoría del producto identificada
- [ ] Autoridad sanitaria del mercado identificada
- [ ] Se cita registro sanitario **solo si existe el número verificable**
- [ ] Sin afirmaciones terapéuticas sin autorización
- [ ] Si el mercado es UE → **BLOQUEADO** (ver `europe-expansion-deferred.md`)

### 5. AI/AEO CHECK
- [ ] Responde una pregunta concreta en el primer párrafo
- [ ] Formato: PREGUNTA → RESPUESTA DIRECTA → EVIDENCIA → EXPLICACIÓN → FUENTE
- [ ] Fecha de actualización visible
- [ ] Datos estructurados válidos (validados con herramienta oficial)

### 6. UX CHECK
- [ ] Legible en móvil (verificado visualmente, no asumido)
- [ ] CTA claro y no engañoso
- [ ] Navegación de retorno clara
- [ ] Imágenes con alt descriptivo (no keyword stuffing)
- [ ] Rendimiento no degradado (Core Web Vitals)

---

## Flujo de publicación

```
RESEARCH → CLASSIFICATION → EVIDENCE → REGULATORY REVIEW
    → CONTENT → SEO → QA → PUBLISH
```

Cualquier paso puede **detener** el flujo. Documentar el motivo.

---

## Estados de contenido

| Estado | Significado | Publicable |
|--------|-------------|-----------|
| `VERIFICADO` | Fuente primaria confirmada | ✅ Sí |
| `REQUIERE_FUENTE` | Afirmación sin respaldo | ❌ No |
| `REQUIERE_VERIFICACION` | Dato dudoso | ❌ No |
| `REQUIERE_REVISION_REGULATORIA` | Posible claim regulado | ❌ No |
| `ELIMINAR` | Infracción (p. ej. review falsa) | ❌ No — retirar |
| `BLOQUEADO_UE` | Mercado europeo | ❌ No |

---

## Reglas específicas HGW

1. **WhatsApp por mercado.** Nunca embeber el número colombiano en una página global.
2. **Precio por mercado.** El precio en COP no se muestra en una página internacional.
3. **Nunca "productos que se venden solos"**, "sin riesgo", "libertad financiera garantizada".
4. **Nunca reviews, ratings, GTIN o SKU inventados.**
5. **Patentes / certificaciones**: solo con número + país + titular + fecha. Sin eso → no se publica.
6. **La antigüedad de la marca está en disputa** (30 años vs 26 años). No publicar hasta resolver.
7. **Actualizar Obsidian tras cada tanda** (preferencia del dueño).

---

## Archivos relacionados

`current-site-audit.md` · `latam-market-matrix.md` · `latam-regulatory-matrix.md` · `claims-matrix.md` · `international-seo-architecture.md` · `international-keywords.csv` · `content-plan.md` · `europe-expansion-deferred.md` · `research-sources.md`
