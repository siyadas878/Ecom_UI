import 'package:clothi/core/models/user_models.dart';
import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String floatingTitle;
  final String hint;
  final bool? isPassword;
  final IconData iconUrl;
  final double? verticalPadding;
  final int index;
  final UserModel userModel;
  const CustomTextField(
      {super.key,
      required this.floatingTitle,
      required this.hint,
      this.isPassword,
      required this.iconUrl,
      this.verticalPadding,
      required this.userModel,
      required this.index});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final double radius = 30;
  late bool obscure;

  @override
  void initState() {
    super.initState();
    obscure = widget.isPassword ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.floatingTitle,
            style: appFonts.f15w500Grey,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            onChanged: (value) {
              if (widget.index == 0) {
                widget.userModel.name = value;
              } else if (widget.index == 1) {
                widget.userModel.phoneNumber = value;
              } else if (widget.index == 2) {
                widget.userModel.email = value;
              } else if (widget.index == 3) {
                widget.userModel.password = value;
              }
            },
            obscureText: obscure,
            keyboardType:
                widget.index == 1 ? TextInputType.number : TextInputType.text,
            style: appFonts.f15black,
            cursorColor: appColors.primaryDark,
            validator: (value) {
              if (widget.index == 0) {
                return widget.userModel.validateName();
              } else if (widget.index == 1) {
                return widget.userModel.validatePhoneNumber();
              } else if (widget.index == 2) {
                return widget.userModel.validateEmail();
              } else if (widget.index == 3) {
                return widget.userModel.validatePassword();
              }
              return null;
            },
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 13),
                    child: Icon(widget.iconUrl)),
                suffixIcon: widget.isPassword ?? false
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                          child: SizedBox(
                            width: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Icon(Icons.remove_red_eye,
                                    color:appColors.primaryLight),
                                obscure
                                    ? Text(
                                        "Hide",
                                        style: appFonts.f13amberlight,
                                      )
                                    :  Text(
                                        "Show",
                                        style: appFonts.f13amberlight
                                      )
                              ],
                            ),
                          ),
                        ),
                      )
                    : null,
                counter: const SizedBox(),
                hintText: widget.hint,
                hintStyle:const TextStyle(fontSize: 12),
                disabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: appColors.primaryDark,
                    ),
                    borderRadius: BorderRadius.circular(radius)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: appColors.primaryDark,
                    ),
                    borderRadius: BorderRadius.circular(radius)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appColors.primaryDark),
                    borderRadius: BorderRadius.circular(radius)),
                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(radius))),
          ),
        ],
      ),
    );
  }
}