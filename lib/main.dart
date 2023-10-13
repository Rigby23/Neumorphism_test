import 'package:flutter/material.dart';
import 'package:neumorphism_test/reutilizable/app_colors.dart';
import 'package:neumorphism_test/widgtes/round_buttons/round_button_tapped.dart';
import 'package:neumorphism_test/widgtes/round_buttons/round_button_untapped.dart';

import 'utilities/tapped_listener.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: shadowGradient300,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*NormalTapped(
                size: 20,
                tapped: const RoundButtonTapped(
                  size: 60,
                ),
                unTapped: RoundButtonUntapped(
                  size: 60,
                )),*/
            Padding(
              padding: EdgeInsets.only(bottom: 18.0, left: 8),
              child: TappedListener(
                tapped: RoundButtonTapped(
                  height: 60,
                  width: 300,
                ),
                unTapped: RoundButtonUntapped(
                  height: 60,
                  width: 300,
                ),
              ),
            )

            // child: BottomBar(icons: [1, 2, 3, 4]),
            // )
          ],
        ));
  }
}
