import 'package:donation_app/providers/donation_cases_provider.dart';
import 'package:donation_app/screens/pastDonationScreen/past_donation_screen.dart';
import 'package:donation_app/screens/wishListScreen/wish_list_screen.dart';
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
      // ignore: always_specify_types
      providers: [
        ChangeNotifierProvider<DonationCasesProvider>.value(
          value: DonationCasesProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFFE7E9E8),
        ),
        home: const HomePage(),
        routes: <String, Widget Function(BuildContext)>{
          HomePage.routeName: (_) => const HomePage(),
          WishListScreen.routeName: (_) => WishListScreen(),
          PastDonationScreen.routeName: (_) => PastDonationScreen(),
        },
      ),
    );
  }
}
