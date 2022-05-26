import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ListViewHome()
    );
  }
}

class ListViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Card(child:ListTile(
            title: Text("Dietary Restriction 1"),
            subtitle: Text("Range of calories from Y to Z."),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
            trailing: Icon(Icons.star))),
        Card(child:ListTile( title: Text("Dietary Restriction 2"),subtitle: Text("Range of carbs from Y to Z."), leading: CircleAvatar(backgroundImage: NetworkImage("https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")), trailing:
        FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
           context: context,
           builder: (context) {
            return AlertDialog(
            // Retrieve the text the that user has entered by using the
            // TextEditingController.
            content: Text("This is an explanation of dietary restriction 1."),
            );
          },
        );
        },
    tooltip: 'Show me the value!',
    child: const Icon(Icons.text_fields),
    ),)),
        Card(child:ListTile( title: Text("Dietary Restriction 3"),subtitle: Text("Range of fat from Y to Z."), leading:  CircleAvatar(backgroundImage: NetworkImage("https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")), trailing: Icon(Icons.star))),
        Card(child:ListTile( title: Text("Dietary Restriction 4"),subtitle: Text("Range of sodium from Y to Z."), leading:  CircleAvatar(backgroundImage: NetworkImage("https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")), trailing: Icon(Icons.star)))
      ],
    );
  }
}