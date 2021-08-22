import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/welcome_page.dart';

class WelcomeModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new WelcomePage())
  ];
}