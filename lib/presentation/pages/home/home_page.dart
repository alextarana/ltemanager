import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ltemanager2/application/auth/auth_bloc.dart';
import 'package:ltemanager2/presentation/pages/home/bands/bands_page.dart';
import 'package:ltemanager2/presentation/pages/home/status/status_page.dart';
import 'package:ltemanager2/presentation/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => null,
          unauthenticated: (_) => context.router.replace(const SignInRoute()),
        );
      },
      child: const _HomePageWidget(),
    );
  }
}

class _HomePageWidget extends StatelessWidget {
  const _HomePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background/background.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) => AppBar(
          leading: const AutoBackButton(),
          actions: [
            IconButton(
              onPressed: () => context.read<AuthBloc>().add(
                    const AuthEvent.signOut(),
                  ),
              icon: const Icon(
                Icons.logout,
              ),
            )
          ],
          title: const Text(
            "LTE Manager",
          ),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        routes: const [
          StatusRouter(),
          BandsRouter(),
          SpeedRouter(),
          SettingsRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SalomonBottomBar(
            items: [
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.network_cell,
                  size: 30,
                ),
                title: const Text("Status"),
                selectedColor: Colors.white,
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.settings_input_antenna,
                  size: 30,
                ),
                title: const Text("Bands"),
                selectedColor: Colors.blue,
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.network_check,
                  size: 30,
                ),
                title: const Text("Speed"),
                selectedColor: const Color(0xFFbdecb6),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ),
                title: const Text("Settings"),
                selectedColor: const Color(0xFF114846),
              ),
            ],
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          );
        },
      ),
    );
  }
}
