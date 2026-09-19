# SEO Audit — HGW Natural (hgwnatural.com)

**Fecha:** 19 sep 2026
**Sitio:** https://www.hgwnatural.com

## 0. HALLAZGO PRIMORDIAL — Corrección de supuestos

El brief asumía **WordPress/WooCommerce** (tema, plugins, base de datos, backup de DB).
**NO es así.** El sitio es:

- **HTML estático** alojado en **GitHub Pages** (repo `JuanDuran7125/hgwnatural`)
- **CDN/proxy:** Cloudflare
- **Sin CMS, sin plugins, sin base de datos, sin WooCommerce**
- **Despliegue:** `git push` a `main` → GitHub Pages publica

Consecuencias sobre el brief:
- "Backup de base de datos" → N/A (no hay BD). Backup = copia del repo (hecha).
- "No eliminar plugins" → N/A.
- "No reemplazar tema" → N/A.
- "Instalar plugins" → N/A. Todo se resuelve con HTML/CSS/JS.
- El "checkout WooCommerce" no existe: la conversión es 100% WhatsApp.

## 1. Inventario de URLs (27 archivos)

| Archivo | Palabras | H1 | Robots | Estado |
|---------|----------|----|--------|--------|
| index.html | 966 | 1 | index,follow | ✅ |
| pages/productos-hgw.html | 859 | 1 | index,follow | ✅ |
| pages/jabon-turmalina.html | 875 | 1 | index,follow | ✅ |
| pages/toallas-higienicas-turmalina.html | 952 | 1 | index,follow | ✅ |
| pages/protectores-diarios-turmalina.html | 1074 | 1 | index,follow | ✅ |
| pages/crema-dental-herbal.html | 780 | 1 | (default) | ✅ |
| pages/dulces-de-arandano.html | 1058 | 1 | index,follow | ✅ |
| pages/ciencia-hgw.html | 822 | 1 | index,follow | ✅ |
| pages/testimonios-hgw.html | 569 | 1 | index,follow | ⚠️ reviews inventados |
| pages/oportunidad.html | 1147 | 1 | index,follow | ⚠️ claims ingresos |
| pages/oportunidad-colombia.html | 1152 | 1 | index,follow | ⚠️ claims ingresos |
| pages/preguntas-frecuentes-hgw.html | 998 | 1 | index,follow | ✅ |
| pages/productos-bogota.html | 931 | 1 | index,follow | ✅ |
| pages/productos-medellin.html | 769 | 1 | index,follow | ✅ |
| pages/ciudad/productos-cali.html | 1126 | 1 | index,follow | ✅ (local) |
| pages/ciudad/productos-barranquilla.html | 1066 | 1 | index,follow | ✅ |
| pages/ciudad/productos-bucaramanga.html | 1176 | 1 | index,follow | ✅ |
| pages/ciudad/productos-cartagena.html | 1156 | 1 | index,follow | ✅ |
| pages/ciudad/productos-pereira.html | 1162 | 1 | index,follow | ✅ |
| pages/ciudad/productos-cucuta.html | 1087 | 1 | index,follow | ✅ |
| pages/ciudad/productos-hgw-bogota.html | 937 | 1 | noindex | Consolidada |
| pages/ciudad/productos-hgw-medellin.html | 776 | 1 | noindex | Consolidada |
| pages/ciudad/oportunidad-hgw-colombia.html | 1158 | 1 | index,follow | ⚠️ duplica oportunidad-colombia |
| pages/blog/beneficios-turmalina-piel.html | 1409 | 1 | index,follow | ✅ |
| pages/blog/jabon-turmalina-vs-tradicional.html | 1594 | 1 | index,follow | ✅ |
| pages/blog/como-ser-distribuidor-hgw-colombia.html | 1050 | 1 | index,follow | ⚠️ claims ingresos |
| 404.html | 30 | 1 | noindex | ✅ |

## 2. Estado técnico

| Área | Estado | Detalle |
|------|--------|---------|
| Sitemap | ✅ | 23 URLs, todas 200 |
| robots.txt | ✅ | Con referencia al sitemap |
| Canonical | ✅ | En todas las páginas indexables |
| H1 único | ✅ | 1 por página |
| Schema.org | ✅ | Organization, Product, Offer, FAQPage, Article, BreadcrumbList, ItemList |
| Titular/description | ✅ | Ajustados a ≤60/≤160 |
| Enlaces internos | ✅ | 0 rotos (se corrigieron 12 rutas) |
| Imágenes | ✅ | WebP, con alt |
| Compresión | ✅ | Brotli |
| **HTTPS redirect** | ❌ | `http://` sirve 200 sin redirigir → requiere "Always Use HTTPS" en Cloudflare |
| **Analytics** | ❌ | 0 GA4/GTM/Pixel en las 27 páginas |
| **Indexación** | ❓ | No verificable sin Search Console |
| Core Web Vitals | ⚠️ | TTFB ~0.22s según auditoría externa; falta medir LCP/INP/CLS reales |
| Contenido duplicado | ⚠️ | 6 ciudades 49% similares (tras mejora); Bogotá/Medellín consolidadas |
| Accesibilidad | ❓ | No auditada (falta análisis axe/WAVE) |

## 3. Problemas críticos (bloqueantes)

1. **Cero medición** → no se puede optimizar nada con datos.
2. **HTTP sin redirect** → riesgo de seguridad/SEO.
3. **Reviews e ingresos inventados** → riesgo de política Google + regulatorio.

## 4. Problemas medios

4. 6 ciudades aún comparten ~49% de boilerplate.
5. `oportunidad-hgw-colombia` duplica `oportunidad-colombia` (mismo texto).
6. Sin página de contacto dedicada (`/contacto` daba 404, redirigida).
7. Sin /glosario, /evidencia, /dra-deming-li, /que-es-hgw como páginas de entidad.

## 5. Fortalezas

- HTML pre-renderizado (Google no necesita ejecutar JS).
- Schema completo y con Merchant Listing.
- Arquitectura de enlaces ya saneada.
- Contenido de ciudad con secciones locales únicas.

## 6. Recomendaciones priorizadas

| # | Acción | Impacto | Esfuerzo |
|---|--------|---------|----------|
| 1 | Activar GA4 (ID pendiente del owner) | 🔴 Alto | Bajo |
| 2 | Activar HTTPS en Cloudflare | 🔴 Alto | Bajo |
| 3 | Retirar reviews inventados | 🔴 Alto | Bajo |
| 4 | Disclaimer de ingresos + retirar cifras | 🔴 Alto | Medio |
| 5 | Publicar /evidencia con documentos reales | 🟠 Medio | Alto (requiere docs del owner) |
| 6 | Consolidar ciudades restantes | 🟠 Medio | Medio |
| 7 | Crear /que-es-hgw, /glosario, /dra-deming-li | 🟠 Medio | Medio |
| 8 | Separar funnel comprador vs distribuidor | 🟠 Medio | Medio |
