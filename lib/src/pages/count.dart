import 'package:flutter/material.dart';


class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context) {
    int _count = 0;

    return Scaffold(
      appBar: AppBar(
        title:const Text("Home"),
        backgroundColor: Color.fromARGB(255, 131, 201, 174),
      ),
      body: Center(
        child: Text("Contador:$_count",
        style: TextStyle(fontSize: 25),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("count:${_count++}");
          setState(() {
            _count+=1;
          });
          },
        child: const Icon(Icons.add),
      ),
    );
  }
}