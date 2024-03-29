import 'package:flutter/material.dart';
import 'package:ovinhos_perfeitos/blocs/app.bloc.dart';
import 'package:ovinhos_perfeitos/pages/splash.page.dart';
import 'package:ovinhos_perfeitos/themes/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBloc>.value(
          value: AppBloc(),
        )
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ovos Perfeitos',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: SplashPage(),
    );
  }
}
