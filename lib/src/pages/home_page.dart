import 'package:flutter/material.dart';

import 'package:flutterappqr/src/pages/direcciones_page.dart';
import 'package:flutterappqr/src/pages/mapas_page.dart';

import 'package:barcode_scan/barcode_scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR SCANNER'),
        centerTitle: true,
        elevation: 50.0,
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: (){},
          )
        ],
      ),
      body: _paginaSeleccionada(currentIndex),
      bottomNavigationBar: _crearBotonNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _scanear();
        },
        child: Icon(Icons.filter_center_focus),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  _crearBotonNavigationBar() {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Mapas')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_5),
              title: Text('Direcciones')
          ),
        ]
    );
  }

  _paginaSeleccionada(int paginaActual) {
    switch(paginaActual){
      case 0: return MapasPage();
      case 1: return DireccionesPage();
      default:
        return MapasPage();

    }
  }

   _scanear()async {
    //https://www.sport.es/es/
     // geo:40.66175814219639,-74.2078150792969

  /*    dynamic futureString ='';

     try {
       futureString = await BarcodeScanner.scan();
     }catch(e){
       futureString=e.toString();
     }

     print('Future String: ${futureString.rawContent}');*/
   }




}
