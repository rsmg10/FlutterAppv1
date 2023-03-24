import 'package:flutter/material.dart';

class CustomerPasswordField extends StatefulWidget {

  CustomerPasswordField({
    Key? key,
    required this .hintText,
    this.validator,
    this.isOpScur = false
  }) : super(key: key);
   bool isOpScur;
  final String hintText;
  final String? Function(String?)? validator;


  @override
  State<CustomerPasswordField> createState() => _CustomerPasswordFieldState();
}

class _CustomerPasswordFieldState extends State<CustomerPasswordField> {



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText : widget.isOpScur,
      decoration: InputDecoration(suffixIcon: IconButton(icon: Icon(widget.isOpScur ? Icons.panorama_fish_eye : Icons.remove_red_eye),
      onPressed: ()=> {
        widget.isOpScur = ! widget.isOpScur,
        setState(() {

        },)
      },)),
    );
  }
}
