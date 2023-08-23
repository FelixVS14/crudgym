import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget
{
  final String _title;
  MyHomePage(this._title);
  @override
  State<StatefulWidget> createState() => _MyHomePage();

}

class _MyHomePage extends State<MyHomePage>{

  List<Client> clients =[
    Client(name: 'Felix',lastname: 'Vicente',phone: '904563219', fecha: '17/08/2023'),
    Client(name: 'Jose',lastname: 'Ramos',phone: '904123419', fecha: '18/08/2023'),
    Client(name: 'Ana',lastname: 'Perez',phone: '912342219', fecha: '17/08/2023'),
    Client(name: 'Carlos',lastname: 'Rojas',phone: '904363219', fecha: '17/08/2023')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index){
            return ListTile(
              onTap: (){},
              onLongPress: (){},
              title: Text(clients[index].name + " "+clients[index].lastname),
              subtitle: Text(clients[index].fecha+ " - "+ clients[index].phone),
              leading: CircleAvatar(
                child: Text(clients[index].name.substring(0,1)),
              ),
              trailing: Icon(
                Icons.call,
                color: Colors.red 
              ),
            );
        },
      ),
    );
  }

}

class Client{
  var name;
  var lastname;
  var phone;
  var fecha;

  Client({this.name, this.lastname, this.phone, this.fecha});
}