const webpack = require('webpack')
const { merge } = require('webpack-merge')
const common = require('./webpack.common')
const stylesConfig = require('./webpack.styles')
const environment = require('./env/dev.env')

module.exports = merge(common, stylesConfig, {
  // Set the mode to development or production
  mode: 'development',

  // Control how source maps are generated
  devtool: 'eval-source-map',

  plugins: [new webpack.EnvironmentPlugin(environment), new webpack.HotModuleReplacementPlugin()],
})
