import 'package:flutter/material.dart';

class CustomInputs extends StatelessWidget {
  const CustomInputs({
    super.key,
    required this.controller,
    required this.validator,
    required this.teclado,
    required this.length,
    required this.hint,
    required this.nombrelabel,
    required this.icono
    });

  final TextEditingController controller;
  final String? Function(String?)? validator; 
  final TextInputType teclado;
  final int? length;
  final String? hint;
  final String nombrelabel;
  final IconData? icono;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: teclado,
      maxLength: length,
      maxLines: 1,
      decoration: InputDecoration(
        label: Text(nombrelabel),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        prefixIcon: Icon(icono),
      ),
    );
  }
}