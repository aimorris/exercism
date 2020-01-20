class Anagram
  constructor: (word) ->
    @word = word.toLowerCase()

  match: (list) ->
    result = (item for item in list when (item.toLowerCase() != @word.toLowerCase()) && (@sorted(@word) == @sorted(item.toLowerCase())) )

  sorted: (word) ->
    word.split('').sort().join('')


module.exports = Anagram
