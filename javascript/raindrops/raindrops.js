export const convert = (x) => {
  let str = '';

  if (x % 3 === 0) str += 'Pling';
  if (x % 5 === 0) str += 'Plang';
  if (x % 7 === 0) str += 'Plong';

  return str || x.toString();
};
