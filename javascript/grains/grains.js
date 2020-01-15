import BigInteger from './lib/big-integer';

export const numOfGrains = (x) => BigInteger(2).pow(x - 1)

export const square = (x) => {
  if (x < 1 || x > 64) throw new Error('square must be between 1 and 64')
  return numOfGrains(x).toString()
}

export const total = () => numOfGrains(65).minus(1).toString()
