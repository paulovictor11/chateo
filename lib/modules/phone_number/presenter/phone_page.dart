import 'package:chateo/shared/theme/app_colors.dart';
import 'package:chateo/shared/theme/app_text_styles.dart';
import 'package:chateo/shared/widgets/buttons/button_widget.dart';
import 'package:chateo/shared/widgets/inputs/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({ Key? key }) : super(key: key);

  @override
  _PhoneNumberPageState createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {

  final _region = new TextEditingController(text: '+55');
  final _phone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.background,
      appBar: new AppBar(
        leading: new BackButton(color: Colors.black),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            new SizedBox(height: 63),
            new Center(
              child: new Text(
                'Enter Your Phone Number',
                textAlign: TextAlign.center,
                style: AppTextStyles.titleHeading,
              ),
            ),
            new Center(
              child: new Text(
                'Please confirm your country code and enter your phone number',
                textAlign: TextAlign.center,
                style: AppTextStyles.trailingRegular,
              ),
            ),
            new SizedBox(height: 48),
            new Row(
              children: [
                new Container(
                  width: 90,
                  child: new InputWidget(
                    label: '+55',
                    icon: new Icon(
                      Icons.flag,

                    ),
                    keyboardType: TextInputType.phone,
                    controller: _region,
                  ),
                ),
                new SizedBox(width: 8),
                new Container(
                  width: (MediaQuery.of(context).size.width * 0.70) - 7,
                  child: new InputWidget(
                    label: 'Phone Number',
                    keyboardType: TextInputType.phone,
                    controller: _phone,
                  ),
                ),
              ],
            ),
            new Spacer(),
            new ButtonWidget(
              onTap: () => Modular.to.pushNamed('/verification'),
              background: AppColors.primary,
              child: new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  'Continue',
                  style: AppTextStyles.titleListTileBackground,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}