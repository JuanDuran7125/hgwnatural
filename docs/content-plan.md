# Plan de contenido — HGW LATAM
**Fecha:** 2026-09-30 · **Estado:** PROPUESTA — pendiente de aprobación
**Principio:** menos contenido + más autoridad. **No se crea URL sin demanda o evidencia.**

---

## FASE A — Habilitar medición (semana 1) · BLOQUEANTE de todo lo demás

| # | Tarea | Requiere del dueño | Prioridad |
|---|-------|-------------------|-----------|
| A1 | Activar GA4 (pegar ID en `assets/js/analytics-config.js`) | **ID de medición G-XXXX** | 🔴 1 |
| A2 | Verificar propiedad en Google Search Console | Acceso DNS o TXT | 🔴 1 |
| A3 | Activar "Always Use HTTPS" en Cloudflare | Acceso Cloudflare | 🔴 1 |
| A4 | Enviar sitemap (25 URLs) en GSC | — | 🔴 1 |
| A5 | Solicitar indexación de URLs clave | — | 🟠 2 |

> **Sin A1–A4 el resto del plan se ejecuta a ciegas.** El brief §25 lo exige como base.

---

## FASE B — Saneamiento (semanas 1–2) · RIESGO LEGAL

| # | Tarea | Archivos | Impacto |
|---|-------|----------|---------|
| B1 | **Eliminar "productos que se venden solos"** | index, oportunidad, faq, testimonios | 🔴 Legal |
| B2 | **Eliminar "sin inversión, sin riesgos"** | oportunidad-colombia, ciudad/oportunidad | 🔴 Legal |
| B3 | **Reescribir H1 "libertad financiera"** | 3 páginas de oportunidad | 🔴 Legal |
| B4 | Reescribir "desintoxicar la piel" / "regeneración de la rodopsina" | blog/piel, dulces | 🔴 Salud |
| B5 | Resolver "300+ patentes" / "40+ países" / "30 años" | 20+ páginas | 🟠 Fuente |
| B6 | Crear política de privacidad + aviso de cookies | nueva página | 🟠 Confianza |
| B7 | Diferenciar 7 páginas de ciudad duplicadas | ciudad/* | 🟠 SEO |

---

## FASE C — Arquitectura LATAM (semanas 3–6)

| # | Página | Palabras objetivo | Contenido único requerido |
|---|--------|------------------|---------------------------|
| C1 | `/paises/` — HGW en Latinoamérica | 900 | 12 mercados clase A, cómo verificar disponibilidad |
| C2 | `/paises/colombia/` | 1.200 | Mercado base: ciudad, envío, WhatsApp local |
| C3 | `/paises/peru/` | 1.000 | Mercado validado; moneda PEN |
| C4 | `/paises/mexico/` | 1.000 | COFEPRIS; referencia a healthgreenworld.com.mx |
| C5 | `/paises/ecuador/` | 800 | ARCSA |
| C6 | `/paises/bolivia/` | 800 | AGEMED/SENASAG |
| C7 | `/paises/chile/` | 800 | ISP |
| C8 | `/paises/panama/` | 700 | MINSA |
| C9 | `/paises/costa-rica/` | 700 | Min. Salud |
| C10 | `/paises/guatemala/` | 700 | MSPAS/DRCPFA |
| C11 | `/paises/el-salvador/` | 700 | DNM |
| C12 | `/paises/paraguay/` | 700 | DINAVISA |
| C13 | `/paises/republica-dominicana/` | 700 | DIGEMAPS |

**Regla anti-duplicado:** cada página país debe tener **≤ 40% de solape** con cualquier otra. El modelo es `productos-medellin` (43%). Si no se puede lograr contenido único → **no se crea la página**.

---

## FASE D — Productos globales (semanas 4–8)

| # | Página | Cambio |
|---|--------|--------|
| D1 | `/productos/` | Hub: quitar precio colombiano, separar "disponibilidad por país" |
| D2 | `/productos/jabon-de-turmalina/` | Global: características, ingredientes, modo de uso, advertencias |
| D3 | `/productos/toallas-higienicas/` | Idem |
| D4 | `/productos/protectores-diarios/` | Idem |
| D5 | `/productos/crema-dental/` | Idem |
| D6 | `/productos/dulces-de-arandano/` | Idem |
| D7 | `/que-es-hgw/` | Entidad marca — solo datos verificables |
| D8 | `/como-funciona-hgw/` | Modelo de negocio, sin promesas de ingresos |
| D9 | `/como-ser-distribuidor/` | Requisitos, sin cifras no verificadas |

**Bloqueado:** `/investigacion/` → requiere patentes/estudios verificables.

---

## FASE E — AEO / GEO / Schema (semanas 6–8)

| # | Tarea |
|---|-------|
| E1 | Reescribir `/faq/` con formato PREGUNTA → RESPUESTA → EVIDENCIA → FUENTE |
| E2 | Añadir `Organization` + `areaServed` (solo países clase A) |
| E3 | Añadir `AdministrativeArea` en páginas país |
| E4 | Validar **todo** schema con la herramienta oficial de Google |
| E5 | Implementar sugerencia de país (sin bloqueo, sin redirect por IP) |
| E6 | Añadir CTA "SELECCIONAR PAÍS" y "VER SITIO GLOBAL" |
| E7 | Eventos GA4: `country_selected`, `product_view`, `whatsapp_click`, `distributor_click`, `business_opportunity_click`, `purchase_click`, `form_start`, `form_submit` |

---

## FASE F — BLOQUEADO (no ejecutable sin información)

| Tarea | Bloqueada por |
|-------|--------------|
| `/investigacion/` con patentes | Falta número/país/titular de patentes |
| `/evidencia/` con certificaciones | Falta número de certificado |
| Sección "Dra. Deming Li" | Faltan credenciales verificables |
| Cualquier página `/paises/espana/` | Regulación UE (FASE 2) |
| Páginas de Argentina, Uruguay, Honduras, Nicaragua | Sin evidencia de operación |
| Precios por país | Sin confirmación de tarifas locales |
| Registros sanitarios | Sin número verificable |

---

## Cronograma resumido

| Semana | Foco | Entregable |
|--------|------|-----------|
| 1 | FASE A + B1–B4 | Medición activa, frases prohibidas fuera |
| 2 | B5–B7 | Fuentes resueltas, duplicados diferenciados |
| 3–4 | C1–C4 | Hub + 3 países principales |
| 5–6 | C5–C13 | 9 países restantes |
| 7–8 | FASE D + E | Productos globales, AEO, schema |

---

## Criterio de éxito (brief §33)

✅ Google entiende HGW, sus productos y cada mercado
✅ Los usuarios encuentran información **de su país**
✅ Los motores de IA interpretan correctamente
✅ **Cero claims no sustentados**
✅ Arquitectura preparada para Europa
✅ SEO existente conservado

❌ No se generan páginas basura
❌ No se inventan datos, autorizaciones, beneficios, distribuidores ni resultados económicos
