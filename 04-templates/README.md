# 04 — Plantillas aplicadas

Tres plantillas HTML completas, listas para abrir en navegador o usar como base de un nuevo proyecto.

---

## Inventario

| Archivo | Para qué sirve | Cuándo elegirla |
|---|---|---|
| `landing-page.html` | Landing de campaña con hero + USP + producto destacado + proceso + formulario | Una sola página de conversión: anuncio Google Ads, campaña meta, código QR de visita comercial |
| `product-catalog.html` | Catálogo filtrable de producto (cortinas, tapicería, etc.) | Página de cabecera de categoría dentro de un sitio web mayor |
| `brochure.html` | Brochure corporativo digital de un solo scroll, con storytelling | Documento institucional para enviar por email, presentar a partners o imprimir como PDF |

---

## Cómo abrir las plantillas

1. **Local rápido (sin descargar imágenes):**
   - Abre el HTML en un navegador. Las imágenes saldrán rotas.
   - Las plantillas siguen siendo navegables y útiles para evaluar layout y tipografía.

2. **Con imágenes reales:**
   - Desde la raíz de la biblioteca, ejecuta `bash 03-assets/download-images.sh`.
   - Vuelve a abrir la plantilla. Todas las imágenes funcionarán.

3. **Con servidor local (recomendado):**
   ```
   cd habitat-decor-style-library
   python3 -m http.server 8080
   ```
   Luego visita `http://localhost:8080/04-templates/landing-page.html`. Esto evita problemas de CORS con fuentes y rutas relativas.

---

## Estructura de las plantillas

Todas siguen el mismo esqueleto:

```html
<head>
  <!-- Meta SEO con patrón de marca -->
  <!-- Google Fonts: Dancing Script + Quicksand -->
  <!-- Font Awesome 6 desde CDN -->
  <!-- ../02-tokens/tokens.css -->
  <!-- <style> propio de la plantilla, con prefijo .lp- / .cat- / .br- -->
</head>
<body>
  <!-- Header -->
  <!-- Secciones de contenido -->
  <!-- Footer / contacto -->
</body>
```

**Ningún CSS de la plantilla redefine tokens.** Si quieres cambiar el dorado o la tipografía, ajustas `tokens.css` y todas las plantillas se actualizan a la vez.

---

## Patrones de adaptación frecuentes

### Cambiar el dorado por otro color de marca (ej. cliente B2B)

No procede en Habitat & Decor. Si una landing pertenece a otra marca aliada, **clona la biblioteca** y cambia tokens. No mezcles.

### Convertir `landing-page.html` a una variante de servicio (ej. tapicería)

1. Sustituye la imagen del hero (`cortina_lino.jpg` → `tapizado_sofa.jpg`).
2. Reescribe el H1 con el patrón `[servicio] a medida en el Pirineo`.
3. Cambia la lista de bullet points en la sección de producto destacado.
4. Mantén la estructura USP + proceso + formulario tal cual.

### Adaptar `product-catalog.html` a otra categoría

1. Sustituye el array de chips de filtros por las tipologías de la nueva categoría.
2. Reemplaza las imágenes y descripciones de cada `cat-item`.
3. Mantén intactos el header, el sticky de filtros y la CTA final.

### Generar PDF del brochure

```
# con headless chrome
google-chrome --headless --disable-gpu \
  --print-to-pdf=brochure.pdf \
  --no-pdf-header-footer \
  http://localhost:8080/04-templates/brochure.html
```

O abrir en navegador, **Imprimir → Guardar como PDF** con márgenes mínimos.

---

## Qué NO está incluido en las plantillas

Lo siguiente queda fuera del scope para mantener las plantillas portables y sin dependencias:

- **JavaScript de filtros:** los chips de `product-catalog.html` son visuales. Cuando se integre en producción, conectar con vanilla JS o framework.
- **Backend del formulario:** el `<form>` de la landing está en demo (alert). Conectar a Mailgun, Brevo, Formspree, o backend propio.
- **Mapa de Google Maps:** las plantillas no incluyen `<iframe>` del mapa para no cargar Google. Añadir cuando se integre en sitio real.
- **Cookie banner:** dependiente de proveedor (Cookiebot, Iubenda, etc.). No incluido.
- **Header completo con los 3 dropdowns:** las plantillas usan un header simplificado para ser autocontenidas. Para el header completo, ver `05-snippets/header-nav.html`.

---

## Reglas para crear nuevas plantillas

Si añades una plantilla a este directorio, debe cumplir:

1. **Cargar tokens.css.** No definir tokens locales que dupliquen los de marca.
2. **Usar `var(--c-...)` siempre.** Ningún hex hardcodeado dentro del archivo.
3. **Usar las dos familias tipográficas.** Cero excepciones.
4. **Imágenes de `../03-assets/photography/`.** Cero stock, cero externos.
5. **Incluir `<head>` con meta description y title acordes al patrón de marca.**
6. **Ser navegable sin JavaScript.** El JS solo añade interactividad opcional.
7. **Documentarla en este README** con su uso esperado.
