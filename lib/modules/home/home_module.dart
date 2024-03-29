import 'package:flutter_modular/flutter_modular.dart';

import 'home_widget.dart';

class HomeModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new HomeWidget())
  ];
}