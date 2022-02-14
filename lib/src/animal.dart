// Practicing mixing
import 'dart:ffi';

abstract class Animal {
  dynamic emitSound();
}

abstract class Flyer {
  Double maxAltitud = 0.0;
  String fly() => "I can fly!!";
}

abstract class Swimmer {
  Double maxDeph = 0.0;
  String swim() => "I can swim!!";
}

abstract class Walker {
  String walk() => "I can walk!!";
}

abstract class Mammal extends Animal {}

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

  @override
  String emitSound() => 'Waraf!!';
}

class Cat implements Mammal {
  int legs = 4;
  int tails = 1;

  @override
  emitSound() => ['Mew!!', 'Miuu!!'];
}

class Duck extends Bird with Flyer, Swimmer {
  @override
  String emitSound() => 'Cuac!!';
}
