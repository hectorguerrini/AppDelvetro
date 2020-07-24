import 'package:app_delvetro/app/modules/home/items_vendidos/itens_vendidos_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ItensVendidosPage extends StatefulWidget {
  final String title;

  const ItensVendidosPage({Key key, this.title = 'Items Vendidos'})
      : super(key: key);
  @override
  _ItensVendidosPageState createState() => _ItensVendidosPageState();
}

class _ItensVendidosPageState
    extends ModularState<ItensVendidosPage, ItensVendidosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: controller.getTabelaItensVendidos,
            child: Text('teste'),
          )
        ],
      ),
    );
  }
}
