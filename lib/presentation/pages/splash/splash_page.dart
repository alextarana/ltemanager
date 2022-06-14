import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ltemanager2/application/auth/auth_bloc.dart';
import 'package:ltemanager2/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        debugPrint(state.toString());
        state.map(
          initial: (_) {},
          authenticated: (_) => context.router.replace(const HomeRoute()),
          unauthenticated: (_) => context.router.replace(const SignInRoute()),
        );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                'assets/logo/ltemanagerLogo.png',
                height: 100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
