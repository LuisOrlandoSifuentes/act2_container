import 'package:flutter/material.dart';

// Inicio de la aplicación
void main() => runApp(MyApp());

// Inicio de la clase principal MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Desactiva el banner de debug
      home: Scaffold(
        appBar: AppBar(
          title: Text('Luis Sifuentes 1313'), // Título del AppBar
          backgroundColor: Colors.red, // Color rojo para el AppBar
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Desplazamiento horizontal
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centra los elementos en la fila
              children: [
                _buildStackedItem(Colors.red, 'Rojo', 'Tamal de Mole', 'Maíz',
                    'Pollo', 'Chile', 'Hoja de plátano'),
                _buildStackedItem(Colors.blue, 'Azul', 'Tamal de Dulce', 'Maíz',
                    'Piña', 'Canela', 'Hoja de maíz'),
                _buildStackedItem(Colors.green, 'Verde', 'Tamal Verde', 'Maíz',
                    'Puerco', 'Tomatillo', 'Hoja de plátano'),
              ],
            ),
          ),
        ),
      ),
    );
  }
  // Fin de la clase MyApp

  // Inicio del método _buildStackedItem
  Widget _buildStackedItem(Color color, String text, String tipo, String masa,
      String relleno, String salsa, String hoja) {
    return Container(
      margin: EdgeInsets.all(5), // Margen exterior reducido
      width: 100, // Ancho más pequeño
      height: 150, // Alto más pequeño
      child: Stack(
        alignment: Alignment.center, // Centra los elementos en el Stack
        children: [
          // Inicio del contenedor de fondo
          Container(
            width: double.infinity, // Ocupa todo el ancho disponible
            height: double.infinity, // Ocupa todo el alto disponible
            decoration: BoxDecoration(
              color: Colors.white, // Color de fondo
              borderRadius:
                  BorderRadius.circular(10), // Bordes redondeados más pequeños
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Color de la sombra
                  spreadRadius: 2, // Extensión de la sombra
                  blurRadius: 5, // Difuminado de la sombra
                  offset: Offset(0, 3), // Desplazamiento de la sombra
                ),
              ],
            ),
          ),
          // Fin del contenedor de fondo

          // Inicio del círculo de color
          Positioned(
            top: 10, // Posición desde la parte superior
            child: Container(
              width: 60, // Círculo más pequeño
              height: 60, // Círculo más pequeño
              decoration: BoxDecoration(
                color: color, // Color del círculo
                shape: BoxShape.circle, // Forma circular
                border: Border.all(
                    color: Colors.white, width: 2), // Borde blanco más delgado
              ),
            ),
          ),
          // Fin del círculo de color

          // Inicio del texto (nombre "Rojo", "Azul", "Verde")
          Positioned(
            top: 5, // Posición desde la parte superior
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black, // Color del texto
                  fontWeight: FontWeight.bold, // Grosor de la fuente
                  fontSize: 14), // Tamaño de la fuente más pequeño
            ),
          ),
          // Fin del texto (nombre)

          // Inicio del texto (detalles del tamal)
          Positioned(
            bottom: 5, // Posición desde la parte inferior
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tipo,
                  style: TextStyle(
                      color: Colors.black, fontSize: 10), // Texto más pequeño
                ),
                Text(
                  'Masa: $masa',
                  style: TextStyle(
                      color: Colors.black, fontSize: 8), // Texto más pequeño
                ),
                Text(
                  'Relleno: $relleno',
                  style: TextStyle(
                      color: Colors.black, fontSize: 8), // Texto más pequeño
                ),
                Text(
                  'Salsa: $salsa',
                  style: TextStyle(
                      color: Colors.black, fontSize: 8), // Texto más pequeño
                ),
                Text(
                  'Hoja: $hoja',
                  style: TextStyle(
                      color: Colors.black, fontSize: 8), // Texto más pequeño
                ),
              ],
            ),
          ),
          // Fin del texto (detalles del tamal)
        ],
      ),
    );
  }
  // Fin del método _buildStackedItem
}
