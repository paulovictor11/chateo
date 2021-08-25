import 'package:chateo/shared/theme/app_colors.dart';
import 'package:chateo/shared/theme/app_text_styles.dart';
import 'package:chateo/shared/widgets/buttons/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({ Key? key }) : super(key: key);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

  final _pinCode = new TextEditingController();
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(50),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: AppColors.background,
      appBar: new AppBar(
        leading: new BackButton(color: AppColors.heading),
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
                'Enter Code',
                textAlign: TextAlign.center,
                style: AppTextStyles.titleHeading,
              ),
            ),
            new Center(
              child: new Text(
                'We have sent you an SMS with the code\nto +55 (83) 99999-5071',
                textAlign: TextAlign.center,
                style: AppTextStyles.trailingRegular,
              ),
            ),
            new SizedBox(height: 48),
            new PinPut(
              fieldsCount: 4,
              controller: _pinCode,
              fieldsAlignment: MainAxisAlignment.spaceEvenly,
              followingFieldDecoration: _pinPutDecoration,
              submittedFieldDecoration: _pinPutDecoration,
              selectedFieldDecoration: _pinPutDecoration.copyWith(
                color: AppColors.stroke,
                border: Border.all(
                  width: 2, color: AppColors.stroke,
                ),
              ),
            ),
            new Spacer(),
            new ButtonWidget(
              onTap: () {},
              background: AppColors.background,
              child: new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  'Resend Code',
                  style: AppTextStyles.trailingPrimary,
                ),
              ),
            ),
            new SizedBox(height: 8),
            new ButtonWidget(
              onTap: () => Modular.to.pushNamed('/profile'),
              background: AppColors.primary,
              child: new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  'Continue',
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