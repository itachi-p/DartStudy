// 滅多に無いが、オーバーライドするメソッドのパラメータの型をサブタイプの型に強制したい場合
class Animal {
  void chase(Animal x) {
    print(x.runtimeType);
  }
}

class Mouse extends Animal {}

class Cat extends Animal {
  @override
  //void chase(Animal x) {
  void chase(covariant Mouse x) {
    // 使う側で型をサブタイプMouseに強制する
    super.chase(x); // equal print(x.runtimeType);
  }
}

main() {
  Cat().chase(Mouse());

  // This results in a compilation error.
  //Cat().chase(Animal());
}
