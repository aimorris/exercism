export const countWords = str =>
  str
  .toLowerCase()
  .match(/\w+('\w+)?/g)
  .reduce(
    (obj, word) => {
      obj[word] = obj[word] + 1 || 1;
      return obj
    }, {});
