class Trinary
  constructor: (num) ->
    @num = num
    @numSplit = num.split('')

  toDecimal: ->
    if isNaN @num then 0 else
      if !@numSplit.every((x) => ['0', '1', '2'].includes(x)) then 0 else
        @numSplit.reverse().reduce (acc, x, index) ->
          acc + x * Math.pow(3, index)
        , 0

module.exports = Trinary
