import '../items/item.dart';
import 'npc.dart';

class Hero extends NPC {
  Hero(String name)
      : super(attackStat: 5, defenseStat: 5, magicStat: 5, name: name);

  void travel() {
    print('traveling...');
  }

  void attack() {
    print('attacking...');
  }

  void defend() {
    print('defending...');
  }

  void useMagic(String magic) {
    print('using $magic...');
  }

  void talkTo(NPC npc) {
    print('talking to ${npc.name}...');
  }

  void addItem(Item item) {
    if (this.inventory.contains(item)) {
      this
          .inventory
          .firstWhere((itemEl) => itemEl.name == item.name)
          .quantity += item.quantity;
    } else {
      this.inventory.add(item);
    }
  }

  void useItem(Item item) {
    print('Using ${item.name}...');
  }

  void discardItem(Item item) {
    print('Discarding ${item.name}...');
  }

  void recieveQuest(String? quest) {
    if (quest != null) {
      this.quests.add(quest);
    } else {
      print("Can't recieve quest; Doesn't exist");
    }
  }

  @override
  String toString() {
    return "${this.name}\nHealth: ${this.health}\nMana: ${this.mana}\nAttack: ${this.attackStat}\nDefense: ${this.defenseStat}\nMagic: ${this.magicStat}\nEquipped Weapon: ${this.equippedWeapon ?? "None"}";
  }
}
