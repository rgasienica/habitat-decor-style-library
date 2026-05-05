# 04 — Iconografía

Sistema híbrido de iconos: Font Awesome 6 Free para la mayoría de UI + SVG inline propios para elementos identitarios y nav dropdowns.

---

## 1. Font Awesome 6 (CDN)

**Carga:**
```html
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
```

**Variantes en uso:** `fas` (Solid) y `fab` (Brands). No usar `far` (Regular) ni `fal` (Light) — romperían la coherencia de trazo.

### Inventario completo de iconos usados en el sitio

Agrupados por contexto de uso. Total: 58 iconos únicos.

#### Audiencias y roles

| Icono | Clase | Uso |
|---|---|---|
| 📐 | `fa-drafting-compass` | Profesionales (decoradores, arquitectos) |
| 🏔 | `fa-mountain` | Particulares / viviendas en montaña |
| 🏨 | `fa-hotel` | Hoteles y negocios |
| 👔 | `fa-user-tie` | Profesional / consultor |
| 🕵 | `fa-user-secret` | Confidencialidad / proyectos discretos |
| ✓👤 | `fa-user-check` | Verificación / cliente verificado |
| 🤝 | `fa-handshake` | Acuerdo, partnership |

#### Servicios

| Icono | Clase | Uso |
|---|---|---|
| 🪑 | `fa-couch` | Tapicería / sofás |
| 🪑 | `fa-chair` | Tapicería / sillas individuales |
| 🛏 | `fa-bed` | Dormitorio / cabeceros |
| ✂ | `fa-cut` | Confección / corte |
| 🔧 | `fa-tools` | Instalación / montaje |
| 📏 | `fa-ruler-combined` | Medidas / fabricación a medida |
| 🎨 | `fa-swatchbook` | Muestrarios / tejidos |
| 📚 | `fa-layer-group` | Capas / cortinas con visillo |
| 🏪 | `fa-store` | Showroom / tienda |
| 🚪 | `fa-door-open` | Acceso / visita / showroom abierto |
| 🚛 | `fa-truck` | Transporte / desplazamiento |

#### Proceso

| Icono | Clase | Uso |
|---|---|---|
| 💬 | `fa-comments` | Paso 1: escucha y diagnóstico |
| 🎨 | `fa-swatchbook` | Paso 2: propuesta y tejidos |
| ✂ | `fa-cut` | Paso 3: taller y fabricación |
| 🔧 | `fa-tools` | Paso 4: instalación y seguimiento |

#### Confianza y diferenciales

| Icono | Clase | Uso |
|---|---|---|
| 🏆 | `fa-award` | Calidad / premio / 18 años |
| 🛡 | `fa-shield-alt` | Garantía / seguridad |
| ✓ | `fa-check` | Item de lista de inclusiones |
| ✓⭕ | `fa-check-circle` | Confirmación destacada |
| ⚡ | `fa-bolt` | Rapidez / 24h |
| 🔄 | `fa-sync-alt` | Renovación / retapizado |
| 📅 | `fa-calendar-check` | Cita confirmada / agendada |
| 📅 | `fa-calendar-week` | Disponibilidad fin de semana |
| 🕐 | `fa-clock` | Horario / plazos |
| 🔒 | `fa-lock` | Privacidad / formularios |
| ☀ | `fa-sun` | Luz natural / control de luz |

#### Contacto

| Icono | Clase | Uso |
|---|---|---|
| 📞 | `fa-phone` | Teléfono fijo |
| 📞 | `fa-phone-alt` | Teléfono alternativo / móvil |
| ✉ | `fa-envelope` | Email |
| 📍 | `fa-map-marker-alt` | Dirección / Google Maps |
| 📨 | `fa-paper-plane` | Enviar / submit |
| 💬 | `fa-comment-dots` | Mensaje / WhatsApp |

#### Documentos

| Icono | Clase | Uso |
|---|---|---|
| 📄 | `fa-file-alt` | Documento / propuesta |
| 🧾 | `fa-file-invoice` | Presupuesto / factura |
| 🔍 | `fa-search` | Buscar |
| 📷 | `fa-camera` | Galería de fotos |

#### UI / navegación

| Icono | Clase | Uso |
|---|---|---|
| → | `fa-arrow-right` | CTA inline (`Soy profesional →`) |
| ↑ | `fa-arrow-up` | Volver arriba |
| ↗ | `fa-arrow-up-right-from-square` | Enlace externo (galería Google Photos) |
| › | `fa-chevron-right` | Migas, lista paginada |
| ☰ | `fa-bars` | Hamburger móvil |
| ✕ | `fa-times` | Cerrar drawer / modal |
| ⊙ | `fa-circle` | Bullet decorativo |
| ⋮ | `fa-grip-lines` | Drag handle, divisor decorativo |
| ⚙ | `fa-sliders` | Configuración / filtros catálogo |
| ⛓ | `fa-external-link-alt` | Enlace externo |

#### Otros

| Icono | Clase | Uso |
|---|---|---|
| 🏠 | `fa-home` | Inicio / migas |
| 💼 | `fa-briefcase` | Negocio / corporativo |
| ⚱ | `fa-roman` | (uso decorativo, revisar) |
| ⭐ | `fa-star` | Rating de testimonio (5 estrellas) |
| ☆ | `fa-star empty` | Rating parcial (clase con modificador `.empty`) |

#### Marcas (Brands)

| Icono | Clase | Uso |
|---|---|---|
| 🟢 | `fab fa-whatsapp` | WhatsApp flotante y CTA |
| 🟦 | `fab fa-facebook-f` | Facebook footer |
| 📷 | `fab fa-instagram` | Instagram footer |
| 📌 | `fab fa-pinterest-p` | Pinterest footer |

---

## 2. Patrón visual del icono

Todos los iconos de UI siguen el mismo tratamiento.

### Icono dentro de círculo (componentes principales)

```css
.icon-circle {
  width: 48px;
  height: 48px;
  border: 1px solid var(--c-sand);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--c-gold);
  font-size: 1rem;
  transition: background 0.35s, border-color 0.35s;
}
.icon-circle:hover,
.parent:hover .icon-circle {
  background: var(--c-gold-dim);
  border-color: var(--c-gold);
}
```

Uso en: aud-icon, proceso-icon, drop-item-ic, footer social.

### Icono inline (texto + flecha)

```css
.cta i { transition: transform 0.25s var(--ease); }
.cta:hover i { transform: translateX(4px); }
```

Uso en: links de CTA tipo `Soy profesional →`.

### Icono decorativo de fondo (chevron del select)

```css
select {
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='13' height='13' viewBox='0 0 24 24' fill='none' stroke='%23B28622' stroke-width='2'%3E%3Cpolyline points='6 9 12 15 18 9'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right 0.8rem center;
  background-size: 13px;
  appearance: none;
}
```

Color hex en URL-encoded: `%23B28622` = `#B28622`.

---

## 3. SVG propios (iconos identitarios)

Estos iconos son trazo a mano alzada simple, todos en `viewBox="0 0 16 16"`, `stroke-width:1.4`, `stroke-linecap:round`, `stroke-linejoin:round`, `fill:none`. Se distinguen de Font Awesome por su trazo más fino y geométrico.

Almacenados en `03-assets/icons-svg/`.

| Archivo | Uso | Path |
|---|---|---|
| `nav-chevron-down.svg` | Chevron de dropdown | `<polyline points="1 1 5 5 9 1"/>` (viewBox 10 6) |
| `audience-professional.svg` | Profesionales | `<path d="M8 2L14 6v8H2V6z"/><path d="M6 14V9h4v5"/>` |
| `audience-residence.svg` | Particulares / vivienda | `<rect x="2" y="6" width="12" height="8" rx="1"/><path d="M5 6V4Q8 1 11 4v2"/>` |
| `audience-business.svg` | Hoteles y negocios | `<rect x="1" y="5" width="14" height="9" rx="1"/><path d="M4 5V3Q8 1 12 3v2"/><path d="M6 10h4M8 8v4"/>` |
| `service-curtains.svg` | Cortinas y estores | `<path d="M2 2Q8 7 14 2v12Q8 9 2 14Z"/>` |
| `service-upholstery.svg` | Tapicería | `<rect x="2" y="5" width="12" height="7" rx="3"/><path d="M5 5Q5 2 8 2Q11 2 11 5"/>` |
| `service-wallpaper.svg` | Papel pintado | `<rect x="2" y="2" width="12" height="12" rx="1"/><path d="M5 5h6M5 8h6M5 11h4"/>` |
| `service-furniture.svg` | Muebles a medida | `<rect x="3" y="6" width="10" height="7" rx="1"/><path d="M1 6h14M6 6V4Q8 2 10 4v2"/>` |
| `nav-showroom.svg` | Showroom | `<rect x="2" y="4" width="12" height="9" rx="1"/><path d="M5 4V2h6v2"/>` |
| `nav-workshop.svg` | Taller | `<circle cx="8" cy="6" r="3"/><path d="M3 14c0-3 10-3 10 0"/><path d="M8 9v3"/>` |
| `nav-special-hours.svg` | Horario especial | `<circle cx="8" cy="8" r="5"/><path d="M8 4v4l3 2"/>` |

### Cuándo usar SVG propio vs Font Awesome

- **SVG propio** para: navegación principal, dropdowns, elementos identitarios donde la coherencia con la guía manuscrita importa.
- **Font Awesome** para: el resto. Son universales, conocidos y eficientes para iconos comunes (teléfono, email, redes sociales).
- **Nunca** mezclar Font Awesome y SVG propios en el mismo grupo visual (ej: dentro de la misma card o el mismo dropdown).

---

## 4. Tamaños estándar de icono

| Contexto | Tamaño |
|---|---|
| Inline en texto / botón | `0.85em` (relativo) |
| Dropdown item | 14×14 px |
| Card grande (audiencia, proceso) | 48×48 px (círculo) |
| Footer social | 32×32 px (círculo) |
| WhatsApp flotante | 52×52 px (círculo lleno) |
| Eyebrow inline | 0.55–0.6rem |
| Hero accent | 1rem |

---

## 5. Reglas innegociables

1. **Color de icono:** `var(--c-gold)` por defecto. `currentColor` en SVGs propios para que herede.
2. **Stroke de SVGs propios:** siempre `1.4`, `linecap:round`, `linejoin:round`, `fill:none`.
3. **Trazo (no relleno) cuando exista alternativa.** Tendencia a outline > solid en iconos decorativos.
4. **No mezclar familias de icon-set.** Solo Font Awesome 6 + nuestros SVGs propios. No Material Icons, no Heroicons, no Lucide.
5. **No animar iconos al cargar.** Pulse, spin, bounce — todos prohibidos salvo el spinner del WhatsApp en estado de carga (que tampoco existe en el sitio actual).
