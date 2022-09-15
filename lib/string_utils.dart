class StringUtil {
  //String 유효성체크
  static bool isValidString(String? str) {
    if (str != null && str.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
