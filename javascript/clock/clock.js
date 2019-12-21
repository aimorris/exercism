
export class Clock {
  constructor(hour = 0, minute = 0) {
    this.hour = convert(hour, minute)[0];
    this.minute = convert(hour, minute)[1];
  }

  toString() {
    return unitFormat(this.hour) + ':' + unitFormat(this.minute);
  }

  plus(minutes) {
    return new Clock(this.hour, this.minute + minutes);
  }

  minus(minutes) {
    return new Clock(this.hour, this.minute - minutes);
  }

  equals(clock) {
    return this.toString() === clock.toString();
  }
}

export const unitFormat = (x) => (x < 10 ? '0' : '') + x

export const convert = function (hour, minute) {
  minute += hour*60;

  while (minute < 0) minute += 1440;

  if (minute >= 0) {
    hour = Math.floor(minute/60)%24;
    minute %= 60;
  }

  return [hour, minute];
}
