import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:smartlandtransaction/providers/LandRegisterModel.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'constant/routes.dart';
import 'providers/MetamaskProvider.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Text('Welcome!', style: Theme.of(context).textTheme.displayMedium),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LandRegisterModel>(
          create: (context) => LandRegisterModel(),
        ),
        ChangeNotifierProvider<MetaMaskProvider>(
          create: (context) => MetaMaskProvider()..init(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: [FlutterSmartDialog.observer],
        builder: FlutterSmartDialog.init(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
