import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final String? Function(String?)? textValidator;
  final bool hideText;
  const CustomTextFormField(
      {Key? key,
      required this.labelText,
      this.hideText = false,
      this.textValidator})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        validator: widget.textValidator,
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          suffixIcon: !widget.hideText
              ? null
              : IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => setState(() {
                        _obscureText = !_obscureText;
                      })),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          // ),
        ),
      ),
    );
  }
}
