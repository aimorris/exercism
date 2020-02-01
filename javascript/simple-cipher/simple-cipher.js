export class Cipher {

  constructor(key = 'aaaaaaaaaa') {
    if (!/[a-z]+/.test(key)) return new Error()
    this.key = key;
  }

  encode(string) { return coder(string, this.key, false) }

  decode(string) { return coder(string, this.key, true) }
}

const coder = (string, key, bool) => {
  while (string.length > key.length) key += key

  return [...string].map((letter, i) => {
    let alphaCodes = (string.charCodeAt(i) - 97) + (key.charCodeAt(i) - 97) * (bool ? -1 : 1);
    let newLetter = alphaCodes;

    if (bool)
      newLetter += (alphaCodes < 0 ? 26 : 0)
    else
      newLetter -= (alphaCodes > 25 ? 26 : 0)

    return String.fromCharCode(newLetter + 97);
  }).join('');
}
