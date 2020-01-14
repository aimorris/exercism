export const valid = number => {

  let num = number.replace(/\s/g,'');

  if (num.length <= 1)
    return false;

  return ([...`${reducedNumber(num)}`].map(Number).reduce((x, y) => x + y) % 10 == 0)
};

export const reducedNumber = num => {
  return [...num]
  .reverse()
  .reduce((acc, cur, index) => {
      let num = index & 1 ? cur * 2 : cur;
      return (num > 9 ? acc + num - 9 : acc + num);
    }, 0)
}
