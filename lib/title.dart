import 'package:flutter/material.dart';
import 'package:statemanagementprovider/example_localizations.dart';


class Title extends StatelessWidget {
  const Title({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(ExampleLocalizations.of(context).title);
  }
}