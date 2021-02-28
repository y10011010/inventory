#!/usr/bin/env node

api = require('google-trends-api')

const context      = process.env['CONTEXT']
const searchObject = { keyword: process.env['TERMS'] }

function responseHandler (err, response) {
  value = response || err

  console.log(value)
}

api[context].call(this, searchObject, responseHandler);

