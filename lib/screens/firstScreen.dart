// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore



import 'package:calcult/constants/constants.dart';
import 'package:calcult/screens/Widget/costum_button.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String exp = "";
  String history = "";
  String op = "";
  double num1 = 0;
  double num2 = 0;
  void numClick(String textBtn) {
    if (textBtn == "AC") {
      setState(() {
        exp = "";
        history = "";
      });
      num1 = 0;
      num2 = 0;
    } else if (textBtn == "C") {
      setState(() {
        exp = "";
      });
    } else if (textBtn == " + " ||
        textBtn == " - " ||
        textBtn == " x " ||
        textBtn == " / " ||
        textBtn == " % ") {
      op = textBtn;
      num1 = double.parse(exp) ;
      setState(() {
        exp = "";
        history = num1.toString();
        history += textBtn;
      });
    } else if (textBtn == ".") {
      if (exp.contains(".")) {
      } else {
        setState(() {
          exp += textBtn;
        });
      }
    } else if (textBtn == "=") {
      num2 = double.parse(exp);
      history += exp;
      switch (op) {
        case " + ":
          {
            exp = (num1 + num2).toString();
          }

          break;
        case " x ":
          {
            exp = (num1 * num2).toString();
          }

          break;
        case " - ":
          {
            exp = (num1 - num2).toString();
          }

          break;
        case " / ":
          {
            num2 == 0
                ? exp = "unvalid operation"
                : exp = (num1 / num2).toString();
          }

          break;
        case " % ":
          {
            exp = (num1 % num2).toString();
          }

          break;
        default:
          break;
      }
      setState(() {
  exp;
});
    } else {
      setState(() {
  exp += textBtn;
});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "CALCULATOR",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontFamily: "myfont"),
        ),
        leading: const Icon(Icons.settings, color: Colors.orange),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text('DEG', style: TextStyle(color: Colors.white38)),
          ),
          const SizedBox(width: 20),
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Constants.textAignment,
              margin: Constants.textMargin,
              child: Text(history, style: Constants.style1),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 3,
            ),
            Container(
                alignment: Constants.textAignment,
                margin: Constants.textMargin,
                child: Text(exp, style: Constants.style1)),
            Row(
              children: [
                costumButton(
                  colorBtn: Colors.amber,
                  textBnt: "AC",
                  callBack: numClick,
                ),
                costumButton(
                    colorBtn: Colors.pink, textBnt: "C", callBack: numClick),
                costumButton(
                    colorBtn: Colors.blue, textBnt: " % ", callBack: numClick),
                costumButton(
                    colorBtn: Colors.red, textBnt: " / ", callBack: numClick)
              ],
            ),
            Row(
              children: [
                costumButton(
                    colorBtn: Colors.orange, textBnt: "7", callBack: numClick),
                costumButton(
                    colorBtn: Colors.lightGreen,
                    textBnt: "8",
                    callBack: numClick),
                costumButton(
                    colorBtn: Colors.deepPurple,
                    textBnt: "9",
                    callBack: numClick),
                costumButton(
                    colorBtn: Colors.blueGrey,
                    textBnt: " x ",
                    callBack: numClick)
              ],
            ),
            Row(
              children: [
                costumButton(
                    colorBtn: Colors.deepPurple,
                    textBnt: "4",
                    callBack: numClick),
                costumButton(
                    colorBtn: Colors.amber, textBnt: "5", callBack: numClick),
                costumButton(
                    colorBtn: Colors.pinkAccent,
                    textBnt: "6",
                    callBack: numClick),
                costumButton(
                    colorBtn: Colors.purple, textBnt: " - ", callBack: numClick)
              ],
            ),
            Row(
              children: [
                costumButton(
                    colorBtn: Colors.white, textBnt: "1", callBack: numClick),
                costumButton(
                    colorBtn: Colors.green, textBnt: "2", callBack: numClick),
                costumButton(
                    colorBtn: Colors.lightBlue,
                    textBnt: "3",
                    callBack: numClick),
                costumButton(
                    colorBtn: Colors.red, textBnt: " + ", callBack: numClick)
              ],
            ),
            Row(
              children: [
                costumButton(
                    colorBtn: Colors.grey,
                    textBnt: "0",
                    flex: 2,
                    callBack: numClick),
                costumButton(
                    colorBtn: Colors.yellow, textBnt: ".", callBack: numClick),
                costumButton(
                    colorBtn: Colors.lightBlue,
                    textBnt: "=",
                    callBack: numClick),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// mainAxisAlignment → MainAxisAlignment.
// crossAxisAlignment → CrossAxisAlignment.

