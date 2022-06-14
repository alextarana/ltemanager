import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ltemanager2/application/auth/auth_bloc.dart';
import 'package:ltemanager2/injection.dart';
import 'package:ltemanager2/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'LTE Manager',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: const Color(0xFFECF0F5),
          primaryColor: const Color(0xFF100E25),
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                color: Colors.transparent,
                iconTheme: ThemeData.dark().iconTheme,
                systemOverlayStyle: SystemUiOverlayStyle.dark,
                centerTitle: true,
                elevation: 0,
              ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xFF107F81),
            foregroundColor: Colors.white,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: const Color.fromRGBO(155, 50, 135, 1),
            primary: const Color(0xFF100E25),
          ),
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: const Color(0xFF100E25),
                displayColor: const Color(0xFF100E25),
                fontFamily: 'Avenir Next',
              ),
        ),
      ),
    );
  }
}
