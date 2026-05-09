{
  "entregable": "habitat-decor-style-library.zip",
  "tamaño": "80 KB",
  "archivos": 37,
  "estructura": {
    "01-style-guide": ["00-master", "01-colors", "02-typography", "03-components", "04-icons", "05-voice-and-copy", "06-imagery-direction", "07-spacing-and-layout"],
    "02-tokens": ["tokens.css", "tokens.json", "_variables.scss", "tailwind-preset.js"],
    "03-assets": {
      "icons-svg": "11 SVG identitarios",
      "photography/manifest.json": "67 imágenes catalogadas",
      "download-images.sh": "script ejecutable curl"
    },
    "04-templates": ["landing-page.html", "product-catalog.html", "brochure.html", "README.md"],
    "05-snippets": ["header-nav", "hero", "audience-cards", "service-grid", "impact-band", "footer", "README.md"]
  },
  "pasos_post_descarga": [
    "1. unzip habitat-decor-style-library.zip",
    "2. cd habitat-decor-style-library",
    "3. bash 03-assets/download-images.sh  # descarga 67 imágenes desde habitatdecor.es",
    "4. python3 -m http.server 8080  # abre http://localhost:8080/04-templates/"
  ],
  "limitacion_conocida": "El sandbox bloquea descargas binarias desde habitatdecor.es. Las imágenes se descargan localmente con el script (curl). Las plantillas funcionan como esqueleto sin imágenes y con imágenes tras ejecutar el script.",
  "destino_sugerido": "Repo Git privado o carpeta Drive. README raíz documenta uso y reglas.",
  "version": "Generada 2026-05-05 desde habitatdecor.es + Gui_a_de_estilo.pdf"
}