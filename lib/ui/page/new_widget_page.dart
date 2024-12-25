import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewWidgetPage extends StatelessWidget {
  const NewWidgetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(),body: Placeholder());
  }
}
