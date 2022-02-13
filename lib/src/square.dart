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
