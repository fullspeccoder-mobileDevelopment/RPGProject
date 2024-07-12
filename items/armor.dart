import './item.dart';

class Armor extends Item {
  Armor(int quantity, String name,
      {required this.durability, required this.defenseStat})
      : super(quantity: quantity, name: name);

  int defenseStat;
  int durability;

  void repair(bool canBeRepaired) {
    if (canBeRepaired) {
      this.durability = 100;
    }
  }

  void _loseDurability() {
    this.durability -= 1;
  }

  @override
  String toString() {
    return "${this.name}\nQuantity: ${this.quantity}\nDurability: ${this.durability}\nDefense: ${this.defenseStat}";
  }
}
