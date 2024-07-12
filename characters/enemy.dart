import 'npc.dart';

class Enemy extends NPC {
  Enemy(String name,
      {required int attackStat,
      required int defenseStat,
      required int magicStat})
      : super(
            name: name,
            attackStat: attackStat,
            defenseStat: defenseStat,
            magicStat: magicStat);
  void attack() {
    print('attacking...');
  }

  void defend() {
    print('defending...');
  }

  void useMagic(String magic) {
    print('using $magic...');
  }

  @override
  String toString() {
    return "${this.name}\nHealth: ${this.health}\nMana: ${this.mana}\nAttack: ${this.attackStat}\nDefense: ${this.defenseStat}\nMagic: ${this.magicStat}\nEquipped Weapon: ${this.equippedWeapon ?? "None"}";
  }
}
