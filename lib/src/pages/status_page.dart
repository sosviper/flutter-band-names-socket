import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:band_names/src/services/socket_service.dart';


class StatusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final socketService = Provider.of<SocketService>(context);
    // socketService.socket.emit(event);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ServerStatus: ${ socketService.serverStatus }')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.message ),
        onPressed: () {
          // TAREA
          // emitir
          // { nombre: 'Flutter', mensaje: 'Hola dede Flutter' }
          socketService.emit('nuevo-mensaje', { 
            'nombre': 'Flutter', 
            'mensaje': 'Hola desde Flutter' 
          });
        },
      ),
    );
  }
}