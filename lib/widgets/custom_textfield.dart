import 'package:flutter/material.dart';
import 'package:hospital_maps/styles/constant.dart';

class CustomizedTextfield extends StatelessWidget {
  final TextEditingController myController;
  final String hintText;
  final String labelText;
  final TextCapitalization textCapital;
  final TextInputType? textType;
  final bool? isPassword;
  const CustomizedTextfield({
    Key? key,
    required this.myController,
    required this.labelText,
    required this.hintText,
    required this.textCapital,
    this.textType,
    this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            style: blackTextStyle,
            keyboardType: textType,
            textCapitalization: textCapital,
            obscureText: isPassword ?? true,
            controller: myController,
            decoration: InputDecoration(
              suffixIcon: isPassword!
                  ? IconButton(
                      icon: const Icon(
                        Icons.visibility,
                      ),
                      onPressed: () {},
                    )
                  : const SizedBox(),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: whiteColor, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: primaryColor, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: secondColor,
              filled: true,
              hintText: hintText,
              hintStyle: greyTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          // TextFormField(
          //   style: blackTextStyle,
          //   decoration: InputDecoration.collapsed(
          //     hintText: hintText,
          //     hintStyle: blackTextStyle,
          //   ),
          // ),
        ],
      ),
    );
  }
}
