class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  personSummary() {
    return 'Name is ' + this.name + ' age is ' + this.age;
  }
}

const person1 = new Person('Ritu', 19);

console.log(person1.name);
console.log(person1.age);
console.log(person1.personSummary());
