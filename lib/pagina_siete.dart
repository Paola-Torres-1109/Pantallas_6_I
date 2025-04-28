import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(
          child: Text(
            'Pantalla 6',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Center(
            child: ChoiceChip(
              label: const Text("Choice Chip"),
              selected: isSelected,
              selectedColor: Colors.orangeAccent,
              onSelected: (newState) {
                setState(() {
                  isSelected = newState;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
