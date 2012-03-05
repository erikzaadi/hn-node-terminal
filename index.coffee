#!/usr/bin/env coffee
request = require 'request'

hnApiUrlBase = "http://hndroidapi.appspot.com/"
hnApiUrls = {
  news : "#{hnApiUrlBase}news"
  newest : "#{hnApiUrlBase}newest"
  best : "#{hnApiUrlBase}best"
  latest : "#{hnApiUrlBase}latest"
  user : "#{hnApiUrlBase}submitted/format/json/user/"
  story : "#{hnApiUrlBase}nestedcomments/format/json/id/"
}

request.get hnApiUrls.best , (err, rsp, body) ->
  return console.err err if err
  console.log JSON.parse(body).items.length

