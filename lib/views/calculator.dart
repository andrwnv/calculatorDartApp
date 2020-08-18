import 'package:flutter/material.dart';

import 'calculator_pad.dart';
import 'package:calculator_app/misc/app_colors.dart';
//import 'calculator_operator.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);

  @override
  _Calculator createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: AppColors.backgroundGreenGradient,
          ),
          child: Center(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3, // 30%
                    child: Container(),
                  ),
                  Expanded(
                    flex: 7, // 70%
                    child: Container(
                      color: Colors.transparent,
                      child: CalculatorPad()
                    ),
                  )
                ],
              )
          ),
        )
      ),
    );
  }
}
