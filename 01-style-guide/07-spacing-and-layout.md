# 07 — Spacing y layout

Sistema de espaciado, grid y comportamiento responsive.

---

## 1. Contenedor base

```css
.wrap {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
  padding-inline: 28px;
}
```

- Ancho máximo de contenido: **1200px**.
- Padding lateral: **28px** en todos los breakpoints.
- En móvil pequeño (≤375px) el padding puede bajar a 20px.

---

## 2. Grid principal

Sistema CSS Grid simple, sin framework.

### Grid de 2 columnas (taller/showroom split)

```css
.split-2 {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
}
@media (max-width: 768px) {
  .split-2 { grid-template-columns: 1fr; gap: 2.5rem; }
}
```

### Grid de 3 columnas (audiencias, valores, contacto)

```css
.grid-3 {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1.6rem;
}
@media (max-width: 900px) {
  .grid-3 { grid-template-columns: 1fr; gap: 1.2rem; }
}
```

### Grid de 6 cards (servicios)

```css
.grid-services {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1.4rem;
}
@media (max-width: 900px) { .grid-services { grid-template-columns: repeat(2, 1fr); } }
@media (max-width: 600px) { .grid-services { grid-template-columns: 1fr; } }
```

### Grid de proyectos (galería)

```css
.grid-gallery {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1rem;
}
@media (max-width: 900px) { .grid-gallery { grid-template-columns: repeat(2, 1fr); } }
@media (max-width: 600px) { .grid-gallery { grid-template-columns: 1fr; } }
```

---

## 3. Espaciado vertical

Sistema simple de spacing tokens.

| Token | Valor | Uso |
|---|---|---|
| `--sp-1` | `0.4rem` | Inline gap pequeño |
| `--sp-2` | `0.8rem` | Gap dentro de card |
| `--sp-3` | `1.2rem` | Gap entre titular y body |
| `--sp-4` | `1.6rem` | Padding interno card |
| `--sp-5` | `2.4rem` | Margen entre secciones internas |
| `--sp-6` | `4rem` | Padding-block de sección |
| `--sp-7` | `6rem` | Padding-block de sección hero |
| `--sp-8` | `8rem` | Padding-block extra (pre-footer, separación grande) |

(Estos tokens están definidos en `02-tokens/tokens.css`.)

### Padding-block de secciones

- **Sección estándar:** `padding-block: 6rem`.
- **Sección compacta:** `padding-block: 4rem`.
- **Hero:** `padding-block: 7rem 6rem` (más arriba que abajo).
- **Pre-footer / contacto:** `padding-block: 7rem`.
- **Footer:** `padding-block: 4rem 2rem`.

En móvil, multiplicar todo por 0.7 aproximadamente:
- Sección estándar móvil: `padding-block: 4rem`.

---

## 4. Header

- **Altura fija:** `--nav-h: 72px`.
- **Posición:** `position: fixed; top: 0; z-index: 1000`.
- **Backdrop filter:** `blur(8px)` con fondo `rgba(242,239,236,0.96)`.
- **Padding del body para no quedar oculto:** añadir `padding-top: var(--nav-h)` al body o al primer contenedor de contenido.

---

## 5. Breakpoints

| Etiqueta | Min-width | Max-width | Comportamiento |
|---|---|---|---|
| Móvil pequeño | – | 375px | Padding lateral 20px |
| Móvil | 376px | 600px | 1 columna en grids |
| Tablet | 601px | 900px | 2 columnas en grids de servicios |
| Desktop | 901px | 1200px | Layout completo |
| Desktop ancho | 1201px | – | Contenido se centra con max-width 1200px |

**Regla de hamburger:** el menú lateral aparece a `≤ 768px`. Por encima, navegación completa horizontal.

**Regla de WhatsApp flotante:** visible solo a `≤ 768px`. En desktop la conversión va por formulario y teléfono.

---

## 6. Z-index

Escala oficial. No inventar valores fuera de esta escala.

| Capa | z-index |
|---|---|
| Base | 0 |
| Cards y elementos sobre fondo | 1 |
| Sticky elements internos | 10 |
| Tooltips | 100 |
| Drawer móvil | 1000 |
| Header fijo | 1000 |
| Drop-panels nav | 1100 |
| WhatsApp flotante | 900 |
| Modal | 9999 |

---

## 7. Border-radius

| Token | Valor | Uso |
|---|---|---|
| `--r` | `3px` | Estándar global (cards, botones, inputs, paneles) |
| Círculos | `50%` | Iconos circulares, avatares |
| Logo container | `50%` | Si se aplica forma redondeada al icono PNG |

**Regla:** `3px` o `50%`. Nada en medio.

No usar:
- ❌ `border-radius: 10px, 12px, 16px, 20px` — son del lenguaje de SaaS, no de Habitat & Decor.
- ❌ `border-radius` distinto en cada esquina (`8px 0 8px 0`) salvo para chips muy específicos en showroom.

---

## 8. Sombras

| Token | Valor | Uso |
|---|---|---|
| `--sh-sm` | `0 2px 14px rgba(60,60,60,.08)` | Sombra sutil en cards en reposo |
| `--sh-md` | `0 6px 30px rgba(60,60,60,.11)` | Sombra de drop-panel y card hover |

**Reglas:**
- Color de sombra siempre con tinta `rgba(60,60,60,...)`. Nunca `rgba(0,0,0,...)`.
- Opacidad nunca por encima de `.15`.
- Spread negativo solo en sombras técnicas (no decorativas).

---

## 9. Transiciones y easing

```css
:root {
  --ease:     cubic-bezier(.25,.46,.45,.94);
  --ease-out: cubic-bezier(0,0,.2,1);
}
```

| Duración | Uso |
|---|---|
| `0.18s` | Hover de items pequeños (drop-item, links nav) |
| `0.22s` | Hover de iconos, color transitions |
| `0.25–0.28s` | Botones, cards hover |
| `0.35s` | Hover de iconos circulares con cambio de fondo |
| `0.4s` | Cross-fade de imagen en card de servicio |
| `0.6s` | Animación de entrada de drawer móvil |
| `0.8s` | Hero fadeUp inicial |

**Easing:**
- `var(--ease)` para casi todo (entrada y salida suave).
- `var(--ease-out)` para entradas únicas (no se devuelven), como el fadeUp del hero.

**Animaciones disponibles:**

```css
@keyframes fadeUp {
  from { opacity: 0; transform: translateY(20px); }
  to   { opacity: 1; transform: translateY(0); }
}
.fade-up { animation: fadeUp 0.8s var(--ease-out) both; }
```

Delays escalonados:
- Eyebrow: `.1s`
- Rule: `.18s`
- H1: `.28s`
- Subtítulo: `.4s`
- Botones: `.55s`

---

## 10. Anti-patrones de layout

- ❌ Bootstrap grid (12 columnas con classes `.col-md-4`). Prohibido. Solo CSS Grid puro.
- ❌ Tablas para layout. Solo para datos tabulares reales.
- ❌ `position: absolute` para apilar contenido (salvo overlays sobre imagen).
- ❌ `margin: 0 auto` para centrar bloques cuando se puede usar grid.
- ❌ Padding asimétrico inconsistente entre cards similares.
- ❌ Breakpoints custom (`@media (max-width: 723px)`). Solo los definidos arriba.
- ❌ Aspect ratio basado en padding-bottom. Usar `aspect-ratio` CSS moderno.
