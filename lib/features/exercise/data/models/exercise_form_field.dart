import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';

class ExerciseFormField {
  ExerciseModel? exercise;
  MediaModel? media;

  final FocusNode nameFocus;
  final FocusNode descriptionFocus;

  final FocusNode setsAmountFocus;
  final FocusNode repsAmountFocus;
  final FocusNode restAmountFocus;
  final FocusNode tempoAmountFocus;
  final FocusNode intensityAmountFocus;

  final FocusNode setsTypeFocus;
  final FocusNode repsTypeFocus;
  final FocusNode restTypeFocus;
  final FocusNode tempoTypeFocus;
  final FocusNode intensityTypeFocus;

  final TextEditingController nameController;
  final TextEditingController descriptionController;

  final TextEditingController setsController;
  final TextEditingController repsController;
  final TextEditingController restController;
  final TextEditingController tempoController;
  final TextEditingController intensityController;

  final TextEditingController setsTypeController;
  final TextEditingController repsTypeController;
  final TextEditingController restTypeController;
  final TextEditingController tempoTypeController;
  final TextEditingController intensityTypeController;

  bool isExpanded;
  // int order;
  static ExerciseFormField init(ExerciseModel? exercise) {
    return ExerciseFormField(
      exercise: exercise,
      nameFocus: FocusNode(),
      setsAmountFocus: FocusNode(),
      repsAmountFocus: FocusNode(),
      restAmountFocus: FocusNode(),
      tempoAmountFocus: FocusNode(),
      intensityAmountFocus: FocusNode(),
      descriptionFocus: FocusNode(),
      setsTypeFocus: FocusNode(),
      repsTypeFocus: FocusNode(),
      restTypeFocus: FocusNode(),
      tempoTypeFocus: FocusNode(),
      intensityTypeFocus: FocusNode(),
      nameController: TextEditingController(text: exercise?.name),
      descriptionController: TextEditingController(text: exercise?.description),
      setsController: TextEditingController(
        text: exercise?.sets?.value.toString(),
      ),
      repsController: TextEditingController(
        text: exercise?.repetition?.value.toString(),
      ),
      restController: TextEditingController(
        text: exercise?.rest?.value.toString(),
      ),
      tempoController: TextEditingController(
        text: exercise?.tempo?.value.toString(),
      ),
      intensityController: TextEditingController(
        text: exercise?.intensity?.value.toString(),
      ),
      setsTypeController: TextEditingController(
        text: exercise?.sets?.unit,
      ),
      repsTypeController: TextEditingController(
        text: exercise?.repetition?.unit,
      ),
      restTypeController: TextEditingController(
        text: exercise?.rest?.unit,
      ),
      tempoTypeController: TextEditingController(
        text: exercise?.tempo?.unit,
      ),
      intensityTypeController: TextEditingController(
        text: exercise?.intensity?.unit,
      ),
      media: exercise?.media,
    );
  }

  ExerciseFormField({
    required this.exercise,
    required this.nameFocus,
    required this.setsAmountFocus,
    required this.repsAmountFocus,
    required this.restAmountFocus,
    required this.tempoAmountFocus,
    required this.intensityAmountFocus,
    required this.descriptionFocus,
    required this.nameController,
    required this.setsController,
    required this.repsController,
    required this.restController,
    required this.tempoController,
    required this.intensityController,
    required this.descriptionController,
    required this.setsTypeController,
    required this.repsTypeController,
    required this.restTypeController,
    required this.tempoTypeController,
    required this.intensityTypeController,
    required this.setsTypeFocus,
    required this.repsTypeFocus,
    required this.restTypeFocus,
    required this.tempoTypeFocus,
    required this.intensityTypeFocus,
    this.isExpanded = true,
    this.media,
  });

  void dispose() {
    nameFocus.dispose();
    setsAmountFocus.dispose();
    repsAmountFocus.dispose();
    restAmountFocus.dispose();
    tempoAmountFocus.dispose();
    intensityAmountFocus.dispose();
    descriptionFocus.dispose();

    nameController.dispose();
    setsController.dispose();
    repsController.dispose();
    restController.dispose();
    tempoController.dispose();
    intensityController.dispose();
    descriptionController.dispose();

    media = null;
  }
}
