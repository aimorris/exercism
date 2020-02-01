export const toRna = (dna) => [...dna].map(x => TRANSCRIPTION[x]).join('');

export const TRANSCRIPTION = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
}
