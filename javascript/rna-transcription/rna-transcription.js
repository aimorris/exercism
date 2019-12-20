export const toRna = (dna) => dna.split('').map(x => TRANSCRIPTION[x]).join('');

export const TRANSCRIPTION = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
}