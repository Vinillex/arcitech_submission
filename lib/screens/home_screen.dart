import 'package:arcitech_submission/init/dependency.dart';
import 'package:arcitech_submission/screens/search_screen.dart';
import 'package:arcitech_submission/screens/settings_screen.dart';
import 'package:arcitech_submission/screens/widgets/current_weather_card.dart';
import 'package:arcitech_submission/screens/widgets/five_days_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 70,
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SettingsScreen();
                        }),
                      );
                    },
                    child: const Icon(
                      Icons.menu,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SearchScreen();
                        }),
                      );
                    },
                    child: const Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/weather.jpg"),
                        fit: BoxFit.fill,
                        opacity: 0.4,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(5, 5),
                          blurRadius: 3,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: const CurrentWeatherCard(),
                  ),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: const FiveDaysCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
