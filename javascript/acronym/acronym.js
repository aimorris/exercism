export const parse = s => s
  .toUpperCase()
  .match(/[A-Z']+/g)
  .map(x => x[0])
  .join('')
