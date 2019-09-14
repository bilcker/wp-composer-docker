
const merge = require('webpack-merge')
const webpackBase = require('./webpack.config.base.js')
const BrowserSyncPlugin = require('browser-sync-webpack-plugin')

module.exports = merge(webpackBase, {
  mode: 'development',
  devtool: 'inline-source-map',
  watch: true,
  plugins: [
    new BrowserSyncPlugin({
      host: 'localhost',
      proxy: 'http://localhost:8080/dist/',
      port: 4200,
      open: true,
      files: [
        './dist/*.php',
        '.dist/**/*.css',
        '.dist/**/*.js'
      ]
    })
  ]
})
