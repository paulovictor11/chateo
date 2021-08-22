import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/app_module.dart';
import 'modules/app_widget.dart';

void main(List<String> args) {
  runApp(new ModularApp(
    module: new AppModule(),
    child: new AppWidget()
  ));
}