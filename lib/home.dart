import 'package:flutter/material.dart';
import 'package:statemanagementprovider/counter_button.dart';
import 'package:statemanagementprovider/counter_label.dart';
import 'package:statemanagementprovider/title.dart' as titleWidget;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Tons of small widgets!
      ///
      /// Splitting our app in small widgets like [Title] or [CounterLabel] is
      /// useful for rebuild optimization.
      ///
      /// Since they are instantiated using `const`, they won't unnecessarily
      /// rebuild when their parent changes.
      /// But they can still have dynamic content, as they can obtain providers!
      ///
      /// This means only the widgets that depends on a provider to rebuild when they change.
      /// Alternatively, we could use [Consumer] or [Selector] to achieve the
      /// same result.
      appBar: AppBar(title: const titleWidget.Title()),
      body: const Center(child: const CounterLabel()),
      floatingActionButton: const IncrementCounterButton(),
    );
  }
}