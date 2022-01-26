class Person {
  constructor(age) {
    this.age = age;
  }

  foo() {
    console.log(this.age);
  }
  foo(name) {
    console.log(this.age, name);
  }
}

const p = new Person(5);
p.foo();
