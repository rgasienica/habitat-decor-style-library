#!/usr/bin/env bash
# ════════════════════════════════════════════════════════════════
# HABITAT & DECOR — Image Download Script
# ════════════════════════════════════════════════════════════════
# 
# Descarga la fototeca completa desde habitatdecor.es y la guarda
# en 03-assets/photography/ replicando la estructura de carpetas.
#
# Uso:
#   cd habitat-decor-style-library
#   bash 03-assets/download-images.sh
#
# Requisitos: bash, curl. (Funciona en macOS, Linux y WSL.)
#
# Si quieres usar el servidor de test (Cloudflare):
#   BASE=https://test.habitatdecor.es bash 03-assets/download-images.sh
# ════════════════════════════════════════════════════════════════

set -euo pipefail

BASE="${BASE:-https://habitatdecor.es}"
OUT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/photography" && pwd)"

echo ""
echo "  Descargando fototeca Habitat & Decor"
echo "  Origen: $BASE"
echo "  Destino: $OUT_DIR"
echo ""

# Crear subdirectorios
mkdir -p "$OUT_DIR"/{cortinas,tapiceria,papel-pintado,muebles,favicon}

# Lista completa de imágenes (relativa a $BASE/images/)
IMAGES=(
  # Logo
  "logo-habitat-decor2.png"

  # Favicon
  "favicon/favicon-16x16.png"
  "favicon/favicon-32x32.png"
  "favicon/apple-touch-icon.png"
  "favicon/site.webmanifest"

  # Social
  "og-image.jpg"
  "twitter-card.jpg"

  # Hero
  "hero-curtain.jpg"

  # Proyectos destacados
  "proyecto_Biescas.jpeg"
  "Sofa_cama_sistema_italiano.jpg"
  "silla_butaquilla.jpg"
  "cortinas_aulas.jpeg"
  "sillas_retapizadas.jpg"
  "cortina_dormitorio.jpg"
  "camping_valle_aragon.jpg"

  # Cortinas
  "cortinas/cortina_dormitorio_blanco.jpg"
  "cortinas/cortina_dormitorio_oscurante.jpg"
  "cortinas/cortina_estor_bar.jpg"
  "cortinas/cortina_estor_cocina.jpg"
  "cortinas/cortina_estor_paquetto.jpg"
  "cortinas/cortina_lino.jpg"
  "cortinas/cortina_salon_biescas.jpg"
  "cortinas/cortina_salon_esquina.jpg"
  "cortinas/cortina_semiplana_Jaca.jpg"
  "cortinas/cortina_visillo_riel.jpg"
  "cortinas_lino.jpg"
  "H_D_cortinas.webp"

  # Tapicería
  "tapiceria/Sofa_cama_sistema_italiano.jpg"
  "tapiceria/butaca_tapizada.jpg"
  "tapiceria/cabecero_cama.jpg"
  "tapiceria/cabecero_cama_acabado.jpeg"
  "tapiceria/cabecero_cama_ajustada_instalacion.jpg"
  "tapiceria/resstaurado_estructura_asiento.jpeg"
  "tapiceria/sofacama_pared_papel_pintado.jpg"
  "tapiceria/tapiceria_bancos_a_medida_hotel.jpg"
  "tapiceria/tapizado_baul.jpg"
  "tapiceria/tapizado_butaca_orejera.jpg"
  "tapiceria/tapizado_butaca_reclinable.jpg"
  "tapiceria/tapizado_espumas.jpeg"
  "tapiceria/tapizado_paredes.jpeg"
  "tapiceria/tapizado_puff.jpg"
  "tapiceria/tapizado_sofa.jpg"
  "tapiceria/tapizado_sofa_2.jpg"
  "tapiceria/tapizando_banco.jpg"
  "tapiceria/tapizando_estructura_banco.jpg"
  "cabecero_cama_acabado.jpg"
  "tapizado_banco_cadiera.jpg"
  "Mostrario_tapiceria.jpg"

  # Papel pintado y alfombras
  "papel-pintado/alfombra.jpg"
  "papel-pintado/alfombras_a_medida.jpg"
  "papel-pintado/mostarario_alfombras.jpg"
  "papel-pintado/papel_pintado1.jpg"
  "papel-pintado/papel_pintado2.jpg"
  "papel-pintado/papel_pintado_mostrario-4.jpg"
  "papel-pintado/papel_pintado_texturas-3.jpg"

  # Muebles
  "muebles/Cama_nido.jpg"
  "muebles/butacas.jpg"
  "muebles/motorizados.jpg"
  "muebles/muebles_hero.jpg"
  "muebles/salon.jpg"

  # Showroom
  "showroom_auxiliar.jpg"
  "showroom_cortinas.jpg"
  "showroom_cortinas_1.jpg"
  "showroom_papel_pintado.jpeg"
  "showroom_tejidos.jpg"
  "mostrarios.jpg"

  # Taller
  "taller1.webp"
  "transporte.jpg"
  "H_D_image3.jpg"
  "H_D_image4.jpg"
  "H_D_image6.jpg"
  "H_D_image8.webp"

  # Negocios
  "H_D_negocios1.jpg"
  "negocio_casa_rural.jpg"
  "interior-mountain-view.jpg"
  "salon_vestido.jpg"
)

OK=0
FAIL=0
SKIP=0

for img in "${IMAGES[@]}"; do
  url="$BASE/images/$img"
  dest="$OUT_DIR/$img"

  # Crear directorio si hace falta
  mkdir -p "$(dirname "$dest")"

  # Saltar si ya existe
  if [[ -f "$dest" ]]; then
    SKIP=$((SKIP + 1))
    continue
  fi

  # Descargar
  if curl -sSfL "$url" -o "$dest" 2>/dev/null; then
    OK=$((OK + 1))
    printf "  [OK]   %s\n" "$img"
  else
    FAIL=$((FAIL + 1))
    printf "  [FAIL] %s\n" "$img"
    rm -f "$dest"
  fi
done

echo ""
echo "  Resumen:"
echo "    Descargadas: $OK"
echo "    Ya existían: $SKIP"
echo "    Fallidas:    $FAIL"
echo ""

if [[ $FAIL -gt 0 ]]; then
  echo "  Algunas descargas han fallado. Revisa que las URLs sigan siendo válidas."
  echo "  Si la web se reorganizó, actualiza este script con las nuevas rutas."
  exit 1
fi

echo "  Listo. Fototeca disponible en $OUT_DIR"
