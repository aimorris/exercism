export class Matrix {
  constructor(input) {
    this.input = input;
  }

  get rows() {
    return this.input.split('\n').map(x => x.split(' ').map(x => Number(x)));;
  }

  get columns() {
    return this.rows[0].map((_, i) => this.rows.map(row => row[i]));
  }
}
