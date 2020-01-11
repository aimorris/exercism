//
// This is only a SKELETON file for the 'Matrix' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

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
