import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        appBar: AppBar(
          leading: PopupMenuButton(
            icon: Icon(Icons.menu), //don't specify icon if you want 3 dot menu
            color: Colors.blue,
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text(
                  "Setting",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            onSelected: (item) => mission(context),
          ),
          title: Text("Welcome To IT Department"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.network(
                  'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                  height: 350,
                ),
                Row(
                  children: [
                    RaisedButton(
                      child: Text('LAB1'),
                      onPressed: () => LAB1(context),
                    ),
                    RaisedButton(
                      child: Text('LAB2'),
                      onPressed: () => LAB2(context),
                    ),
                    RaisedButton(
                      child: Text('LAB3'),
                      onPressed: () => LAB3(context),
                    ),
                  ],
                ),
                RaisedButton(
                  child: Text('Contact Us'),
                  onPressed: () => contactUs(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at hodit@famt.ac.in'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Lab 1'),
          content: Column(
            children: [
              Image.network(
                'https://ashishvartak.files.wordpress.com/2022/02/dsc_0050.jpg',
                height: 350,
              ),
              Text("Hello"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Lab 3'),
          content: Column(
            children: [
              Image.network(
                'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                height: 350,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Lab 3'),
          content: Column(
            children: [
              Image.network(
                'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                height: 350,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void mission(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Vision'),
          content: Column(
            children: [
              Image.network(
                'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                height: 350,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}
