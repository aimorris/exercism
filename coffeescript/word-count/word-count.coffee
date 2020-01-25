class Words
  constructor: (words) ->
    @words = words

  count: ->
    @words
    .toLowerCase()
    .match(/\w+('\w+)?/g)
    .reduce (obj, word) ->
        obj[word] = obj[word] + 1 || 1;
        return obj
      , {}


module.exports = Words
