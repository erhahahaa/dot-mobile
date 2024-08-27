import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

extension GlobalKeyX on GlobalKey<FormState> {
  void gotoError(ScrollController scrollController) {
    final Set<FormFieldState<Object?>>? err =
        currentState?.validateGranularly();
    if (err != null && err.isNotEmpty) {
      final FormFieldState<Object?> firstError = err.first;
      final RenderObject renderObject =
          firstError.context.findRenderObject() as RenderObject;
      final RenderAbstractViewport viewport =
          RenderAbstractViewport.of(renderObject);
      final RevealedOffset revealedOffset =
          viewport.getOffsetToReveal(renderObject, 0.0);
      scrollController.animateTo(
        revealedOffset.offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
