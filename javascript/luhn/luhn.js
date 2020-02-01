export const valid = number => {
  let num = number.replace(/\s/g,'');

  if (num.length <= 1) return false;

  return reducedNumber(num) % 10 === 0
};

export const reducedNumber = num => [...num].reverse().reduce((acc, cur, index) => {
      let num = cur * (index & 1 ? 2 : 1);
      return num + acc - (num > 9 ? 9 : 0);
    }, 0)
