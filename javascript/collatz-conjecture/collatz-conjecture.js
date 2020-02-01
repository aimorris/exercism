export const steps = (n, nSteps = 0) => {
    if (n <= 0) throw new Error('Only positive numbers are allowed')
    return (n == 1) ? nSteps : steps(n % 2 ? 3*n+1 : n/2, nSteps + 1)
};
