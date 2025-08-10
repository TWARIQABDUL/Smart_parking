import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomInput extends StatelessWidget {
  final String name;
  final String? labelText;
  final VoidCallback? action;
  final String? initialValue;
  const CustomInput({super.key, required this.name, this.labelText, this.action, this.initialValue});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      
      keyboardType: name == 'phone' || name == "spot" ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        labelText: labelText ?? " ",
        labelStyle: TextStyle(color: Colors.grey[700]),
        prefixIcon: const Icon(Icons.car_rental, color: Color(0XFF0fc875)),
        suffixIcon: name == 'license_plate'
            ? IconButton(
                icon: const Icon(Icons.camera_alt, color: Color(0XFF0fc875)),
                onPressed: () {
                  action != null ? action!() : null;
                },
              )
            : null,

        filled: true,
        counterText: initialValue ??"",
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
