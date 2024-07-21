import '../characters/npc.dart';
import 'quest.dart';

class EscortQuest extends Quest {
  EscortQuest(String name, String description,
      {required this.characterToEscort})
      : super(name: name, description: description);
  final NPC characterToEscort;

  @override
  void completeQuest() {
    print("Completing Escort Quest...");
  }
}
