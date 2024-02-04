import 'package:flutter/material.dart';
import '../config/colors.dart';
import '../config/global.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({required this.width, super.key});
  final double width;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: 100,
        color: primaryBgColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FooterText(
                  text: "© ${DateTime.now().year} - $contractingInstitution"),
              const FooterText(text: "Todos os direitos reservados"),
              const FooterText(text: "Desenvolvido por $contractedInstitution"),
            ]),
      );
}

class FooterText extends StatelessWidget {
  const FooterText({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: const TextStyle(color: primaryTextButtonColor),
      );
}
