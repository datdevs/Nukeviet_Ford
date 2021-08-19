const isDev = process.env.NODE_ENV === 'development'
module.exports = isDev ? require('./config/webpack.dev') : require('./config/webpack.prod')
