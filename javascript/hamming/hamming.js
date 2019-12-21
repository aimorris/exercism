export const compute = (seqA, seqB) => {
  if (seqA == '') {
    if (seqB == '')
        return 0;
    throw new Error('left strand must not be empty');
  } else if (seqB == '') {
    throw new Error('right strand must not be empty');
  }

  if (seqA.length !== seqB.length)
    throw new Error('left and right strands must be of equal length');

  return seqA.split('').filter((x, i) => x !== seqB[i]).length;
};
