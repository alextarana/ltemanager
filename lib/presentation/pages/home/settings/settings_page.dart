import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ltemanager2/application/auth/auth_bloc.dart';
import 'package:ltemanager2/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ltemanager2/injection.dart';
import 'package:ltemanager2/presentation/pages/home/settings/widgets/settings_listview.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Container(),
    );
  }
}
