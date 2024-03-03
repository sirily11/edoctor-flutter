import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://azpnolgfnfohxsvwtpev.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF6cG5vbGdmbmZvaHhzdnd0cGV2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDkzMDU4NjgsImV4cCI6MjAyNDg4MTg2OH0.IExC34ag6GRap9dPFD_IhI_v0L9XmU2Qgysd-rUGTmY';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
