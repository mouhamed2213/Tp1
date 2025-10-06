import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// class creation

class Contact {
  String name;
  String number;
  Contact ( { required this.name, required this.number, } );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // /  create controller for each action for the form
  TextEditingController nameController  =  TextEditingController();
  TextEditingController contactController  =  TextEditingController();
  TextEditingController searchController  =  TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( // app header
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("contact "),
      ),
      body: Padding( // border-box
        padding: const EdgeInsets.all(8.0), // to know
        child: Column( // to know
          children: [ // represent rows
            SizedBox(height: 10), // margin height
            TextField( // input
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Contact Name',

              ),
            ),

            SizedBox(height: 20), // margin height
            TextField( // input
              controller: contactController,

              keyboardType: TextInputType.number, // set the input type
              maxLength: 10,
              decoration: InputDecoration(
                hintText: "Contact number",
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                )

              ),
            ),
            SizedBox(height: 20), // margin height
            Row( // add row container
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // align item
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Save")),
                ElevatedButton(onPressed: () {}, child:Text("Update"))
              ],
            ),
            SizedBox(height: 20), // margin height
            TextField(
              controller: searchController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)) ,
                ),
                prefixIcon: Icon(Icons.search)
              ),
            )
            
            

          ],
        ),
      ),
    );
  }
}
