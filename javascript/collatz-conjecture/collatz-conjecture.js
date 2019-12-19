export const steps = (n) => {
    let steps = 0;

    if (n <= 0) {
        throw new Error('Only positive numbers are allowed');
    }

    while (n != 1) {
        n = n % 2 ? 3*n+1 : n/2;
        steps++;
    }

    return steps;
};
