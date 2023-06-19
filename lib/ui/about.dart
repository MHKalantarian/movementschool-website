import 'package:flutter/material.dart';

import '../config/colors.dart';
import '../config/styles.dart';
import '../data/skills.dart';
import 'responsive_widget.dart';

class About extends StatelessWidget {
  final String _avatar = 'images/avatar.jpg';
  final String _description =
      "Welcome to Movement School, a fun-filled haven for children where their imaginations run wild, friendships bloom, and joyful adventures await, providing parents with peace of mind and their little ones with an unforgettable experience.";

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 100,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      color: AppColors.greyLight,
                      child: Image.asset(
                        _avatar,
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ABOUT US',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          _description,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 17,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Text('MY SKILLS', style: AppStyles.title),
              Container(width: 100, height: 2, color: AppColors.primary),
              const SizedBox(height: 3),
              Container(width: 75, height: 2, color: AppColors.primary),
              const SizedBox(height: 50),
              Wrap(
                spacing: 25,
                runSpacing: 25,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
        mobileScreen: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 50,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Container(
                  color: AppColors.greyLight,
                  child: Image.asset(
                    _avatar,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'ABOUT US',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _description,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 13,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              Text('MY SKILLS', style: AppStyles.title),
              Container(width: 75, height: 2, color: AppColors.primary),
              const SizedBox(height: 3),
              Container(width: 50, height: 2, color: AppColors.primary),
              const SizedBox(height: 25),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
      );

  Widget _buildSkill(Skill skill) => Chip(label: Text(skill.name!));
}
