import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, required this.controller})
      : super(key: key);
  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    var obscureText = true;
    return TextFormField(
      controller: widget.controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.fingerprint_outlined,
          color: Colors.black,
        ),
        labelText: "Password",
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        hintText: "Enter your password",
        focusedBorder: const OutlineInputBorder(),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: obscureText
              ? const Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                )
              : const Icon(
                  Icons.visibility,
                  color: Colors.black,
                ),
        ),
      ),
    );
  }
}
