import 'package:flutter/material.dart';

import '../../../../app/app_theme.dart';
import '../../../utils/consts.dart';

class CompanyNameWidget extends StatelessWidget {
  const CompanyNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      companyName,
      style: TextStyle(
          fontSize: 58.0,
          color: AppTheme.lightThemeData.primaryColor,
          fontWeight: FontWeight.bold,
          letterSpacing: 5,
          fontFamily: 'Tegomin'),
      textAlign: TextAlign.center,
    );
  }
}
