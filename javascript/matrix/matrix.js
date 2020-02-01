export class Matrix {
  constructor(input) { this.input = input }

  get rows() {
    if (!this._rows) this._rows = this.input.split('\n').map(x => x.split(' ').map(x => Number(x)));

    return this._rows;
  }

  get columns() {
    if (!this._columns) this._columns = this.rows[0].map((_, i) => this.rows.map(row => row[i]));

    return this._columns;
  }
}
