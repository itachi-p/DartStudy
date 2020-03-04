// Mixin - クラスのコードを複数のクラス階層で再利用する
// ex)
//class Maestro extends Person with Musical, Aggressive, Demented {}

// ミックスインは、コンストラクタを宣言しないクラスを作成し、with句でそれを実装する。
// 通常のクラスとして使用させたくない場合、`class`キーワードの代わりに`mixin`キーワードを使用する。

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Performer {}

class Musician extends Performer with Musical {}

mixin Greet1 on Ancestor {
  //void hello() => print("hello, Greet1"); // 2nd priority
}

class Ancestor {
  void hello() => print("I am a Ancestor"); // priority: 4th
}

class Parent extends Ancestor {
  //void hello() => print("I am a Parent"); // 3rd priority
}

class Child extends Parent with Greet1 {
  //void hello() => print('I am a Child');  // 1st priority
}
// The following is an error because Ancestor is not implemented.
//class Stranger with Greet1 {}

main() {
  Musician musician1 = new Musician();
  musician1.canCompose = true;
  musician1.entertainMe();

  Child child1 = new Child();
  child1.hello(); // hello()を最終的にオーバーライドしたものが実行される
}
