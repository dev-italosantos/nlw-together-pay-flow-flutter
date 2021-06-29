import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class InputTextWidget extends StatefulWidget {
  const InputTextWidget({Key? key}) : super(key: key);

  @override
  _InputTextWidgetState createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            icon: Row(
              children: [
                Icon(Icons.ac_unit),
                Container(
                  width: 1,
                  height: 48.0,
                  color: AppColors.stroke,
                ),
              ],
            ),
            border: InputBorder.none,
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: AppColors.stroke,
        ),
      ],
    );
  }
}
