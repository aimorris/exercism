import BigInteger from './lib/big-integer';

export class Grains {

  numOfGrains(x) {
    return BigInteger(2).pow(x - 1);
  }

  square(x) {
    return this.numOfGrains(x).toString();
  }

  total(n) {
    return BigInteger(2).pow(n).minus(1).toString();
  }
}
