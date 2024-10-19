import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Quitanda extends StatelessWidget {
  const Quitanda({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selecionar cidade',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color(0xFF3A8A39),
     
        title: Text('Quitanda',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),

        titleTextStyle: GoogleFonts.raleway(),
        
        
        

        centerTitle: true,

      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selecione uma Cidade',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color:Colors.black,
                
                ),
            ),
            
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
