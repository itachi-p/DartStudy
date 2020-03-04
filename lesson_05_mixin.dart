// Mixin クラスのコードを複数のクラス階層で再利用する
//class Musician extends Performer with Musical {}
//class Maestro extends Person with Musical, Aggressive, Demented {}

// ミックスインの実装は、コンストラクタを宣言しないクラスを作成する。
// 通常のクラスとして使用させたくない場合、`class`キーワードの代わりに`mixin`キーワードを使用する。

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void enrertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

main() {}
