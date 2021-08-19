const webpack = require('webpack')
const path = require('path')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const CssMinimizerPlugin = require('css-minimizer-webpack-plugin')
const TerserPlugin = require('terser-webpack-plugin')

module.exports = (env, argv) => {
  const isDev = argv.mode === 'development'
  return {
    entry: {
      // app: './src/index.js',
      g: './src/views/global.js',
      i: './src/views/home.js',
      c: './src/views/contact.js',
      n: './src/views/news.js',
      p: './src/views/page.js',
      s: './src/views/shop.js',
      f: './src/fonts.js',
      block_contact_form: './src/views/block_contact_form.js',
      build_min: './src/views/min.js'
    },
    output: {
      path: path.resolve(__dirname, 'build'),
      filename: '[name].js',
      assetModuleFilename: 'assets/[hash:5][ext]',
    },
    cache: false,
    module: {
      rules: [
        {
          test: /\.js$/,
          use: 'babel-loader',
          exclude: /node_modules/,
        },
        {
          test: /\.(sa|sc|c)ss$/,
          use: [
            isDev ? 'style-loader' : MiniCssExtractPlugin.loader,
            {
              loader: 'css-loader',
              options: {
                sourceMap: isDev,
              },
            },
            {
              loader: 'postcss-loader',
              options: {
                sourceMap: isDev,
              },
            },
            {
              loader: 'sass-loader',
              options: {
                sourceMap: isDev,
              },
            },
          ],
        },
        // Assets Loader test: /\.(jpg|jpeg|png|woff|woff2|eot|ttf|svg|gif)$/,
        { test: /\.(jpg|jpeg|png|woff|woff2|eot|ttf|svg|gif)$/, type: 'asset/resource' },
        // {
        //   test: /\.(jpg|jpeg|png|woff|woff2|eot|ttf|svg|gif)$/,
        //   use: [
        //     {
        //       loader: 'url-loader',
        //       options: {
        //         limit: false,
        //         name: '[path][contenthash].[ext]',
        //         publicPath: '/themes/default/app/build/',
        //       },
        //     },
        //   ],
        // },
      ],
    },
    optimization: {
      minimize: true,
      minimizer: [
        new CssMinimizerPlugin({
          minimizerOptions: {
            preset: [
              'default',
              {
                discardComments: { removeAll: true },
              },
            ],
          },
        }),
        new TerserPlugin({
          terserOptions: {
            format: {
              comments: false,
            },
          },
          extractComments: false,
        }),
      ],
    },
    plugins: [
      new MiniCssExtractPlugin({
        filename: '[name].css',
      }),
    ],
  }
}
