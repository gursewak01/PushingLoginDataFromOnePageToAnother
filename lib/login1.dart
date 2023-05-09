import 'package:flutter/material.dart';
import 'package:test09/secondPage.dart';

class login1 extends StatefulWidget {
  const login1({super.key});

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController inputController1 = TextEditingController();
    TextEditingController inputController2 = TextEditingController();
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('Login Page'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Text('Login Here', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                TextField(
                  controller: inputController1,
                  decoration:InputDecoration(labelText: 'Enter Email'),
                ),
                TextField(
                  controller: inputController2,
                  decoration:InputDecoration(labelText: 'Enter Password'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => secondPage(userInput1: inputController1.text, userInput2: inputController2.text,)));
                  }, child: Text('LOGIN'),),
                ),
              ],
            ),
            color: Colors.blue[100],
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}