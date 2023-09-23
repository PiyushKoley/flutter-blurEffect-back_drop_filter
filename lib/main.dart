import 'dart:ui';

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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Trying Backdrop filter'),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://images.pexels.com/photos/3178786/pexels-photo-3178786.jpeg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 200,
                  height: 200,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.20),
                        ),
                      ),

                      child: const Center(
                        child: Text(
                          "With blur", 
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: Colors.white54, fontWeight: FontWeight.bold),
                        )
                      ),

                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

              Container(
                width: 200,
                height: 200,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(0.15),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.20)
                  )
                ),
                child: const Center(
                  child: Text(
                    "Without blur",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,color: Colors.white54,fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  
}
