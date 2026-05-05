/**
 * Tailwind preset — Habitat & Decor
 * 
 * Para proyectos que usen Tailwind CSS.
 * Importar en tailwind.config.js:
 *   const habitatPreset = require('./tokens/tailwind-preset.js');
 *   module.exports = { presets: [habitatPreset], ... };
 * 
 * Este preset NO es la fuente principal. Mantenerlo sincronizado con tokens.css.
 */

module.exports = {
  theme: {
    extend: {
      colors: {
        ink: {
          DEFAULT: '#3C3C3C',
          soft:    '#6B6560',
        },
        gold: {
          DEFAULT: '#B28622',
          dim:     'rgba(178,134,34,0.14)',
          dark:    '#9A7318',
        },
        sand:  '#D2BF81',
        linen: '#DFD3C8',
        bg: {
          DEFAULT: '#F2EFEC',
          soft:    '#EDE8E2',
        },
        whatsapp: '#25D366',
      },
      fontFamily: {
        display: ['"Dancing Script"', 'cursive'],
        body:    ['Quicksand', 'sans-serif'],
      },
      fontSize: {
        // Custom escala Habitat & Decor
        'xs':        '0.55rem',
        '2xs':       '0.57rem',
        '3xs':       '0.58rem',
        'sm':        '0.63rem',
        'base':      '0.7rem',
        'eyebrow':   '0.72rem',
        'eyebrow-h': '0.68rem',
        'md':        '0.82rem',
        'card':      '0.88rem',
        'body':      '0.92rem',
        'card-t':    '1.5rem',
        'logo':      '1.55rem',
        'aud':       '1.6rem',
        'drawer':    '1.65rem',
      },
      letterSpacing: {
        'eyebrow':   '0.24em',
        'eyebrow-h': '0.22em',
        'drop-eb':   '0.18em',
        'drawer-eb': '0.2em',
        'button':    '0.05em',
      },
      borderRadius: {
        DEFAULT: '3px',
      },
      boxShadow: {
        'sm-h': '0 2px 14px rgba(60,60,60,0.08)',
        'md-h': '0 6px 30px rgba(60,60,60,0.11)',
      },
      transitionTimingFunction: {
        'h':     'cubic-bezier(0.25, 0.46, 0.45, 0.94)',
        'h-out': 'cubic-bezier(0, 0, 0.2, 1)',
      },
      maxWidth: {
        'wrap': '1200px',
      },
      spacing: {
        'nav-h': '72px',
        'pad-x': '28px',
      },
      screens: {
        'mobile-sm': {'max': '375px'},
        'mobile':    {'max': '600px'},
        'tablet':    {'max': '768px'},
        'desktop':   {'max': '900px'},
        'wide':      {'max': '1200px'},
      },
    },
  },
};
