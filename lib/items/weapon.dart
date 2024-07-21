import 'item.dart';

class Weapon extends Item {
  Weapon(int quantity, String name,
      {required this.attackStat, required this.durability})
      : super(quantity: quantity, name: name);

  int durability;
  int attackStat;

  void repair(bool canBeRepaired) {
    if (canBeRepaired) {
      this.durability = 100;
    }
  }

  void _loseDurability() {
    this.durability -= 5;
  }

  @override
  String toString() {
    return "${this.name}\nQuantity: ${this.quantity}\nDurability: ${this.durability}\nAttack: ${this.attackStat}";
  }
}
