//
// This is only a SKELETON file for the 'Raindrops' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const convert = (x) => {
  let str = '';
  
  if (factors(x).includes(3)) str += 'Pling';
  if (factors(x).includes(5)) str += 'Plang';
  if (factors(x).includes(7)) str += 'Plong';
  if (str.length == 0) str += x;

  return str;
};

export const factors = (number) => {
    return [...Array(number).keys(), number].filter(x => number % x == 0);
}
