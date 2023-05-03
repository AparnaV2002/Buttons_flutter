import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons',
       theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.purple, // sets the title color
          ),
        ),
      ),
      home: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        childAspectRatio: 2,
        children: [
          ElevatedButton(
            onPressed: () => _showAlert(context, 'ElevatedButton'),
            child: Text('ElevatedButton'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            
          ),
          TextButton(
            onPressed: () => _showAlert(context, 'TextButton'),
            child: Text('TextButton'),
             style: TextButton.styleFrom(
              backgroundColor: Colors.yellow,
            ),
          ),
          OutlinedButton(
            onPressed: () => _showAlert(context, 'OutlinedButton'),
            child: Text('OutlinedButton'),
             style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
          ),
          IconButton(
            onPressed: () => _showAlert(context, 'IconButton'),
            icon: Icon(Icons.add),
             style: IconButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () => _showAlert(context, 'ElevatedButton.icon'),
            icon: Icon(Icons.add),
            label: Text('ElevatedButton.icon'),
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
            ),
          ),
          TextButton.icon(
            onPressed: () => _showAlert(context, 'TextButton.icon'),
            icon: Icon(Icons.add),
            label: Text('TextButton.icon'),
             style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
          ),
          OutlinedButton.icon(
            onPressed: () => _showAlert(context, 'OutlinedButton.icon'),
            icon: Icon(Icons.add),
            label: Text('OutlinedButton.icon'),
             style: OutlinedButton.styleFrom(
              backgroundColor: Colors.grey,
            ),
          ),
          IconButton(
              onPressed: () => _showAlert(context, 'Image Button'),
              icon: Image.asset('images/bird.jpg'),
              tooltip: 'Image Button',
               
            ),
        ],
      ),
    );
  }

  void _showAlert(BuildContext context, String buttonName) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Button pressed'),
          content: Text('$buttonName was pressed'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}