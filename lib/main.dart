import 'package:flutter/material.dart';

//With Named Route

/*void main() {
  runApp(NavApp());
}

class NavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Screen One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Screen One',
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: (){
              Navigator.pushNamed(context, '/screen2');
            },
            child: Text('Click here for Second Screen'),
              style: ButtonStyle(
                elevation:MaterialStateProperty.all(1),
              )
            ),
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Screen Two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Screen Two',
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/screen3');
                },
                child: Text('Click here for Third Screen'),
                style: ButtonStyle(
                  elevation:MaterialStateProperty.all(1),
                )
            ),
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Screen Three'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Screen Three',
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/screen1');
                },
                child: Text('Click here for First Screen'),
                style: ButtonStyle(
                  elevation:MaterialStateProperty.all(1),
                )
            ),
          ],
        ),
      ),
    );
  }
}*/

//With MaterialPageRoute

void main() {
  runApp(NavApp());
}

class NavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Screen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Screen One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Screen One',
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen2(),
                    ),
                  );
                },
                child: Text('Click here for Second Screen'),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                )),
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Screen Two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Screen Two',
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen3(),
                    ),
                  );
                },
                child: Text('Click here for Third Screen'),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                )),
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Screen Three'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Screen Three',
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context);
                },
                child: Text('Click here for First Screen'),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                )),
          ],
        ),
      ),
    );
  }
}
