import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/page/home/marked/marked_bloc.dart';
import 'package:kur_hesapla/page/home/marked/view/marked_view.dart';

@RoutePage()
class MarkedPage extends StatelessWidget {
  const MarkedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MarkedBloc(),
      child: const MarkedView(),
    );
  }
}