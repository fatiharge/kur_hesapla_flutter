import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/state/global/bloc/global_bloc.dart';

class GlobalStateWrapper extends StatefulWidget {
  const GlobalStateWrapper({
    required this.child,
    super.key,
  });

  static TransitionBuilder init({
    TransitionBuilder? builder,
  }) {
    return (BuildContext context, Widget? child) {
      if (builder != null) {
        return builder(context, GlobalStateWrapper(child: child));
      } else {
        return GlobalStateWrapper(child: child);
      }
    };
  }

  final Widget? child;

  @override
  _GlobalStateWrapperState createState() => _GlobalStateWrapperState();
}

class _GlobalStateWrapperState extends State<GlobalStateWrapper> {
  late OverlayEntry _overlayEntry;

  @override
  void initState() {
    super.initState();
    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) => BlocProvider(
        create: (context) => GetIt.instance<GlobalBloc>(),
        child: buildWithState(),
      ),
    );
  }

  Widget buildWithState() {
    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) {
        if (state is GlobalLoading) {
          return state.widget ?? const CircularProgressIndicator();
        } else if (state is GlobalError) {
          return state.widget ?? const Placeholder();
        }
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Overlay(
        initialEntries: [
          OverlayEntry(
            builder: (BuildContext context) {
              if (widget.child != null) {
                return widget.child!;
              } else {
                return Container();
              }
            },
          ),
          _overlayEntry,
        ],
      ),
    );
  }
}
