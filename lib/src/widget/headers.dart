import 'package:designsapp/src/themes/appTheme.dart';
import 'package:flutter/material.dart';

class HeaderScuad extends StatelessWidget {
  const HeaderScuad({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: AppTheme.primary,
    );
  }
}

class HeaderBorderRadius extends StatelessWidget {
  const HeaderBorderRadius({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(50)),
          color: AppTheme.primary),
    );
  }
}
