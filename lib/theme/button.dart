import 'package:flutter/material.dart';
import 'package:food_delivery/theme/colors.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
    minimumSize: const Size(327, 50),
    backgroundColor: AppColors.blackColor,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))));
