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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: DefaultTabController(length: 2, child: DashboardPage()),
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
  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox( height: 20.0),
              Row(
                children: [
                    Icon(
                      Icons.psychology_outlined,
                      size: 25.0,
                      color: Colors.black87,
                  ),
                  Text('UNTITLED UI',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 25.0),
                  )
                ],
              ),
              SizedBox( height: 20.0),
              Text('Create an account',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 35),),
              SizedBox( height: 10.0),
              Text("Let's get started with your 30 day free trial.",
                style: TextStyle(fontSize: 18)),
              SizedBox( height: 40.0),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox( height: 10.0),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox( height: 10.0),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox( height: 25.0),
              SizedBox(
                height: 50.0,

                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Create account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),// The text displayed on the button
                ),
              ),
              SizedBox( height: 15.0),
              OutlinedButton.icon(
                onPressed: () {},
              icon: Icon(Icons.g_translate),
              label: Text('Sign In with Google'),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
            ),
            ),
              SizedBox( height: 10.0),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_circle_right),
                label: Text('Sign In with Twitter'),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  Text('Log in',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
