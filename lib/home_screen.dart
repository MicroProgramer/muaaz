import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/$x.png'),
                  // fit: BoxFit.containi
                ),
                shape: BoxShape.circle,
              ),
            ),
            // Center(
            //   child: Container(
            //     color: Colors.grey.withOpacity(.4),
            //     width: size.width,
            //     height: size.height * .3,
            //   ),
            // )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              x %= 3;
              x++;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void changeIndex(String path, {int? newIndex}) {}
}
