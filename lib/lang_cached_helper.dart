import 'package:portfolio/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangaugeCachedHelper {
  Future<void> cachedLangaugeCode(String langaugeCode) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("LOCALE", langaugeCode);
  }

  Future<String> getCachedLangaugeCode() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedLangaugeCode = sharedPreferences.getString("LOCALE");
    if (cachedLangaugeCode != null) {
      return cachedLangaugeCode;
    } else {
      return "en";
    }
  }
}
