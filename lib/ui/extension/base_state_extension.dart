import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kur_hesapla/ui/abstract/base_event.dart';
import 'package:kur_hesapla/ui/abstract/base_states.dart';

extension BaseStateExtension on BuildContext {
  Widget buildWithState<B extends BlocBase<S>, S>({
    required Widget Function(BuildContext, S) builderWrapper,
    RefreshEvent? refreshEvent,
    Widget? loadingWidget,
    Widget? errorWidget,
  }) {
    return BlocBuilder<B, S>(
      builder: (context, state) {
        if (state is LoadingState) {
          return loadingWidget ?? _buildBaseLoadingWidget();
        } else if (state is ErrorState) {
          return errorWidget ?? _baseErrorBuild<B, S>(refreshEvent, context);
        }
        return builderWrapper(context, state);
      },
    );
  }

  // TODO(fatiharge): .
  CircularProgressIndicator _buildBaseLoadingWidget() =>
      const CircularProgressIndicator();

  // TODO(fatiharge): .
  Widget _baseErrorBuild<B extends BlocBase<S>, S>(
    Object? refreshEvent,
    BuildContext context,
  ) {
    if (refreshEvent != null) {
      return ElevatedButton(
        onPressed: () {
          final bloc = context.read<B>();
          if (bloc is Bloc<dynamic, S>) {
            bloc.add(refreshEvent);
          }
        },
        child: const Text('data'),
      );
    }

    return const Text('Error');
  }
}
