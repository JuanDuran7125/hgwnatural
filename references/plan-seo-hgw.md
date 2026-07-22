# Plan SEO — HGW Colombia (Health Green World)

## Empresa
HGW (Health Green World) — Distribuidor autorizado Colombia
Sitio: hgwnatural.com | Dominio: GitHub Pages (juanduran7125.github.io)
Marca con 30+ años, 300+ patentes, 4 fábricas certificadas (USA, Canadá, China)

## Productos Estrella (Foco Inicial)
Los 5 productos que vamos a trabajar inicialmente:

| # | Producto | Categoría | Precio Ref. |
|---|----------|-----------|-------------|
| 1 | Jabón de Turmalina | Cuidado Personal | $25.000 COP |
| 2 | Toallas Higiénicas Turmalina Ionic | Cuidado Personal | $21.000 COP |
| 3 | Protectores Diarios Turmalina | Cuidado Personal | $18.000 COP |
| 4 | Crema Dental Herbal sin Flúor | Cuidado Personal | $21.000 COP |
| 5 | Dulces de Arándano (Blueberry Fruit Drops) | Alimentos Funcionales | $28.000 COP |

## Arquitectura del Sitio (Topical Map)

```
hgwnatural.com (Página Pilar Principal)
│
├── SILO: TURMALINA (Cuidado Personal con tecnología de aniones)
│   ├── /turmalina/ → Landing pilar Turmalina
│   ├── /jabon-turmalina/ → Producto: Jabón de Turmalina
│   ├── /toallas-higienicas-turmalina/ → Producto: Toallas Higiénicas
│   ├── /protectores-diarios-turmalina/ → Producto: Protectores Diarios
│   ├── /crema-dental-herbal/ → Producto: Crema Dental Herbal
│   ├── /guia/turmalina-que-es/ → Guía: ¿Qué es la turmalina?
│   ├── /guia/iones-negativos-beneficios/ → Guía: Iones negativos
│   └── /faq/turmalina/ → FAQ Turmalina
│
├── SILO: ALIMENTOS FUNCIONALES
│   ├── /alimentos-funcionales/ → Landing pilar
│   ├── /dulces-de-arandano/ → Producto: Dulces de Arándano
│   ├── /guia/arandano-propiedades/ → Guía: Propiedades del arándano
│   └── /faq/alimentos/ → FAQ Alimentos
│
├── SILO: CIENCIA HGW
│   ├── /ciencia/ → Landing: Ciencia HGW
│   ├── /certificaciones/ → Certificaciones
│   ├── /patentes/ → Patentes
│   └── /dra-deming-li/ → Fundadora
│
├── SILO: OPORTUNIDAD DE NEGOCIO
│   ├── /oportunidad/ → Landing: Negocio HGW
│   ├── /como-ser-distribuidor/ → Guía: Ser distribuidor
│   └── /testimonios/ → Testimonios
│
├── BLOG / RECURSOS
│   ├── /blog/ → Blog principal
│   ├── /blog/turmalina-piel-beneficios/
│   ├── /blog/toallas-ecologicas-vs-tradicionales/
│   └── /blog/arandano-antioxidante-natural/
│
└── PÁGINAS TRANSACCIONALES
    ├── /precios/ → Precios generales
    ├── /contacto/ → Contacto
    └── /faq/ → FAQ General

## Página de Prospección MLM
- **/pages/oportunidad** → Landing de oportunidad de negocio para distribuidores
- Contenido: plan de compensación, beneficios, pasos para empezar, testimonios de distribuidores, FAQ
- CTA principal: WhatsApp directo a los dos números
```

## Distribución de Intención de Búsqueda

| Intención | % Tráfico | % Contenido | Páginas |
|-----------|-----------|-------------|---------|
| Informativa | 45% | 55% | 25-30 |
| Comercial | 30% | 25% | 10-15 |
| Transaccional | 20% | 15% | 8-10 |
| Navegacional | 5% | 5% | 3-5 |

## Keywords Objetivo por Producto

### Jabón de Turmalina
- "jabón de turmalina" (comercial)
- "jabón de turmalina beneficios" (informativa)
- "jabón de turmalina para qué sirve" (informativa)
- "comprar jabón de turmalina Colombia" (transaccional)
- "jabón de turmalina precio Colombia" (transaccional)
- "jabón natural para la piel" (informativa)

### Toallas Higiénicas Turmalina
- "toallas higiénicas turmalina" (comercial)
- "toallas ecológicas Colombia" (comercial)
- "toallas higiénicas con iones negativos" (informativa)
- "toallas turmalina precio" (transaccional)
- "toallas higiénicas sin químicos" (informativa)

### Protectores Diarios Turmalina
- "protectores diarios turmalina" (comercial)
- "protectores diarios ecológicos" (comercial)
- "protector diario con turmalina" (transaccional)
- "protectores diarios sin plástico" (informativa)

### Crema Dental Herbal
- "crema dental herbal sin flúor" (comercial)
- "pasta dental natural Colombia" (comercial)
- "crema dental con turmalina" (transaccional)
- "dentífrico natural sin químicos" (informativa)

### Dulces de Arándano
- "dulces de arándano naturales" (comercial)
- "caramelos de arándano Colombia" (transaccional)
- "blueberry fruit drops" (navegacional)
- "dulces naturales sin azúcar" (informativa)
- "arándano beneficios para la salud" (informativa)

## Estrategia de Contenido (Fase 1 — Quick Wins)

| Semana | Páginas | Esfuerzo |
|--------|---------|----------|
| 1 | Landing principal renovada + /turmalina/ | 🔴 Alto |
| 2 | /jabon-turmalina/ + /toallas-higienicas-turmalina/ | 🔴 Alto |
| 3 | /protectores-diarios-turmalina/ + /crema-dental-herbal/ | 🔴 Alto |
| 4 | /dulces-de-arandano/ + /guia/turmalina-que-es/ | 🔴 Alto |
| 5-8 | Contenido informativo + blog posts | 🟠 Medio |

## Schema Markup por Tipo de Página

| Tipo de Página | Schema Requerido |
|----------------|------------------|
| Página Pilar | Organization, WebSite, BreadcrumbList |
| Producto | Product, Offer, AggregateOffer |
| Guía | Article, HowTo |
| FAQ | FAQPage |
| Contacto | ContactPoint, LocalBusiness |
| Testimonios | Review |

## Diseño Visual (Manteniendo el actual)

- **Estilo:** Oscuro premium — fondo negro con acentos verde neón (#00ff9d), púrpura (#b794f6), azul (#4fd1ff)
- **Fuentes:** Sora (display) + Inter (body)
- **Paleta:** `--bg:#0a0e0d`, `--surface:#1a201f`, `--accent-green:#00ff9d`
- **Look:** Moderno, tecnológico/científico, con gradientes y blur effects

## KPIs Iniciales

| KPI | Mes 1-3 | Mes 4-6 |
|-----|---------|---------|
| Tráfico orgánico mensual | 200-500 | 800-2,000 |
| Keywords en top 10 | 10-20 | 30-60 |
| Conversiones (WhatsApp) | 5-15/mes | 20-50/mes |
