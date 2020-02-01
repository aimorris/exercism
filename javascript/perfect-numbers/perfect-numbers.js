export const classify = (num) => {

  if (num < 1) throw new Error('Classification is only possible for natural numbers.');

  let classification = sumOfArray(factorise(num));

  if (classification > num) {
    return 'abundant';
  } else if (classification < num) {
    return 'deficient';
  } else {
    return 'perfect';
  }
}

export const sumOfArray = (arr) => arr.reduce( (acc, cur) => { return acc + cur }, 0)

export const factorise = (num) => {
  let out = [];
  
  for (let i = 0; i < num; i++) { if (num % i === 0) out.push(i) }

  return out;
}
