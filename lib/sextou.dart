import 'package:flutter/material.dart';

class Sextou extends StatelessWidget {
  final String nome;
  final Function() onRemove;
  final String sobrenome;

  Sextou(
    {
      required this.nome,
      required this.sobrenome,
      required this.onRemove,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: Column(
              children: [
                Text(
                  "$nome",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "$sobrenome",
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(150, 46, 45, 42)),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {
            onRemove();
          }, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
