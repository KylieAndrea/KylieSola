import 'package:flutter/material.dart';
import 'package:flutter_1/pages/home_todos.dart';

class IngresarTodos extends StatelessWidget {
  final TextEditingController userController = TextEditingController();

  IngresarTodos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio Todos'),
        backgroundColor: Colors.deepPurple[300],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text('Ingresa número de todo'),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: userController,
                keyboardType: TextInputType.number,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Número',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                final idee = int.tryParse(userController.text);
                if (idee != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeTodos(cod: idee),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Por favor ingresa un número válido')),
                  );
                }
              },
              child: Text('Buscar'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple[300],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(300))),
            ),
          ],
        ),
      ),
    );
  }
}
