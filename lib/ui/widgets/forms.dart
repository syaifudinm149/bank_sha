import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  const CustomFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //NOTE: EMAIL INPUT
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
        // const SizedBox(
        //   height: 16,
        // ),
        // //NOTE: PASSWORD INPUT
        // Text(
        //   'Password',
        //   style: blackTextStyle.copyWith(
        //     fontWeight: medium,
        //   ),
        // ),
        // const SizedBox(
        //   height: 8,
        // ),
        // TextFormField(
        //   obscureText: true,
        //   decoration: InputDecoration(
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(14),
        //     ),
        //     contentPadding: const EdgeInsets.all(12),
        //   ),
        // ),
        // const SizedBox(
        //   height: 8,
        // ),
        // Align(
        //   alignment: Alignment.centerRight,
        //   child: Text(
        //     'Forgot Password',
        //     style: blueTextStyle,
        //   ),
        // ),
        // const SizedBox(
        //   height: 30,
        // ),
        // CustomFilledButton(
        //   title: "Sign In",
        //   onPressed: () {},
        // ),
      ],
    );
  }
}
