// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:kur_hesapla/app/state/bloc/global_bloc.dart';
//
// extension BaseStateExtension on BuildContext {
//   Widget buildWithState({
//     required Widget successWidget,
//   }) {
//     return BlocBuilder<GlobalBloc, GlobalState>(
//       builder: (context, state) {
//         if (state is GlobalLoading) {
//           return state.widget ?? _buildBaseLoadingWidget();
//         } else if (state is GlobalError) {
//           return state.widget ?? const Placeholder();
//         } else {
//           return successWidget;
//         }
//       },
//     );
//   }
//
//   Widget _buildBaseLoadingWidget() =>
//       const Center(child: CircularProgressIndicator());
//
// // TODO(fatiharge): .
// // Widget _baseErrorBuild(
// //   Object? refreshEvent,
// //   BuildContext context,
// // ) {
// //   if (refreshEvent != null) {
// //     return ElevatedButton(
// //       onPressed: () {
// //         final bloc = context.read<GlobalBloc>();
// //         bloc.add(refreshEvent);
// //       },
// //       child: const Text('data'),
// //     );
// //   }
// //
// //   return const Text('Error');
// // }
// }
