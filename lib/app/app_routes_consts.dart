class RouteData {
  final String name;
  final String path;

  const RouteData({
    required this.name,
    required this.path,
  });
}

abstract class AppRoutInfo {
  static const startScreen = RouteData(
    name: 'start_screen',
    path: '/',
  );
  static const testScreen = RouteData(
    name: 'test_screen',
    path: '/test',
  );
}
