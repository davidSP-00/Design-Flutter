import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';


class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],),
      bottomNavigationBar:  _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente=Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:FractionalOffset(0.0,0.6) ,
          end: FractionalOffset(0.0,1.0),
          colors:[
            Color.fromRGBO(52,54,101,1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );
    final cajaRosa=
    Transform.rotate(angle: -pi/4.0,
    child:Container(
      height: 400.0,
      width: 400.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90.0),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
          ]
        )
      ),
      
    ) ,)
    ;

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
          left: -100,
          child: cajaRosa)
      ],
    );
  }


Widget _titulos(){
  return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Diseños',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 10.0,),
          Text('Estas son pruebas de diseño en Flutter',style: TextStyle(color: Colors.white,fontSize:15,))
        ],
      ),
    ),
  );
}

Widget _bottomNavigationBar(BuildContext context){

  return Theme(
    data: Theme.of(context).copyWith(
      canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
      primaryColor: Colors.pinkAccent,
      textTheme: Theme.of(context).textTheme.copyWith(
        caption: TextStyle(color:Color.fromRGBO(116, 117, 152, 1.0))
      )

    ),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today,size:30.0),
        title: Container()),
        BottomNavigationBarItem(icon: Icon(Icons.bubble_chart,size:30.0),
        title: Container()),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle,size:30.0),
        title: Container()),
      ],
    ),
  );
}

  Widget _botonesRedondeados() {

    return Table(

      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue,Icons.border_all,'General'),
            _crearBotonRedondeado(Colors.purpleAccent,Icons.directions,'Direction'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueAccent,Icons.movie,'Movie'),
            _crearBotonRedondeado(Colors.redAccent,Icons.not_listed_location,'Location'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.greenAccent,Icons.outlined_flag,'Flag'),
            _crearBotonRedondeado(Colors.indigoAccent,Icons.panorama_fish_eye,'Fish'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.tealAccent,Icons.people,'People'),
            _crearBotonRedondeado(Colors.amberAccent,Icons.photo_library,' Photo'),
          ]
        ),
      ],

    );
  }

  Widget _crearBotonRedondeado(Color color,IconData icono,String texto) {

    return Container(
      padding: EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX:3,sigmaY:3),
          child: Container(
            height: 140.0,
              color: Color.fromRGBO(62, 66, 107, 0.7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 5.0,),
                CircleAvatar(
                  
                  backgroundColor: color,
                  radius: 25,
                  child: Icon(icono,color: Colors.white,size: 30.0,)),
                  Text(texto,style:TextStyle(color:color)),
                  SizedBox(height: 5.0,)
              
              ],
            ),
          ),
        ),
      ),
    );
  }

}