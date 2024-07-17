import 'package:flutter/material.dart';



class CustomFormInput extends StatelessWidget {
  const CustomFormInput({
    super.key,
    required this.label,
    required this.controller,
    required this.validator,

  });
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator:null,
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Color.fromARGB(255, 49, 227, 209)),
      maxLength: 20,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: null,
        label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        errorText: null, //'El nombre es obligatorio',
        suffixIcon: null,
        prefixIcon: null,

      ),
    );
  }
}