// import 'package:cli/src/cli.dart' as cli;
import 'package:intro/lib.dart';
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

  print('Hello world: ${calculate()}!');
}
