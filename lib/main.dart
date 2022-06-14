import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ltemanager2/injection.dart';
import 'package:ltemanager2/presentation/app_widget.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('it', 'IT')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: AppWidget(),
    ),
  );
}
