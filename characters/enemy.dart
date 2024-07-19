import '../items/inventory.dart';
import 'npc.dart';

class Enemy extends NPC {
  Enemy(String name,
      {required int attackStat,
      required int defenseStat,
      required int magicStat})
      : _inventory = new Inventory(),
        super(
            name: name,
            attackStat: attackStat,
            defenseStat: defenseStat,
            magicStat: magicStat);

  final Inventory _inventory;

  Inventory get inventory => _inventory;

  // TODO: Implement this from the Combat interface
  void attack() {
    print('attacking...');
  }

  // TODO: Implement this from the Combat interface
  void defend() {
    print('defending...');
  }

  // TODO: Implement this from the Combat interface
  void useMagic(String magic) {
    print('using $magic...');
  }

  @override
  String toString() {
    return "${this.name}\nHealth: ${this.health}\nMana: ${this.mana}\nAttack: ${this.attackStat}\nDefense: ${this.defenseStat}\nMagic: ${this.magicStat}\nEquipped Weapon: ${this.equippedWeapon ?? "None"}";
  }
}
