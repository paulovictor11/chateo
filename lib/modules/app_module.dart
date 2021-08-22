import 'package:flutter_modular/flutter_modular.dart';

import 'chat/chat_module.dart';
import 'home/home_module.dart';
import 'phone_number/phone_module.dart';
import 'profile/profile_module.dart';
import 'verification/verification_module.dart';
import 'welcome/welcome_module.dart';

class AppModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ModuleRoute('/', module: new WelcomeModule()),
    new ModuleRoute('/phone', module: new PhoneNumberModule()),
    new ModuleRoute('/verification', module: new VerificationModule()),
    new ModuleRoute('/profile', module: new ProfileModule()),
    new ModuleRoute('/home', module: new HomeModule()),
    new ModuleRoute('/chat', module: new ChatModule())
  ];
}