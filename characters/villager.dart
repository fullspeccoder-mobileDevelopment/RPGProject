import 'npc.dart';

class Villager extends NPC {
  Villager(String name)
      : super(name: name, attackStat: 0, defenseStat: 0, magicStat: 0);

  final List<String> dialogue = [];

  void giveDialogue() {
    print("Giving Dialogue...");
  }

  String? giveQuest(int choice) {
    if (this.quests.length == 0) {
      return null;
    } else {
      return this.quests[choice - 1];
    }
  }

  @override
  String toString() {
    String stringedInfo = "${this.name}\nDialogue: ";
    this.dialogue.forEach((line) => stringedInfo += "\n$line");
    return stringedInfo;
  }
}
