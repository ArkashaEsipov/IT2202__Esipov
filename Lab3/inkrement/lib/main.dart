import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 163, 50, 1)),
      ),
      home:
         const MyHomePage(title: 'Incremet')
         
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

  void _Mines() {
    setState(() {
     
      _counter--;
    });
  }
  void _Plus()
  {
    setState(() {
      _counter++;
    });
  }
  void Sbros()
  {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text('counter:',
            style: Theme.of(context).textTheme.headlineMedium,),
            
              ]
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            )
            ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: _Mines, icon: Icon(Icons.indeterminate_check_box_rounded, size: 40, color: Colors.red)),
              IconButton(onPressed: _Plus, icon: Icon(Icons.add_box_rounded,size: 40, color: Colors.lightGreen))
              
            ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: Sbros, child: Text(
                  "Сброс",
                  style: Theme.of(context).textTheme.headlineMedium,
                )
                )
              ]
            )
          ]
        ),
      ),
      
    );
  }
}
