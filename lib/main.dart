import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

import 'screens/join_room_screen.dart';
import 'screens/create_room_screen.dart';
import 'screens/main_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

// FutureBuilder: take a req -> send it
// StreamBuilder: can take a req -> send it -> listens to it

// snapshot -> Stream -> Socket io (two way)
// get -> Future -> Http (one way)

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: ConstColor.bgColor),
      debugShowCheckedModeBanner: false,
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
      },
      initialRoute: MainMenuScreen.routeName,
    );
  }
}
