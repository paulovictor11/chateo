import 'package:chateo/shared/theme/app_colors.dart';
import 'package:chateo/shared/theme/app_text_styles.dart';
import 'package:chateo/shared/widgets/buttons/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.background,
      body: new Padding(
        padding: const EdgeInsets.all(24),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            new SizedBox(height: 64),
            new Container(
              width: 262,
              height: 271,
              color: AppColors.input,
            ),
            new SizedBox(height: 48),
            new Text(
              'Connect easily with your family and friends over countries',
              textAlign: TextAlign.center,
              style: AppTextStyles.titleRegularHeading,
            ),
            new Spacer(),
            new ButtonWidget(
              onTap: () {},
              background: AppColors.background,
              child: new Padding(
                padding: const EdgeInsets.all(8),
                child: new Text(
                  'Terms & Privacy Policy',
                  style: AppTextStyles.trailingRegular,
                ),
              ),
            ),
            new SizedBox(height: 8),
            new ButtonWidget(
              onTap: () => Modular.to.pushNamed('/phone'),
              background: AppColors.primary,
              child: new Padding(
                padding: const EdgeInsets.all(8),
                child: new Text(
                  'Start Messaging',
                  style: AppTextStyles.titleListTileBackground,
                ),
              ),
            ),
            new SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}