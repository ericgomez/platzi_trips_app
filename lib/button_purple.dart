import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {

  String buttonText = "Navigate";

  //Creamos el Contructor
  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(//Nos permite crear diceñso que pueden ser clickable podemos simular un boton pero mas bonito
      //Agregamos la propiedad onTap para manejar los clicks y el comportamiento del boton
      onTap: () {
        Scaffold.of(context).showSnackBar(//Es la accion de muestra un evento con el SnackBar
          SnackBar(
              content: Text("Navegando"),
          )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20
        ),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),//Que tan redondo
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xff584CD1)
              ],
            begin: FractionalOffset(0.2, 0.0),//Permite que tanto quiero que los colores del gradient se unan o se entrelasen
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),
        //Texto
        child: Center(
          child: Text(
              buttonText,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Lato",
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

}