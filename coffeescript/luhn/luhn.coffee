class Luhn
  constructor: (num) ->
    @num = num.replace(/\s/g,'')

    @reducedNum = @num
      .split('')
      .reverse()
      .map (x, i) -> if i & 1 then x * 2 else x * 1
      .map (x) -> if x > 9 then x - 9 else x
      .reduce (acc, cur) -> acc + cur

  valid: ->
    if @num.length <= 1 then false else @reducedNum % 10 == 0

module.exports = Luhn
