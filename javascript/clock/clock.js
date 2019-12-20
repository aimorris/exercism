
export class Clock {
  constructor(hour = 0, minute = 0) {
    this.hour = hour;
    this.minute = minute;
  }

  toString() {
    let hour = convert(this.hour, this.minute)[0];
    let minute = convert(this.hour, this.minute)[1];

    return unitFormat(hour) + ':' + unitFormat(minute);
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