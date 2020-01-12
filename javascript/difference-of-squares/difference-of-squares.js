export class Squares {
  constructor(n) {
    this.n = n;

    this.list = [];

    for (let i = 1; i <= this.n; i++) {
      this.list.push(i);
    }
  }

  get sumOfSquares() {
    return sumOfArray(
      this.list.map(
        x => Math.pow(x, 2)
      )
    );
  }

  get squareOfSum() {
    return Math.pow(sumOfArray(this.list), 2);
  }

  get difference() {
    return this.squareOfSum - this.sumOfSquares;
  }
}

export const sumOfArray = (arr) => {
  return arr.reduce( (acc, cur) => {
      return acc + cur
    }, 0);
}
