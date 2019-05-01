const merge = require('webpack-merge')
const webpackBase = require('./webpack.config.base.js')
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin')
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

module.exports = merge (webpackBase, {
  mode: 'production',
  optimization: {
    minimizer: [
      new OptimizeCSSAssetsPlugin({}),
      new UglifyJsPlugin()
    ]
  },
  module: {
    rules: [
      {
        test: /\.(gif|png|PNG|jp(e*)g|svg)$/,
        use: [{
          loader: 'file-loader',
          options: {
            name: '[path][name].[hash].[ext]'
          }
        }]
      }
    ]
  },
  plugins: []
})
