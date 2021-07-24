import 'package:donation_app/models/donation_cases.dart';
import 'package:donation_app/providers/donation_cases_provider.dart';
import 'package:donation_app/screens/homeScreen/donation_tile_widget.dart';
import 'package:donation_app/screens/widgets/custom_appbar_background.dart';
import 'package:donation_app/screens/widgets/custom_dark_background_circle.dart';
import 'package:donation_app/screens/widgets/custom_search_textformfield.dart';
import 'package:donation_app/screens/widgets/custom_sliable_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'custom_card_widget.dart';
import 'home_screen_header_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/HomeScreen';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _search = TextEditingController();

  @override
  void didChangeDependencies() {
    Provider.of<DonationCasesProvider>(context).addDomeData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<DonationCases> _cases =
        Provider.of<DonationCasesProvider>(context).getCasesList();
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * .38,
            child: Stack(
              children: <Widget>[
                const CustomAppBarBackbround(
                    backgroundColor: Colors.purpleAccent),
                Positioned(
                  right: -size.height * 0.04,
                  top: -size.height * 0.1,
                  child: const CustomDarkBackgroundCircle(),
                ),
                const HomeScreenHeaderText(),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const CustomCardWidget(
                        icon: LineIcons.donate,
                        title: 'Donations',
                        numberOfCases: 120,
                        backgroundColor: Colors.green,
                      ),
                      CustomCardWidget(
                        icon: Icons.star_border_outlined,
                        title: 'Wish List',
                        numberOfCases:
                            Provider.of<DonationCasesProvider>(context)
                                .getFavCases()
                                .length,
                        backgroundColor: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Search Donation
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(child: CustomSearchTextFormField(search: _search)),
                    const SizedBox(width: 10),
                    Container(
                      height: 48,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        LineIcons.filter,
                        color: Colors.purple,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 6),
                const Text(
                  'DONATE NOW',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                // List
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: _cases.length,
              itemBuilder: (BuildContext context, int index) {
                return Slidable(
                  actionPane: const SlidableScrollActionPane(),
                  secondaryActions: <Widget>[
                    CustomSlidableAction(
                      size: size,
                      onTap: () {
                        Provider.of<DonationCasesProvider>(context,
                                listen: false)
                            .updateFavCase(_cases[index]);
                      },
                      icon: (_cases[index].isFav)
                          ? Icons.star
                          : Icons.star_border,
                    ),
                  ],
                  child: DonationTileWidget(
                    donationCases: _cases[index],
                    size: size,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
