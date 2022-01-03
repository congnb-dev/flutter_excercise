import 'package:flutter/material.dart';
import 'package:forgot_password_screen/formbox.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Forgot password',
            style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 26.0,),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 70.0,
                  decoration: BoxDecoration(
                      color:Color(0xFFCDF8F2),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                  ),
                  child: Center(
                    child: Text(
                      'Please enter your email to get your reset password code',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      FormBox("Email*", 1, 1, false),
                      SizedBox(height: 20,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: OutlinedButton(
                            onPressed: () => {
                              print('Clicked!'),
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                        (states) {return Colors.lightBlueAccent;}
                                )
                            )
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}