import 'package:flutter/material.dart';
import 'package:triplane/ui/widgets/custom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_card.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          const Text('Main Page'),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
