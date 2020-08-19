import 'package:flutter/material.dart';
import 'package:naija_covid_update/services/app_color.dart';

Color matchColor(index) {
      switch (index) {
        case 1:
          {
           return Color(AppColor.confirmedColor());
          }
          break;
        case 2:
          {
           return Color(AppColor.recoverdColor());
          }
          break;
        case 3:
          {
           return Color(AppColor.deathColor());
          }
          break;
        default:
          {
            return Colors.black;
          }
      }
    }