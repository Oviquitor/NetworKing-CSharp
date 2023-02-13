import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BotaoPersonalizado extends StatefulWidget {
  final String texto;
  final Future funcao;
  const BotaoPersonalizado(
      {super.key, required this.texto, required this.funcao});

  @override
  State<BotaoPersonalizado> createState() => _BotaoPersonalizadoState();
}

class _BotaoPersonalizadoState extends State<BotaoPersonalizado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: ElevatedButton(
        onPressed: () {
          widget.funcao;
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 255, 207, 159),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        child: Text(
          widget.texto,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 67, 92, 89),
          ),
        ),
      ),
    );
  }
}
