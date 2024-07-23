import 'package:my_app/quests/quest_list.dart';

import 'npc.dart';

class Villager extends NPC {
  Villager(String name)
      : super(name: name, attackStat: 0, defenseStat: 0, magicStat: 0);

  final List<String> _dialogue = [];
  final QuestList _quests = QuestList();

  List<String> get dialogue => _dialogue;
  QuestList get quests => _quests;

  void giveDialogue() {
    print("Giving Dialogue...");
  }

  @override
  String toString() {
    String stringedInfo = "$name\nDialogue: ";
    for (var line in dialogue) {
      stringedInfo += "\n$line";
    }
    return stringedInfo;
  }
}
