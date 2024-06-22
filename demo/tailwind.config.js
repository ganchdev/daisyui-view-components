const defaultTheme = require('tailwindcss/defaultTheme')

const execSync = require('child_process').execSync;
const daisyUiComponentsPath = execSync('bundle show daisyui-view-components', { encoding: 'utf-8' });

module.exports = {
  darkMode: 'class',
  content: [
    './public/*.html',
    './app/components/**/*.{erb,haml,js,rb,ts}',
    './app/helpers/**/*.rb',
    './app/typescript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    daisyUiComponentsPath.trim() + '/app/**/*.{erb,haml,html,rb}',
    daisyUiComponentsPath.trim() + '/previews/**/*.{erb,haml,html,rb}',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require("daisyui"),
  ],
  daisyui: {
    styled: true,
    themes: ['light', 'dark'],
    base: true,
    utils: true,
    logs: true,
    rtl: false,
    prefix: ""
  },
}
