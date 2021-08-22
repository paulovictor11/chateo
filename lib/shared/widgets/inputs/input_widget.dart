import 'package:chateo/shared/theme/app_colors.dart';
import 'package:chateo/shared/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {

  final String label;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Icon? icon;
  final String? initialValue;
  final String? Function(String?)? validator;
  final bool isPass;

  const InputWidget({
    Key? key,
    required this.label,
    required this.keyboardType,
    required this.controller,
    this.icon,
    this.initialValue,
    this.validator,
    this.isPass = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: new BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(7)
      ),
      child: new TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: isPass,
        validator: validator,
        initialValue: initialValue,
        decoration: new InputDecoration(
          hintText: label,
          hintStyle: AppTextStyles.input,
          icon: icon,
          border: InputBorder.none
        ),
      ),
    );
  }
}
