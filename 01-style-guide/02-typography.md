# 02 — Tipografía

Sistema tipográfico de Habitat & Decor. Dos familias, jerarquía clara, sin excepciones.

---

## Familias

### Display — Dancing Script (proxy fiel de Rocking Horse)

`Rocking Horse` es la fuente oficial declarada en el PDF de marca, pero **no está disponible en Google Fonts ni en CDN público**. Usamos `Dancing Script` como sustituto fiel: misma familia caligráfica manuscrita, ligadura suave, ascendentes/descendentes similares.

- **Pesos en uso:** 400 (regular), 600 (semibold).
- **Carga:** Google Fonts (ver bloque de carga abajo).
- **CSS variable:** `--f-display: 'Dancing Script', cursive;`
- **Solo para:** logotipo, titulares display (`H1`, `H2`, ocasionalmente `H3`), números grandes de proceso (01, 02, 03…), números de la banda de impacto.
- **Nunca:** botones, formularios, navegación, párrafos, listas, footer.

Si en el futuro se licencia Rocking Horse, **el cambio es de una sola línea** en `tokens.css`. El sistema está pensado para esa migración.

### Cuerpo — Quicksand

Sans-serif geométrica de esquinas redondeadas. Pareja perfecta de Dancing Script: la dureza de la geometría compensa la informalidad de la cursiva.

- **Pesos en uso:** 300 (light), 400 (regular), 500 (medium), 600 (semibold).
- **Carga:** Google Fonts.
- **CSS variable:** `--f-body: 'Quicksand', sans-serif;`
- **Para:** todo lo que no sea display.

---

## Bloque de carga oficial

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;600&family=Quicksand:wght@300;400;500;600&display=swap" rel="stylesheet">
```

`display=swap` es obligatorio: evita FOIT y mantiene la página legible mientras cargan las fuentes.

---

## Escala display (Dancing Script)

Todos los tamaños usan `clamp()` para escalar con el viewport.

| Token | Tamaño | Peso | Line-height | Uso |
|---|---|---|---|---|
| `.t-hero` | `clamp(3rem, 5.5vw, 5.8rem)` | 400 | 1.08 | H1 hero de homepage y landing |
| `.t-section` | `clamp(2.4rem, 3.8vw, 3.6rem)` | 400 | 1.15 | H2 inicio de sección |
| `.t-card` | `1.5rem` | 400 | 1.25 | Titulares de card grande |
| Logo navbar | `1.55rem` | 600 | 1 | Texto "Habitat & Decor" del header |
| Drawer link | `1.65rem` | 400 | 1.1 | Enlaces del menú móvil |
| Mosaico (mockup PDF) | ~1.6rem | 400 | 1.3 | Etiqueta sobre mosaicos crema/sand |

**Letter-spacing del display:** sin tracking forzado. Dancing Script ya tiene ligaduras y espaciado natural.

**Color por defecto:** `var(--c-ink)` (#3C3C3C).
**Color de palabra acento dentro del titular:** `var(--c-gold)` (#B28622). Solo una palabra clave por titular.

---

## Escala cuerpo (Quicksand)

| Tamaño | Peso | Letter-spacing | Uso |
|---|---|---|---|
| `0.92rem` | 400 | normal | Body principal (`.body-p`), line-height 1.8 |
| `0.88rem` | 400 | normal | Body card / descripción audiencia |
| `0.82rem` | 500–600 | normal | Drop-item title, drawer-link-sm |
| `0.7rem` | 600 | `.05em` | Botones (`.btn-gold`, `.btn-outline`), drop-item-sub |
| `0.68rem` | 600 | `.22em` | Eyebrow del hero |
| `0.72rem` | 600 | `.24em` | Eyebrow estándar de sección |
| `0.63rem` | 600 | `.05em` | Nav-link, btn-hablanos, btn-agendar |
| `0.58rem` | 600 | `.2em` | Drawer eyebrow (uppercase) |
| `0.57rem` | 600 | `.18em` | Drop-panel-head (uppercase) |
| `0.55rem` | 400 | normal | Iconos micro (chevron) |

**Line-height general del cuerpo:** 1.8 para textos largos, 1.6 para listas, 1.25–1.4 para titulares de card, 1 para botones y nav.

---

## Patrones recurrentes

### Eyebrow (etiqueta de sección)

```html
<span class="eyebrow">Lo que hacemos</span>
```
```css
.eyebrow {
  font-size: 0.72rem;
  font-weight: 600;
  letter-spacing: 0.24em;
  text-transform: uppercase;
  color: var(--c-gold);
}
```

Siempre va seguido de un divisor `.rule` (línea dorada de 36px) y luego un titular `.t-section`.

### Hero típico

```html
<span class="eyebrow">Jaca · Pirineo Aragonés</span>
<div class="rule"></div>
<h1 class="t-hero">Textil <span class="accent">a medida</span> para tu espacio.</h1>
<p class="body-p">Diseñamos, fabricamos e instalamos…</p>
```

### Número grande de proceso

```html
<span class="proceso-num">01</span>
```
```css
.proceso-num {
  font-family: var(--f-display);
  font-size: 3.6rem;
  font-weight: 600;
  color: var(--c-gold);
  line-height: 1;
}
```

---

## Comportamiento responsive

- **Hero H1:** `clamp(3rem, 5.5vw, 5.8rem)`. En móvil pequeño cae a 3rem; en desktop ancho llega a 5.8rem.
- **Sección H2:** baja proporcionalmente.
- **Body:** se mantiene en 0.92rem en todos los breakpoints (la legibilidad no cambia con el viewport — solo el contenedor).
- **Tracking de eyebrow:** mantener `.24em` en todos los tamaños.
- **No** reducir el tamaño del eyebrow por debajo de 0.6rem.

---

## Reglas innegociables

1. **Solo dos familias.** Dancing Script y Quicksand. Cero Roboto, cero Inter, cero Helvetica, cero Times, cero Georgia.
2. **Display nunca para texto largo.** Si una frase ocupa más de 2 líneas y no es un titular, es un párrafo. Va en Quicksand.
3. **No itálica falsa.** Quicksand carece de itálica de calidad: no forzar con `font-style: italic`.
4. **Mayúsculas solo con tracking.** Cualquier texto en `text-transform: uppercase` lleva `letter-spacing` mínimo `.18em`. No hay excepción.
5. **No subrayados decorativos.** El subrayado se reserva para enlaces de cuerpo en pasajes largos (políticas, legales). En navegación y botones, nunca.
6. **No `font-stretch`, no `font-variation-settings` exóticos.** Solo los pesos cargados.
7. **Texto sobre imagen requiere overlay o backdrop.** Si el contraste cae bajo 4.5:1 hay que añadir un overlay sutil, nunca aumentar el peso de la fuente como sustituto.

---

## Excepciones tipográficas controladas

- **Logo PNG:** la imagen `logo-habitat-decor2.png` puede contener cualquier letra dibujada — es un logotipo, no es texto. La pareja dorada manuscrita + icono se trata como un activo.
- **Texto legal en footer:** Quicksand 0.7rem, 400, color `--c-ink-soft`. Aceptable para copyright y enlaces legales.
- **Captions de imagen ("Proyecto real · Jaca"):** Quicksand 0.72rem semibold con tracking ligero, sobre fondo blanco translúcido o como etiqueta dorada sutil.
