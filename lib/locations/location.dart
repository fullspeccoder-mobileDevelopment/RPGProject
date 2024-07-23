import 'dart:collection';

import 'package:my_app/characters/npc.dart';

abstract class Location {
  Location(
      {required this.name,
      required this.description,
      required this.npcs,
      required this.exits});

  final String name;
  final String description;
  final Map<String, NPC> npcs;
  final Map<String, Location> exits;
  bool visited = false;

  @override
  String toString() {
    String formattedString = "";
    if (!visited) {
      formattedString += 'You arrive at $name.\n';
      formattedString += description;
      visited = true;
    } else {
      formattedString += 'You return to $name.';
    }

    if (npcs.isNotEmpty) {
      formattedString += '\n\nYou see the following characters:\n';
      for (var npc in npcs.values) {
        formattedString += "- ${npc.name}\n";
      }
    }
    return formattedString;
  }
}
