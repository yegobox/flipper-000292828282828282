import 'package:universal_io/io.dart';
import 'package:flutter/foundation.dart';

bool get kIsDesktop =>
    (Platform.isWindows || Platform.isLinux || Platform.isMacOS) && !kIsWeb;
