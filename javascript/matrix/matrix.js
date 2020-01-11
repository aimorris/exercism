export class Matrix {
  constructor(string) {
    this.matrixArray = string.split('\n').map(x => x.split(' ').map(x => Number(x)));
    console.log(this.matrixArray);
  }

  get rows() {
    return this.matrixArray;
  }

  get columns() {
    throw new Error("Remove this statement and implement this function");
  }
}
