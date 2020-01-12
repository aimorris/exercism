import BigInteger from './lib/big-integer';

export class Grains {

  numOfGrains(x) {
    return BigInteger(2).pow(x - 1);
  }

  square(x) {
    return this.numOfGrains(x).toString();
  }

  total(numOfSquares) {
    let sum = BigInteger(0);
    for (let i = 0; i <= numOfSquares; i++) {
      sum = sum.plus(this.numOfGrains(i));
    }

    return sum.toString();
  }
}
