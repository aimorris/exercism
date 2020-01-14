export class Triangle {
  constructor(rows) {
    this._rows = rows;
  }

  get lastRow() {
    return this.rows.slice(-1)[0];
  }

  get rows() {
    let out = [[1]];

    for (let i = 1; i < this._rows; i++) {
      let row = [1];

      for (let j = 1; j < i; j++) {
        row.push(out[i-1][j-1] + out[i-1][j]);
      }

      row.push(1);
      out.push(row);
    }

    return out;
  }
}
