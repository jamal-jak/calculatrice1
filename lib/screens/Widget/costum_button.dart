// ignore_for_file: must_be_immutable,

import 'package:calcult/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class costumButton extends StatelessWidget {
  costumButton({
    super.key,
    @required this.colorBtn,
    @required this.textBnt,
    @required this.callBack,
    this.flex,
  });

  Color? colorBtn;
  String? textBnt;
  int? flex;
  Function? callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex == null ? 1 : flex!,
      child: GestureDetector(
        onTap: () {
          callBack!(textBnt);
        },
        child: Container(
          width: 70,
          height: 80,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: colorBtn, borderRadius: BorderRadius.circular(15)),
          child: Text(
            textBnt!,
            style: Constants.BtnTextStyle,
          ),
        ),
      ),
    );
  }
}
