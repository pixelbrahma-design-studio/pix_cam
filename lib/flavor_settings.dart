/// Contains the hard-coded settings per flavor.
class FlavorSettings {
  late final String apiBaseUrl;
  late final String flavor;
  // TODO Add any additional flavor-specific settings here.

  FlavorSettings.dev() {
    apiBaseUrl = 'https://dev.flutter-flavors.chwe.at';
    flavor = 'dev';
  }

  FlavorSettings.prod() {
    apiBaseUrl = 'https://flutter-flavors.chwe.at';
    flavor = 'prod';
  }

  // FlavorSettings.dev()
  //     : apiBaseUrl = 'https://dev.flutter-flavors.chwe.at';

  // FlavorSettings.prod()
  //     : apiBaseUrl = 'https://flutter-flavors.chwe.at';
}