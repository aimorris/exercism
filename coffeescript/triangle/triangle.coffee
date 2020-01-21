class Triangle
  TRIANGLE_TYPES = { 1: 'equilateral', 2: 'isosceles', 3: 'scalene' }

  constructor: (s1, s2, s3) ->
    @sides = [s1, s2, s3].sort()

    if @sides[0] <= 0 then throw new Error("negative sides are illegal")
    if @sides[0] + @sides[1] < @sides[2] then throw new Error("violation of triangle inequality")

  kind: ->
    TRIANGLE_TYPES[removeDuplicates(@sides).length]

  removeDuplicates = (ar) ->
    if ar.length == 0
      return []
    res = {}
    res[ar[key]] = ar[key] for key in [0..ar.length-1]
    value for key, value of res

module.exports = Triangle
