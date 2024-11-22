import 'package:flutter/material.dart';
import '../app_colors/all_colors_export.dart';
import '../extend_theme/container_theme_extend.dart';

// Container Light Theme Extension
final containerThemeLightExtension = ContainerThemeExtend(
  containerBackgroundBoarderBoxShadowColorList: const [
    //background, boarder, shadowColor(primary, none, _)--0
    [appPrimaryColor, Color(0xff0057A3), Color(0xff000000)],
    //background, boarder(secondary, none)--1
    [appSecondaryColor, Color(0xff008080), Color(0xff000000)],
    //background, boarder(white, none)--2
    [appWhiteColor, Color(0xffffffff), Color(0xff000000)],
    //background, boarder(white, yellow type)--3
    [appWhiteColor, appOrangeColor, Color(0xff000000)],
    //background, boarder(gray type, purple type)--4
    [Color(0xffC0C0C0), Color(0xffAC9FF5), Color(0x44000000)],
    //background, boarder, shadowColor(white, primary, black type)--5
    [appWhiteColor, Color(0xff0057A3), Color(0xff000000)],
    //background, boarder(black type, none)--6
    [Color(0xff32324b), Color(0xff37474F), Color(0x55000000)],
    //background, boarder, shadowColor(white, secondary, black type)--7
    [appWhiteColor, Color(0xff008080), Color(0xff000000)],
    //background, boarder(secondary with opacity, none)--8
    [appSecondaryColor, Color(0xff008080), Color(0xff000000)],
    //background, boarder(secondary, none)--9
    [appSecondaryColor, Color(0xff008080), Color(0xff000000)],
    //background, boarder(white, none)--10
    [appWhiteColor, Color(0xff008080), Color(0xff000000)],
    //background, boarder(white, none)--11
    [appWhiteColor, Color(0xff008080), Color(0xff000000)],

    //unused
    [appWhiteColor, Color(0xff008080), Color(0xff000000)],
  ],
);

// Container Dark Theme Extension
final containerThemeDarkExtension = ContainerThemeExtend(
  containerBackgroundBoarderBoxShadowColorList:  [
    //background, boarder, shadowColor(primary, none, _)--0
    const [Color(0xff0057A3), Color(0xff0057A3), Color(0xffb13737)],
    //background, boarder(secondary, none)--1
    const [containerBackGroundColorDark, containerBoarderColorDark, Color(0xffc33434)],
    //background, boarder(white, none)--2
    const [containerBackGroundColorDark, containerBoarderColorDark, Color(0xff000000)],
    //background, boarder(white, orange type)--3
    const [containerBackGroundColorDark, appOrangeColor, Color(0xffa83131)],
    //background, boarder(gray type, purple type)--4
    const [containerBackGroundColorDark, containerBoarderColorDark, Color(0x44000000)],
    //background, boarder, shadowColor(white, primary, black type)--5
    const [containerBackGroundColorDark, Color(0xff0057A3), Color(0xef4acadf)],
    //background, boarder(black type, none)--6
    const [containerBackGroundColorDark, containerBoarderColorDark, Color(0x55000000)],
    //background, boarder, shadowColor(white, secondary, black type)--7
    const [containerBackGroundColorDark, appOrangeColor, Color(0xff000000)],
    //background, boarder(secondary with opacity, none)--8
    [appSecondaryColor.withOpacity(0.12), const Color(0xff806600), const Color(0xff000000)],
    //background, boarder(secondary, none)--9
    const [appSecondaryDarkColor, Color(0xff008080), Color(0xff000000)],
    //background, boarder(white, none)--10
    const [appSecondaryDarkColor, Color(0xff008080), Color(0xff000000)],
    //background, boarder(white, none)--11
    const [appWhiteColor, Color(0xff008080), Color(0xff000000)],

    //unused
    const [appWhiteColor, Color(0xff008080), Color(0xff000000)],
  ],
);
