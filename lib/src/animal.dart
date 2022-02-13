// Abstract class
abstract class Animal {
  int legs = 0;

  void emitSound();
}

class Dog implements Animal {
  int legs = 4;
  int tails = 1;

  void emitSound() => print('Waraf!!');
}

class Cat implements Animal {
  int legs = 4;
  int tails = 1;

  void emitSound() => print('Mew!!');
}
