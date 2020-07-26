import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:responsive_architecture/widgets/drawer_option/drawer_option.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer_tablet.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key:key);

  @override 
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Rent Aircraft',
        iconData: Icons.flight_takeoff,
      ),
      // DrawerOption(
      //   title: 'Press',
      //   iconData: Icons.import_contacts,
      // ),
      DrawerOption(
        title: 'About Us',
        iconData: Icons.library_books,
      ),

      DrawerOption(
        title: 'Contact Us',
        iconData: Icons.perm_phone_msg,
      ),
      DrawerOption(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}