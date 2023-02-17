import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Page2",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {"ff": "aaaaqa"});
              },
              child: Text(
                "اذهب الى الصفحه الاول وارجع بمعلومة عن كندا",
                style: TextStyle(fontSize: 18),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 95, 11, 81)),
                padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "اذهب الى الصفحه الاول",
                style: TextStyle(fontSize: 18),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 95, 11, 81)),
                padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
