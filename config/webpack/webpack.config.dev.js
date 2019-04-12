const webpack = require('webpack')
const merge = require('webpack-merge')
const webpackBase = require('./webpack.config.base.js')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')

module.exports = merge(webpackBase, {
  mode: 'development',
  devtool: 'eval-source-map',
  module: {
    rules: [
      {
        test: /\.(sa|sc|c)ss$/,
        use: [
          { loader: 'style-loader' },
          { loader: 'css-loader' },
          { loader: 'postcss-loader' },
          { loader: 'sass-loader' }
        ]
      },
      {
        test: /\.(gif|png|PNG|jp(e*)g|svg)$/,
        use: [{
          loader: 'file-loader',
          options: {
            name: '[path][name].[ext]'
          }
        }]
      }
    ]
  },
  plugins: [
    new MiniCssExtractPlugin({
      filename: 'css/[name].css',
      chunkFilename: 'css/[id].css'
    }),
  ]
})