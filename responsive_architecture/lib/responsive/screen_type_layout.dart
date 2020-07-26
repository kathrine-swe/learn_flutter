
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/responsive_builder.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

class ScreenTypeLayout extends StatelessWidget {
  // This widget will take in a Widget for each screen type.
  // If one is not defined it will return the Mobile layout since we're starting there.
  // This will give us a nice and easily readable top level widget.
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenTypeLayout(
    {Key key, @required this.mobile, this.tablet, this.desktop }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      // If sizing indicates Tablet and we have a tablet widget then return
      if (sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
        if (tablet != null) {
          return tablet;
        }
      }

      // If sizing indicates desktop and we have a tablet widget then return
      if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
        if (tablet != null) {
          return desktop;
        }
      }

      // Return mobile layout if nothing else is supplied
      return mobile;
    });
  }
}