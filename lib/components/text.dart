import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextoPersonalizado extends StatefulWidget {
  final String texto;
  final IconData icone;

  const TextoPersonalizado(
      {super.key, required this.texto, required this.icone});

  @override
  State<TextoPersonalizado> createState() => _TextoPersonalizadoState();
}

class _TextoPersonalizadoState extends State<TextoPersonalizado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: widget.texto,
          labelStyle: TextStyle(color: Color.fromARGB(255, 255, 207, 159)),
          prefixIcon: Icon(
            widget.icone,
            color: Color.fromARGB(255, 255, 207, 159),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 207, 159)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 207, 159)),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Informe o email";
          }
          return null;
        },
      ),
    );
  }
}
