class PascalsTriangle
  rows: (num) ->
    if (num == 0) then [] else @getTriangle num

  getTriangle: (num) ->
    last = @getRow(last) for i in [1..num]

  getRow: (last = []) ->
    @getNumber(last[i-1], last[i]) for i in [0..last.length]

  getNumber: (x, y) -> x + y || 1


module.exports = PascalsTriangle
