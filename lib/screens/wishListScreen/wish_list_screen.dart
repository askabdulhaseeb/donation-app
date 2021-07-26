import 'package:donation_app/models/donation_cases.dart';
import 'package:donation_app/providers/donation_cases_provider.dart';
import 'package:donation_app/screens/homeScreen/donation_tile_widget.dart';
import 'package:donation_app/screens/widgets/custom_appbar_background.dart';
import 'package:donation_app/screens/widgets/custom_appbar_with_title_and_pop_button.dart';
import 'package:donation_app/screens/widgets/custom_dark_background_circle.dart';
import 'package:donation_app/screens/widgets/custom_search_textformfield.dart';
import 'package:donation_app/screens/widgets/custom_sliable_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class WishListScreen extends StatelessWidget {
  WishListScreen({Key? key}) : super(key: key);
  static const String routeName = '/WishListScreen';

  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<DonationCases> _cases =
        Provider.of<DonationCasesProvider>(context).getFavCases();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              const CustomAppBarBackbround(backgroundColor: Colors.amber),
              Positioned(
                top: 32,
                left: 16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const CustomAppBarWithTitleAndPopPageButton(
                      title: 'Wish List',
                      backgroundColor: Colors.amber,
                    ),
                    _numberOfCases(_cases, size),
                  ],
                ),
              ),
              Positioned(
                right: -size.height * 0.04,
                top: -size.height * 0.1,
                child: CustomDarkBackgroundCircle(
                  child: Icon(
                    Icons.star_border_rounded,
                    size: size.width * 0.32,
                    color: Colors.white,
                  ),
                ),
              ),
              _searchAndFliter(),
              _clearButtonLine(),
            ],
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
                      icon: Icons.cancel_outlined,
                      backgroundColor: Colors.red,
                    ),
                  ],
                  child: DonationTileWidget(
                    donationCases: _cases[index],
                    size: size,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Positioned _searchAndFliter() {
    return Positioned(
      bottom: 50,
      right: 16,
      left: 16,
      child: Row(
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
          ),
        ],
      ),
    );
  }

  Positioned _clearButtonLine() {
    return Positioned(
      bottom: -10,
      left: 16,
      right: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            'WISH LIST',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }

  Padding _numberOfCases(List<DonationCases> _cases, Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '${_cases.length}',
            style: TextStyle(
              fontSize: size.width * 0.1,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              'cases',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: size.width * 0.05,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
