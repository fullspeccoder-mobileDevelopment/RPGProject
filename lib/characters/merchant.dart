import '../items/inventory.dart';
import 'npc.dart';

class Merchant extends NPC {
  Merchant(String name)
      : _inventory = new Inventory(),
        super(name: name, attackStat: 0, defenseStat: 0, magicStat: 0);

  final Inventory _inventory;
  final List<String> services = [];

  Inventory get inventory => _inventory;

  void giveService(String serviceName) {
    print("Giving ${serviceName}");
  }

  @override
  String toString() {
    String stringedInfo = "${this.name}\Services: ";
    this.services.forEach((line) => stringedInfo += "\n$line");
    return stringedInfo;
  }
}
