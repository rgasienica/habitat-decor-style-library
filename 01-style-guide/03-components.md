# 03 — Componentes

Inventario de componentes reutilizables. Cada componente listado aquí está implementado en el CSS de producción y tiene un snippet copy-paste en `05-snippets/`.

---

## 1. Botones

### `.btn-gold` — botón principal

Acción dominante de la página: agendar cita, enviar formulario, contactar.

```css
.btn-gold {
  display: inline-flex;
  align-items: center;
  gap: 0.45rem;
  padding: 0.75rem 1.6rem;
  font-family: var(--f-body);
  font-size: 0.7rem;
  font-weight: 600;
  letter-spacing: 0.05em;
  text-transform: uppercase;
  border-radius: var(--r);
  background: var(--c-gold);
  color: var(--c-white);
  border: 1px solid var(--c-gold);
  transition: background 0.28s var(--ease), color 0.28s, border-color 0.28s;
}
.btn-gold:hover { background: #9A7318; border-color: #9A7318; }
```

### `.btn-outline` — botón secundario

Acción complementaria: ver proyectos, leer más, ir a galería.

```css
.btn-outline {
  /* base = btn-gold */
  background: transparent;
  color: var(--c-ink);
  border: 1px solid var(--c-ink);
}
.btn-outline:hover {
  border-color: var(--c-gold);
  color: var(--c-gold);
}
```

### `.btn-agendar` — botón nav primario

Versión compacta del oro para la barra de navegación.

```css
.btn-agendar {
  font-family: var(--f-body);
  font-size: 0.63rem;
  font-weight: 600;
  letter-spacing: 0.05em;
  text-transform: uppercase;
  color: var(--c-white);
  background: var(--c-gold);
  border: 1px solid var(--c-gold);
  border-radius: var(--r);
  padding: 0.58rem 1.1rem;
  transition: background 0.25s;
}
.btn-agendar:hover { background: #9A7318; border-color: #9A7318; }
```

### `.btn-hablanos` — botón nav secundario

Outline arena, para acción complementaria en navbar (`Háblanos`).

```css
.btn-hablanos {
  font-family: var(--f-body);
  font-size: 0.63rem;
  font-weight: 600;
  letter-spacing: 0.05em;
  text-transform: uppercase;
  color: var(--c-gold);
  border: 1px solid var(--c-sand);
  background: transparent;
  border-radius: var(--r);
  padding: 0.58rem 1.1rem;
  transition: background 0.25s, color 0.25s, border-color 0.25s;
}
.btn-hablanos:hover {
  background: var(--c-gold);
  color: var(--c-white);
  border-color: var(--c-gold);
}
```

### Reglas de uso de botones

- Máximo 2 CTAs primarios por pantalla visible.
- Nunca tres botones dorados seguidos: alterna gold + outline.
- Iconos opcionales dentro del botón siempre con `gap: 0.45rem`.
- Texto siempre en mayúsculas con tracking 0.05em.
- Radio 3px (no más).

---

## 2. Eyebrow + Rule

Bloque introductorio de cualquier sección.

```html
<span class="eyebrow">Lo que hacemos</span>
<div class="rule"></div>
<h2 class="t-section">Servicios</h2>
```

```css
.eyebrow {
  font-size: 0.72rem;
  font-weight: 600;
  letter-spacing: 0.24em;
  text-transform: uppercase;
  color: var(--c-gold);
}
.rule {
  width: 36px;
  height: 1px;
  background: var(--c-gold);
  margin: 0.8rem 0 1.2rem;
}
.rule.center { margin-left: auto; margin-right: auto; }
```

**Variante hero:**
```css
.hero-eyebrow {
  font-size: 0.68rem;
  letter-spacing: 0.22em;
}
.hero-eyebrow::before {
  content: '';
  display: block;
  width: 28px;
  height: 1px;
  background: var(--c-gold);
}
```

---

## 3. Header / navegación

Estructura: logo + dropdowns en escritorio, hamburger + drawer lateral en móvil.

- **Altura fija:** `--nav-h: 72px`.
- **Fondo:** `rgba(242, 239, 236, 0.96)` con `backdrop-filter: blur(8px)`.
- **Border-bottom:** `1px solid var(--c-linen)`.
- **z-index:** 1000.
- **Comportamiento al scroll:** se mantiene fijo. Sin shrink, sin hide-on-scroll.

### Logo

```html
<a href="index.html" class="site-logo">
  <div class="logo-icon">
    <img src="images/logo-habitat-decor2.png" alt="Habitat & Decor logo" width="38" height="38">
  </div>
  <span class="logo-text">Habitat &amp; Decor</span>
</a>
```

```css
.logo-text {
  font-family: var(--f-display);
  font-size: 1.55rem;
  font-weight: 600;
  color: var(--c-gold);
  letter-spacing: 0.02em;
}
```

### Dropdowns desktop

Tres dropdowns: `¿Nos necesitas?` / `Nuestra especialidad` / `Visítanos`.

- Botón con chevron SVG 10×6, `stroke-width: 1.5`.
- Panel con `background: var(--c-white)`, `border: 1px solid var(--c-linen)`, `box-shadow: var(--sh-md)`.
- Cabecera del panel con `.drop-panel-head`: 0.57rem uppercase tracking 0.18em color dorado.
- Items con icono SVG 14×14 stroke currentColor, fill none, stroke-width 1.4.

### Hover en links de nav

Animación de subrayado dorado:
```css
.nav-link::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 50%;
  width: 0;
  height: 1px;
  background: var(--c-gold);
  transition: width 0.3s var(--ease), left 0.3s var(--ease);
}
.nav-link:hover::after { width: 100%; left: 0; }
```

### Drawer móvil

Aparece a `≤ 768px`. Fondo `var(--c-bg)`, `position: fixed; inset: 0; z-index: 1000`.

- Eyebrow del drawer: 0.58rem uppercase tracking 0.2em.
- Drawer link primario: Dancing Script 1.65rem.
- Drawer link secundario: Quicksand 0.82rem 500.
- Separador: `1px solid var(--c-linen)` con margen `1rem 0`.

---

## 4. Tarjeta de audiencia (`.aud-card`)

Card grande clicable de tres opciones: Profesionales / Vivienda / Negocio.

```html
<a href="profesionales.html" class="aud-card">
  <div class="aud-icon"><i class="fas fa-drafting-compass"></i></div>
  <h3>Profesionales</h3>
  <p>Decoradores, interioristas, arquitectos y empresas de reformas...</p>
  <span class="aud-cta">Soy profesional <i class="fas fa-arrow-right"></i></span>
</a>
```

- Card completa clicable.
- Borde 1px sand en reposo, dorado en hover.
- Icono en círculo 48×48 borde sand, color dorado.
- Hover: traslación de 4px en el CTA, fondo `var(--c-gold-dim)` en el icono.
- Titular en Dancing Script 1.6rem.
- Padding interno generoso (~2rem).

---

## 5. Tarjeta de servicio (`.svc-card`)

6 cards en grid (cortinas, tapicería, papel pintado, muebles auxiliares, colchones, diseño e instalación).

- Imagen real de fondo siempre visible.
- Número 01–06 + titular superpuestos sobre la imagen en reposo.
- Hover: revela panel blanco con número dorado, divisor y descripción completa.
- Card 01 con efecto especial: `onda_perfecta.jpg` se desvanece para revelar el panel.
- Las cards 02–06 mantienen la imagen estática.

```css
.svc-card {
  position: relative;
  aspect-ratio: 4 / 5;
  border-radius: var(--r);
  overflow: hidden;
  background: var(--c-bg-soft);
}
.svc-card-img {
  position: absolute;
  inset: 0;
  object-fit: cover;
}
.svc-card-overlay {
  position: absolute;
  inset: 0;
  background: rgba(255,255,255,0);
  transition: background 0.4s var(--ease);
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  padding: 1.5rem;
}
.svc-card:hover .svc-card-overlay {
  background: rgba(255,255,255,0.96);
  justify-content: center;
}
```

---

## 6. Banda de impacto

Banda con foto panorámica del Pirineo de fondo y 4 cifras/frases alternadas.

- Fondo: foto panorámica con overlay `rgba(60,60,60,0.18)` (overlay muy ligero).
- 4 bloques: número grande + texto secundario, alternados con frase corta.
- Separadores verticales dorados `1px` entre bloques en desktop.

Bloques estándar:
1. **2000+** muestras en showroom
2. **Nos desplazamos** a cualquier punto del Pirineo aragonés
3. **100%** fabricación propia en Jaca
4. **Marcas exclusivas** colecciones que no encontrarás en otro sitio

---

## 7. Paso de proceso (`.proceso-step`)

Bloque para "Cómo trabajamos" — 4 pasos numerados.

```html
<div class="proceso-step">
  <span class="proceso-num">01</span>
  <div class="proceso-icon"><i class="fas fa-comments"></i></div>
  <h4>Escucha y diagnóstico</h4>
  <p>Analizamos tu espacio, tus necesidades de luz, confort, estilo y mantenimiento — en el showroom o en tu domicilio.</p>
</div>
```

- Número en Dancing Script 3.6rem dorado.
- Icono en círculo 48×48 borde sand.
- Titular `H4` en Dancing Script 1.5rem.
- Hover: el icono se llena con `--c-gold-dim`.

---

## 8. Card de proyecto (galería)

Card con foto, etiqueta de proyecto, titular y testimonio.

- Imagen aspect 4/5 o 1/1.
- Etiqueta superior tipo "Proyecto particular" en Quicksand 0.65rem semibold uppercase tracking 0.2em.
- Titular en Quicksand 1.05rem semibold (excepción del display: aquí los nombres de localidad van en cuerpo bold).
- Cita testimonial en cuerpo regular.
- Firma del cliente como "Cliente particular · Biescas".

---

## 9. Footer

Estructura en 4 columnas en desktop, stack en móvil.

- Fondo `var(--c-bg-soft)` o `var(--c-linen)`.
- Padding superior generoso (~4rem).
- Logo + descripción corta + redes sociales en columna 1.
- Navegación, Clientes, Servicios en columnas 2-4.
- Línea legal final separada por `border-top: 1px solid var(--c-sand)`.
- Iconos sociales: 32×32 borde sand 1px, círculo, color dorado.

---

## 10. WhatsApp flotante

```html
<a href="https://wa.me/34630908883" class="wa-float" aria-label="WhatsApp">
  <i class="fab fa-whatsapp"></i>
</a>
```

```css
.wa-float {
  position: fixed;
  bottom: 1.5rem;
  right: 1.5rem;
  width: 52px;
  height: 52px;
  border-radius: 50%;
  background: #25D366; /* color oficial WhatsApp */
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
  box-shadow: var(--sh-md);
  z-index: 900;
}
@media (min-width: 769px) { .wa-float { display: none; } }
```

**Regla:** WhatsApp solo en móvil. En desktop la conversión va por formulario y teléfono.

---

## 11. Formulario de contacto

- Inputs con borde inferior 1px linen, sin borde lateral ni superior (estilo subrayado).
- Padding `0.7rem 0`.
- Color del label `--c-ink-soft`.
- Focus: borde inferior `var(--c-gold)`.
- Select con chevron SVG dorado custom (no usar el chevron del navegador).
- Placeholder en `--c-ink-soft` 0.85rem.
- Botón submit: `.btn-gold` ancho completo o auto según pantalla.

---

## Anti-patrones de componentes

- ❌ Cards con sombra fuerte tipo Material Design. Sombras muy ligeras solo.
- ❌ Botones pill (border-radius alto). Solo `3px`.
- ❌ Iconos rellenos (filled) cuando hay versión outline disponible. Preferir trazo.
- ❌ Hover con scale > 1.02. Es agresivo. Preferir cambios de color y traslaciones de 2-4px.
- ❌ Tooltips negros tipo Bootstrap. Usar paneles blancos con borde linen.
- ❌ Notificaciones rojas de error. Errores en `--c-ink` con borde inferior `--c-gold`.
- ❌ Loaders genéricos giratorios. Si hace falta, usar el SVG del logo en pulse.
