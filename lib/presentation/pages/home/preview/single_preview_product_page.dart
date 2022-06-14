import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SinglePreviewProductPage extends StatelessWidget {
  final String productId;
  const SinglePreviewProductPage({
    Key? key,
    @PathParam() required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
