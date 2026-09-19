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
