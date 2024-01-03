import 'app/app.dart';
import 'bootstrap.dart';

void main() async {
  await bootstrap((serviceLocator) async => ApplicationWidget(
        serviceLocator: serviceLocator,
      ));
}
