# Information Architecture — HGW Natural V2

**Principio:** MENOS contenido de bajo valor + MÁS autoridad + MÁS evidencia + MEJOR arquitectura.

## Arquitectura objetivo (MAPA)

```
/                        Home — conocimiento + confianza + 2 funnels
├── /productos/          Hub de productos
│   ├── /productos/jabon-de-turmalina/          (existe: /pages/jabon-turmalina)
│   ├── /productos/toallas-higienicas/          (existe: /pages/toallas-higienicas-turmalina)
│   ├── /productos/protectores-diarios/         (existe: /pages/protectores-diarios-turmalina)
│   ├── /productos/crema-dental-herbal/         (existe: /pages/crema-dental-herbal)
│   └── /productos/dulces-de-arandano/          (existe: /pages/dulces-de-arandano)
├── /ciencia/            (existe: /pages/ciencia-hgw)  Hub científico
│   ├── /ciencia/turmalina/
│   ├── /ciencia/iones-negativos/
│   └── /ciencia/infrarrojo-lejano-fir/
├── /evidencia/          NUEVA — biblioteca de evidencia (patentes, certs, investigación)
├── /que-es-hgw/         NUEVA — página de entidad
├── /dra-deming-li/      NUEVA — entidad Person (solo datos verificados)
├── /aprender/           (existe: /pages/blog/*)
│   ├── /glosario/       NUEVA
│   └── blog posts
├── /distribuidor-hgw/   (existe: /pages/oportunidad)
│   ├── /capacitacion/   NUEVA
│   └── /contacto/       (resuelto a FAQ)
├── /faq/                (existe: /pages/preguntas-frecuentes-hgw)
└── /ciudades/           SEO local (solo con contenido local real)
```

## Estado actual vs objetivo

| Objetivo | Estado | Nota |
|----------|--------|------|
| /que-es-hgw | ❌ crear | Requiere contenido verificado sobre HGW |
| /productos (hub) | ✅ /pages/productos-hgw | |
| /productos/* | ✅ existen | URLs actuales `/pages/...` — cambiar implicaría 301 |
| /ciencia | ✅ /pages/ciencia-hgw | |
| /evidencia | ❌ crear | BLOQUEADO: requiere documentos reales del owner |
| /dra-deming-li | ❌ crear | BLOQUEADO: requiere fuentes verificables |
| /blog | ✅ /pages/blog/* | |
| /distribuidor-hgw | ✅ /pages/oportunidad | |
| /capacitacion | ❌ crear | |
| /contacto | ⚠️ | Actualmente resuelto a FAQ |
| /faq | ✅ /pages/preguntas-frecuentes-hgw | |
| /glosario | ❌ crear | |

## Decisión sobre URLs

El brief pide URLs "limpias" (`/productos/jabon-de-turmalina/`) pero las actuales son `/pages/jabon-turmalina`.
**NO se cambian** sin redirecciones 301. En GitHub Pages estático, un cambio de URL requiere:
1. Crear la nueva ruta
2. Dejar un `index.html` con meta-refresh + canonical en la vieja
3. Actualizar todos los enlaces internos y el sitemap

Riesgo: si hay URLs indexadas con tráfico, cambiarlas sin GSC puede perder posiciones. **Requiere datos de Search Console → pendiente.**

## Funnels separados

**COMPRADOR:** Home → Producto → Ciencia → Evidencia → WhatsApp (compra)
**DISTRIBUIDOR:** Home → /que-es-hgw → /distribuidor-hgw → /capacitacion → WhatsApp (inscripción)

Ambos funnels NO deben mezclarse en la misma página de conversión.

## Navegación propuesta

PRODUCTOS · CIENCIA · HGW · APRENDER · NEGOCIO · CONTACTO

(mobile-first, CTA WhatsApp persistente sin bloquear)
