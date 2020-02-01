export class NucleotideCounts {
  static parse(sequence) {
    let seq = sequence.toUpperCase().split('');
    if (seq.filter(x => ['A', 'C', 'G', 'T'].includes(x)).length !== seq.length) throw new Error('Invalid nucleotide in strand');

    return count(seq, 'A') + ' ' + count(seq, 'C') + ' ' + count(seq, 'G') + ' ' + count(seq, 'T');
  }
}

export const count = (array, x) => array.filter((val, i) => array[i] == x).length;
