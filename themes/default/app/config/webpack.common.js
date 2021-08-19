const { CleanWebpackPlugin } = require('clean-webpack-plugin')
const helpers = require('./helpers')

module.exports = {
  // Where webpack looks to start building the bundle
  entry: {
    // app: helpers.root('src', 'index'),
    g: helpers.root('src/views', 'global'),
    i: helpers.root('src/views', 'home'),
    c: helpers.root('src/views', 'contact'),
    n: helpers.root('src/views', 'news'),
    p: helpers.root('src/views', 'page'),
    s: helpers.root('src/views', 'shop'),
    block_contact_form: helpers.root('src/views', 'block_contact_form'),
    build_min: helpers.root('src/views', 'min'),
  },

  // Where webpack outputs the assets and bundles
  output: {
    path: helpers.pluginPath('../build'),
    filename: 'js/[name].js',
    assetModuleFilename: 'assets/[hash:5][ext]',
    publicPath: '/themes/default/app/build/',
  },

  resolve: {
    extensions: ['.js', '.jsx', '.json'],
    alias: {
      '@': helpers.root('src'),
    },
  },

  // Determine how modules within the project are treated
  module: {
    rules: [
      // JavaScript: Use Babel to transpile JavaScript files
      { test: /\.js$/, use: ['babel-loader'] },

      // Assets Loader test: /\.(jpg|jpeg|png|woff|woff2|eot|ttf|svg|gif)$/,
      { test: /\.(jpg|jpeg|png|woff|woff2|eot|ttf|svg|gif)$/, type: 'asset/resource' },
    ],
  },

  // Customize the webpack build process
  plugins: [
    // Removes/cleans build folders and unused assets when rebuilding
    new CleanWebpackPlugin(),
  ],
}
