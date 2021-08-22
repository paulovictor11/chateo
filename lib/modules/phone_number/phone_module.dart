import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/phone_page.dart';

class PhoneNumberModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new PhoneNumberPage())
  ];
}