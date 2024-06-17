import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.label,
    this.textColor = Colors.white,
  });

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
        Provider.of<CalculatorProvider>(context, listen: false).setValue(label),
      child: Material(
        elevation: 3,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          backgroundColor: AppColors.secondary2Color,
          radius: 36,
          child: Text(label,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: textColor),),),
      ),
    );
  }
}
