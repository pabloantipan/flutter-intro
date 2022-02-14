// Future basic
void main() {
  print('We\'re just for asking ...');

  httpGet('https://api.nothing.com/aliens').then((data) {
    print(data);
  });

  print('Last line');
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () {
    // print('Here!');
    return 'Hello World!!';
  });
}
