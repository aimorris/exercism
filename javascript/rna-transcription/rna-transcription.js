export const toRna = (dna) => dna.split('').map(x => transcription[x]).join('');

export const transcription = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
}