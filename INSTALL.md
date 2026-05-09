# INSTALL — Guía de instalación de la Style Library

Cómo desplegar `habitat-decor-style-library.zip` en la empresa, completar la fototeca pendiente, y configurar las skills personalizadas para que cualquier agente futuro use la biblioteca de marca correctamente.

---

## 0. Qué tienes en el ZIP

```
habitat-decor-style-library.zip   80 KB · 37 archivos
│
├── README.md                     visión general del paquete
├── 01-style-guide/               8 archivos MD — guía de marca completa
├── 02-tokens/                    4 archivos — tokens en CSS, JSON, SCSS, Tailwind
├── 03-assets/
│   ├── icons-svg/                11 SVG identitarios listos
│   ├── photography/manifest.json catálogo de 67 imágenes con alt text
│   └── download-images.sh        script para poblar la fototeca
├── 04-templates/                 3 plantillas HTML aplicadas + README
└── 05-snippets/                  6 bloques HTML+CSS reutilizables + README
```

**Lo que YA está en el ZIP, listo para usar:**

- Toda la documentación de marca (paleta, tipografía, voz, componentes, layout).
- Todos los tokens en 4 formatos.
- Los 11 iconos SVG propios.
- El manifest completo de las 67 imágenes con alt text y categorías.
- 3 plantillas HTML completas: landing, catálogo, brochure.
- 6 snippets HTML autocontenidos.

**Lo que FALTA y debes completar manualmente:**

- Las 67 imágenes binarias del sitio (logo, hero, proyectos, taller, showroom, cortinas, tapicería, papel pintado, muebles, favicon, OG image). El sandbox no permitió descargar binarios desde habitatdecor.es. **Ver paso 3.**

---

## 1. Cronología de instalación

### Paso 1 — Descomprimir y verificar

```bash
unzip habitat-decor-style-library.zip
cd habitat-decor-style-library
ls -la
```

Resultado esperado:

```
README.md  01-style-guide/  02-tokens/  03-assets/  04-templates/  05-snippets/
```

### Paso 2 — Lectura inicial obligatoria (5 minutos)

Abrir y leer en este orden:

1. `README.md`
2. `01-style-guide/00-master-style-guide.md`

Con esto ya tienes el mapa mental de toda la biblioteca.

### Paso 3 — Completar la fototeca (5 a 10 minutos)

**Por qué falta:** el entorno de generación bloqueó el acceso al hosting de habitatdecor.es y no pudo descargar los binarios. La solución incluida es un script `curl` que ejecutas tú localmente.

Con conexión a internet activa:

```bash
bash 03-assets/download-images.sh
```

Si quieres usar el servidor de test (Cloudflare):

```bash
BASE=https://test.habitatdecor.es bash 03-assets/download-images.sh
```

El script descarga 67 imágenes a `03-assets/photography/`. Resultado esperado:

```
[OK] logo-habitat-decor2.png
[OK] hero-curtain.jpg
[OK] proyecto_Biescas.jpeg
... (64 más)

Resumen:
  Descargadas: 67
  Ya existían: 0
  Fallidas:    0
```

Si alguna falla, comprueba que la URL siga viva en producción y edita `03-assets/download-images.sh` con la ruta corregida.

### Paso 4 — Verificación local

```bash
python3 -m http.server 8080
```

Abrir en navegador:

- `http://localhost:8080/04-templates/landing-page.html`
- `http://localhost:8080/04-templates/product-catalog.html`
- `http://localhost:8080/04-templates/brochure.html`

Las tres plantillas deben verse con imágenes reales, fuentes Dancing Script + Quicksand cargadas y dorado `#B28622` aplicado.

### Paso 5 — Subir a destino persistente

**Opción A: GitHub privado** (recomendada para versionado y diff)

```bash
cd habitat-decor-style-library
git init
git add .
git commit -m "Initial brand library"
git remote add origin git@github.com:habitatdecor/style-library.git
git push -u origin main
```

**Opción B: Google Drive** (para equipo no técnico)

Comprimir tras añadir las imágenes y subir el ZIP completo a `/Habitat & Decor/Marca/Style Library v1.0/`.

**Opción C: ambas.** Drive como espejo accesible para Pocoro y diseñadores externos; Git como fuente técnica.

### Paso 6 — Compartir con equipo y proveedores

- Diseñadores externos reciben el enlace del repo o ZIP de Drive.
- Imprenta recibe `01-style-guide/01-colors.md` (con CMYK y Pantone) + `03-assets/photography/logo-habitat-decor2.png`.
- Agencia de copy recibe `01-style-guide/05-voice-and-copy.md`.
- Desarrollador externo recibe el repo completo y parte de `04-templates/` o `05-snippets/`.

### Paso 7 — Configurar skills personalizadas en Claude

Ver sección 3 de este documento.

---

## 2. Datos clave que no pueden faltar

Resumen ejecutivo de marca para tener a mano sin abrir el ZIP.

### 2.1 Identidad

- **Empresa:** Textil Deco Asociados, S.L.
- **Marca comercial:** Habitat & Decor
- **Sede:** C/ Domingo Miral, 1 · 22700 Jaca, Aragón
- **Teléfono fijo:** +34 974 288 787
- **Móvil / WhatsApp:** +34 630 908 883
- **Email:** tienda@habitatdecor.es
- **Web:** habitatdecor.es
- **Test server:** test.habitatdecor.es (Cloudflare activo, FTP via FileZilla)
- **Horario:** Lun–Sáb 10:30–13:30 y 17:00–20:00 · Domingo cerrado
- **Facebook:** facebook.com/profile.php?id=61575292613905
- **Instagram:** instagram.com/habitatdecorjaca/
- **Pinterest:** es.pinterest.com/HabitatDecorJaca
- **Galería pública:** photos.app.goo.gl/HNtpZNyYrDLnJHvP9

### 2.2 Audiencias (orden de prioridad fijo)

1. Profesionales — decoradores, interioristas, arquitectos, reformistas.
2. Particulares — viviendas y segundas residencias en el Pirineo.
3. Hoteles y negocios — alojamientos turísticos.

### 2.3 Paleta cromática

| Hex | Token CSS | Rol |
|---|---|---|
| `#3C3C3C` | `--c-ink` | Texto principal |
| `#6B6560` | `--c-ink-soft` | Texto secundario |
| `#B28622` | `--c-gold` | Acento, CTA, eyebrow, hover |
| `#9A7318` | `--c-gold-dark` | Hover de .btn-gold |
| `rgba(178,134,34,.14)` | `--c-gold-dim` | Hover sutil |
| `#D2BF81` | `--c-sand` | Acento secundario, bordes |
| `#DFD3C8` | `--c-linen` | Separadores |
| `#EDE8E2` | `--c-bg-soft` | Fondo de sección alternativa |
| `#F2EFEC` | `--c-bg` | Fondo base |
| `#FFFFFF` | `--c-white` | Cards, paneles |
| `#25D366` | `--c-whatsapp` | Solo botón WhatsApp |

### 2.4 Tipografía

- **Display:** `Dancing Script` (proxy fiel de la oficial Rocking Horse, no disponible en Google Fonts). Pesos 400 y 600.
- **Cuerpo:** `Quicksand`. Pesos 300, 400, 500, 600.

**Bloque de carga obligatorio:**

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;600&family=Quicksand:wght@300;400;500;600&display=swap" rel="stylesheet">
```

**Carga Font Awesome:**

```html
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
```

### 2.5 Tokens estructurales

- **Radio global:** `3px` (cards, botones, inputs). Nunca más, nunca menos.
- **Sombra estándar:** `0 6px 30px rgba(60,60,60,.11)`.
- **Easing:** `cubic-bezier(.25,.46,.45,.94)`.
- **Max width contenedor:** `1200px`.
- **Padding lateral:** `28px`.
- **Altura header:** `72px`.
- **Breakpoint hamburger:** `≤ 768px`.

### 2.6 Reglas innegociables

1. Solo Dancing Script y Quicksand. Cero excepciones.
2. Dorado `#B28622` con moderación, nunca como fondo extenso.
3. Segunda persona singular (`tú`) siempre. Nunca usted ni vosotros.
4. Radio `3px`. Nada de cards estilo SaaS con esquinas redondeadas grandes.
5. Solo fotografía real de proyectos propios. Cero stock, cero IA, cero render.
6. Audiencias siempre en este orden: Profesionales → Particulares → Negocios.
7. Teléfono formateado con espacios: `+34 974 288 787`.
8. Logo manuscrito acompañado siempre del icono PNG `logo-habitat-decor2.png`.

### 2.7 Voz

- **Verbos preferidos:** diseñamos, fabricamos, instalamos, asesoramos, coordinamos, confeccionamos.
- **Verbos prohibidos:** crear, ofrecer, brindar, proporcionar, transformar (genérico).
- **Frases-firma:** "Diseñamos, fabricamos e instalamos." · "Sin intermediarios." · "Plazos confirmados desde el primer día." · "Cada producto sale de nuestro taller."

### 2.8 Geografía permitida

Jaca · Biescas · Valle de Tena · Valle de Aragón · Comarca de la Jacetania · Sabiñánigo · Hecho · Ansó · Canfranc · Pirineo aragonés · Navarra · Pamplona · Pirineo Navarro · Ordesa · Valle de Brot · Ainsa 

No usar: "los Pirineos" en plural, "los Alpes españoles", "una zona del norte de España".

---

## 3. Skills personalizadas para Claude (futuras tareas de diseño)

Las skills de Claude son carpetas con un `SKILL.md` que se activan automáticamente cuando una conversación coincide con su descripción. Una vez configuradas, cualquier agente futuro tendrá la marca cargada sin que tengas que recordársela.

### 3.1 Estructura de cada skill

```
mi-skill/
├── SKILL.md           descripción + instrucciones
└── recursos/          archivos opcionales que el skill puede leer
```

`SKILL.md` empieza con un bloque YAML:

```yaml
---
name: nombre-skill
description: |
  Texto rico que describe cuándo activar este skill.
  Cuanto más concreto y rico en triggers, mejor activación.
---

# Cuerpo del skill

Instrucciones, reglas, ejemplos, datos. En texto libre.
```

### 3.2 Skills recomendadas para Habitat & Decor

Crear una carpeta `habitat-decor-skills/` con estas cuatro subcarpetas. Todas referencian la Style Library descomprimida en una ruta conocida (ej. `~/habitat-decor-style-library/`).

#### Skill 1 — `habitat-decor-brand`

**Para qué:** activar siempre que se hable de la marca, estilo, colores, tipografía, voz, audiencias o reglas. Es el skill base.

```yaml
---
name: habitat-decor-brand
description: |
  Activar SIEMPRE que el usuario mencione Habitat & Decor, habitatdecor.es,
  Textil Deco Asociados, Pocoro, o trabaje en cualquier soporte de la marca:
  web, landing, catálogo, brochure, redes sociales, email, presentación,
  ficha de producto, copy, naming, presupuesto. Cubre paleta, tipografía,
  voz, tono, audiencias, reglas innegociables, geografía, contactos.
  Triggers típicos: "habitat", "habitat decor", "jaca", "pirineo aragonés",
  "cortinas a medida", "textil deco", "pocoro", "test.habitatdecor.es".
---

# Habitat & Decor — Marca

Estudio-taller textil con showroom propio en Jaca, Pirineo aragonés.
Razón social: Textil Deco Asociados, S.L.

## Paleta (referenciar SIEMPRE por hex)
- #3C3C3C tinta · #B28622 oro · #D2BF81 arena
- #DFD3C8 lino · #F2EFEC fondo · #FFFFFF blanco

## Tipografía
- Display: Dancing Script (400, 600)
- Cuerpo: Quicksand (300, 400, 500, 600)

## Voz
- Segunda persona singular (tú). Nunca usted ni vosotros.
- Verbos: diseñamos, fabricamos, instalamos, asesoramos.
- Verbos prohibidos: crear, ofrecer, brindar, proporcionar.

## Audiencias en orden
1. Profesionales
2. Particulares (viviendas y segundas residencias)
3. Hoteles y negocios

## Datos
+34 974 288 787 · tienda@habitatdecor.es
C/ Domingo Miral, 1 · 22700 Jaca

## Recursos
Para detalle completo, leer:
~/habitat-decor-style-library/01-style-guide/00-master-style-guide.md
~/habitat-decor-style-library/01-style-guide/01-colors.md
~/habitat-decor-style-library/01-style-guide/05-voice-and-copy.md
```

#### Skill 2 — `habitat-decor-web`

**Para qué:** trabajos de web, frontend, landing pages, snippets, plantillas HTML.

```yaml
---
name: habitat-decor-web
description: |
  Activar cuando el usuario pida tareas web para Habitat & Decor:
  crear o modificar páginas (index.html, profesionales.html, viviendas.html,
  negocios.html, cortinas.html, tapiceria.html, papel-pintado.html,
  muebles-medida.html, showroom.html, taller.html, contacto.html,
  horario-especial.html), landing de campaña, catálogo, sitemap,
  componentes (header, hero, cards de audiencia, grid de servicios,
  banda de impacto, footer, formulario de contacto, WhatsApp flotante),
  edición de CSS, integración FTP, debugging de navegación o dropdowns.
  El sitio es HTML/CSS/JS puro, sin frameworks. Subida via FTP FileZilla
  a test.habitatdecor.es con Cloudflare activo.
---

# Habitat & Decor — Web

## Stack
- HTML/CSS/JS puro. Sin frameworks.
- Google Fonts + Font Awesome 6.4.0 desde CDN.
- FTP FileZilla a test.habitatdecor.es (Cloudflare).

## Tokens y snippets
~/habitat-decor-style-library/02-tokens/tokens.css
~/habitat-decor-style-library/05-snippets/

## Plantillas aplicadas
~/habitat-decor-style-library/04-templates/

## Reglas críticas
- Verificar SIEMPRE cierre de tags (truncamientos frecuentes en este sitio).
- Overlays muy ligeros, nunca > 30% opacidad.
- Hover de cards sutil, nunca scale > 1.04.
- WhatsApp flotante oculto en desktop (display:none > 768px).
- Radio 3px global. Cero excepciones.
- 7 páginas en menú: Home, Profesionales, Viviendas, Negocios, Showroom, Taller, Contacto.

## Patrones recurrentes
- Eyebrow + rule (línea dorada 36px) + t-section.
- Hero split copy izquierda + foto derecha aspect 4/5.
- Service grid 6 cards con hover panel blanco.
- Cards de audiencia clicables completas con borde dorado en hover.
```

#### Skill 3 — `habitat-decor-print`

**Para qué:** brochures, catálogos físicos, tarjetas, papelería, packaging.

```yaml
---
name: habitat-decor-print
description: |
  Activar para soportes impresos de Habitat & Decor: brochure corporativo,
  catálogo físico de producto, tarjeta de visita, papelería corporativa,
  hoja A4 de presupuesto, etiquetas, banner, lona, vinilo escaparate,
  rotulación de furgoneta, packaging. Especificaciones de imprenta,
  conversiones a CMYK, sangrado, gramaje.
---

# Habitat & Decor — Print

## Conversiones cromáticas
- Oro #B28622 → CMYK aproximado C20 M40 Y100 K10 → Pantone 463 C (referencia)
- Lino #DFD3C8 → CMYK C12 M16 Y22 K0
- Tinta #3C3C3C → mejor con K100 + apoyo C30 M30 Y30 para profundidad

## Tipografía en print
- Dancing Script: solo para display, mínimo 18pt para legibilidad
- Quicksand: cuerpo 9-11pt, line-height 1.5

## Brochure como referencia digital
~/habitat-decor-style-library/04-templates/brochure.html

Para PDF: imprimir desde Chrome con márgenes mínimos o usar:
google-chrome --headless --print-to-pdf=brochure.pdf brochure.html

## Datos imprenta
- Sangrado: 3mm en piezas A5/A4, 5mm en lonas
- Gramaje brochure: portada 300g, interior 150g
- Acabado preferido: mate o satinado, nunca brillo agresivo
```

#### Skill 4 — `habitat-decor-copy`

**Para qué:** escritura de textos para web, redes, email, descripciones de producto, posts, headlines.

```yaml
---
name: habitat-decor-copy
description: |
  Activar para redacción de cualquier copy de Habitat & Decor: textos web,
  meta descriptions, title tags, headlines, subtítulos, descripciones de
  producto, captions de Instagram, posts de Facebook, emails de campaña,
  newsletters, mensajes de WhatsApp, respuestas a reseñas, presupuestos,
  fichas técnicas, brochure, catálogo. Cuando se pida escribir, redactar,
  reescribir o corregir cualquier texto de la marca.
---

# Habitat & Decor — Copy

## Persona
Segunda persona singular (tú) SIEMPRE.
Marca habla en primera plural (diseñamos, fabricamos).

## Tono
Formal · directo · cálido contenido · pragmático · conciso.

## Verbos preferidos
diseñamos · fabricamos · instalamos · asesoramos · coordinamos ·
confeccionamos · resolvemos · controlamos · acompañamos · gestionamos

## Verbos PROHIBIDOS
crear · ofrecer · brindar · proporcionar · entregar · suministrar ·
transformar (genérico) · maximizar · revolucionar · innovar

## Adjetivos preferidos
a medida · propio · integral · técnico · exclusivo · personalizado ·
coordinado · cumplido · cercano

## Adjetivos PROHIBIDOS
increíble · excepcional · revolucionario · disruptivo · espectacular ·
único en el mercado · líder · premium (vacío)

## Patrones tipo
- Headline hero: "[sustantivo] a medida para tu espacio."
- Eyebrow: 2-3 palabras MAYÚSCULAS, con · entre dos partes.
- Subtítulo: 3 verbos en plural describiendo el flujo.
- CTA: imperativo corto (Háblanos · Agendar cita · Ver proyectos).

## Frases-firma reutilizables
- Diseñamos, fabricamos e instalamos.
- Sin intermediarios.
- Plazos confirmados desde el primer día.
- Cada producto sale de nuestro taller.
- Tu proyecto, nuestra prioridad.

## Tipografía del copy
- Comillas latinas «» o tipográficas " "
- Apóstrofe tipográfico '
- Raya — para incisos (con espacios)
- Puntos suspensivos … carácter único
- Mayúsculas iniciales solo, no title case

## Geografía permitida
Jaca · Biescas · Valle de Tena · Valle de Aragón · Jacetania ·
Sabiñánigo · Hecho · Ansó · Canfranc · Pirineo aragonés (singular)

## Recursos
~/habitat-decor-style-library/01-style-guide/05-voice-and-copy.md
```

### 3.3 Cómo instalar las skills

**Para un agente Claude que use skills locales:**

```bash
# 1. Crear carpeta de skills
mkdir -p ~/habitat-decor-skills

# 2. Crear cada SKILL.md con el contenido de arriba
# (uno por subcarpeta: brand, web, print, copy)

# 3. Apuntar el agente a la carpeta de skills
# La forma exacta depende del cliente Claude que uses.
```

**Para Claude.ai en web/desktop:**

Cuando se haga disponible la creación de skills personalizadas, copiar el contenido de cada bloque YAML+MD de arriba en una skill nueva con el nombre indicado.

**Mientras tanto:** las descripciones de skill arriba pueden usarse como **system prompts** o **userPreferences** para que el agente cargue el contexto de marca al inicio de cada sesión.

### 3.4 Skill de Pocoro existente

Pocoro ya tiene una skill activa con CLAUDE.md (visible en userPreferences) que define:

- Output estructurado (JSON, bullets, tablas)
- Sin narración ni status updates
- Sin Unicode decorativo
- Tokens-eficiente

Las skills de Habitat & Decor se **suman** a esa, no la reemplazan. La skill de Pocoro define el estilo de comunicación; las de Habitat & Decor definen el contenido de marca.

---

## 4. Mantenimiento de la biblioteca

### Cuándo actualizar

- Cambio de un token en producción → actualizar `02-tokens/tokens.css` y los MD relevantes en el mismo commit.
- Foto nueva añadida al sitio → añadir entrada al `manifest.json` y a `download-images.sh`.
- Nuevo componente en producción → añadir snippet en `05-snippets/` y documentar en `03-components.md`.
- Cambio de razón social, dirección o teléfono → actualizar `00-master-style-guide.md`, `05-voice-and-copy.md` y todos los snippets que lo contengan (header-nav, footer).

### Versión actual

Generada el 2026-05-05 a partir de:

- Estado de habitatdecor.es en producción (web_fetch del homepage).
- `Gui_a_de_estilo.pdf` del proyecto.
- CSS de producción extraído del repositorio.

### Prohibido

- Editar plantillas o snippets sin actualizar tokens si se introduce un valor nuevo.
- Inventar colores fuera de la paleta.
- Añadir tipografías fuera de Dancing Script + Quicksand.
- Subir imágenes que no sean fotografía real del taller, showroom o proyectos.

---

## 5. Checklist de aceptación

Marcar todo antes de considerar la biblioteca instalada:

- [ ] ZIP descomprimido en ubicación estable
- [ ] `bash 03-assets/download-images.sh` ejecutado con éxito (67/67 imágenes descargadas)
- [ ] Las 3 plantillas se ven correctamente con `python3 -m http.server`
- [ ] Repo Git creado y push realizado (o ZIP en Drive)
- [ ] Equipo y proveedores tienen el enlace
- [ ] Las 4 skills personalizadas configuradas (brand, web, print, copy)
- [ ] Skill de marca probada con una pregunta tipo "diseña una landing para tapicería" — el agente debe usar paleta y tipografía de marca sin recordatorios

---

## 6. Limitación conocida y por qué

**La fototeca no viene incluida en el ZIP.** No es un olvido: el entorno donde se generó el paquete tiene una allowlist de dominios que no incluye habitatdecor.es, lo que impidió descargar binarios desde ese host. Las dos vías exploradas:

- `web_fetch` sobre URLs de imagen → respondió "Image content is not supported".
- `curl` desde bash sandbox → respondió "Host not in allowlist".

La solución incluida es robusta: el script `download-images.sh` usa `curl` desde tu máquina local, donde no existe esa restricción. Tarda menos de un minuto y deja la fototeca completa.

Si en el futuro hay que regenerar el paquete con imágenes incluidas, hacerlo desde un entorno con acceso libre a habitatdecor.es (máquina local del usuario, GitHub Actions con runner público, etc.).
