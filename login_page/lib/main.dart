import 'package:flutter/material.dart';

// ignore_for_file: file_names
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.jpg', height: 100, width: 100),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please validate email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.email_sharp,
                      size: 40,
                    ),
                    hintText: 'Your Email',
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length <= 6) {
                      return 'Password must has at lest 6 character!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.password,
                      size: 40,
                    ),
                    hintText: 'Your password',
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: OutlinedButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                      onSurface: Colors.red,
                    ),
                    child: Text('Sign in!'),
                    onPressed: () {
                      print('pressed');
                      if (_formKey.currentState!.validate()) {
                        //Ok thì form đc kt thành công!
                        print('Form đc kiểm tra');
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: OutlinedButton(
                    child: Text('Login with email!'),
                    onPressed: () {
                      // ignore: avoid_print
                      print('pressed');
                      if (_formKey.currentState!.validate()) {
                        print('Form checked');
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: OutlinedButton(
                    child: const Text('Login with Facebook!'),
                    onPressed: () {
                      // ignore: avoid_print
                      print('pressed');
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.facebook,
                        size: 50,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: IconButton(
                        icon: const Icon(
                          Icons.mail,
                          size: 50,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.account_circle,
                        size: 50,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ), //Form
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
