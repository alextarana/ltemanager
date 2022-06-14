import 'package:flutter/material.dart';

class SettingsListView extends StatelessWidget {
  final List<Widget> children;
  const SettingsListView({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return children[index];
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: children.length,
    );
  }
}
