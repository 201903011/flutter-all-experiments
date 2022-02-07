import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutExp extends StatelessWidget {
  const LayoutExp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delicious Foods'),
        centerTitle: true,
      ),
      body: buildContent(),
      backgroundColor: Colors.white,
    );
  }

  Padding buildContent() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: SizedBox(
              width: 50,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.attach_money_sharp,
                    color: Colors.yellowAccent,
                  ),
                  Text(
                    'Icecreams',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Opacity(
                    opacity: 0,
                    child:
                        Image.asset('images/google.png', width: 30, height: 30),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(16),
            child: SizedBox(
              width: 20,
              height: 30,
              child: Image.asset('images/google.png', width: 50, height: 100),
            ),
          ),
          SizedBox(height: 20),
          RaisedButton(
            onPressed: () {
              print('Button Pressed');
            },
            child: const Text(
              'Submit',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
