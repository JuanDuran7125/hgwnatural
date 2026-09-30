# Matriz de mercados LATAM — HGW
**Fecha:** 2026-09-30 · **Método:** inspección directa de la plataforma oficial + búsqueda de fuentes

---

## 🔑 EVIDENCIA PRINCIPAL (fuente primaria)

La plataforma oficial de la compañía — **`https://www.healthgreenworld.com`** — incluye un selector de país propio (control `fnChooseCountry()`), que carga las banderas desde `https://file.healthgreenworld.com/file/image/country/{código}.png`.

**Lista oficial extraída (2026-09-30):**

| # | País | Código | Región |
|---|------|--------|--------|
| 1 | Perú | 66 | LATAM |
| 2 | México | 67 | LATAM |
| 3 | Colombia | 68 | LATAM |
| 4 | Bolivia | 69 | LATAM |
| 5 | Ecuador | 70 | LATAM |
| 6 | Chile | 56 | LATAM |
| 7 | El Salvador | 503 | LATAM |
| 8 | Panamá | 507 | LATAM |
| 9 | Guatemala | 502 | LATAM |
| 10 | Paraguay | 595 | LATAM |
| 11 | República Dominicana | 1809 | LATAM |
| 12 | Costa Rica | 1810 | LATAM |
| 13 | España | 34 | **UE — FASE 2** |
| 14 | Bangladesh | 880 | Asia (fuera de alcance) |
| 15 | Pakistan | 92 | Asia (fuera de alcance) |

**Captura de evidencia:** `docs/evidence-hgw-paises-oficial.png`

> ⚠️ **Nota metodológica:** el selector de país de la plataforma oficial es la evidencia más fuerte disponible de "mercados operativos". Prueba que la compañía tiene precios, moneda y catálogo configurados para cada país. **No prueba** registro sanitario, oficina física ni disponibilidad de stock al día de hoy. Por eso la columna "Compra verificada" se marca como **NO VERIFICADA** salvo para Perú (validado en vivo: catálogo en Soles, `S/. 99.00` LACTIBERRY).

**Validación cruzada:** Perú mostró precios en soles (PEN) y catálogo activo al navegar. Colombia fue seleccionable en el mismo control.

---

## Matriz

Clasificación: **A** = presencia confirmada · **B** = mencionada, pendiente · **C** = expansión · **D** = sin evidencia

| País | Presencia | Fuente | Productos | Compra | Negocio | Regulador | Riesgo | Fecha |
|------|-----------|--------|-----------|--------|---------|-----------|--------|-------|
| **Perú** | **A** | Plataforma oficial (validado en vivo, precios PEN) | Sí | **Verificado** | Sí | DIGEMID / DIGESA | Medio | 2026-09-30 |
| **México** | **A** | Plataforma oficial + `healthgreenworld.com.mx` ("1ª oficina comercial Perú 2020; oficinas en México…") | Sí | No verificado | Sí | COFEPRIS | Medio | 2026-09-30 |
| **Colombia** | **A** | Plataforma oficial (seleccionable) + `hgwcolombia.co` | Sí | No verificado | Sí | INVIMA | **Bajo** | 2026-09-30 |
| **Bolivia** | **A** | Plataforma oficial | Sí | No verificado | Sí | AGEMED / SENASAG | Medio | 2026-09-30 |
| **Ecuador** | **A** | Plataforma oficial | Sí | No verificado | Sí | ARCSA | Medio | 2026-09-30 |
| **Chile** | **A** | Plataforma oficial | Sí | No verificado | Sí | ISP | Medio | 2026-09-30 |
| **El Salvador** | **A** | Plataforma oficial | Sí | No verificado | Sí | DNM / MINSAL | Medio | 2026-09-30 |
| **Panamá** | **A** | Plataforma oficial | Sí | No verificado | Sí | MINSA (DNFD) | Medio | 2026-09-30 |
| **Guatemala** | **A** | Plataforma oficial | Sí | No verificado | Sí | MSPAS (DRCPF) | Medio | 2026-09-30 |
| **Paraguay** | **A** | Plataforma oficial | Sí | No verificado | Sí | DINAVISA | Medio | 2026-09-30 |
| **Rep. Dominicana** | **A** | Plataforma oficial + `hgw.do` | Sí | No verificado | Sí | DIGEMAPS | Medio | 2026-09-30 |
| **Costa Rica** | **A** | Plataforma oficial | Sí | No verificado | Sí | Min. Salud | Medio | 2026-09-30 |
| Argentina | C | **Sin evidencia** de operación | UNKNOWN | No | UNKNOWN | ANMAT | — | 2026-09-30 |
| Uruguay | C | **Sin evidencia** | UNKNOWN | No | UNKNOWN | MSP | — | 2026-09-30 |
| Honduras | C | **Sin evidencia** | UNKNOWN | No | UNKNOWN | ARSA | — | 2026-09-30 |
| Nicaragua | C | **Sin evidencia** | UNKNOWN | No | UNKNOWN | MINSA | — | 2026-09-30 |
| **Venezuela** | **D** | Requiere investigación separada (condiciones comerciales) | UNKNOWN | No | UNKNOWN | MPPS | **Alto** | 2026-09-30 |
| España | **UE — FASE 2** | Plataforma oficial | Sí | No verificado | Sí | AEMPS / CPNP | **Alto** | 2026-09-30 |

---

## Fuentes consultadas

| Fuente | Tipo | Uso |
|--------|------|-----|
| `www.healthgreenworld.com` (selector de país) | **Oficial — primaria** | Lista de mercados |
| `healthgreenworld.com.mx/acerca-de/` | Oficial regional (declarado) | Cronología: operaciones LATAM 2019, 1ª oficina Perú mar-2020 |
| `hgwcolombia.co` | Distribuidor | Existencia de red en Colombia |
| `redhgw.com/oficinas/` | Distribuidor | Oficinas mencionadas |
| `healthgreenworld.lat` | Distribuidor | Mercados mencionados |
| `hgw.do` | Dominio país | Rep. Dominicana |

> ⚠️ **Advertencia del brief aplicada:** las páginas de distribuidores **NO** se usan como prueba única de presencia oficial, autorización, registro sanitario o certificación. Solo corroboran.

---

## Decisión de arquitectura derivada

- **Crear página comercial país SOLO para los 12 mercados clase A.**
- Argentina, Uruguay, Honduras, Nicaragua → **no crear página comercial** (clase C).
- Venezuela → **no crear** hasta investigación separada (clase D).
- España → **no crear** (FASE 2 UE, ver `europe-expansion-deferred.md`).
- **La página `/paises/` NO debe listar** Argentina, Uruguay, Honduras, Nicaragua como mercados activos.
