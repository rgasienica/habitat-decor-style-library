# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Proyecto

**Habitat & Decor Style Library** — sistema de diseño y guía de marca para Textil Deco Asociados, S.L. (habitatdecor.es). Es un repositorio estático autocontenible (HTML/CSS/JS puro, sin frameworks ni build tools, sin npm).

## Comandos

```bash
# Servir localmente
python3 -m http.server 8080
# Luego abrir: http://localhost:8080/04-templates/

# Descargar las 67 fotografías (no incluidas en ZIP)
bash 03-assets/download-images.sh

# Despliegue: FTP con FileZilla a test.habitatdecor.es (Cloudflare activo)
```

## Arquitectura

```
01-style-guide/     # 8 archivos Markdown — docs de marca legibles por humanos
02-tokens/          # 4 archivos de tokens machine-readable (CSS, JSON, SCSS, Tailwind)
03-assets/          # SVG icons (11), logos, fotografías (manifest.json)
04-templates/       # 3 páginas HTML completas listas para producción
05-snippets/        # 6 bloques HTML reutilizables (header, hero, footer, etc.)
```

**Fuente de verdad:** `02-tokens/tokens.css` (268 líneas de CSS custom properties). Las versiones SCSS y JSON son exports del mismo.

Cuando cambia un token en producción → actualizar `02-tokens/tokens.css` primero, luego los demás.

## Tokens clave

| Variable | Valor | Uso |
|---|---|---|
| `--c-gold` | `#B28622` | Único color cromático — solo como acento, nunca fondo grande |
| `--c-ink` | `#3C3C3C` | Texto principal |
| `--c-bg` | `#F2EFEC` | Fondo base |
| `--c-sand` | `#D2BF81` | Acento secundario |
| `--c-linen` | `#DFD3C8` | Divisores, fondos cálidos |

**Tipografía:**
- Display: Dancing Script (400, 600) — solo Google Fonts, nada más
- Body: Quicksand (300, 400, 500, 600)
- Carga: Google Fonts CDN + Font Awesome 6.4.0 CDN

**Estructura fija:**
- `border-radius`: `3px` en todo el sistema
- Container max-width: `1200px`
- Breakpoint móvil: `≤768px`

## Reglas de marca no negociables

1. Solo las dos tipografías definidas (Dancing Script + Quicksand)
2. Gold (`#B28622`) únicamente como acento, nunca como fondo extenso
3. Texto siempre en segunda persona singular (**tú**, nunca usted)
4. Solo fotografía real del showroom de Jaca, taller y proyectos en el Pirineo — sin stock ni IA
5. `border-radius: 3px` en todos los componentes
6. Nombres de audiencias exactos: "Profesionales" / "Viviendas y segundas residencias" / "Hoteles y negocios"
7. Teléfono siempre con espacios: `+34 974 288 787`

## Voz y copy

- **Verbos preferidos:** diseñamos, fabricamos, instalamos, asesoramos, coordinamos, confeccionamos
- **Verbos prohibidos:** crear, ofrecer, brindar, proporcionar, transformar (demasiado genéricos)
- **Geografía permitida:** Jaca, Biescas, Valle de Tena, Pirineo aragonés — no "los Pirineos" (plural)
- **Taglines:** "Diseñamos, fabricamos e instalamos." · "Sin intermediarios." · "Plazos confirmados desde el primer día."

## Contacto de la empresa

- Web: habitatdecor.es / test.habitatdecor.es
- Email: tienda@habitatdecor.es
- Teléfono: +34 974 288 787
- WhatsApp: +34 630 908 883
- Dirección: C/ Domingo Miral, 1 · 22700 Jaca, Aragón
- Horario: Lun–Sáb 10:30–13:30 y 17:00–20:00
