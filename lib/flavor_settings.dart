/// Contains the hard-coded settings per flavor.
class FlavorSettings {
  final String apiBaseUrl;
  // TODO Add any additional flavor-specific settings here.

  FlavorSettings.dev()
      : apiBaseUrl = 'https://dev.flutter-flavors.chwe.at';

  FlavorSettings.prod()
      : apiBaseUrl = 'https://flutter-flavors.chwe.at';
}