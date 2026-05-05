# 05 — Snippets

Bloques HTML+CSS autocontenidos para ensamblar páginas rápidamente. Cada snippet:

- Incluye su propio `<style>` mínimo.
- Asume que `02-tokens/tokens.css`, Google Fonts y Font Awesome 6 están cargados en la página huésped.
- Es independiente: se puede mover entre proyectos.
- Usa rutas a `03-assets/` que deben ajustarse al destino real al copiar.

---

## Inventario

| Snippet | Para qué |
|---|---|
| `header-nav.html` | Header fijo con logo, 3 dropdowns, CTAs y hamburger móvil |
| `hero.html` | Hero split con copy izquierda + foto derecha, animación fadeUp |
| `audience-cards.html` | 3 cards de audiencia (Profesionales / Vivienda / Negocio) |
| `service-grid.html` | Grid de 6 servicios con foto + número + hover panel blanco |
| `impact-band.html` | Banda con foto panorámica + 4 cifras alternadas |
| `footer.html` | Footer en 4 columnas + redes sociales + línea legal |

---

## Cómo usar un snippet

1. **Carga prerequisitos en el `<head>` de tu página:**

   ```html
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;600&family=Quicksand:wght@300;400;500;600&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
   <link rel="stylesheet" href="02-tokens/tokens.css">
   ```

2. **Pega el snippet** dentro de `<body>`.

3. **Ajusta rutas de imágenes** (`03-assets/photography/...`) al path real de tu proyecto.

4. **Verifica que existan las imágenes** ejecutando `bash 03-assets/download-images.sh`.

---

## Orden recomendado para una landing completa

```
header-nav.html        ← <header> fijo
hero.html              ← primer pliegue
impact-band.html       ← refuerzo de credibilidad
audience-cards.html    ← segmentación de visitante
service-grid.html      ← lo que hacemos
[contenido propio]     ← proyectos, taller, proceso, etc.
footer.html            ← cierre
```

---

## Notas técnicas

- Los snippets usan **selectores con prefijo `.hd-`** para evitar colisiones con CSS del proyecto huésped.
- Los `<style>` están al final de cada snippet por simplicidad. En producción conviene mover ese CSS a `tokens.css` o a un archivo dedicado.
- Las animaciones `@keyframes` (fadeUp) se duplican entre snippets — al consolidar en producción, definirlas una sola vez en `tokens.css`.
- El JS de dropdown del header no está incluido. La nav funciona en hover puro (CSS). Para clic-toggle en móvil añadir el JS del proyecto principal.

---

## Adaptaciones frecuentes

- **Cambiar las 6 cards de servicio:** editar `service-grid.html` directamente, manteniendo la numeración 01–06 y la estructura de `.hd-svc__card`.
- **Cambiar audiencias:** editar `audience-cards.html` respetando los 3 bloques. **No reducir a 2 ni ampliar a 4** — la estructura de marca son tres audiencias.
- **Cambiar foto del hero:** sustituir `hero-curtain.jpg` por otra imagen del manifest. Mantener el aspect-ratio 4/5.
- **Eliminar la banda de impacto:** opcional según el tipo de página. La landing y la home la usan; un catálogo o brochure puede prescindir.
