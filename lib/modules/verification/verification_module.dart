import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/verification_page.dart';

class VerificationModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new VerificationPage())
  ];
}