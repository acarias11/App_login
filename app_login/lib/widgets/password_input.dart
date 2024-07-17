import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    super.key,
    required this.nombrelabel, 
    required this.hint, 
    required this.controller,
    });

final String nombrelabel;
  final String hint;
  final TextEditingController controller;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {

  bool contra = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: contra,
      keyboardType: TextInputType.text,
      maxLength: 30,
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