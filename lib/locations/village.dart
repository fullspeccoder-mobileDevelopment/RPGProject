import 'package:my_app/characters/npc.dart';
import 'package:my_app/locations/location.dart';

class Village extends Location {
  Village(String name, String description, Map<String, Location> exits,
      Map<String, NPC> npcs)
      : super(description: description, exits: exits, npcs: npcs, name: name);

  @override
  String toString() {
    return super.toString();
  }
}
