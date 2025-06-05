// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get app_title => '古文書スキャナー （αバージョン）';

  @override
  String get startup_logo => 'スプラッシュ';

  @override
  String get startup_splash => 'スプラッシュ';

  @override
  String get startup_home => 'ホーム';

  @override
  String get ancient_documents_top => '古文書スキャン';

  @override
  String get ancient_documents_camera => '';

  @override
  String get button_camera_invoke => 'カメラ起動';
}
