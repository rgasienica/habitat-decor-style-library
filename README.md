# Habitat & Decor — Style Library

Biblioteca de marca y sistema de diseño para Habitat & Decor (habitatdecor.es), estudio-taller textil en Jaca, Pirineo aragonés.

Esta biblioteca es la **fuente única de verdad** para cualquier proyecto digital o impreso de la marca: web, landing pages, catálogos, brochure corporativo, fichas de producto, redes sociales, presentaciones.

---

## Cómo usar esta biblioteca

1. **Diseñador / desarrollador parte de aquí.** No partas de cero ni copies de la web en producción: usa los tokens, snippets y plantillas de este repo.
2. **No edites los archivos de `01-style-guide` ni `02-tokens`** sin acuerdo. Son contrato de marca.
3. **Para un proyecto nuevo:**
   - Copia `02-tokens/tokens.css` al proyecto.
   - Importa los iconos SVG de `03-assets/icons-svg` que necesites.
   - Parte de la plantilla más cercana en `04-templates/`.
   - Reutiliza snippets de `05-snippets/`.
4. **Imágenes:** ejecuta `bash 03-assets/download-images.sh` una vez para poblar `03-assets/photography/` con la fototeca real desde habitatdecor.es.

---

## Estructura del repositorio

```
habitat-decor-style-library/
│
├── README.md ............................ este archivo
│
├── 01-style-guide/ ...................... documentación humana
│   ├── 00-master-style-guide.md ......... resumen ejecutivo de marca
│   ├── 01-colors.md ..................... paleta + reglas de aplicación
│   ├── 02-typography.md ................. fuentes, tamaños, escalas
│   ├── 03-components.md ................. botones, cards, secciones
│   ├── 04-icons.md ...................... mapa Font Awesome + SVG propios
│   ├── 05-voice-and-copy.md ............. tono, vocabulario, frases tipo
│   ├── 06-imagery-direction.md .......... dirección fotográfica
│   └── 07-spacing-and-layout.md ......... grid, breakpoints, ritmos
│
├── 02-tokens/ ........................... tokens de diseño (máquina)
│   ├── tokens.css ....................... CSS variables (fuente principal)
│   ├── tokens.json ...................... versión JSON para herramientas
│   ├── _variables.scss .................. para proyectos SCSS
│   └── tailwind-preset.js ............... preset Tailwind opcional
│
├── 03-assets/ ........................... activos visuales
│   ├── logo/ ............................ logo en variantes
│   ├── photography/ ..................... fototeca (poblar con script)
│   │   └── manifest.json ................ catálogo + alt text + uso
│   ├── icons-svg/ ....................... iconos propios extraídos del sitio
│   └── download-images.sh ............... script de descarga
│
├── 04-templates/ ........................ plantillas aplicadas listas
│   ├── landing-page.html ................ landing de campaña
│   ├── product-catalog.html ............. catálogo de producto
│   ├── brochure.html .................... brochure corporativo digital
│   └── README.md ........................ guía de uso de plantillas
│
└── 05-snippets/ ......................... bloques copy-paste
    ├── header-nav.html
    ├── hero.html
    ├── audience-cards.html
    ├── service-grid.html
    ├── impact-band.html
    ├── footer.html
    └── README.md
```

---

## Resumen mínimo para no leer todo

**Paleta:** `#3C3C3C` tinta · `#B28622` oro · `#D2BF81` arena · `#DFD3C8` lino · `#F2EFEC` fondo crema · `#FFFFFF` blanco.

**Tipografía:**
- Display: `Dancing Script` (proxy fiel de **Rocking Horse**, fuente oficial de marca, no disponible en Google Fonts).
- Cuerpo: `Quicksand` 300/400/500/600.

**Voz:** Formal, directa, segunda persona (`tú`). Sin palabras vacías. Sin mezcla de registros.

**Iconos:** Font Awesome 6 Free (Solid + Brands) + iconos propios SVG en `03-assets/icons-svg/`.

**Radio:** `3px` global. **Sombra estándar:** `0 6px 30px rgba(60,60,60,.11)`. **Easing:** `cubic-bezier(.25,.46,.45,.94)`.

**Audiencias en orden de prioridad:** Profesionales → Viviendas → Hoteles y negocios.

---

## Versión

Generada el 2026-05-05 a partir del estado de habitatdecor.es y `Gui_a_de_estilo.pdf`.

**Para mantener la biblioteca viva:** cuando se cambie un token en producción, actualizar también `02-tokens/tokens.css` y los archivos de `01-style-guide`. La web producción es el ground truth.

---

## Contacto

Habitat & Decor — Textil Deco Asociados, S.L.
C/ Domingo Miral, 1 · 22700 Jaca, Aragón
+34 974 288 787 · +34 630 908 883
tienda@habitatdecor.es
habitatdecor.es
