import 'npc.dart';

class Merchant extends NPC {
  Merchant(String name)
      : super(name: name, attackStat: 0, defenseStat: 0, magicStat: 0);

  final List<String> services = [];

  void giveService(String serviceName) {
    print("Giving ${serviceName}");
  }
}
