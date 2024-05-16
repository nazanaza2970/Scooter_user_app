import 'package:flutter/material.dart';

class SafetyInstruction extends StatelessWidget {
  const SafetyInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children:<Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'ScooterLab',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text("Safety Instructions Placeholder"),
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                child: const Text("Next"),
                onPressed: (){
                  Navigator.pushNamed(context, '/register');
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}