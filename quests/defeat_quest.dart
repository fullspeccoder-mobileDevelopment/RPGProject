import '../characters/enemy.dart';
import 'quest.dart';

enum Type { specific, group }

class DefeatQuest extends Quest {
  DefeatQuest(String name, String description,
      {required this.type, specificEnemy, groupOfEnemies = const []})
      : specificEnemy = specificEnemy,
        super(name: name, description: description);
  final Enemy? specificEnemy;
  final List<Enemy> groupOfEnemies = [];
  final Type type;

  @override
  void completeQuest() {
    print("Eliminating Enemies...");
  }
}
