class Hexadecimal
  constructor: (num) ->
    @num = num

  toDecimal: ->
    if !@num.split('').every((x) => ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'].includes(x)) then 0 else
      @num.split('').reverse().reduce (acc, x, index) =>
        acc + @hexToNum(x) * Math.pow(16, index)
      , 0

  hexToNum: (hex) ->
    switch hex
      when 'a' then 10
      when 'b' then 11
      when 'c' then 12
      when 'd' then 13
      when 'e' then 14
      when 'f' then 15
      else hex

module.exports = Hexadecimal
