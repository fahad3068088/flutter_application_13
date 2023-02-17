

import 'package:flutter/material.dart';
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
   Map time={"mm":"الوقت"};
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("page1",style: TextStyle(fontSize: 22),),
      ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [










            ElevatedButton(onPressed:() async {
               dynamic fa = await Navigator.pushNamed(context, '/second');
                setState(() {
              if (fa==null) {
                  time={"mm":"الوقت"};
              } else {
                time={"mm":fa["ff"]};
              }
              
                });













               
            },  child: Text("اذهب الى الصفحه الثانية",style: TextStyle(
              fontSize: 22
            ),),
            style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(Colors.orange),
               foregroundColor : MaterialStateProperty.all(Colors.red),
               padding: MaterialStateProperty.all(EdgeInsets.all(20)),
               shape: MaterialStateProperty.all
              (RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),)
            ),
            
          
            SizedBox(height: 20),
            Text(time["mm"],style: TextStyle(
              fontSize: 22
            ),),
            SizedBox(height: 20),
            Text("البلد",style: TextStyle(
              fontSize: 22
            ),),

            
          ],  ),
       ),
      );
  
  }
}