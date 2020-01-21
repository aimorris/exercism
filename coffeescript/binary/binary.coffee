class Binary
  constructor: (num) ->
    @num = num
    @numSplit = num.split('')

  toDecimal: ->
    if isNaN @num then 0 else
      if !@numSplit.every((x) => ['0', '1'].includes(x)) then 0 else
        (el * (Math.pow 2, i) for el, i in @numSplit.reverse()).reduce((x,y) => x + y)

module.exports = Binary
