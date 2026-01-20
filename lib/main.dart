import 'package:flutter/material.dart';
import 'package:flutter_app_dialogs/src/app_dialog.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Dialogs',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog<String>(
              context: context,
              builder: (context) => AppDialog(
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
              ),
            );
          },
          child: Text('Click'),
        ),
      ),
    );
  }
}
