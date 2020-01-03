export class Allergies {
  constructor(number) {
    this.allergies = number.toString(2).split('').reverse();
  }

  list() {
    return POSSIBLE_ALLERGIES.filter((x, i) => this.allergies[i] === '1');
  }

  allergicTo(x) {
    return this.list().includes(x);
  }
}

export const POSSIBLE_ALLERGIES = ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'];
