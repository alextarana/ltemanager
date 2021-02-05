import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

class SignalElement extends StatelessWidget {
  final bool isActive;
  final int index;
  final List<int> indexes = [0, 1, 2, 3, 4];

  SignalElement({Key key, @required this.isActive, @required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(isActive);
    return Flexible(
      flex: 1,
      child: ClayContainer(
        borderRadius: 15,
        depth: -20,
        spread: 1,
        color: (isActive) ? Color(0xFF16DD80) : Color(0xFF167F80),
        height: 10.0 * (index + 1),
      ),
    );
  }
}
