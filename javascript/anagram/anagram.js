export const findAnagrams = (word, list) => list.filter(x =>
  (word.toLowerCase() !== x.toLowerCase()) &&
  (sorted(x) == sorted(word))
)

export const sorted = (x) => x.toLowerCase().split('').sort().join('')
