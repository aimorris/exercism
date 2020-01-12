export class Cipher {

  constructor(key) {
    if (key == null) {
      this.key = 'ggggggggggg';
    } else if (!/([a-z])+/g.test(key)) {
      throw Error('Bad key');
    } else {
      this.key = key;
    }
  }


  encode(string) {
    if (string.length > this.key.length) {
      this.key += this.key;
      this.encode(string);
    }

    return string.split('').map(function (letter, i) {
      let alphaCode = string.charCodeAt(i) - 97;
      let cipherAlphaCode = this.key.charCodeAt(i) - 97;
      let newLetter;

      if (alphaCode + cipherAlphaCode > 25) {
        newLetter = alphaCode + cipherAlphaCode - 26;
      } else {
        newLetter = alphaCode + cipherAlphaCode;
      }

      return String.fromCharCode(newLetter + 97);
    }, this).join('');
  }

  decode(string) {
    if (string.length > this.key.length) {
      this.key += this.key;
      this.decode(string);
    }

    return string.split('').map(function (letter, i) {
      let alphaCode = string.charCodeAt(i) - 97;
      let cipherAlphaCode = this.key.charCodeAt(i) - 97;
      let newLetter;

      if (alphaCode - cipherAlphaCode < 0) {
        newLetter = alphaCode - cipherAlphaCode + 26;
      } else {
        newLetter = alphaCode - cipherAlphaCode;
      }

      return String.fromCharCode(newLetter + 97);
    }, this).join('');
  }

}
