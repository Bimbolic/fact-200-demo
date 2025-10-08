import 'package:fact200/features/authetication/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
    child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
          ),
        ),
        darkTheme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        ),
        home: const SplashScreen(), //OnboardingScreen(), //createAccountScreen(),
        themeMode: ThemeMode.light,
         // initialRoute: SplashScreen.routeName,
        // routes: {
        //   SplashScreen.routeName: (context) => const SplashScreen(),
        //   OnboardingScreen.routeName:
        //       (context) =>
        //           const OnboardingScreen(title: 'Welcome to Scholarly'),
        // }, 
    ),
   );
  }
}
