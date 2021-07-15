import 'package:donation_app/providers/donation_cases_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/homeScreen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: DonationCasesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color(0xFFE7E9E8),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
