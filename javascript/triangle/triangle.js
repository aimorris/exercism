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

    switch (new Set(this.sides).size) {
      case 1:
        return 'equilateral';
      case 2:
        return 'isosceles';
      case 3:
        return 'scalene';
      default:
        throw new Error("error");
    }
  }
}
