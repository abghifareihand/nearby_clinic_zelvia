import 'package:flutter/material.dart';
import 'package:hospital_maps/styles/constant.dart';

class DialogChoose extends StatelessWidget {
  final String? title;
  final String? message;
  final BuildContext? context;
  final Function? onClickYes;
  final Function? onClickNo;

  const DialogChoose({
    super.key,
    this.title,
    this.message,
    this.context,
    this.onClickYes,
    this.onClickNo,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(
        title!,
        style: blackTextStyle.copyWith(
          fontSize: 16,
          fontWeight: semiBold,
        ),
      ),
      content: SizedBox(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            message!,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          )
        ],
      )),
      actions: <Widget>[
        TextButton(
          child: Text(
            "YA",
            style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
          ),
          onPressed: () => onClickYes!(),
        ),
        TextButton(
          child: Text(
            "TIDAK",
            style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
          ),
          onPressed: () => onClickNo!(),
        )
      ],
    );
  }
}
