class DNA
  constructor: (dna) ->
    @dna = dna.split('')

    if (@dna.filter((x) => ['A', 'C', 'G', 'T'].includes(x)).length != @dna.length) then throw new Error('Invalid Nucleotide')

    @nucleotideCounts = { A: @count('A'), T: @count('T'), C: @count('C'), G: @count('G') }

  count: (x) ->
    if !['A', 'C', 'G', 'T'].includes(x) then throw new Error('Invalid Nucleotide')
    @dna.filter((val, i) => @dna[i] == x).length


module.exports = DNA
