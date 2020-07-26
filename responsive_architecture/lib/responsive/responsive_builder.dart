import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/sizing_information.dart';
import 'package:responsive_architecture/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context, SizingInformation sizingInformation) builder;
  
  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override 
Widget build(BuildContext context) {
  var mQuery = MediaQuery.of(context);

  return LayoutBuilder(builder: (context, boxSizing) {
    var sizingInformation = SizingInformation(
      deviceScreenType: getDeviceType(mQuery),
      screenSize: mQuery.size,
      localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
    );

    return builder(context, sizingInformation);
  });
}
}