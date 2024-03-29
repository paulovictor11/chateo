import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  final Widget child;
  final Color background;
  final Color? borderColor;
  final VoidCallback onTap;

  const ButtonWidget({
    Key? key,
    required this.child,
    required this.background,
    this.borderColor,
    required this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return new TextButton(
      style: new ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        ),
        side: MaterialStateProperty.all<BorderSide>(
          new BorderSide(color: borderColor ?? background, width: 2)
        ),
        backgroundColor: MaterialStateProperty.all<Color>(background)
      ),
      onPressed: onTap,
      child: child
    );
  }
}
