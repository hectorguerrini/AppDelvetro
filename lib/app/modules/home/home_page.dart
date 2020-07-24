import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Container(
              child: Card(
                  child: ListTile(
                onTap: () {
                  Modular.to.pushNamed('/home/itens_vendidos');
                },
                contentPadding: EdgeInsets.all(8.0),
                title: Text(
                  "Itens Vendidos",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: Colors.black87),
                ),
                subtitle: Icon(
                  Icons.assignment,
                  color: Colors.black54,
                  size: 72,
                ),
              )),
            ),
          ],
        ));
  }
}
