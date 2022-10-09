import 'package:flutter/material.dart';

import '../../../../app/app_theme.dart';
import '../../../utils/consts.dart';

class CompanyNameWidget extends StatelessWidget {
  const CompanyNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        companyName,
        style: TextStyle(
            fontSize: 58.0,
            color: AppTheme.lightThemeData.primaryColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
            fontFamily: 'Tegomin'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
