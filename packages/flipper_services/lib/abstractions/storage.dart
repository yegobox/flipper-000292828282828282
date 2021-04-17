abstract class LocalStorage {
  dynamic read({required String key});
  bool write({required String key, required String value});
}
