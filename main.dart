import 'package:my_app/characters/villager.dart';
import 'package:my_app/locations/location.dart';
import 'package:my_app/locations/village.dart';

void main() {
  Location location1 = Village(
      "PuPuNuNu",
      "A village where a tribe exists...",
      {"North": Village("NuNuPuPu", "Village of tribes", {}, {})},
      {"house": Villager("Marcus")});

  print(location1);
}
