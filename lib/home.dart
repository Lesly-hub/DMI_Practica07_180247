import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MovieApp_180247"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search, color: Colors.white,),
            onPressed: (){},)
        ],

      ),
      drawer: new Drawer(
        child: new ListView(
        children: <Widget>[
        
         new DrawerHeader(child: new Material()),
        new ListTile(
          title: new Text("peliculas"),
          trailing: new Icon(Icons.local_movies), 
          ),
        new Divider(
          height: 5.0,
        ),
        new ListTile(
          title: new Text("Television"),
          trailing: new Icon(Icons.live_tv),
        ),
        new Divider(
          height: 5.0,
        ),
        new ListTile(
          title: new Text("Cerrar"),
          trailing: new Icon(Icons.live_tv),
          onTap: () => Navigator.of(context).pop(),
        ), ]
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _obtenerIconos(),
      ),
    );
  }

  // METODO
  List<BottomNavigationBarItem> _obtenerIconos() {
    return [
      new BottomNavigationBarItem(
        icon: new Icon(Icons.thumb_up), label: ("populares"),
        // icon:  new Icon(Icons.thumb_up), title: new Text("populares"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.update),
        label: ("Proximamente"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.star),
        label: ("Mejor valorados"),
      ),
    ];
  }
}