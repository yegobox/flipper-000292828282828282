import 'package:flutter_riverpod/flutter_riverpod.dart';

final authCode = Provider<String>((ref) {
  DateTime now = DateTime.now();
  return 'login-' + now.millisecondsSinceEpoch.toString();
});