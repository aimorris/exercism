export const findAnagrams = (w, l) => l.filter(x => w.toLowerCase() !== x.toLowerCase() && sorted(x) == sorted(w))

export const sorted = x => [...x.toLowerCase()].sort().join('')
