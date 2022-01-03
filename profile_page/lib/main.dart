import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your profile',
          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 26.0,),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    // color: Colors.lightBlue,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.hardLight),
                        image: const AssetImage("assets/images/avatar.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/avatar.png"),
                          fit: BoxFit.fitHeight,
                        ),
                        borderRadius: const BorderRadius.all( Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.white,
                          width: 3.0,
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.add_a_photo_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('Bao Cong',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.29,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.info,
                          size: 80,
                          color: Colors.lightBlueAccent,
                        ),
                        Text(
                          'Infomation',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.lightBlueAccent,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlueAccent.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4, // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.29,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.settings,
                          size: 80,
                          color: Colors.lightBlueAccent,
                        ),
                        Text(
                          'Setting',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.lightBlueAccent,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlueAccent.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4, // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.29,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.logout,
                          size: 80,
                          color: Colors.lightBlueAccent,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.lightBlueAccent,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlueAccent.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 4, // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
