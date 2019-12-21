//
// This is only a SKELETON file for the 'Allergies' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Allergies {
  constructor(number) {
    this.allergies = number.toString(2).split('').reverse();
  }

  list() {
    return POSSIBLE_ALLERGIES.filter((x, i) => this.allergies[i] == true);
  }

  allergicTo(x) {
    return this.list().includes(x);
  }
}

export const POSSIBLE_ALLERGIES = ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'];