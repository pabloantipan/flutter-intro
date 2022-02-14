// Class extending

abstract class Character {
  String name = '';
  String ability = '';
}

class Hero extends Character {
  int courage = 1;

  // Hero(this.name, this.ability);

  Hero.fromJson(Map parsedJson) {
    name = parsedJson['name'];
    ability = parsedJson['ability'];
  }
}

class Villain {
  int divilry = 1;
}
