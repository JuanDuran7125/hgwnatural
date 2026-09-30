# Nota sobre `international-keywords.csv`

## ⚠️ La columna `volumen` está en `UNKNOWN` a propósito

El brief §7 lo exige: **"NO inventar volúmenes de búsqueda"**.

Los volúmenes reales solo se pueden obtener de:
1. **Google Search Console** (datos propios, cuando haya tráfico) ← método principal
2. Google Keyword Planner (requiere cuenta Ads — la del dueño es de Print Team, no de HGW)
3. Herramientas de pago (Semrush/Ahrefs — no contratadas)

**Mientras no exista medición, cualquier volumen publicado sería una invención.**

## Qué SÍ está evaluado

| Campo | Método | Fiabilidad |
|-------|--------|-----------|
| `intencion` | Análisis de SERP y de la formulación | Alta |
| `dificultad_estimada` | Inspección competitiva manual | Media |
| `evidencia_demanda` | Existencia de competidores posicionando | Alta |
| `tipo_pagina` | Deriva de intención + arquitectura | Alta |
| `volumen` | **Sin medir** | — |

## Cómo validar (FASE 1 del plan)

1. Activar GA4 (ID de medición) + verificar Search Console.
2. Esperar 30–45 días de datos.
3. Exportar GSC → *Rendimiento* → consultas por país.
4. Rellenar la columna `volumen` con datos reales.
5. Eliminar esta nota.
