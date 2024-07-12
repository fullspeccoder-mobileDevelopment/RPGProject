import 'npc.dart';

class Villager extends NPC {
  Villager(String name)
      : super(name: name, attackStat: 0, defenseStat: 0, magicStat: 0);

  final List<String> dialogue = [];

  void giveDialogue() {
    print("Giving Dialogue...");
  }
}
