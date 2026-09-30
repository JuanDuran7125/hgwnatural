# Changelog — HGW Natural V2

## 2026-09-19 — Sesión: auditoría + saneamiento (branch feature/hgw-natural-v2)

| Fecha | Cambio | Archivo(s) | Motivo | Resultado |
|-------|--------|-----------|--------|-----------|
| 2026-09-19 | Backup completo del repo | /Documents/hgw-backups/backup_20260919_072606 | Requisito de seguridad del brief | 44 archivos respaldados |
| 2026-09-19 | Creación de branch | feature/hgw-natural-v2 | Trabajo aislado | OK |
| 2026-09-19 | Auditoría técnica (27 archivos) | _audit_inventory.json | Fase 1 | Inventario generado |
| 2026-09-19 | Claims audit | docs/claims-audit.md | YMYL/regulatorio | 12 ELIMINAR, 14 REVISIÓN REG., 290+ REQUIERE FUENTE |
| 2026-09-19 | SEO audit | docs/seo-audit.md | Fase 1 | Documentado (incluye corrección: no es WordPress) |
| 2026-09-19 | Information architecture | docs/information-architecture.md | Fase 2 | Mapa + decisión de no cambiar URLs |
| 2026-09-19 | Keyword strategy | docs/keyword-strategy.md | Fase 2 | 5 clusters |
| 2026-09-19 | Content strategy | docs/content-strategy.md | Fase 2 | Content Quality Gate + bloqueos |
| 2026-09-19 | Redirect map | docs/redirect-map.csv | Fase 3 | 13 aplicados, 2 pendientes |

### Sesiones previas (jul 2026)
| Cambio | Resultado |
|--------|-----------|
| 3 páginas nuevas (productos-hgw, ciencia-hgw, testimonios-hgw) | Publicadas |
| Schema Merchant Listing corregido (image, shipping, validFrom) | 54 offers completos |
| WhatsApp unificado a 3016450378 | OK |
| Afirmaciones de salud suavizadas | OK |
| 12 rutas internas rotas corregidas | 0 rotas |
| Bogotá/Medellín consolidadas | noindex + canonical |
| 6 ciudades diferenciadas (secciones locales) | similitud 61%→49% |
| Hub de recursos (blog/FAQ/ciudades) | +enlaces entrantes |

## 2026-09-19 — Fase 3-5: correcciones de claims aplicadas (branch feature/hgw-natural-v2)

| Cambio | Archivo(s) | Motivo | Resultado |
|--------|-----------|--------|-----------|
| Schema Product+Review+AggregateRating retirado | pages/testimonios-hgw.html | Reviews/ratings inventados = violación de política de Google | Reemplazado por WebPage schema |
| 0 archivos con AggregateRating/Review | todo el sitio | Verificado | ✅ |
| Testimonios con cifras de ingresos reescritos | oportunidad.html, oportunidad-colombia.html, ciudad/oportunidad-hgw-colombia.html, testimonios-hgw.html | Riesgo regulatorio (Superintendencia de Sociedades) | Lenguaje cualitativo |
| Cifras de ingresos concretas retiradas | oportunidad*.html, blog/como-ser-distribuidor | No verificables | Ejemplos ilustrativos sin cifras |
| Aviso de ingresos añadido | 4 páginas de negocio | Obligación de no prometer ingresos | Disclaimer visible |
| Claims antimicrobianos/inmunológicos reformulados | index, ciencia-hgw, crema-dental, dulces, productos-hgw, protectores, blog×2 | YMYL — requieren registro sanitario/evidencia | Lenguaje de bienestar/frescura |
| 0 términos de riesgo | todo el sitio | Verificado | ✅ |

## 2026-09-30 — FASE B + C + D + E (implementación aprobada por el dueño)

### FASE B — Saneamiento legal (BLOQUEANTE)
| Cambio | Alcance | Verificación |
|--------|---------|--------------|
| "productos que se venden solos" eliminado | 7 ocurrencias / 5 archivos | 0 restantes |
| "sin inversión, sin riesgos" eliminado | 2 páginas | 0 restantes |
| "libertad financiera" (H1) reformulado | 4 ocurrencias / 3 páginas | 0 restantes |
| "desintoxicar la piel", "regeneración de la rodopsina" | 5 ocurrencias | 0 restantes |
| "300+ patentes" (121), "40+ países" (40), "30 años" (40) reformulados | ~200 ocurrencias | 0 restantes |
| Certificaciones FDA/ISO/GMP/Kosher/Halal/CQC retiradas | 21+20+20+13+7+1 | 0 restantes |
| "Dra. Deming Li" + credenciales (Ph.D. Cornell) retiradas | 6 ocurrencias | 0 restantes |
| "Dr. Henry Chang" retirado | 2 ocurrencias | 0 restantes |
| **Política de Privacidad** creada | /privacidad (Ley 1581/2012) | nueva |
| **Política de Cookies** creada | /cookies | nueva |
| **Aviso de consentimiento de cookies** | 31 páginas | sin analítica hasta aceptar |
| 2 páginas duplicadas al 99% → redirección | ciudad/productos-hgw-{bogota,medellin} | consolidadas |
| 2 duplicados al 96% → canonical + noindex | oportunidad-colombia, ciudad/oportunidad-hgw-colombia | consolidadas |
| 6 páginas de ciudad diferenciadas | +bloques locales únicos | solape 70%→64% |
| Títulos/metas sobredimensionados corregidos | 5 páginas de ciudad | ≤60 / ≤160 |

### FASE C — Arquitectura LATAM
- **`/paises/`** hub creado (12 mercados clase A verificados en la plataforma oficial).
- **12 páginas país** creadas: colombia, peru, mexico, ecuador, bolivia, chile, panama, costa-rica, guatemala, el-salvador, paraguay, republica-dominicana.
- **Solape de contenido entre páginas país: media 36.1%, 65/66 pares ≤40%** (objetivo del brief cumplido).
- **4 países descartados** por falta de evidencia: Argentina, Uruguay, Honduras, Nicaragua. Venezuela pendiente.
- **España bloqueada** (FASE 2 UE).

### FASE D — Productos globales
- **`/productos/`** hub creado con la separación PRODUCTO ≠ PAÍS exigida por el brief.
- Bloque "Qué afirmamos y qué no" (transparencia de claims).
- Selector de país en el hub.

### FASE E — AEO / GEO / Schema
- **Selector de país GEO** por zona horaria, sin bloqueo ni redirección permanente (32 zonas mapeadas).
- **Schema**: WebPage + Organization(areaServed) + BreadcrumbList + FAQPage en cada página país; CollectionPage + ItemList en hubs.
- **FAQ con formato** respuesta directa + fuente + fecha en todas las páginas nuevas.
- **Fecha de actualización visible** y bloque de fuentes en cada página país.
- Evento GA4 `country_selected` implementado.

### Validación final
- 45 páginas HTML · **0 JSON-LD inválidos** · **0 enlaces internos rotos** · **0 títulos >62 chars** · **0 términos prohibidos** · analytics y aviso de cookies en todas las páginas.
