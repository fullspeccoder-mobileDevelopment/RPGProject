import 'item.dart';

class Weapon extends Item {
  Weapon(int quantity, String name,
      {required this.attackStat, required this.durability})
      : super(quantity: quantity, name: name);

  int durability;
  int attackStat;

  @override
  void use() {
    print("Using Weapon: ${this.name}");
    this._loseDurability();
    if (this.durability <= 0) {
      attackStat = 1;
    }
  }

  void repair(bool canBeRepaired) {
    if (canBeRepaired) {
      this.durability = 100;
    }
  }

  void _loseDurability() {
    this.durability -= 5;
  }
}
