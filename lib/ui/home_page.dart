import 'package:flutter/material.dart';
import 'package:watherflut_tuto/ui/cities/cities_page.dart';

class HomePage extends StatelessWidget {
  void handleNavigatePress(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => CitiesPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/welcome.jpg',
            ),
          ),
          SafeArea(
            child: Center(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 250.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: 50.0,
                    ),
                    const SizedBox(
                      height: 80.0,
                    ),
                    Text(
                      "Hola,\nBienvenido",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Que te parece si agregamos\nuna nueva ciudad?",
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    RaisedButton(
                      color: Colors.white,
                      elevation: 0,
                      splashColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text("Agregar ciudad"),
                      onPressed: () => handleNavigatePress(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
