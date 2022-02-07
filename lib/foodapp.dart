import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delicious Food'),
        centerTitle: true,
      ),
      body: buildContent(),
      backgroundColor: Colors.greenAccent,
    );
  }

  Padding buildContent() {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.transparent,
              child: SizedBox(
                width: 20,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.black,
                    ),
                    Text(
                      'Foods',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Opacity(
                      opacity: 1,
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.transparent,
              child: SizedBox(
                  width: 20,
                  height: 300,
                  child: Row(
                    children: [
                      Column(
                        children: <Widget>[
                          Image.asset('images/food.jpeg',
                              width: 100, height: 200),
                          Text(
                            'Lunch Items',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset('images/icecream.jpeg',
                              width: 100, height: 200),
                          Text(
                            'Icecreams',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset('images/juice.jpeg',
                              width: 100, height: 200),
                          Text(
                            'Juices',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(120),
                ),
              ),
              onPressed: () {
                print('Button Pressed');
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ));
  }
}
