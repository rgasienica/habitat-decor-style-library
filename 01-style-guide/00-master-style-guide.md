# Habitat & Decor — Master Style Guide

Resumen ejecutivo de la marca. Para detalle técnico, ver los archivos numerados de esta misma carpeta.

---

## 1. Identidad de marca

### 1.1 Posicionamiento

Estudio-taller textil con showroom propio en Jaca, Pirineo aragonés. Diseña, fabrica e instala proyectos textiles integrales: cortinas, estores, visillos, tapicería, papel pintado y muebles auxiliares. Control total del proceso, sin intermediarios.

### 1.2 Audiencias (orden de prioridad)

1. **Profesionales** — decoradores, interioristas, arquitectos y empresas de reformas.
2. **Particulares** — viviendas y segundas residencias de montaña.
3. **Negocios** — hoteles, casas rurales, alojamientos turísticos.

### 1.3 Atributos diferenciales

- Taller propio en Jaca (no subcontratan confección).
- Showroom físico con +2.000 muestras tangibles.
- Marcas exclusivas de tejido no disponibles en otros canales locales.
- Cobertura geográfica: Pirineo aragonés (Jaca, Biescas, Valle de Tena, Valle de Aragón, etc.).
- Razón social: **Textil Deco Asociados, S.L.**

### 1.4 Razón social y datos de contacto

- **Empresa:** Textil Deco Asociados, S.L.
- **Showroom:** C/ Domingo Miral, 1 · 22700 Jaca, Aragón.
- **Teléfonos:** +34 974 288 787 · +34 630 908 883.
- **WhatsApp:** wa.me/34630908883.
- **Email:** tienda@habitatdecor.es.
- **Horario:** Lun–Sáb 10:30–13:30 y 17:00–20:00. Domingos cerrado.
- **Redes:**
  - Facebook: `facebook.com/profile.php?id=61575292613905`
  - Instagram: `instagram.com/habitatdecorjaca/`
  - Pinterest: `es.pinterest.com/HabitatDecorJaca`
- **Galería:** `photos.app.goo.gl/HNtpZNyYrDLnJHvP9` (Google Photos pública).

---

## 2. Paleta cromática (resumen)

| Token | Hex | Rol |
|---|---|---|
| `--c-ink` | `#3C3C3C` | Texto principal |
| `--c-ink-soft` | `#6B6560` | Texto secundario |
| `--c-gold` | `#B28622` | Acento, CTA, eyebrow, hover |
| `--c-sand` | `#D2BF81` | Acento secundario, bordes suaves |
| `--c-linen` | `#DFD3C8` | Separadores, fondos cálidos |
| `--c-bg-soft` | `#EDE8E2` | Fondo alternativo de sección |
| `--c-bg` | `#F2EFEC` | Fondo base del sitio |
| `--c-white` | `#FFFFFF` | Cards, paneles flotantes |
| `--c-gold-dim` | `rgba(178,134,34,.14)` | Hover/active sutil |

**Regla de oro:** el dorado `#B28622` es la única tinta cromática activa. Aparece en eyebrow, CTAs, hover, divisores, números destacados. Nunca como fondo extenso.

Detalle completo: `01-colors.md`.

---

## 3. Tipografía (resumen)

**Display — Dancing Script (proxy de Rocking Horse).** Manuscrita, con ligaduras. Solo para titulares, números grandes y firma del logo. Pesos 400 y 600.

**Cuerpo — Quicksand.** Sans-serif geométrica, redondeada, neutral. Para todo lo que no sea display. Pesos 300, 400, 500, 600.

**Escala display (clamp):**
- `t-hero` 3–5.8rem
- `t-section` 2.4–3.6rem
- `t-card` 1.5rem
- Drawer link 1.65rem

**Escala cuerpo:**
- Body XL 0.92rem · Body 0.88rem · Body S 0.82rem
- Eyebrow 0.72rem (`uppercase`, `letter-spacing:.24em`)
- Botón 0.7rem · Nav 0.63rem · Drop subtitle 0.7rem
- Drop eyebrow 0.57rem (`uppercase`, `letter-spacing:.18em`)

**Carga oficial (Google Fonts):**
```html
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;600&family=Quicksand:wght@300;400;500;600&display=swap" rel="stylesheet">
```

Detalle completo: `02-typography.md`.

---

## 4. Voz de marca (resumen)

- **Persona:** segunda persona singular (`tú`). Nunca usted, nunca vosotros, nunca nosotros corporativo plural mayestático.
- **Registro:** formal, directo, sin coloquialismo ni publicitario hueco.
- **Verbos preferidos:** diseñamos, fabricamos, instalamos, asesoramos, coordinamos, confeccionamos, desplazamos.
- **Verbos prohibidos:** crear (vacío), ofrecer (genérico), brindar (cursi), entregar (logístico), proporcionar (burocrático).
- **Estructura headline tipo:** sustantivo concreto + a medida + para tu espacio.
- **Eyebrow tipo:** dos palabras, todo en mayúsculas, letter-spacing amplio (ej: `JACA · PIRINEO ARAGONÉS`, `LO QUE HACEMOS`, `NUESTRO PROCESO`).

Frases-firma:
- "Diseñamos, fabricamos e instalamos."
- "Sin intermediarios."
- "Plazos confirmados desde el primer día."
- "Cada producto sale de nuestro taller."
- "Tu proyecto, nuestra prioridad."

Detalle completo: `05-voice-and-copy.md`.

---

## 5. Iconografía (resumen)

Sistema híbrido:

1. **Font Awesome 6 Free** (Solid + Brands) — para casi toda la UI. CDN: `cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css`.
2. **SVG propios inline** — para nav dropdowns y elementos identitarios. `viewBox="0 0 16 16"`, `stroke="currentColor"`, `fill="none"`, `stroke-width:1.4`. Almacenados en `03-assets/icons-svg/`.

Patrón visual: el icono va en círculo o cuadrado de 48px con borde `1px solid var(--c-sand)`, color `var(--c-gold)`. En hover el fondo se rellena con `var(--c-gold-dim)` y el borde pasa a `var(--c-gold)`.

Mapa completo de iconos por contexto: `04-icons.md`.

---

## 6. Componentes principales

| Componente | Selector | Uso |
|---|---|---|
| Eyebrow | `.eyebrow` | Etiqueta de sección, mayúsculas, tracking ancho, dorado |
| Divisor | `.rule` | Línea dorada de 36px bajo el eyebrow o titular |
| Hero | `.t-hero` + `.hero-h1` | Titular display H1 con accent dorado |
| Sección H2 | `.t-section` | Display, alineable centrado o izquierda |
| Card titular | `.t-card` | Display 1.5rem |
| Body | `.body-p` | Quicksand 0.92rem, line-height 1.8 |
| Botón principal | `.btn-gold` | Fondo dorado, texto blanco |
| Botón secundario | `.btn-outline` | Borde, hover dorado |
| Botón nav primario | `.btn-agendar` | Dorado pequeño |
| Botón nav secundario | `.btn-hablanos` | Outline arena pequeño |
| Tarjeta audiencia | `.aud-card` | Card grande con icono, hover borde dorado |
| Tarjeta servicio | `.svc-card` | Card foto + número + hover panel descriptivo |
| Banda impacto | `.impact-band` | Banda foto Pirineo + cifras alternadas |
| Paso proceso | `.proceso-step` | Número grande + icono + descripción |

Detalle completo y código: `03-components.md` + snippets en `05-snippets/`.

---

## 7. Layout y ritmo

- **Contenedor base:** `max-width: 1200px`, `padding-inline: 28px`.
- **Altura header fija:** `--nav-h: 72px`.
- **Radio global:** `3px` (no más, no menos — **no** redondear cards estilo SaaS).
- **Sombras:**
  - Pequeña `0 2px 14px rgba(60,60,60,.08)`
  - Media `0 6px 30px rgba(60,60,60,.11)`
- **Easing:**
  - Standard `cubic-bezier(.25,.46,.45,.94)` — entrada/salida cards y nav
  - Out `cubic-bezier(0,0,.2,1)` — animaciones fade-up de hero
- **Breakpoints:** mobile-first; el menú lateral aparece a partir de `≤768px`. WhatsApp flotante oculto en desktop.
- **Overlays:** siempre muy ligeros. Si se usa overlay sobre foto, opacidad ≤ 30%.

Detalle completo: `07-spacing-and-layout.md`.

---

## 8. Imagen y dirección de arte

- **Solo fotografía real** del taller, instalaciones, showroom y proyectos del Pirineo. Está prohibido el stock genérico y la imagen generada por IA.
- Etiquetas tipo "Proyecto real · [localidad]" sobre las fotos importantes.
- Tonalidad cálida, luz natural, foco en el textil instalado, no en escenografía aspiracional.
- No retocar la luz hasta volverla irreal: el invierno pirenaico es plomizo, parte del relato.
- Las imágenes se cargan desde `/images/` en producción. Catálogo completo con alt text en `03-assets/photography/manifest.json`.

Detalle completo: `06-imagery-direction.md`.

---

## 9. Reglas innegociables

1. **Tipografía display SOLO Dancing Script.** Nunca otra cursiva, nunca itálica simulada de Quicksand.
2. **Dorado #B28622 con moderación.** Nunca como fondo de bloque grande.
3. **Segunda persona singular siempre.** No mezclar con `usted` ni `vosotros`.
4. **Radio 3px.** Las esquinas redondeadas grandes están prohibidas.
5. **Solo fotos reales.** Cero stock, cero IA generativa, cero renders 3D.
6. **No se renombran las audiencias.** "Profesionales", "Viviendas y segundas residencias", "Hoteles y negocios". En el navbar pueden abreviarse a Profesionales / Particulares / Negocios — y solo ahí.
7. **El teléfono se muestra siempre formateado:** `+34 974 288 787` (con espacios cada 3 dígitos tras el prefijo).
8. **El logo manuscrito siempre acompañado del icono PNG** `images/logo-habitat-decor2.png`. No usar el icono solo a menos que sea favicon o app icon.
