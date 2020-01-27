class NucleotideCount
  constructor: (dna) ->
    @dna = dna.split('')

    if @dna.filter((y) => ['A', 'C', 'G', 'T'].includes(y)).length != @dna.length then throw new Error('Invalid nucleotide strand')

    @nucleotideCounts = { A: @count('A'), T: @count('T'), C: @count('C'), G: @count('G') }

  count: (x) ->
    if !['A', 'C', 'G', 'T'].includes(x) then throw new Error('Invalid nucleotide')
    @dna.filter((val, i) => @dna[i] == x).length


module.exports = NucleotideCount
