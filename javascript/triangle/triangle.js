export class Triangle {
  constructor(a, b, c) {
    this.sides = [a, b, c].sort((a, b) => a - b);
  }

  kind() {
    const sides = this.sides;

  	if (sides[0] + sides[1] < sides[2])
  		throw new Error("violates triangle inequality");
  	
    if (sides[0] <= 0)
  		throw new Error("triangle with invalid side length");

    return TRIANGLE_TYPES[new Set(this.sides).size];
  }
}

export const TRIANGLE_TYPES = {
  1: 'equilateral',
  2: 'isosceles',
  3: 'scalene'
}
