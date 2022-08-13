import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int x = 0;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Muaaz"),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.check)),
          actions: [
            Icon(Icons.check),
            Icon(Icons.check),
            Icon(Icons.check),
          ],
        ),
        body:
        Container(
          color: (x == 0 ? Colors.grey : (x == 1 ? Colors.black : (x == 2 ? Colors.white : Colors.teal))),
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: (){
              setState(() {
                x++;
                x%=4;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              color: Colors.red,
              child: Text(
                x == 0 ? "Black" : (x == 1 ? "White" : (x == 2 ? "Teal" : "Grey")),
                style: TextStyle(
                  fontSize: 20.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
