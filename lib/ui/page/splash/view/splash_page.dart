import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/ui/page/splash/bloc/splash_cubit.dart';
import 'package:kur_hesapla/ui/page/splash/view/splash_view.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..start(),
      child: SplashView(),
    );
  }
}
