const webpack = require('webpack')
const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')

let __root = path.join(__dirname, '../../')
let __dist = path.join(__dirname, '../../dist')
let __src = path.join(__dirname, '../../src')

module.exports = {
  context: __src,
  entry: path.join(__src, 'js', 'index.js'),
  output: {
    path: path.resolve(__dist, 'wp-content', 'themes', 'custom-theme', 'js'),
    filename: '[name].js',
    publicPath: '/'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: ['babel-loader']
      },
      {
        test: /\.(ttf|otf|eot|svg|woff(2)?)(\?[a-z0-9]+)?$/,
        use: [{
          loader: 'file-loader',
          options: {
            name: '[path][name].[ext]'
          }
        }]
      },
      {
        test: /\.(sa|sc|c)ss$/,
        use: [
          MiniCssExtractPlugin.loader,
          { loader: 'css-loader' },
          { loader: 'postcss-loader' },
          { loader: 'sass-loader' }
        ]
      }
    ]
  },
  plugins: [
    new webpack.EnvironmentPlugin([
      'NODE_ENV'
    ]),
    new MiniCssExtractPlugin({
      filename: '../style.css',
      chunkFilename: '../css/[id].[hash].css'
    })
    // new HtmlWebpackPlugin({
    //   inject: false,
    //   hash: true,
    //   template: './html/index.html'
    // }),
  ]
}
