import 'package:shared_preferences/shared_preferences.dart';

class AuthHelper {
  static const String _keyName = 'user_name';
  static const String _keyEmail = 'user_email';
  static const String _keyPassword = 'user_password';
  static const String _keyIsLoggedIn = 'is_logged_in';

  // 1. Simpan akun baru saat Register
  static Future<bool> registerUser({
    required String name,
    required String email,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyName, name);
    await prefs.setString(_keyEmail, email);
    await prefs.setString(_keyPassword, password);
    return true;
  }

  // 2. Cek email dan password saat Login
  static Future<bool> loginUser({
    required String email,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString(_keyEmail);
    final savedPassword = prefs.getString(_keyPassword);

    if (savedEmail == email && savedPassword == password) {
      await prefs.setBool(_keyIsLoggedIn, true);
      return true;
    }
    return false;
  }

  // 3. Cek apakah user sudah login sebelumnya
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyIsLoggedIn) ?? false;
  }

  // 4. Logout (hapus sesi login)
  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyIsLoggedIn, false);
  }
}