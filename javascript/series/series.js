export class Series {
  constructor(str) {
    this.str = str
    this.strDigits = this.strToArr()
  }

  get digits() { return this.strDigits }

  strToArr = () => this.str.split('').map(c => parseInt(c))

  slices(n) {
    if (n > this.strDigits.length) throw new Error('Slice size is too big.')

    let out = []
    for (let i = 0; i < this.strDigits.length - n+1; i++) out.push(this.strDigits.slice(i, i+n))
    return out
  }
}
