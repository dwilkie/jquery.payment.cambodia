window = require('jsdom').jsdom().createWindow()
global.$ = require('jquery')(window)
global.window = window
global.document = window.document

require('jquery.payment')

require('../src/jquery.payment.cambodia')
require('./specs')
