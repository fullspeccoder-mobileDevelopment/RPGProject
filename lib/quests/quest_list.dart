import 'quest.dart';

class QuestList {
  final List<Quest> quests = [];

  void addQuest(Quest quest) {
    for (var q in quests) {
      if (q.name == quest.name) {
        throw "Quest already in quest inventory!";
      }
    }
    quests.add(quest);
  }

  void completeQuest(String questName) {
    bool hasCompletedQuest = false;
    for (var q in quests) {
      if (q.name == questName) {
        q.completedStatus = true;
        hasCompletedQuest = true;
        break;
      }
    }
    print(hasCompletedQuest
        ? "Has completed the quest"
        : "Has not completed the quest");
  }

  void removeQuest(String questName) {
    bool questRemoved = false;
    for (var q in quests) {
      if (q.name == questName) {
        quests.remove(q);
        questRemoved = !questRemoved;
        break;
      }
    }
    print(questRemoved ? "Quest was removed" : "Quest was not removed");
  }

  Quest? selectQuest(String questName) {
    for (var q in quests) {
      if (q.name == questName) {
        return quests.firstWhere((q) => q.name == questName);
      }
    }
    return null;
  }
}
