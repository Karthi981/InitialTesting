import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _displayText = '';
  double _firstOperand = 0.0;
  double _secondOperand = 0.0;
  String _operator = "";

  void _handleButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _displayText = '';
        _firstOperand = 0.0;
        _secondOperand = 0.0;
        _operator = "";
      } else if (buttonText == '+' || buttonText == '-' || buttonText == '*' || buttonText == '/') {
        _operator = buttonText;
        _firstOperand = double.parse(_displayText);
        _displayText = '';
      } else if (buttonText == '=') {
        _calculateResult();
      } else {
        _displayText += buttonText;
      }
    });
  }

  void _calculateResult() {
    if (_displayText.isNotEmpty && _operator != 0.0) {
      _secondOperand = double.parse(_displayText);
      double result = 0.0;

      if (_operator == '+') {
        result = _firstOperand + _secondOperand;
      } else if (_operator == '-') {
        result = _firstOperand - _secondOperand;
      } else if (_operator == '*') {
        result = _firstOperand * _secondOperand;
      } else if (_operator == '/') {
        result = _firstOperand / _secondOperand;
      }

      _displayText = result.toString();
      _firstOperand = result;
      _secondOperand = 0.0;
      _operator = "";
    }
  }

  Widget _buildButton(String buttonText) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 50,width: 50,
        child: ElevatedButton(
          onPressed: () => _handleButtonPressed(buttonText),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
          child:  Text(buttonText,style:TextStyle(
              color: Colors.white,
              fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(40),
              alignment: Alignment.bottomRight,
              child: Text(
                _displayText,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(height: 1,color: Colors.green,),
          Row(
            children: <Widget>[
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildButton('/'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildButton('*'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildButton('-'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildButton('0'),
              _buildButton('C'),
              _buildButton('='),
              _buildButton('+'),
            ],
          ),
        ],
      ),
    );
  }
}