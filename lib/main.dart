import 'package:flutter/material.dart';
import 'package:listawidget/model/pessoa..dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Lista para Widget",
      home: Tela1(),
    );
  }
}

//WIDGET TELA UM
class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  List<Pessoa> lista = [
    Pessoa(nome: "Max", idade: 25, sobrenome: "Verstappen", cpf: "12984612"),
    Pessoa(nome: "Lewis", idade: 40, sobrenome: "Hamilton", cpf: "12873612"),
    Pessoa(nome: "Ayrton", idade: 35, sobrenome: "Senna", cpf: "912863791"),
    Pessoa(nome: "Esteban", idade: 28, sobrenome: "Ocon", cpf: "9238746121"),
    Pessoa(nome: "Pierre", idade: 22, sobrenome: "Gasly", cpf: "238471234"),
    Pessoa(nome: "Sergio", idade: 30, sobrenome: "Perez", cpf: "293864123"),
    Pessoa(nome: "Charles", idade: 29, sobrenome: "Leclerc", cpf: "285791123"),
    Pessoa(nome: "Sebastian", idade: 32, sobrenome: "Vettel", cpf: "549841321"),
    Pessoa(nome: "Kevin", idade: 32, sobrenome: "Magnussen", cpf: "129864123"),
    Pessoa(nome: "Valtteri", idade: 37, sobrenome: "Botas", cpf: "483343524"),
    Pessoa(nome: "Nico", idade: 38, sobrenome: "Rossberg", cpf: "124124434"),
    Pessoa(nome: "Fernando", idade: 47, sobrenome: "Alonso", cpf: "7689489434"),
    Pessoa(nome: "Michael", idade: 51, sobrenome: "Schumacker", cpf: "15248943235"),
    Pessoa(nome: "Felipe", idade: 39, sobrenome: "Massa", cpf: "9812651923"),
    Pessoa(nome: "Pastor", idade: 46, sobrenome: "Maldonado", cpf: "1986123"),
    Pessoa(nome: "Nikki", idade: 41, sobrenome: "Lauda", cpf: "4832347252"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Lista para Widget"),
          backgroundColor: Colors.cyanAccent,
        ),
        body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ElevatedButton(
                    onPressed: () {}, child: Text(lista[index].nome)),
                SizedBox(
                  height: 10,
                )
              ],
            );
          },
        ));
  }
}
