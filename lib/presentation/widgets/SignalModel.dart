// import 'package:flutter/material.dart';
// import 'package:ltemanager2/elements/SignalElement.dart';

// class SignalModel extends StatelessWidget {
//   final int signalState;
//   final numberOfElements = 5;

//   const SignalModel({Key key, @required this.signalState}) : super(key: key);

//   _buildSignalStateElements() {
//     //print(signalState);
//     List<Widget> list = [];

//     for (int i = 0; i < numberOfElements; i++) {
//       list.add(
//         SignalElement(
//           isActive: (i < signalState) ? true : false,
//           index: i,
//         ),
//       );
//     }

//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: list,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.transparent,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       elevation: 0,
//       child: Padding(
//         padding: const EdgeInsets.all(0.0),
//         child: Container(
//           width: 50,
//           height: 50,
//           child: _buildSignalStateElements(),
//         ),
//       ),
//     );
//   }
// }
