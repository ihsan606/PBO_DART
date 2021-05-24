void main(List<String> arguments) async {
  var p = Person();
  print('job 1');
  print('job 2');
  p.getDataAsync().then((_) => print('job 3 ' + p.name));

  print('job 4');
}

class Person {
  String name = 'default name';

  void getData() {
    name = 'ihsan';
    print('get data[done]');
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'ihsan';
    print('get data[done]');
  }
}
