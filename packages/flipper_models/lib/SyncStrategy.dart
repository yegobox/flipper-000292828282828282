import 'package:flipper_models/CloudSync.dart';
import 'package:flipper_models/FlipperInterfaceCapella.dart';
import 'package:flipper_services/Capella.dart';

enum Strategy { capella, cloudSync }

class SyncStrategy {
  final Capella capella;
  final CloudSync cloudSync;
  Strategy _currentStrategy = Strategy.capella;

  SyncStrategy({
    required this.capella,
    required this.cloudSync,
  });

  FlipperInterfaceCapella get current =>
      _currentStrategy == Strategy.capella ? capella : cloudSync;

  void setStrategy(Strategy strategy) {
    _currentStrategy = strategy;
  }
}