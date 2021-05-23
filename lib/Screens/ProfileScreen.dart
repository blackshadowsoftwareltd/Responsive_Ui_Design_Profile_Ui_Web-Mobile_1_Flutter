import 'package:flutter/material.dart';
import 'package:responsive_web_profile/Components/FooterPanel.dart';
import 'package:responsive_web_profile/Components/HeaderPanel.dart';
import 'package:responsive_web_profile/Components/ProfilePanle.dart';
import 'package:responsive_web_profile/Components/TopBackground.dart';
import 'package:responsive_web_profile/PlatformService.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// background color
        backgroundColor: Color(0xffdde9e9),

        /// if is it Mobile. don't use SafeArea
        body: PlatFormServices.isMobile(context)
            ? Stack(children: [
                TopBackground(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [HeaderPanel(), ProfilePanle(), FooterPanel()]),
                )
              ])
            : SafeArea(
                child: Stack(children: [
                TopBackground(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [HeaderPanel(), ProfilePanle(), FooterPanel()]),
                )
              ])));
  }
}
