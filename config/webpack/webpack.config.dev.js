const webpack = require('webpack')
const merge = require('webpack-merge')
const webpackBase = require('./webpack.config.base.js')

module.exports = merge(webpackBase, {
  mode: 'development',
  devtool: 'eval-source-map',
  module: {
    rules: [
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
  plugins: []
})
