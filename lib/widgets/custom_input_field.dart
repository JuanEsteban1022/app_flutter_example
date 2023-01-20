import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'Obligatory field';
        return value.length < 3 ? 'Minimum 3 characters' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Name',
        labelText: 'Username',
        // helperText: 'Only letters',
        // counterText: '3 characters',
        suffixIcon: Icon(Icons.group_outlined),
        icon: Icon(Icons.admin_panel_settings_outlined),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(10),
        //         topRight: Radius.circular(10)))
      ),
    );
  }
}
