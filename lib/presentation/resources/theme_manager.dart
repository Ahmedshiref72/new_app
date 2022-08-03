import 'package:flutter/material.dart';
import 'package:new_app/presentation/resources/color_manager.dart';
import 'package:new_app/presentation/resources/font_manager.dart';
import 'package:new_app/presentation/resources/values_manager.dart';

import 'stayles_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main color
    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    //ripple effect color
    //card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.gray,
      elevation: AppSize.s4,
    ),
    //app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primaryColor,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white),
    ),

    //button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primaryColor,
      splashColor: ColorManager.lightPrimary,
    ),

    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17),
        primary: ColorManager.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    //Text theme
    textTheme: TextTheme(
      headlineLarge:
      getSemiBoldStyle(
        color: ColorManager.darkGray,
        fontSize: FontSize.s16,
      ),
      titleMedium:
      getMediumStyle(
        color: ColorManager.primaryColor,
        fontSize: FontSize.s16,
      ),
      bodyLarge:
      getRegularStyle(
        color: ColorManager.grey1,
      ),
      headlineMedium: getRegularStyle(color: ColorManager.darkGray,fontSize: FontSize.s14),
      bodySmall:
      getRegularStyle(color: ColorManager.gray
      ),
      displayLarge:
          getSemiBoldStyle(color: ColorManager.darkGray, fontSize: FontSize.s16
          ),
    ),

    //input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      //hint Style
      hintStyle: getRegularStyle(
        color: ColorManager.gray,
        fontSize: FontSize.s14,
      ),
      //label style
      labelStyle: getMediumStyle(
        color: ColorManager.gray,
        fontSize: FontSize.s14,
      ),
      //error style
      errorStyle: getRegularStyle(
        color: ColorManager.error,
      ),
      //enabled border style
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primaryColor,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),

      ),

      //focused border style
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.gray,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),

      ),

      //error border style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),

      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primaryColor,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),

      ),
    ),
  );
}
