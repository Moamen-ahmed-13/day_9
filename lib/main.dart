import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    child: FadeInUp(
                      from: 50,
                      child: Container(
                        height: 200,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/light-1.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    child: FadeInUp(
                      from: 100,
                      child: Container(
                        height: 150,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/light-2.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 60,
                    top: 40,
                    child: FadeInUp(
                      from: 150,
                      child: Container(
                        height: 150,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/clock.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: FadeInUp(
                          from: 200,
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            FadeInUp(
              from: 250,
              child: Container(
                margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(143, 148, 251, 1)),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color.fromRGBO(143, 148, 251, 2),
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Email or Phone number',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ),
            FadeInUp(
              from: 300,
              child: Container(
                margin: const EdgeInsets.only(bottom: 50, left: 30, right: 30),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(143, 148, 251, 1)),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Color.fromRGBO(143, 148, 251, .5),
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
            ),
            FadeInUp(
              from: 350,
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    colors: [
                      Color.fromRGBO(143, 148, 251, 1),
                      Color.fromRGBO(143, 148, 251, 0.6),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            FadeInUp(
              from: 400,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Color.fromRGBO(143, 148, 251, 1),
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
