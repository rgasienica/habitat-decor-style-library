# 06 — Dirección fotográfica e imagen

La fotografía es **el principal vehículo emocional** de la marca. Esta guía protege ese activo.

---

## 1. Principio rector

> Toda imagen visible en cualquier soporte de Habitat & Decor debe ser fotografía real de proyectos propios, del taller, del showroom o del entorno geográfico (Pirineo aragonés).

**Lo que está prohibido:**

- ❌ Imágenes de stock (Shutterstock, Unsplash, Adobe Stock, etc.).
- ❌ Imagen generada por IA (Midjourney, DALL-E, Stable Diffusion, Flux).
- ❌ Renders 3D fotorrealistas (Blender, V-Ray) salvo explícitamente etiquetados como render técnico de propuesta.
- ❌ Recursos genéricos descargados de catálogos de proveedores sin atribución y sin contexto local.

**Lo que está permitido y se incentiva:**

- ✅ Foto real de instalación finalizada.
- ✅ Foto del taller y del proceso de confección.
- ✅ Foto del showroom y muestrarios físicos.
- ✅ Foto del paisaje y de las localidades del Pirineo (cuando ilustran el entorno geográfico de la marca).
- ✅ Foto de detalle de tejido, ondas, costuras, herrajes.
- ✅ Foto del cliente real con permiso explícito.

---

## 2. Dirección estética

### Iluminación

- **Luz natural** preferente. Las cortinas son producto: la luz que las atraviesa es parte del hero shot.
- **Hora dorada** o luz difusa de mañana/tarde — no luz cenital de mediodía dura.
- **Invierno aceptado.** El Pirineo en invierno es plomizo, gris-azul, y eso es parte del relato. No siempre se necesita un día azul de verano.
- **No flash artificial** salvo emergencia. El flash mata las ondas y los pliegues del tejido.

### Composición

- Encuadre que muestre la **caída completa de la cortina** desde galería hasta suelo.
- Si es un dormitorio, mostrar la cortina **en relación a la cama y a la ventana**, no aislada.
- Pliegues visibles. Las ondas perfectas son producto. Las arrugas no.
- Permitido: foto desde el interior con luz exterior pasando — el "rayo de sol".
- Permitido: foto cenital de muestrarios, tejidos y elementos del taller.
- Permitido: foto detalle de técnica (mano cosiendo, máquina, pinza, herraje).

### Color y postproducción

- Tonos **cálidos**: ligeramente desviados a ámbar.
- Saturación moderada: ni saturado tipo Instagram, ni desaturado tipo cine art-house.
- Contraste medio: el textil necesita ver sus propios pliegues.
- **No filtros agresivos.** Cero VSCO, cero efectos lo-fi, cero blanco y negro (la marca es a color).
- Sí permitido: ligero ajuste de balance de blancos hacia cálido, ligero levantamiento de sombras.

---

## 3. Etiquetas y captions sobre foto

Patrón: **etiqueta superior pequeña** + **titular abajo izquierda o sobre la imagen al hover**.

### Etiqueta tipo "Proyecto real · Jaca"

```html
<div class="photo-tag">
  <i class="fas fa-circle" style="color:var(--c-gold); font-size:.4rem"></i>
  <span>Proyecto real · Jaca</span>
</div>
```

```css
.photo-tag {
  display: inline-flex;
  align-items: center;
  gap: 0.4rem;
  background: rgba(255,255,255,0.92);
  padding: 0.4rem 0.8rem;
  border-radius: var(--r);
  font-size: 0.65rem;
  font-weight: 600;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: var(--c-ink);
}
```

### Caption de proyecto en card

- Etiqueta superior: tipo de proyecto en uppercase tracking ancho ("Proyecto particular", "Compra e instalación", "Renovación de mobiliario").
- Titular: ubicación en bold o display ("Biescas", "Camping · Valle de Aragón").
- Cuerpo: testimonio breve del cliente o descripción del trabajo realizado.
- Pie: firma del cliente con localidad.

---

## 4. Catálogo de imágenes en uso

Inventario completo por sección. El manifest detallado está en `03-assets/photography/manifest.json`.

### Hero / portada

- `hero-curtain.jpg` — Cortinas de lino a medida instaladas en Jaca. **Imagen hero principal del sitio.**

### Proyectos / galería

- `proyecto_Biescas.jpeg` — Salón con cortinas de gasa blanca y visillos terracota.
- `Sofa_cama_sistema_italiano.jpg` — Salón con papel pintado tipográfico.
- `silla_butaquilla.jpg` — Silla butaquilla tapizada en verde con cojín paisley.
- `cortinas_aulas.jpeg` — Cortinas opacas en aula de centro educativo.
- `sillas_retapizadas.jpg` — Sillas apilables de oficina retapizadas.
- `cortina_dormitorio.jpg` — Cortinas de lino gris con visillo blanco, chalet Valle de Tena.
- `camping_valle_aragon.jpg` — Bungalow del Camping Valle de Aragón, tapicería integral.

### Cortinas y estores

- `cortinas/cortina_dormitorio_blanco.jpg`
- `cortinas/cortina_dormitorio_oscurante.jpg`
- `cortinas/cortina_estor_bar.jpg`
- `cortinas/cortina_estor_cocina.jpg`
- `cortinas/cortina_estor_paquetto.jpg`
- `cortinas/cortina_lino.jpg`
- `cortinas/cortina_salon_biescas.jpg`
- `cortinas/cortina_salon_esquina.jpg`
- `cortinas/cortina_semiplana_Jaca.jpg`
- `cortinas/cortina_visillo_riel.jpg`
- `cortinas_lino.jpg`
- `H_D_cortinas.webp`

### Tapicería

- `tapiceria/Sofa_cama_sistema_italiano.jpg`
- `tapiceria/butaca_tapizada.jpg`
- `tapiceria/cabecero_cama.jpg`
- `tapiceria/cabecero_cama_acabado.jpeg`
- `tapiceria/cabecero_cama_ajustada_instalacion.jpg`
- `tapiceria/resstaurado_estructura_asiento.jpeg`
- `tapiceria/sofacama_pared_papel_pintado.jpg`
- `tapiceria/tapiceria_bancos_a_medida_hotel.jpg`
- `tapiceria/tapizado_baul.jpg`
- `tapiceria/tapizado_butaca_orejera.jpg`
- `tapiceria/tapizado_butaca_reclinable.jpg`
- `tapiceria/tapizado_espumas.jpeg`
- `tapiceria/tapizado_paredes.jpeg`
- `tapiceria/tapizado_puff.jpg`
- `tapiceria/tapizado_sofa.jpg`
- `tapiceria/tapizado_sofa_2.jpg`
- `tapiceria/tapizando_banco.jpg`
- `tapiceria/tapizando_estructura_banco.jpg`
- `cabecero_cama_acabado.jpg`
- `tapizado_banco_cadiera.jpg`
- `Mostrario_tapiceria.jpg`

### Papel pintado y alfombras

- `papel-pintado/alfombra.jpg`
- `papel-pintado/alfombras_a_medida.jpg`
- `papel-pintado/mostarario_alfombras.jpg`
- `papel-pintado/papel_pintado1.jpg`
- `papel-pintado/papel_pintado2.jpg`
- `papel-pintado/papel_pintado_mostrario-4.jpg`
- `papel-pintado/papel_pintado_texturas-3.jpg`

### Muebles a medida

- `muebles/Cama_nido.jpg`
- `muebles/butacas.jpg`
- `muebles/motorizados.jpg`
- `muebles/muebles_hero.jpg`
- `muebles/salon.jpg`

### Showroom

- `showroom_auxiliar.jpg`
- `showroom_cortinas.jpg`
- `showroom_cortinas_1.jpg`
- `showroom_papel_pintado.jpeg`
- `showroom_tejidos.jpg`
- `mostrarios.jpg`

### Taller y proceso

- `taller1.webp`
- `transporte.jpg`
- `H_D_image3.jpg`, `H_D_image4.jpg`, `H_D_image6.jpg`, `H_D_image8.webp` — fotos genéricas/atmósfera del taller y showroom.

### Negocios

- `H_D_negocios1.jpg`
- `negocio_casa_rural.jpg`
- `interior-mountain-view.jpg`
- `salon_vestido.jpg`

### Logo

- `logo-habitat-decor2.png` — Logo principal con icono.
- `favicon/favicon-16x16.png`, `favicon/favicon-32x32.png`, `favicon/apple-touch-icon.png`, `favicon/site.webmanifest`.

### Open Graph / social

- `og-image.jpg` (1200×630).
- `twitter-card.jpg`.

---

## 5. Naming convention de archivos

Para añadir nuevas imágenes al pool, seguir este patrón:

`[categoria]_[descripcion-corta]_[ubicacion-opcional].[ext]`

Ejemplos:
- `cortina_lino_dormitorio_jaca.jpg`
- `tapiceria_butaca_orejera.jpg`
- `papel_pintado_salon_biescas.jpg`

Carpetas de organización:
- `images/cortinas/`
- `images/tapiceria/`
- `images/papel-pintado/`
- `images/muebles/`
- `images/proyectos/`
- `images/taller/`
- `images/showroom/`
- `images/favicon/`

Formatos:
- **JPG** para fotos grandes con muchos detalles.
- **WEBP** para optimización de peso (preferido en hero y carga inicial).
- **PNG** solo para logos, iconos rasterizados con transparencia, capturas con texto fino.
- **SVG** para iconos, ilustraciones planas, logos vectoriales.

Tamaños recomendados:
- Hero desktop: 2400×1600 px (sirve hasta retina).
- Hero móvil: 1200×900 px.
- Card de proyecto: 1200×1500 px (aspect 4/5).
- Thumbnail catálogo: 800×600 px.
- OG image: 1200×630 px.

---

## 6. Alt text

Patrón: **[qué es] + [tejido o técnica] + [ubicación si es proyecto real]**.

- ✅ "Cortinas de lino a medida instaladas por Habitat & Decor en Jaca"
- ✅ "Salón con cortinas de gasa blanca y visillos terracota en Biescas"
- ✅ "Bungalow en Camping Valle de Aragón: dormitorio con cabecero tapizado y sala de estar retapizada"
- ❌ "Cortina bonita"
- ❌ "Cortinas Habitat Decor cortinas Jaca cortinas Pirineo cortinas baratas" (keyword stuffing)
- ❌ "" (vacío) salvo cuando la imagen es decorativa pura.

---

## 7. Reglas innegociables de imagen

1. **Foto real, siempre.** Cero stock, cero IA, cero render salvo etiqueta explícita.
2. **Tonos cálidos.** Postprocesado mínimo, dirección a ámbar.
3. **Pliegues visibles.** El producto es el pliegue.
4. **Etiqueta de procedencia.** Cuando una foto representa un proyecto, etiquetar localidad.
5. **Permiso del cliente.** Toda foto de proyecto particular requiere permiso explícito por escrito.
6. **Alt text obligatorio.** Una imagen sin alt text es un bug, no un detalle.
7. **Optimización.** WEBP en hero. JPG comprimido a 80% calidad para resto. Sin imágenes >500KB salvo hero.
