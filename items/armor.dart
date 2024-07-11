import './item.dart';

class Armor extends Item {
  Armor(int quantity, String name,
      {required this.durability, required this.defenseStat})
      : super(quantity: quantity, name: name);

  int defenseStat;
  int durability;

  @override
  void use() {
    print("Using Armor: ${this.name}");
    this._loseDurability();
    if (this.durability <= 0) {
      defenseStat = 0;
    }
  }

  void repair(bool canBeRepaired) {
    if (canBeRepaired) {
      this.durability = 100;
    }
  }

  void _loseDurability() {
    this.durability -= 1;
  }
}
