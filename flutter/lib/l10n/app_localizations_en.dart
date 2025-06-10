// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_title => 'Stone Monument Scanner (alpha version)';

  @override
  String get startup_logo => 'Logo';

  @override
  String get startup_splash => 'Splash';

  @override
  String get startup_home => 'Home';

  @override
  String get ancient_documents_top => 'Ancient Docs Scan';

  @override
  String get ancient_documents_camera => '';

  @override
  String get message_no_photo_taken => 'Take a photo of a document.';

  @override
  String get button_camera_invoke => 'Take a photo';

  @override
  String get button_save_photo => 'Save this photo';

  @override
  String get button_analyze_photo => 'Analyze this photo';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get terms_of_service => 'Terms of Service';
}
