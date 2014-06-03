Collection = require 'models/base/collection'
Item = require 'models/item'

module.exports = class Items extends Collection
  url  : '/api/items'
  model: Item

  initialize: ->
    super
    console.debug 'Collection Items.initialize'

    @on 'sync', -> @setCache()

  clear: ->
    @reset()
    @clearCache().then ->
      @fetch()

  setCache: ->
    console.debug 'Collection Items.setCache'
    localforage.setItem @url, JSON.stringify @models

  clearCache: ->
    console.debug 'Collection Items.clearCache'
    localforage.clear()
