import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_screen_provider.dart';
import 'screens/auth/welcome_back_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartscreenProvider>.value(
          value: CartscreenProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'eCom',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          canvasColor: Colors.transparent,
          primarySwatch: Colors.blue,
          fontFamily: "Montserrat",
        ),
        //home: SplashScreen(),
        home: WelcomeBackPage(),
      ),
    );
  }
}
