import 'package:flutter/material.dart';
import '../config/colors.dart';
import 'my_footer.dart';
import 'navbar/my_drawer.dart';
import 'navbar/my_navbar.dart';

class Molde extends StatefulWidget {
  const Molde(this._widgetBody, {super.key});
  final Widget _widgetBody;

  @override
  State<Molde> createState() => _MoldeState();
}

class _MoldeState extends State<Molde> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    if (width > 1000) {
      return ScaffoldDesktop(
        width: width,
        widgetBody: widget._widgetBody,
      );
    }
    return ScaffoldMobile(
      width: width,
      widgetBody: widget._widgetBody,
    );
  }
}

class ScaffoldDesktop extends StatelessWidget {
  const ScaffoldDesktop(
      {required this.width, required this.widgetBody, super.key});

  final double width;
  final Widget widgetBody;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), // Altura desejada
          child: AppBar(
            backgroundColor: primaryColor,
            title: MyNavbar(
              width: width,
            ),
          ),
        ),
        body: SizedBox(
          width: width,
          child: Column(children: <Widget>[widgetBody, MyFooter(width: width)]),
        ),
      );
}

class ScaffoldMobile extends StatelessWidget {
  const ScaffoldMobile(
      {required this.width, required this.widgetBody, super.key});

  final double width;
  final Widget widgetBody;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), // Altura desejada
          child: AppBar(
            backgroundColor: primaryColor,
            title: MyNavbar(
              width: width,
            ),
          ),
        ),
        drawer: const MyDrawer(),
        body: SizedBox(
          width: width,
          child: Column(children: <Widget>[
            widgetBody,
            MyFooter(width: width),
          ]),
        ),
      );
}
