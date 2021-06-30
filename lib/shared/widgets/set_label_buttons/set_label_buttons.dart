import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatefulWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
    this.enableSecondaryColor = false,
  }) : super(key: key);

  @override
  _SetLabelButtonsState createState() => _SetLabelButtonsState();
}

class _SetLabelButtonsState extends State<SetLabelButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 57.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
          Container(
            height: 56.0,
            child: Row(
              children: [
                Expanded(
                  child: LabelButton(
                    label: widget.primaryLabel,
                    onPressed: widget.primaryOnPressed,
                    style: widget.enablePrimaryColor
                        ? TextStyles.buttonPrimary
                        : null,
                  ),
                ),
                DividerVerticalWidget(),
                Expanded(
                  child: LabelButton(
                    label: widget.secondaryLabel,
                    onPressed: widget.secondaryOnPressed,
                    style: widget.enableSecondaryColor
                        ? TextStyles.buttonPrimary
                        : null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
