export const compute = (seqA, seqB) => {
  if (seqA.length !== seqB.length) {
    if (!seqA.length) throw new Error('left strand must not be empty');
    if (!seqB.length) throw new Error('right strand must not be empty');

    throw new Error('left and right strands must be of equal length');
  }

  return seqA.split('').filter((x, i) => x !== seqB[i]).length;
};
