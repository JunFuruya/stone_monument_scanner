import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'routes/routes.dart';
import 'ui/common_parts.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  dotenv.get('API_DOMAIN');
  print('API_DOMAIN: ${dotenv.env['API_DOMAIN']}');
  runApp(
    Routes.getRoutes()
  );
}

/// ホーム画面
///
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// _MyHomePageState
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CommonParts.getAppBar (context, "古文書スキャン"),
      drawer: CommonParts.getHamburgerMenu(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('TEST'),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
