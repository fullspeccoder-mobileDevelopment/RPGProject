import 'package:my_app/quests/quest_list.dart';

import '../items/inventory.dart';
import 'npc.dart';

class Hero extends NPC {
  Hero(String name)
      : super(attackStat: 5, defenseStat: 5, magicStat: 5, name: name);

  final Inventory _inventory = Inventory();
  final QuestList _quests = QuestList();

  Inventory get inventory => _inventory;
  QuestList get quests => _quests;

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

  // void hasItem() {}

  @override
  String toString() {
    return "$name\nHealth: $health\nMana: $mana\nAttack: $attackStat\nDefense: $defenseStat\nMagic: $magicStat\nEquipped Weapon: ${equippedWeapon ?? "None"}";
  }
}
