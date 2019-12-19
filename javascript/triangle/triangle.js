export class Triangle {
  constructor(a, b, c) {
    this.sides = [a, b, c];
    this.sides.sort((a, b) => a - b);
  }

  kind() {
    const sides = this.sides;
  	if (sides[0] + sides[1] < sides[2])
  		throw new Error("violates triangle inequality");
  	
    if (sides[0] <= 0)
  		throw new Error("triangle with invalid side length");
  	
    if (sides[0] == sides[1] && sides[1] == sides[2])
  		return 'equilateral';
  	
    if (sides[0] == sides[1] || sides[1] == sides[2] || sides[2] == sides[0])
    	return 'isosceles';
    
    if (sides[0] !== sides[1] && sides[1] !== sides[2] && sides[0] !== sides[2])
    	return 'scalene';

    throw new Error("error!");
    }
}
