import 'package:chateo/shared/theme/app_colors.dart';
import 'package:chateo/shared/theme/app_text_styles.dart';
import 'package:chateo/shared/widgets/buttons/button_widget.dart';
import 'package:chateo/shared/widgets/inputs/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final _firstName = new TextEditingController();
  final _lastName = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.background,
      appBar: new AppBar(
        leading: new BackButton(color: AppColors.heading),
        backgroundColor: AppColors.background,
        elevation: 0,
        title: new Text(
          'Your Profile',
          style: AppTextStyles.titleRegularHeading,
        ),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            new SizedBox(height: 32),
            new Center(
              child: new Container(
                height: 101,
                width: 100,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.input,
                ),
                child: new Icon(
                  Icons.person,
                  size: 64,
                ),
              ),
            ),
            new SizedBox(height: 24),
            new InputWidget(
              label: 'First Name (Required)',
              keyboardType: TextInputType.phone,
              controller: _firstName,
            ),
            new SizedBox(height: 16),
            new InputWidget(
              label: 'Last Name (Required)',
              keyboardType: TextInputType.phone,
              controller: _firstName,
            ),
            new Spacer(),
            new ButtonWidget(
              onTap: () => Modular.to.pushReplacementNamed('/home'),
              background: AppColors.primary,
              child: new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  'Send',
                  style: AppTextStyles.titleListTileBackground,
                ),
              ),
            ),
            new SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}