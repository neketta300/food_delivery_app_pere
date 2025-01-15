import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  // sign in w email & password
  Future<AuthResponse> signInWithEmailPassword(
      String email, String password) async {
    return await _supabaseClient.auth
        .signInWithPassword(email: email, password: password);
  }

  // sign up w email & password
  Future<AuthResponse> signUpWithEmailPassword(
      String email, String password) async {
    return await _supabaseClient.auth.signUp(password: password, email: email);
  }

  // sign out
  Future<void> signOut() async {
    await _supabaseClient.auth.signOut();
  }

  String? getCurrentUserEmail() {
    final session = _supabaseClient.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }
}
