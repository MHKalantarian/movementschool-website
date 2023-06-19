import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../config/colors.dart';
import '../config/constants.dart';
import 'icon.dart';
import 'responsive_widget.dart';

class Footer extends StatelessWidget {
  final String _getInTouch =
      "Get in touch for more info about the school and classes.";

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Contact me
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: AppColors.primary,
                          ),
                          const SizedBox(width: 7.5),
                          Text(
                            'CONTACT US',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _getInTouch,
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        AppConstants.mail,
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        AppConstants.phone,
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Divider(
              color: AppColors.greyLight!.withOpacity(.75),
              thickness: .5,
            ),
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _socialMedia())
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 30,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: AppColors.primary,
                    ),
                    const SizedBox(width: 7.5),
                    Text(
                      'CONTACT US',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  _getInTouch,
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Email Address',
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  AppConstants.mail,
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  AppConstants.phone,
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Divider(
              color: AppColors.greyLight!.withOpacity(.75),
              thickness: .5,
            ),
            const SizedBox(height: 20),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _socialMedia(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _socialMedia() => [
        InkWell(
          onTap: () async {
            launchUrlString(AppConstants.whatsapp, webOnlyWindowName: '_blank');
          },
          child: AppIcon('icons/whatsapp.png'),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            launchUrlString(AppConstants.telegram, webOnlyWindowName: '_blank');
          },
          child: AppIcon('icons/telegram.png'),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            launchUrlString(AppConstants.instagram, webOnlyWindowName: '_blank');
          },
          child: AppIcon('icons/instagram.png'),
        )
      ];
}
