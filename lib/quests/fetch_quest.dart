import 'quest.dart';

class FetchQuest extends Quest {
  FetchQuest(String name, String description)
      : super(name: name, description: description);

  @override
  void completeQuest() {
    print("Completing Fetch Quest...");
  }
}
