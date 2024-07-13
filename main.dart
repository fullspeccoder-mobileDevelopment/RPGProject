import 'characters/hero.dart';
import 'characters/villager.dart';
import 'items/weapon.dart';
import 'quests/defeat_quest.dart';
import 'quests/escort_quest.dart';
import 'quests/fetch_quest.dart';
import 'quests/quest.dart';

void main() {
  Hero hero = Hero("Jake");
  Weapon weapon1 = Weapon(2, "Excaliber", attackStat: 5, durability: 100);
  Villager villager1 = Villager("Marcus");
  Quest quest1 = FetchQuest("Gather weapons", "gather weapons from cave");
  Quest quest2 = DefeatQuest(
      "Defeat enemies in Castle", "Defeat enemies within Castle Ground",
      type: Type.specific);
  Quest quest3 = EscortQuest(
      "Escort young maiden to Castle", "Escort a young maiden",
      characterToEscort: villager1);
  List<Quest> quests = [quest1, quest2, quest3];

  hero.quests.addAll(quests);

  hero.showQuests();
}
