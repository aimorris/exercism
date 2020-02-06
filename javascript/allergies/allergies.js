export class Allergies {
  constructor(number) { this.allergies = [...number.toString(2)].reverse() }
  list() { return ALLERGIES.filter((_, i) => this.allergies[i] == '1') }
  allergicTo(x) { return this.list().includes(x) }
}

export const ALLERGIES = ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats'];
