// const purgecss = require('@fullhuman/postcss-purgecss')

// purgecss({
//   content: ['../../default/**/*'],
//   keyframes: true,
//   // safelist: {
//   //   standard: [/^zoom-big-*/],
//   // },
// }),

const isDev = process.env.NODE_ENV === 'development'

module.exports = {
  plugins: {
    'postcss-import': {},
    'postcss-preset-env': {
      stage: 4,
      browsers: isDev ? '>100%' : ['last 5 versions', 'not ie <= 8'], // Cross browser support, lightweight in dev env
    },
  },
}
