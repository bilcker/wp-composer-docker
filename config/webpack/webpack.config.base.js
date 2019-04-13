const webpack = require('webpack')
const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const CopyWebpackPlugin = require('copy-webpack-plugin')

// Define this as your theme and all will be copied to it
let wpTheme = 'custom-theme'
// Setup Vars
let __root = path.join(__dirname, '../../')
let __dist = path.join(__dirname, '../../dist')
let __src = path.join(__dirname, '../../src')
let __wpContent = path.join(__dist, 'wp-content', 'themes')
let __theme = path.join(__wpContent, wpTheme)

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
    }),
    new CopyWebpackPlugin([
      { from: path.join(__src, 'functions', 'functions.php'), to: path.join(__theme) }
    ]),
    new CopyWebpackPlugin([
      { from: path.join(__src, 'pages'), to: path.join(__theme) }
    ])
    // new HtmlWebpackPlugin({
    //   inject: false,
    //   hash: true,
    //   template: './html/index.html'
    // }),
  ]
}
