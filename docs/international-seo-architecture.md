# Arquitectura SEO internacional propuesta — HGW
**Fecha:** 2026-09-30 · **Estado:** PROPUESTA (no implementada)

---

## Principio

`VERACIDAD > REGULACIÓN > CALIDAD > SEO > CONVERSIÓN`

**No se crea ninguna URL sin demanda o evidencia.** La arquitectura final depende de la matriz de mercados (`latam-market-matrix.md`), donde **12 países son clase A** y **4 son clase C/D** (sin página).

---

## 1. Separación crítica: PRODUCTO ≠ PAÍS

El brief lo exige explícitamente. **Nunca** mezclar precio/envío/WhatsApp de un país en la página global del producto.

```
/productos/jabon-de-turmalina/       ← QUÉ ES (global, sin país)
   ├── características
   ├── ingredientes
   ├── modo de uso
   ├── advertencias
   └── "Disponibilidad por país" (bloque que enlaza a los mercados)

/paises/colombia/productos/          ← DÓNDE COMPRAR (local)
   ├── precio en COP
   ├── envío
   └── WhatsApp local
```

---

## 2. Arquitectura propuesta (ajustada a la evidencia real)

```
/
│
├── /productos/                                    [HUB]
│   ├── /productos/jabon-de-turmalina/
│   ├── /productos/toallas-higienicas/
│   ├── /productos/protectores-diarios/
│   ├── /productos/crema-dental/
│   └── /productos/dulces-de-arandano/
│
├── /que-es-hgw/                                   [entidad marca]
├── /ciencia/                                      [turmalina, iones, FIR]
├── /investigacion/                                ⚠️ BLOQUEADA — requiere fuentes
│
├── /oportunidad/                                  [negocio]
│   ├── /como-funciona-hgw/
│   └── /como-ser-distribuidor/
│
├── /paises/                                       [HUB LATAM]
│   ├── /paises/colombia/          ← A (mercado base)
│   ├── /paises/peru/              ← A
│   ├── /paises/mexico/            ← A
│   ├── /paises/ecuador/           ← A
│   ├── /paises/bolivia/           ← A
│   ├── /paises/chile/             ← A
│   ├── /paises/panama/            ← A
│   ├── /paises/costa-rica/        ← A
│   ├── /paises/guatemala/         ← A
│   ├── /paises/el-salvador/       ← A
│   ├── /paises/paraguay/          ← A
│   └── /paises/republica-dominicana/ ← A
│
├── /blog/                                          [contenido informativo]
├── /faq/
├── /glosario/
└── /contacto/
```

### ❌ URLs que NO se crean (y por qué)

| URL propuesta en el brief | Decisión | Motivo |
|---------------------------|----------|--------|
| `/paises/honduras/` | **NO CREAR** | Clase C — sin evidencia |
| `/paises/nicaragua/` | **NO CREAR** | Clase C — sin evidencia |
| `/paises/argentina/` | **NO CREAR** | Clase C — sin evidencia |
| `/paises/uruguay/` | **NO CREAR** | Clase C — sin evidencia |
| `/investigacion/` | **BLOQUEADA** | Requiere patentes/estudios verificables |
| Cualquier `/paises/{ue}/` | **NO CREAR** | FASE 2 (ver `europe-expansion-deferred.md`) |

**De 16 países del brief → 12 páginas. 4 NO se crean.** El brief prioriza autoridad sobre volumen.

---

## 3. Migración de URLs (requiere 301)

| URL actual | URL propuesta | Redirección |
|-----------|--------------|-------------|
| `/pages/jabon-turmalina` | `/productos/jabon-de-turmalina/` | 301 |
| `/pages/toallas-higienicas-turmalina` | `/productos/toallas-higienicas/` | 301 |
| `/pages/protectores-diarios-turmalina` | `/productos/protectores-diarios/` | 301 |
| `/pages/crema-dental-herbal` | `/productos/crema-dental/` | 301 |
| `/pages/dulces-de-arandano` | `/productos/dulces-de-arandano/` | 301 |
| `/pages/productos-hgw` | `/productos/` | 301 |
| `/pages/ciencia-hgw` | `/ciencia/` | 301 |
| `/pages/oportunidad` | `/oportunidad/` | 301 |
| `/pages/preguntas-frecuentes-hgw` | `/faq/` | 301 |
| `/pages/productos-bogota` | `/paises/colombia/bogota/` | 301 |
| `/pages/ciudad/productos-*` | `/paises/colombia/{ciudad}/` | 301 |

> ⚠️ **GitHub Pages no soporta redirects 301 nativos.** Las opciones son: (a) páginas HTML con `<meta refresh>` + `rel=canonical` (lo que Google trata como redirección, con pérdida menor), o (b) migrar a un host con reglas de servidor (Netlify/Cloudflare Pages `_redirects`). **Decisión que requiere aprobación del dueño** (implica infraestructura).

---

## 4. HREFLANG — decisión

**NO implementar hreflang en esta fase.**

Razón (brief §19): el sitio está **todo en español** y las páginas país **no son variantes lingüísticas** sino de disponibilidad comercial. Implementar `es-CO` / `es-MX` / … sería hreflang falso → riesgo de señales contradictorias.

**Alternativa aplicada:** arquitectura + URLs + contenido local + canonical + enlazado interno.

Si en el futuro hay variantes reales (precios/idioma/legislación distintos), implementar:
`es-CO` `es-MX` `es-PE` `es-EC` `es-CL` `es-BO` `es-AR` `es-UY` `es-PA` `es-CR` `es-GT` `es-SV` `es-DO`

---

## 5. Schema.org

### Ya implementado ✅
`Organization` · `WebSite` · `WebPage` · `Product` (+ `Offer`) · `BreadcrumbList` · `FAQPage` · `HowTo` · `Article`

### Añadir en la fase internacional
| Schema | Dónde | Regla |
|--------|-------|-------|
| `Organization` + `areaServed` | `/`, `/paises/` | Solo países clase **A** |
| `Product` global | `/productos/*` | **SIN** `offers` con precio de país |
| `Product` + `Offer` local | `/paises/{pais}/` | Precio/`priceCurrency` **real** del mercado |
| `AdministrativeArea` | `/paises/{pais}/` | Delimita el mercado |
| `Brand` | Global | Una sola vez |

### ❌ NUNCA generar
`aggregateRating` · `review` · `gtin` · `sku` inventado · certificaciones · premios · personas

---

## 6. GEO / Geolocalización (brief §22)

- Sugerir país — **nunca bloquear**.
- **Prohibido**: redirección permanente por IP.
- Siempre visible: `CAMBIAR PAÍS` · `VER SITIO GLOBAL`.

```
Banner: "Parece que estás en Colombia. ¿Ver contenido para Colombia?  [Sí] [No, ver global]"
Storage: localStorage (no cookie permanente) → respeta privacidad
```

---

## 7. Conversión (brief §21)

| CTA | Destino |
|-----|---------|
| CONOCER PRODUCTOS | `/productos/` |
| COMPRAR | WhatsApp del país detectado |
| CONOCER LA OPORTUNIDAD | `/oportunidad/` |
| SER DISTRIBUIDOR | `/como-ser-distribuidor/` |
| CONTACTAR | `/contacto/` |
| SELECCIONAR PAÍS | `/paises/` |

**Sin tácticas engañosas. Sin garantizar ingresos. Sin garantizar resultados de salud.**

---

## 8. AEO / AI Search (brief §16)

Estructura obligatoria para cada pregunta en `/faq/`:

```html
<h3>¿En qué países opera HGW?</h3>
<p><strong>Respuesta directa:</strong> HGW tiene catálogo activo en 12 países de
Latinoamérica según el selector oficial de su plataforma.</p>
<p>Detalle: Perú, México, Colombia, Bolivia, Ecuador, Chile, El Salvador,
Panamá, Guatemala, Paraguay, República Dominicana y Costa Rica.</p>
<p><small>Fuente: selector de país de www.healthgreenworld.com ·
Actualizado: 2026-09-30</small></p>
```

**Formato:** PREGUNTA → RESPUESTA DIRECTA → EVIDENCIA → EXPLICACIÓN → FUENTE → FECHA

Añadir `speakable` schema en las respuestas clave.

---

## 9. Privacidad (brief §23)

| Elemento | Estado actual | Acción |
|----------|--------------|--------|
| Google Analytics (GA4) | Instalado, ID vacío | Añadir aviso + consentimiento |
| Cookies | Ninguna declarada | Política de cookies |
| WhatsApp | Enlaces salientes | Informar transferencia |
| Formularios | No existen | — |
| Meta Pixel | No existe | — |
| Política de privacidad | **NO EXISTE** | **CREAR** (bloqueante de confianza) |

> Aunque la UE quede fuera, se construye base de privacidad técnicamente correcta.
