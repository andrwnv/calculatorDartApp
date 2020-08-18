import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:calculator_app/misc/app_colors.dart';
import 'calculator_operator.dart';

class CalculatorPad extends StatelessWidget {
  final _padItems = [
    [ 'AC', '+/-', '%' ],
    [ '7', '8', '9' ],
    [ '4', '5', '6' ],
    [ '1', '2', '3' ],
    [ '.', '0', '00' ],
  ];

  final _operands = [ '÷', '×', '+', '-' ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Expanded(
              flex: 8, // 90%
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 23),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: AppColors.subBackgroundColor,
                          ),
                          child: Row(
                            children: <Widget>[
                              for (var i in _padItems[0])
                                CalculatorOperator(
                                    operator: i, operatorColor: AppColors.operatorColor
                                )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Row(
                            children: <Widget>[
                              for (var i in _padItems[1])
                                CalculatorOperator(
                                    operator: i, operatorColor: AppColors.operatorColor
                                )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Row(
                            children: <Widget>[
                              for (var i in _padItems[2])
                                CalculatorOperator(
                                    operator: i, operatorColor: AppColors.operatorColor
                                )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Row(
                            children: <Widget>[
                              for (var i in _padItems[3])
                                CalculatorOperator(
                                    operator: i, operatorColor: AppColors.operatorColor
                                )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Row(
                            children: <Widget>[
                              for (var i in _padItems[4])
                                CalculatorOperator(
                                    operator: i, operatorColor: AppColors.operatorColor
                                )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2, // 10%
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              )),
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 25, bottom: 40.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.subBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Column(
                    children: <Widget>[
                      for (var i in _operands)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 26.0),
                          child: CalculatorOperator(
                              operator: '÷', operatorColor: AppColors.operatorColor
                          ),
                        ),
                      Container(
                          decoration: BoxDecoration(
                              gradient: AppColors.backgroundGreenGradient,
                              borderRadius: BorderRadius.all(Radius.circular(100))),
                          child: CalculatorOperator(
                              operator: '=', operatorColor: AppColors.numberColor
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
