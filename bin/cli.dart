import 'package:cli/cli.dart' as cli;
import 'dart:convert';

void main(List<String> arguments) {
  final rawJson = '{ "name": "Logan", "ability":"Regeneration" }';
  final parsedJson = json.decode(rawJson);

  final wolverine = new Hero.fromJson(parsedJson);
  print(wolverine.name);
  print(wolverine.ability);

  final square = new Square();
  square.side = 10.0;
  print(square.area);
  print(square.toString());

  final dog = Dog();
  final cat = Cat();
  dog.emitSound();
  cat.emitSound();

  print('Hello world: ${cli.calculate()}!');
}

// Simple class
class Hero {
  String name = '';
  String ability = '';

  Hero(this.name, this.ability);

  Hero.fromJson(Map parsedJson) {
    name = parsedJson['name'];
    ability = parsedJson['ability'];
  }
}

// Getter and setter
class Square {
  double _side = 0;
  double _area = 0;

  set side(double side) {
    if (side <= 0) {
      throw ('side can\'t be less than 0');
    }
    _side = side;
    _area = _side * _side;
  }

  get area => _area;

  toString() => 'Square: side = $_side, area = $_area';
}

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
