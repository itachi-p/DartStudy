class Sample {
  // field
  final String preMessage;
  String _message;

  // Constructor
  Sample(this.preMessage);

// getter
  String get message => _message;

// setter
  set message(String value) => _message = '$preMessage $value';

// method
  void hello() {
    print('Hello $_message.');
  }
}

// define abstract class
abstract class AbstractContainer {
  // abstract method
  void updateChildren();
}

class ImplementContainer implements AbstractContainer {
  @override
  void updateChildren() {
    // TODO: implement updateChildren
  }
}

// implement
class Person {
  final _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who. I\'m $_name.';
}

class Imposter implements Person {
  @override
  get _name => '';

  String greet(String who) => 'Hi, $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

// extend
class Television {
  void turnOn() {
    _illuminateDisplay();
    //_activeIrSensor();
  }

  bool _illuminateDisplay() => true;
//The following is omitted
}

class SmartTelevision extends Television {
  @override
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    //_initializeMemory();
    //_upgradeApps();
  }

  void _bootNetworkInterface() {}
// The following is omitted
}

main() {
  Sample sample1 = new Sample('Mr.');
  sample1.message = "Lohengramm";
  sample1.hello();

  Sample sample2 = new Sample('dear');
  sample2.message = "Reinhard";
  sample2.hello();

  print(greetBob(Person('Kathy')));
  print(greetBob(Imposter()));
}
