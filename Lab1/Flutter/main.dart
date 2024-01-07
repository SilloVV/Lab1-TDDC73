import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),

      ),
      home: const MyHomePage(title: 'Example 1'),
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


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(




        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ClipRRect(
               borderRadius: BorderRadius.circular(100),
                child: Image.asset('image/img1.png',
                  width: 210,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                  },
                  child: Text('BUTTON',style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                  },
                  child: Text('BUTTON',style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54,
                  ),
                ),

              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                  },
                  child: Text('BUTTON',style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                  },
                  child: Text('BUTTON ',style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text("Email",
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 16),

                  ),

                ),



                Expanded(
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: 50),
                  child:TextField(
                    cursorColor: Colors.pink,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.lightBlue),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.pink),
                    ),
                      border: UnderlineInputBorder(),

                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                ),
                ),
                ),
              ],
            ),



          ],



        ),

      ),
    );
  }
}
