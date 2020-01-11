export class Matrix {
  constructor(string) {
    this.matrixArray = string.split('\n').map(x => x.split(' ').map(x => Number(x)));
  }

  get rows() {
    return this.matrixArray;
  }

  get columns() {
    let out = [];
    for (let i = 0; i <= this.matrixArray.length; i++) {
      let array = [];
      this.matrixArray.map(x => array.push(x[i]))
      out.push(array);
    }
    return out;
  }
}
