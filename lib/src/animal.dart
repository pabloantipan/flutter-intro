// Practicing mixing
abstract class Animal {
  int legs = 0;

  void emitSound();
}
abstract class Flyer {
  void fly() => print("I can fly!!")
}

abstract class Swimmer {
  void swim() => print("I can swim!!")
}

abstract class Walker {
  void walk() => print("I can walk!!")
}

abstract class Mammal extends Animal {

}

abstract class Bird extends Animal {
  int _numWings = 2;

  int get numWings => _numWings;
  set numWings(int val) => _numWings = val;

  void hasWings() => true;
}

abstract class Fish extends Animal with Swimmer {}

abstract class Pinguin extends Bird with Swimmer {}

class Dog implements Mammal {
  int legs = 4;
  int tails = 1;

  void emitSound() => print('Waraf!!');
}

class Cat implements Mammal {
  int legs = 4;
  int tails = 1;

  void emitSound() => print('Mew!!');
}

class Duck extends Bird with Flyer, Swimmer {
}