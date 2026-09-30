# Auditoría del sitio actual — hgwnatural.com
**Fecha:** 2026-09-30 · **Método:** crawl completo del sitemap (25 URLs) + inspección de HTML crudo
**Modo:** AUDIT ONLY — sin cambios publicados

---

## 1. Ficha técnica

| Atributo | Valor |
|----------|-------|
| CMS | **Ninguno** — HTML estático |
| Hosting | GitHub Pages (repo `JuanDuran7125/hgwnatural`, ramas `main` + `master`) |
| CDN | Cloudflare (cache max-age=600) |
| Framework | HTML/CSS/JS plano + componentes por página |
| Analytics | GA4 por código (`assets/js/analytics.js`) — **ID vacío, sin datos** |
| Páginas en sitemap | 25 |
| Idiomas | Español (único) |
| Checkout | No existe — conversión 100% WhatsApp |
| Backups | `projects/hgw/`, `Documents/hgw-seo/`, Obsidian Vault |

---

## 2. Inventario y acción propuesta

Leyenda: **KEEP** conservar · **UPDATE** mejorar · **REWRITE** reescribir · **MERGE** fusionar · **NOINDEX** retirar de índice · **REDIRECT** redirigir

| URL | Título (chars) | Meta (chars) | Palabras | Acción | Motivo |
|-----|---------------|-------------|----------|--------|--------|
| `/` | 46 | 138 | 930 | UPDATE | Home; añadir bloque de mercados LATAM y CTA "seleccionar país" |
| `/pages/productos-hgw` | 54 | 139 | 852 | UPDATE | Convertir en hub que enlace a fichas globales + disponibilidad país |
| `/pages/jabon-turmalina` | **62** | 159 | 852 | UPDATE | Título >60 chars; migrar a `/productos/jabon-de-turmalina/` |
| `/pages/toallas-higienicas-turmalina` | 49 | 148 | 927 | UPDATE | Migrar a `/productos/toallas-higienicas/` |
| `/pages/protectores-diarios-turmalina` | 44 | 144 | 1019 | UPDATE | Migrar a `/productos/protectores-diarios/` |
| `/pages/crema-dental-herbal` | 59 | 137 | 734 | UPDATE | Migrar a `/productos/crema-dental/` |
| `/pages/dulces-de-arandano` | 57 | 135 | 1012 | UPDATE | Migrar a `/productos/dulces-de-arandano/` |
| `/pages/ciencia-hgw` | 46 | 145 | 814 | REWRITE | Claims "300+ patentes" sin fuente (ver claims-matrix) |
| `/pages/testimonios-hgw` | 43 | 132 | 600 | REWRITE | Testimonios no verificables; 600 palabras = delgado |
| `/pages/oportunidad` | 35 | 146 | 1182 | REWRITE | Claims de ingresos; renombrar a `/oportunidad/` |
| `/pages/oportunidad-colombia` | 42 | 160 | 1160 | **MERGE** | 96% idéntico a `/pages/oportunidad` → fusionar |
| `/pages/productos-bogota` | 45 | 121 | 917 | KEEP | Ciudad con jerarquía propia (patrón a replicar) |
| `/pages/productos-medellin` | 47 | 116 | 744 | KEEP | **Modelo a seguir** — redacción única (solo 43% solape) |
| `/pages/ciudad/productos-cali` | 43 | 103 | 1113 | UPDATE | Reubicar a `/ciudades/cali/` |
| `/pages/ciudad/productos-barranquilla` | 55 | **179** | 1056 | UPDATE | Meta >160 chars; 95%+ solape |
| `/pages/ciudad/productos-bucaramanga` | **78** | **201** | 1166 | REWRITE | Título y meta fuera de límite; duplicado |
| `/pages/ciudad/productos-cartagena` | **74** | **176** | 1146 | REWRITE | Título y meta fuera de límite; duplicado |
| `/pages/ciudad/productos-pereira` | **78** | **221** | 1151 | REWRITE | Peor caso: título 78, meta 221; duplicado |
| `/pages/ciudad/productos-cucuta` | **72** | **225** | 1072 | REWRITE | Peor caso: meta 225; duplicado |
| `/pages/blog/beneficios-turmalina-piel` | 60 | 153 | 1400 | KEEP | Buen contenido; reformular claims |
| `/pages/blog/como-ser-distribuidor-hgw-colombia` | **61** | 146 | 1051 | KEEP | Título 1 char de más |
| `/pages/blog/jabon-turmalina-vs-tradicional` | **70** | 156 | 1584 | KEEP | Título 70 chars; mejor contenido del blog |
| `/pages/preguntas-frecuentes-hgw` | 33 | 118 | 971 | UPDATE | Convertir en hub FAQ → `/faq/` |
| `/contacto` | 31 | 113 | **143** | UPDATE | **Muy delgado (143)** — ampliar o fusionar |
| `/glosario` | 31 | 119 | **440** | UPDATE | Delgado (440); ampliar antes de indexar |

---

## 3. Problemas transversales detectados

### 3.1 Riesgo regulatorio (bloqueante)
| # | Problema | Alcance | Severidad |
|---|----------|---------|-----------|
| R1 | Reviews/rating inventados en schema | Corregido | 🔴 (ya resuelto) |
| R2 | Afirmaciones de ingresos | Corregido | 🔴 (ya resuelto) |
| R3 | Claims antimicrobianos/inmunológicos | Corregido | 🟠 (ya resuelto) |
| R4 | "300+ patentes", "40+ países", certificaciones FDA/ISO/GMP | **Pendiente** | 🟠 `REQUIERE_FUENTE` |
| R5 | No hay aviso legal de producto cosmético/alimentario | **Pendiente** | 🟠 |
| R6 | No hay política de privacidad ni aviso de cookies | **Pendiente** | 🟠 |
| R7 | WhatsApp colombiano embebido globalmente | **Pendiente** | 🟡 Al internacionalizar |

### 3.2 SEO técnico
| # | Problema | Alcance |
|---|----------|---------|
| T1 | 6 títulos >60 chars | jabon-turmalina(62), blog×3, ciudad×5 |
| T2 | 5 metas >160 chars | barranquilla(179), bucaramanga(201), cartagena(176), pereira(221), cucuta(225) |
| T3 | 7 páginas de ciudad 95–98% idénticas | cali, barranquilla, bucaramanga, cartagena, pereira, cucuta (**Medellín es la excepción: 43%**) |
| T4 | 2 páginas de Bogotá al 99,7% | `productos-bogota` + otra fuera del sitemap |
| T5 | 2 páginas con <500 palabras | /contacto (143), /glosario (440) |
| T6 | Arquitectura de URLs inconsistente | mezcla de `/pages/`, `/pages/ciudad/` y raíz |
| T7 | Sin hreflang (correcto por ahora, ver §19 del brief) | N/A |
| T8 | Sin medición real (GA4 sin ID) | bloqueante de datos |

### 3.3 Oportunidad comercial no capturada
Búsqueda de productos HGW en Google: posicionan **marketplaces de revendedores**, no el sitio de la marca. La demanda existe y la capturan terceros. Esto es la justificación económica del proyecto.

---

## 4. Páginas con valor SEO/comercial (NO tocar la URL)

1. `/pages/productos-medellin` — redacción única, 43% solape ← **plantilla para todo el proyecto**
2. `/pages/productos-bogota` — jerarquía de ciudad propia
3. `/pages/blog/jabon-turmalina-vs-tradicional` — 1.584 palabras, comparativa con intención informativa
4. `/pages/blog/beneficios-turmalina-piel` — 1.400 palabras
5. `/pages/productos-hgw` — hub de catálogo

---

## 5. Datos que NO se pudieron verificar (declarar UNKNOWN)

| Dato | Estado |
|------|--------|
| Tráfico orgánico real | **UNKNOWN** — sin acceso a Search Console |
| Indexación real | **UNKNOWN** — buscadores bloquean consultas automatizadas |
| Backlinks | **UNKNOWN** — sin herramienta de backlinks |
| Volúmenes de búsqueda | **UNKNOWN** — no se inventan |
| Posiciones actuales | **UNKNOWN** |

> Sin estos datos, cualquier decisión de "qué URL conservar" es parcial. **FASE 1 del proyecto (habilitar medición + GSC) es requisito para refinar esta auditoría.**

---

## 6. Resumen ejecutivo

- **25 URLs**, ninguna a eliminar. 5 KEEP, 12 UPDATE, 6 REWRITE, 1 MERGE.
- El problema #1 no es técnico: es que **7 de 25 páginas son casi el mismo texto** (city spam) y **la marca no aparece en las búsquedas de sus propios productos**.
- El activo #1 es `/pages/productos-medellin`: demuestra que se puede escribir contenido único por mercado.
- El bloqueante #1 para decidir bien es la **ausencia total de medición**.
