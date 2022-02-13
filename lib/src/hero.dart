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
