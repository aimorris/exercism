export class Clock {
  constructor(h = 0, m = 0) {
    this.h = convert(h, m)[0];
    this.m = convert(h, m)[1];
  }

  toString() { return unitFormat(this.h) + ':' + unitFormat(this.m) }

  plus(ms) { return new Clock(this.h, this.m + ms) }

  minus(ms) { return new Clock(this.h, this.m - ms) }

  equals(clock) { return this.toString() === clock.toString() }
}

export const unitFormat = x => (x < 10 ? '0' : '') + x

export const convert = (h, m) => {
  m += h*60;

  while (m < 0) m += 1440;

  if (m >= 0)
    h = Math.floor(m/60)%24;
    m %= 60;

  return [h, m];
}
