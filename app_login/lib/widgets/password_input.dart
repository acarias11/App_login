import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    super.key,
    required this.nombrelabel, 
    required this.hint, 
    required this.controller,
    required this.validator,
    });

final String nombrelabel;
  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {

  bool contra = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: contra,
      keyboardType: TextInputType.text,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: widget.hint,
        label: Text(widget.nombrelabel),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        prefixIcon: const Icon(Icons.password),
        suffixIcon: IconButton(
                    icon: Icon(
                        contra ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        contra = !contra;
                      });
                    }),
      ),
    );
  }
}