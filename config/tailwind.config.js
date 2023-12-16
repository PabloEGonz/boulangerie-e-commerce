const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    colors: {
      'green': '#CCD5AE',
      'darkgreen': '#91a060',
      'darkergreen': '#4f5b27',
      'lightgreen': '#E9EDC9',
      'whitegreen': '#FEFAE0',
      'brown': '#D4A373',
      'lightbrown': '#FAEDCD',
      'darkbrown': '#281F17',
      'white': '#FFFFFF',
      'black': '#000000',
      'red': '#FF0000',
      'blue': '#0000FF',
    },
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
    require('@tailwindcss/container-queries'),
  ]
}
