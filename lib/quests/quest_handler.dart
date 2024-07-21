import 'quest.dart';

abstract class QuestHandler {
  final List<Quest> quests = [];
  void recieveQuest(Quest? quest);
  void giveQuest();
}
