import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/profile_page.dart';

class ProfileModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new ProfilePage())
  ];
}