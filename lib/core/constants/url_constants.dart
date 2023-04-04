class UrlConstants {
  static String baseApiUrl() => 'https://api.unsplash.com';

  /// images
  /// i would set client_id in proper way(in remote client class)
  /// but because it's test i just wrote it here
  static const String getImages =
      '/photos/?client_id=ab3411e4ac868c2646c0ed488dfd919ef612b04c264f3374c97fff98ed253dc9';
}
