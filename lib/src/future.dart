// Future basic
void main() async {
  print('We\'re just for asking ...');

  String data = await httpGet('https://api.nothing.com/aliens');
  print(data);

  print('Last line');
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () {
    // print('Here!');
    return 'Hello World!!';
  });
}
