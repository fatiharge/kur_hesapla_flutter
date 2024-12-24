import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:uikit/utility/extension/context_extension.dart';

class LoadingInkDropIndicator extends StatelessWidget {
  const LoadingInkDropIndicator({
    super.key,
    this.color,
    this.size,
  });

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.inkDrop(
      color: color ?? context.colorScheme.primary,
      size: size ?? context.iconSize.xLarge,
    );
  }
}
