import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:calculator_app/screens/widgets_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/cal_button.dart';
import '../widgets/textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    final screenHeight = MediaQuery
        .sizeOf(context)
        .height;
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30))
    );

    return Consumer<CalculatorProvider>(
        builder: (context,provider,_) {
          return Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                title: const Center(
                  child: Text("Calculator App"),
                  ),
                backgroundColor: Colors.black,
                ),
              body: Column(
                children: [
                  CustomTextField(controller: provider.compController),
                  const Spacer(),
                  Container(
                    height: screenHeight * 0.6,
                    width: double.infinity,
                    padding: padding,
                    decoration: decoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                4, (index) => buttonList[index])
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                4, (index) => buttonList[index + 4])
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                4, (index) => buttonList[index + 8])
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: List.generate(
                                          3, (index) => buttonList[index + 12])
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: List.generate(
                                          3, (index) => buttonList[index + 15])
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            const CalculateButton()
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
          );
        }
    );
  }
}


