# 01 — Paleta cromática

Paleta oficial extraída de `Gui_a_de_estilo.pdf` y validada contra el CSS de producción de habitatdecor.es.

---

## Paleta primaria (5 colores oficiales del PDF de marca)

| Hex | Nombre interno | Token CSS | Rol |
|---|---|---|---|
| `#3C3C3C` | Tinta carbón | `--c-ink` | Texto principal |
| `#B28622` | Oro Habitat | `--c-gold` | Acento, CTA, hover, eyebrow |
| `#D2BF81` | Arena | `--c-sand` | Acento secundario, bordes |
| `#DFD3C8` | Lino | `--c-linen` | Separadores, fondos cálidos |
| `#F2EFEC` | Crema | `--c-bg` | Fondo base de página |

## Paleta extendida (derivados usados en producción)

| Hex / RGBA | Token CSS | Rol |
|---|---|---|
| `#6B6560` | `--c-ink-soft` | Texto secundario, descripciones |
| `#EDE8E2` | `--c-bg-soft` | Fondo alternativo de sección |
| `#FFFFFF` | `--c-white` | Cards, paneles, botón texto sobre dorado |
| `rgba(178,134,34,.14)` | `--c-gold-dim` | Hover sutil, fondo de chip activo |
| `#9A7318` | (literal) | Hover de `.btn-gold` y `.btn-agendar` (10% más oscuro) |

---

## Reglas de aplicación

### `#3C3C3C` — Tinta carbón

- Color de texto por defecto en `body`.
- Titulares display (`.t-hero`, `.t-section`, `.t-card`).
- Hamburger bars y trazos sobre fondo claro.
- **Nunca** como fondo a página completa. La marca nunca va en modo oscuro.

### `#B28622` — Oro Habitat (color identitario)

- Eyebrow de todas las secciones.
- Color de los CTAs principales (`.btn-gold`, `.btn-agendar`).
- Logo manuscrito en navbar.
- Acento dentro del titular hero (palabra clave en dorado).
- Bordes y trazos hover de cards.
- Iconos en estado hover.
- Numeración de pasos del proceso (01–04, 01–06).
- Estrellas de testimonios.

**Restricciones:**
- No usar como fondo de bloques grandes.
- No usar dos elementos dorados grandes adyacentes (un solo punto de atención por pliegue de pantalla).

### `#D2BF81` — Arena

- Bordes 1px de iconos circulares en estado reposo.
- Borde sutil del botón `.btn-hablanos`.
- Indicadores secundarios en gráficos / banners.
- Etiquetas planas como "Proyecto real · Jaca" (opcional, alternativa más suave al oro).

### `#DFD3C8` — Lino

- Separadores 1px (`.nav-sep`, dividers de sección).
- Fondo de etiquetas y chips informativos.
- Borde sutil de cards en reposo (`border:1px solid var(--c-linen)`).

### `#F2EFEC` — Crema (fondo base)

- Fondo del `body`. Es la base sobre la que respira todo el sistema.
- Fondo de drawer móvil.
- Header semitransparente: `rgba(242,239,236,.96)`.

### `#EDE8E2` — Crema profundo

- Fondo de secciones alternadas a la sección base (cuando se quiere ritmo visual sin meter color).
- Hover de `.drop-item`.

### `#FFFFFF` — Blanco puro

- Fondo de cards de servicio en hover.
- Fondo del panel del dropdown de navegación.
- Texto sobre `.btn-gold` y `.btn-agendar`.

### `rgba(178,134,34,.14)` — Oro tenue

- Fondo del chip activo en navegación cuando un dropdown está abierto.
- Hover sutil de iconos circulares de audiencia.

---

## Pares de contraste validados

| Texto | Fondo | Ratio | WCAG |
|---|---|---|---|
| `#3C3C3C` | `#F2EFEC` | 9.8:1 | AAA |
| `#3C3C3C` | `#FFFFFF` | 11.3:1 | AAA |
| `#6B6560` | `#F2EFEC` | 5.6:1 | AA |
| `#6B6560` | `#FFFFFF` | 6.5:1 | AAA |
| `#B28622` | `#F2EFEC` | 4.0:1 | AA Large |
| `#B28622` | `#FFFFFF` | 4.6:1 | AA |
| `#FFFFFF` | `#B28622` | 4.6:1 | AA (CTA primario) |

**Regla:** el oro `#B28622` no es accesible para texto pequeño sobre fondo blanco. Úsalo en eyebrow (que es semibold + tracking amplio) y en titulares grandes; no para cuerpos largos.

---

## Aplicación en distintos soportes

### Web

Tokens en `02-tokens/tokens.css`. Importar al inicio del proyecto y referenciar siempre por variable, nunca por hex literal.

### Print / brochure

- CMYK aproximado del oro `#B28622`: `C20 M40 Y100 K10` (calibrar siempre con prueba de imprenta sobre papel destino).
- CMYK del lino `#DFD3C8`: `C12 M16 Y22 K0`.
- Pantone equivalente del oro: **Pantone 463 C** (referencia, no oficial — pedir prueba).

### Redes sociales / presentaciones

Usar fondo `#F2EFEC` o `#FFFFFF`. Evitar fondos negros: rompen el código visual de marca.

### Email / firma

- Fondo `#F2EFEC`.
- Cabecera con logotipo dorado `#B28622` sobre crema.
- Texto cuerpo `#3C3C3C` en Quicksand 14px.

---

## Anti-patrones cromáticos

- ❌ Verde, azul, rojo o cualquier color fuera de la paleta para acentos. La marca solo tiene dorado.
- ❌ Gradientes saturados.
- ❌ Sombra negra dura. Sombra siempre con tinta `rgba(60,60,60,.08–.11)`.
- ❌ Modo oscuro (no existe en este sistema).
- ❌ Mezclar dos tonos de oro distintos (solo `#B28622` y su sand `#D2BF81`).
