import 'package:flutter/material.dart';
import 'package:foodiex/colors.dart';
import 'package:foodiex/donor_screen/donor_screen.dart';
import 'package:foodiex/home_screen/home_screen.dart';
import 'package:foodiex/receiver/receiver.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFC5B6B6);
    return Container(
      margin: EdgeInsets.all(1),
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: kprimarycolor.withOpacity(0.25),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.wallet_giftcard,
                    color: MenuState.donor == selectedMenu
                        ? kprimarycolor
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DonorScreen()));
                  }),

              IconButton(
                  icon: Icon(
                    Icons.home,
                    color: MenuState.home == selectedMenu
                        ? kprimarycolor
                        : inActiveIconColor,
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()))
                  // icon: Icons.home_filled,
                  //   color:kprimarycolor //MenuState.home == selectedMenu
                  //      // ? kprimarycolor
                  //      // : inActiveIconColor,

                  // icon: Icons.home_filled,
                  //   color:kprimarycolor //MenuState.home == selectedMenu
                  //      // ? kprimarycolor
                  ),
              IconButton(
                icon: Icon(
                  Icons.notification_important,
                  color: MenuState.receiver == selectedMenu
                      ? kprimarycolor
                      : inActiveIconColor,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReceiverScreen()));
                },
              ), //  )
              // IconButton(
              //     icon: SvgPicture.asset(
              //       "assets/icons/User Icon.svg",
              //       color: MenuState.profile == selectedMenu
              //           ? kprimarycolor
              //           : inActiveIconColor,
              //     ),
              //     onPressed: () {}),
            ],
          )),
    );
  }
}

enum MenuState { donor, home, receiver }
