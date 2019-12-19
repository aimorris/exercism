//
// This is only a SKELETON file for the 'Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Triangle {
  constructor(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  kind() {
  	if (this.a + this.b < this.c || this.a + this.c < this.b || this.b + this.c < this.a) {
  		throw new Error("violates triangle inequality");
  	} else if (this.a == 0 || this.b == 0 || this.c == 0) {
  		throw new Error("triangle with length of 0");
  	} else if (this.a == this.b && this.b == this.c) {
  		return 'equilateral';
  	} else if (this.a == this.b || this.b == this.c || this.c == this.a) {
    	return 'isosceles';
    } else if (this.a !== this.b && this.b !== this.c && this.a !== this.c) {
    	return 'scalene';
    } else {
    	throw new Error("error!");
    }
  }
}
