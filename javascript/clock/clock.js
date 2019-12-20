
export class Clock {
  constructor(hour = 0, minute = 0) {
    this.hour = hour;
    this.minute = minute;
  }

  toString() {
    let hour = convert(this.hour, this.minute)[0];
    let minute = convert(this.hour, this.minute)[1];

    let hourString = (hour < 10) ? '0' + hour : hour;
    let minuteString = (minute < 10) ? '0' + minute : minute;

    return hourString + ':' + minuteString;
  }

  plus(minutes) {
    return new Clock(this.hour, this.minute + minutes);
  }

  minus(minutes) {
    return new Clock(this.hour, this.minute - minutes);
  }

  equals() {
    throw new Error('Remove this statement and implement this function');
  }
}

export const convert = function (hour, minute) {
  minute += hour*60;

  while (minute < 0) {
    minute += 1440;
  }

  if (minute >= 0) {
    hour = Math.floor(minute/60)%24;
    minute %= 60;
  }

  return [hour, minute];
}