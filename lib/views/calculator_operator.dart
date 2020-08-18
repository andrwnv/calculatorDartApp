import 'package:flutter/material.dart';

class CalculatorOperator extends StatefulWidget {
  final String operator;
  final Color operatorColor;

  CalculatorOperator({Key key, @required this.operator, this.operatorColor}) : super(key: key);

  _CalculatorOperator createState() => _CalculatorOperator();
}

class _CalculatorOperator extends State<CalculatorOperator> {
  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.all(20.0),
        child: AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: opacity,
          child: Container(
            child: Text(
                widget.operator,
                style: TextStyle(
                  fontSize: 20,
                  color: widget.operatorColor,
                )
            ),
          ),
        ),
          onPressed: () => setState(() {
                opacity = 0.5;
              })
      ),
    );
  }
}
