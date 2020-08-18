import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:calculator_app/misc/app_colors.dart';
import 'calculator_operator.dart';

class CalculatorPad extends StatelessWidget {
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
                              CalculatorOperator(
                                  operator: 'AC', operatorColor: AppColors.operatorColor
                              ),
                              CalculatorOperator(
                                  operator: '+/-', operatorColor: AppColors.operatorColor
                              ),
                              CalculatorOperator(
                                  operator: '%', operatorColor: AppColors.operatorColor
                              ),
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
                              CalculatorOperator(
                                  operator: '7', operatorColor: AppColors.numberColor
                              ),
                              CalculatorOperator(
                                  operator: '8', operatorColor: AppColors.numberColor
                              ),
                              CalculatorOperator(
                                  operator: '9', operatorColor: AppColors.numberColor
                              ),
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
                              CalculatorOperator(
                                  operator: '4', operatorColor: AppColors.numberColor
                              ),
                              CalculatorOperator(
                                  operator: '5', operatorColor: AppColors.numberColor
                              ),
                              CalculatorOperator(
                                  operator: '6', operatorColor: AppColors.numberColor
                              ),
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
                              CalculatorOperator(
                                  operator: '1', operatorColor: AppColors.numberColor
                              ),
                              CalculatorOperator(
                                  operator: '2', operatorColor: AppColors.numberColor
                              ),
                              CalculatorOperator(
                                  operator: '3', operatorColor: AppColors.numberColor
                              ),
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
                              CalculatorOperator(
                                  operator: '.', operatorColor: AppColors.numberColor
                              ),
                              CalculatorOperator(
                                  operator: '0', operatorColor: AppColors.numberColor)
                              ,
                              CalculatorOperator(
                                  operator: '00', operatorColor: AppColors.numberColor
                              ),
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 26.0),
                        child: CalculatorOperator(
                            operator: '÷', operatorColor: AppColors.operatorColor
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: CalculatorOperator(
                            operator: '×', operatorColor: AppColors.operatorColor
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: CalculatorOperator(
                            operator: '-', operatorColor: AppColors.operatorColor
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: CalculatorOperator(
                            operator: '+', operatorColor: AppColors.operatorColor
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
