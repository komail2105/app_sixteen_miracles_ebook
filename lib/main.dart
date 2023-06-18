import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/pages/calendar/calendar.dart';
import 'package:app_sixteen_miracles_ebook/pages/home/home.dart';
import 'package:app_sixteen_miracles_ebook/pages/listen/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var bottomIndex = 0;
  final pageController = PageController();

  final tabs = [
    const HomePage(),
    const CalendarPage(),
    const AudioPage(),
    const Text("Bookmark Page"),
    const Text("User Page"),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: kWhite,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: bottomIndex == 2 || bottomIndex == 1 || bottomIndex == 4
            ? null
            : _buildAppBar(bottomIndex),
        body: tabs[bottomIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kFont,
          unselectedItemColor: Colors.blueGrey[200],
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: kWhite,
          iconSize: 32,
          currentIndex: bottomIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.audio_file_rounded),
              label: 'Listen',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'User',
            ),
          ],
          onTap: (index) {
            setState(() {
              bottomIndex = index;
            });
          },
        ),
      ),
      themeMode: ThemeMode.system,
    );
  }
}

AppBar _buildAppBar(bottomIndex) {
  return AppBar(
    backgroundColor: kWhite,
    elevation: 0,
    title: bottomIndex == 3
        ? const Text(
            'FAVOURITE',
            style: TextStyle(
                color: kFont,
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
          )
        : const Text(
            'MUSLIM ACCESSORY',
            style: TextStyle(
                color: kFont,
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
          ),
    centerTitle: true,
    actions: [
      IconButton(
        iconSize: 32,
        padding: const EdgeInsets.only(right: 18),
        onPressed: () => {},
        icon: const Icon(
          Icons.search_rounded,
          color: kFont,
        ),
      )
    ],
  );
}
