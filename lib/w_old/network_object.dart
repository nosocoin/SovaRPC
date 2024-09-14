import 'dart:math';

import 'package:noso_dart/models/noso/seed.dart';

final class NetworkObject {
  static const List<String> seedsVerification = [
    "204.10.194.22",
    "204.10.194.29",
    "204.10.194.32",
    "204.10.194.26",
    "204.10.194.33",
    "38.242.252.153",
    "62.171.172.186"
  ];

  static const int durationTimeOut = 3;
  static const int delaySync = 30;

  static String getRandomNode(String? inputString) {
    List<String> elements = (inputString ?? "").split(',');
    int elementCount = elements.length;
    if (elementCount > 0 && inputString != null && inputString.isNotEmpty) {
      int randomIndex = Random().nextInt(elementCount);
      var targetSeed = elements[randomIndex].split("|")[0];
      return targetSeed;
    } else {
      var devNode = NetworkObject.getVerificationSeedList();
      int randomDev = Random().nextInt(devNode.length);
      return devNode[randomDev].toTokenizer;
    }
  }

  static List<Seed> getVerificationSeedList() {
    List<Seed> defSeed = [];
    for (String seed in seedsVerification) {
      defSeed.add(Seed(ip: seed));
    }
    return defSeed;
  }
}
