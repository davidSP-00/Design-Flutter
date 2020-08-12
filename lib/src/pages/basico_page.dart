import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estilotitulo = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 14.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
        _crearImagen(),
        _crearTitulo(),
        _crearAcciones(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
      ],
          ),

      
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        fit:BoxFit.cover,
        height: 200,
          image: NetworkImage(
              'https://prod-discovery.edx-cdn.org/media/course/image/93f11b63-0c29-4472-964e-c6db1cc574e8-61863a8d0d90.small.jpg')),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Paisaje', style: estilotitulo),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Parece Cusco',
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41')
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call,'CALL'),
        _accion(Icons.near_me,'ROUTE'),
        _accion(Icons.share,'Share'),
      ],
    );
  }

  Widget _accion(IconData icon,String texto) {
    return Column(
      children: [
        Icon(icon,color: Colors.blue,size: 40,),
        SizedBox(height: 8.0,),
        Text(texto,style: TextStyle(fontSize: 15.0,color: Colors.blue),)
        ]
        );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Tempor labore consequat occaecat cillum deserunt nulla exercitation esse ex culpa adipisicing incididunt officia. Duis voluptate adipisicing velit non in duis esse. Proident eu dolor excepteur sunt officia labore esse dolor id.',
          textAlign:TextAlign.justify
       ),
      ),
    );
  }
}
