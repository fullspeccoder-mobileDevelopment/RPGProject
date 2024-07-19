import '../items/inventory.dart';
import '../items/item.dart';
import '../quests/quest.dart';
import '../quests/quest_handler.dart';
import 'npc.dart';

class Hero extends NPC implements QuestHandler {
  Hero(String name)
      : _inventory = new Inventory(),
        super(attackStat: 5, defenseStat: 5, magicStat: 5, name: name);

  final Inventory _inventory;

  Inventory get inventory => _inventory;

  // TODO: Implement this for the GameMap class
  void travel() {
    print('traveling...');
  }

  // TODO: Implement this for the Combat interface
  void attack() {
    print('attacking...');
  }

  // TODO: Implement this for the Combat interface
  void defend() {
    print('defending...');
  }

  // TODO: Implement this for the Combat interface
  void useMagic(String magic) {
    print('using $magic...');
  }

  // TODO: Implement this for the Dialogue interface
  void talkTo(NPC npc) {
    print('talking to ${npc.name}...');
  }

  // void addItem(Item item) {
  //   if (this.inventory.contains(item)) {
  //     this
  //         .inventory
  //         .firstWhere((itemEl) => itemEl.name == item.name)
  //         .quantity += item.quantity;
  //   } else {
  //     this.inventory.add(item);
  //   }
  // }

  // void useItem(Item item) {
  //   print('Using ${item.name}...');
  // }

  // void discardItem(Item item) {
  //   print('Discarding ${item.name}...');
  // }

  // void hasItem() {}

  @override
  void recieveQuest(Quest? quest) {
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

  @override
  void giveQuest() {
    print("Giving quest...");
  }
}
