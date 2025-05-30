import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class UpsertExerciseScreen extends StatefulWidget {
  const UpsertExerciseScreen({super.key});

  @override
  State<UpsertExerciseScreen> createState() => _UpsertExerciseScreenState();
}

class _UpsertExerciseScreenState extends BaseState<UpsertExerciseScreen> {
  ProgramModel? _program;
  final List<ExerciseModel> _exercises = [];

  final List<ExerciseFormField> _fields = [];
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    final program = context.read<ProgramBlocRead>().state.whenOrNull(
          success: (_, __, selected) => selected,
        );

    safeSetState(() {
      _program = program;
    });

    final exercises = context.read<ExerciseBlocRead>().state.whenOrNull(
          success: (items, _, __) => items,
        );

    if (exercises != null) {
      _exercises.clear();
      _exercises.addAll(exercises);
      _fields.clear();
      for (final item in _exercises) {
        _fields.add(ExerciseFormField.init(item));
      }
    }

    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();

    for (final field in _fields) {
      field.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: Text('${_program?.name} Exercises'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.back();
          },
        ),
      ),
      floatingActionButton:
          BlocConsumer<ExerciseBlocWrite, BlocWriteState<List<ExerciseModel>>>(
        listener: (context, state) {
          state.whenOrNull(
            success: (item) {
              context.successToast(
                title: context.str?.success,
                description: context.str?.exerciseSavedSuccessfully,
              );
              context.read<ExerciseBlocRead>().add(
                    BlocReadEvent.get(id: _program?.id),
                  );
              final programs = context.read<ProgramBlocRead>().state.whenOrNull(
                    success: (items, _, __) => items,
                  );
              final updClub = context.clubRead?.copyWith(
                programCount: programs?.length ?? 0,
              );
              if (updClub != null) {
                context.read<ClubBlocRead>().add(
                      BlocReadEvent.append(updClub),
                    );
              }

              context.read<ProgramBlocRead>().add(
                    const BlocReadEvent.select(null),
                  );
              Future.delayed(Durations.short2, () {
                if (context.mounted) {
                  context.router.back();
                }
              });
            },
            failure: (message) {
              context.errorToast(
                title: context.str?.error,
                description: message,
              );
            },
          );
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              BackTopButton(
                show: showScrollToTopButton,
                onPressed: scrollToTop,
              ),
              Gap(8.h),
              FloatingActionButtonExtended(
                heroTag: 'save_exercise_button_$hashCode',
                isLoading: state is BlocWriteStateLoading,
                onPressed: () {
                  _formKey.gotoError(scrollController);
                  for (final field in _fields) {
                    if (!field.isExpanded) {
                      setState(() {
                        field.isExpanded = true;
                      });
                    }
                    if (field.media == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              context.str?.pleaseSelectAnImageForEachExercise ??
                                  'Please select an image for each exercise'),
                        ),
                      );
                      return;
                    }
                  }
                  if (_formKey.currentState?.validate() ?? false) {
                    final updates = <UpdateExerciseParams>[];
                    for (int i = 0; i < _fields.length; i++) {
                      final field = _fields[i];
                      updates.add(UpdateExerciseParams(
                        id: field.exercise?.id ?? 0,
                        name: field.nameController.text,
                        description: field.descriptionController.text,
                        programId: _program?.id ?? 0,
                        mediaId: field.media?.id,
                        sets: ExerciseUnitValueModel(
                          value: int.parse(field.setsController.text),
                          unit: field.setsTypeController.text,
                        ),
                        repetition: ExerciseUnitValueModel(
                          value: int.parse(field.repsController.text),
                          unit: field.repsTypeController.text,
                        ),
                        rest: ExerciseUnitValueModel(
                          value: int.parse(field.restController.text),
                          unit: field.restTypeController.text,
                        ),
                        tempo: ExerciseUnitValueModel(
                          value: int.parse(field.tempoController.text),
                          unit: field.tempoTypeController.text,
                        ),
                        intensity: ExerciseUnitValueModel(
                          value: int.parse(field.intensityController.text),
                          unit: field.intensityTypeController.text,
                        ),
                        order: i,
                      ));
                    }
                    context.read<ExerciseBlocWrite>().add(
                          BlocWriteEvent.update(updates),
                        );
                  }
                },
                icon: const Icon(Icons.save),
                label: Text(context.str?.save ?? 'Save'),
              ),
            ],
          );
        },
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: _buildForm(context),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return BlocConsumer<ExerciseBlocRead, BlocReadState<ExerciseModel>>(
      listener: (context, state) {
        state.whenOrNull(
          success: (items, _, __) {
            _exercises.clear();
            _exercises.addAll(items);
            _fields.clear();
            for (final item in _exercises) {
              _fields.add(ExerciseFormField.init(item));
            }
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          success: (_, __, ___) {
            return Form(
              key: _formKey,
              child: ReorderableListView.builder(
                scrollController: scrollController,
                itemCount: _fields.length,
                proxyDecorator: (child, index, animation) => ProxyDecorator(
                  index: index,
                  animation: animation,
                  child: child,
                ),
                itemBuilder: (context, index) {
                  return ContainerWrapper(
                    key: Key('exerciseItem_$index'),
                    padding: EdgeInsets.all(8.w),
                    margin: EdgeInsets.only(bottom: 16.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(
                                _fields[index].isExpanded
                                    ? Icons.arrow_drop_up
                                    : Icons.arrow_drop_down,
                                color: context.theme.colorScheme.onSurface,
                                size: 24.sp,
                              ),
                              onPressed: () {
                                setState(() {
                                  _fields[index].isExpanded =
                                      !_fields[index].isExpanded;
                                });
                              },
                            ),
                            Expanded(
                              child: FormInput(
                                currentFocus: _fields[index].nameFocus,
                                nextFocus: _fields[index].setsAmountFocus,
                                controller: _fields[index].nameController,
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return context.str?.exerciseNameIsRequired;
                                  }
                                  return null;
                                },
                                hintText: context.str?.exerciseName,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.w,
                                  vertical: 8.h,
                                ),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: context.theme.colorScheme.error,
                                size: 24.sp,
                              ),
                              onPressed: () {
                                if (_fields[index].exercise?.id != 0) {
                                  context.read<ExerciseBlocWrite>().add(
                                        BlocWriteEvent.delete(
                                          DeleteExerciseParams(
                                            id: _fields[index].exercise?.id ??
                                                0,
                                          ),
                                        ),
                                      );
                                }
                                setState(() {
                                  _fields.removeAt(index);
                                });
                              },
                            ),
                            ReorderableDragStartListener(
                              index: index,
                              child: Container(
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: context.theme.colorScheme.surface,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Icon(
                                  Icons.drag_handle,
                                  color: context.theme.colorScheme.onSurface,
                                  size: 24.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (_fields[index].isExpanded) ...[
                          SizedBox(height: 16.h),
                          Stack(
                            children: [
                              Container(
                                width: 310.w,
                                height: 210.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: context.theme.colorScheme.onSurface,
                                    width: 1.w,
                                  ),
                                  color: context.theme.colorScheme.surface,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: _fields[index].media != null
                                    ? _fields[index].media!.determineLoader(
                                          context,
                                          width: 310.w,
                                          height: 210.h,
                                        )
                                    : Assets.images.placeholder.placeholder
                                        .image(
                                        width: 310.w,
                                        height: 210.h,
                                      ),
                              ),
                              Positioned(
                                bottom: 8,
                                right: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: context.theme.colorScheme.surface,
                                    borderRadius: BorderRadius.circular(666.r),
                                    border: Border.all(
                                      color:
                                          context.theme.colorScheme.onSurface,
                                      width: 1.w,
                                    ),
                                  ),
                                  child: _buildMediaButton(context, index),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          FormLabel(context.str?.sets),
                          Row(
                            children: [
                              Expanded(
                                child: FormInput(
                                  currentFocus: _fields[index].setsAmountFocus,
                                  nextFocus: _fields[index].setsTypeFocus,
                                  controller: _fields[index].setsController,
                                  keyboardType: TextInputType.number,
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return context.str?.setsIsRequired;
                                    }
                                    if (int.tryParse(value) == null) {
                                      return context.str?.invalidNumber;
                                    }
                                    return null;
                                  },
                                  hintText: context.str?.enterTotalSets,
                                  backgroundColor:
                                      Colors.redAccent.withOpacity(0.1),
                                  activeBorderColor: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 8.h,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                child: FormCombobox<ExerciseSetsUnit>(
                                  controller: _fields[index].setsTypeController,
                                  currentFocus: _fields[index].setsTypeFocus,
                                  nextFocus: _fields[index].repsAmountFocus,
                                  activeBorderColor: Colors.redAccent,
                                  backgroundColor:
                                      Colors.redAccent.withOpacity(0.1),
                                  defaultOption: ComboboxItem(
                                    value: ExerciseSetsUnit.set,
                                    label: ExerciseSetsUnit.set.name,
                                  ),
                                  items: ExerciseSetsUnit.values.map((unit) {
                                    return ComboboxItem(
                                      value: unit,
                                      label: unit.name,
                                    );
                                  }).toList(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return context.str?.pleaseSelectUnit;
                                    }
                                    final inList = ExerciseSetsUnit.values
                                        .any((unit) => unit.name == value);
                                    if (!inList) {
                                      return context.str?.invalidUnit;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          FormLabel(context.str?.reps),
                          Row(
                            children: [
                              Expanded(
                                child: FormInput(
                                  controller: _fields[index].repsController,
                                  currentFocus: _fields[index].repsAmountFocus,
                                  nextFocus: _fields[index].repsTypeFocus,
                                  keyboardType: TextInputType.number,
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return context.str?.repsIsRequired;
                                    }
                                    if (int.tryParse(value) == null) {
                                      return context.str?.invalidNumber;
                                    }
                                    return null;
                                  },
                                  hintText: context.str?.enterTotalReps,
                                  backgroundColor:
                                      Colors.blueAccent.withOpacity(0.1),
                                  activeBorderColor: Colors.blueAccent,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 8.h,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                child: FormCombobox<ExerciseRepetitionUnit>(
                                  controller: _fields[index].repsTypeController,
                                  currentFocus: _fields[index].repsTypeFocus,
                                  nextFocus: _fields[index].restAmountFocus,
                                  activeBorderColor: Colors.blueAccent,
                                  backgroundColor:
                                      Colors.blueAccent.withOpacity(0.1),
                                  defaultOption: ComboboxItem(
                                    value: ExerciseRepetitionUnit.rep,
                                    label: ExerciseRepetitionUnit.rep.name,
                                  ),
                                  items:
                                      ExerciseRepetitionUnit.values.map((unit) {
                                    return ComboboxItem(
                                      value: unit,
                                      label: unit.name,
                                    );
                                  }).toList(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return context.str?.pleaseSelectUnit;
                                    }
                                    final inList = ExerciseRepetitionUnit.values
                                        .any((unit) => unit.name == value);
                                    if (!inList) {
                                      return context.str?.invalidUnit;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          FormLabel(context.str?.rest),
                          Row(
                            children: [
                              Expanded(
                                child: FormInput(
                                  controller: _fields[index].restController,
                                  currentFocus: _fields[index].restAmountFocus,
                                  nextFocus: _fields[index].restTypeFocus,
                                  keyboardType: TextInputType.number,
                                  hintText: context.str?.enterTotalRest,
                                  backgroundColor:
                                      Colors.greenAccent.withOpacity(0.1),
                                  activeBorderColor: Colors.greenAccent,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 8.h,
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return context.str?.restIsRequired;
                                    }
                                    if (int.tryParse(value) == null) {
                                      return context.str?.invalidNumber;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                child: FormCombobox<ExerciseRestUnit>(
                                  controller: _fields[index].restTypeController,
                                  currentFocus: _fields[index].restTypeFocus,
                                  nextFocus: _fields[index].tempoAmountFocus,
                                  activeBorderColor: Colors.greenAccent,
                                  backgroundColor:
                                      Colors.greenAccent.withOpacity(0.1),
                                  defaultOption: ComboboxItem(
                                    value: ExerciseRestUnit.sec,
                                    label: ExerciseRestUnit.sec.name,
                                  ),
                                  items: ExerciseRestUnit.values.map((unit) {
                                    return ComboboxItem(
                                      value: unit,
                                      label: unit.name,
                                    );
                                  }).toList(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return context.str?.pleaseSelectUnit;
                                    }
                                    final inList = ExerciseRestUnit.values
                                        .any((unit) => unit.name == value);
                                    if (!inList) {
                                      return context.str?.invalidUnit;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          FormLabel(context.str?.tempo),
                          Row(
                            children: [
                              Expanded(
                                child: FormInput(
                                  controller: _fields[index].tempoController,
                                  currentFocus: _fields[index].tempoAmountFocus,
                                  nextFocus: _fields[index].tempoTypeFocus,
                                  keyboardType: TextInputType.number,
                                  hintText: context.str?.enterTotalTempo,
                                  backgroundColor:
                                      Colors.purpleAccent.withOpacity(0.1),
                                  activeBorderColor: Colors.purpleAccent,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 8.h,
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return context.str?.tempoIsRequired;
                                    }
                                    if (int.tryParse(value) == null) {
                                      return context.str?.invalidNumber;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                child: FormCombobox<ExerciseTempoUnit>(
                                  controller:
                                      _fields[index].tempoTypeController,
                                  currentFocus: _fields[index].tempoTypeFocus,
                                  nextFocus:
                                      _fields[index].intensityAmountFocus,
                                  activeBorderColor: Colors.purpleAccent,
                                  backgroundColor:
                                      Colors.purpleAccent.withOpacity(0.1),
                                  defaultOption: ComboboxItem(
                                    value: ExerciseTempoUnit.sec,
                                    label: ExerciseTempoUnit.sec.name,
                                  ),
                                  items: ExerciseTempoUnit.values.map((unit) {
                                    return ComboboxItem(
                                      value: unit,
                                      label: unit.name,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          FormLabel(context.str?.intensity),
                          Row(
                            children: [
                              Expanded(
                                child: FormInput(
                                  controller:
                                      _fields[index].intensityController,
                                  currentFocus:
                                      _fields[index].intensityAmountFocus,
                                  nextFocus: _fields[index].intensityTypeFocus,
                                  keyboardType: TextInputType.number,
                                  hintText: context.str?.enterTotalIntensity,
                                  backgroundColor:
                                      Colors.orangeAccent.withOpacity(0.1),
                                  activeBorderColor: Colors.orangeAccent,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 8.h,
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return context.str?.intensityIsRequired;
                                    }
                                    if (int.tryParse(value) == null) {
                                      return context.str?.invalidNumber;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                child: FormCombobox<ExerciseIntensityUnit>(
                                  controller:
                                      _fields[index].intensityTypeController,
                                  currentFocus:
                                      _fields[index].intensityTypeFocus,
                                  activeBorderColor: Colors.orangeAccent,
                                  backgroundColor:
                                      Colors.orangeAccent.withOpacity(0.1),
                                  defaultOption: ComboboxItem(
                                    value: ExerciseIntensityUnit.kg,
                                    label: ExerciseIntensityUnit.kg.name,
                                  ),
                                  items:
                                      ExerciseIntensityUnit.values.map((unit) {
                                    return ComboboxItem(
                                      value: unit,
                                      label: unit.name,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          FormLabel(context.str?.exerciseDescription),
                          FormTextArea(
                            currentFocus: _fields[index].descriptionFocus,
                            controller: _fields[index].descriptionController,
                            hintText: context.str?.enterExerciseDescription,
                            height: 0.11.sh,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ]
                      ],
                    ),
                  );
                },
                footer: AddItemButton(
                  text: context.str?.addExercise ?? 'Add Exercise',
                  onTap: () {
                    setState(() {
                      _fields
                          .add(ExerciseFormField.init(const ExerciseModel()));
                    });
                  },
                ),
                onReorder: (int oldIndex, int newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }

                    final ExerciseFormField item = _fields.removeAt(oldIndex);
                    _fields.insert(newIndex, item);
                  });
                },
              ),
            );
          },
          failure: (message) {
            return ErrorAlert(message);
          },
          orElse: () {
            return Center(
              child: Column(
                children: [
                  const MoonLinearLoader(),
                  Gap(16.h),
                  TitleSmall(context.str?.loadingExercises),
                ],
              ),
            );
          },
        );
      },
    );
  }

  IconButton _buildMediaButton(BuildContext context, int index) {
    return IconButton(
      onPressed: () async {
        final media = await showAdaptiveDialog(
          context: context,
          builder: (ctx) {
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: context.read<ExerciseMediaBlocRead>()
                    ..add(
                      BlocReadEvent.get(id: context.clubRead?.id),
                    ),
                ),
                BlocProvider.value(
                  value: context.read<ExerciseMediaBlocWrite>(),
                ),
              ],
              child: Dialog(
                insetPadding: EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Gap(16.h),
                    Row(
                      children: [
                        Gap(16.w),
                        BodyLarge(context.str?.selectExerciseAsset),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                        ),
                        Gap(8.w),
                      ],
                    ),
                    Gap(8.h),
                    Expanded(
                      child: MediaView<
                          ExerciseMediaBlocRead,
                          BlocReadState<MediaModel>,
                          ExerciseMediaBlocWrite,
                          BlocWriteState<MediaModel>>(
                        onUpload: (file) {
                          context.read<ExerciseMediaBlocWrite>().add(
                                BlocWriteEvent.create({
                                  'clubId': context.clubRead?.id,
                                  'file': file,
                                }),
                              );
                        },
                        onSuccess: (item) {
                          context.read<ExerciseMediaBlocRead>().add(
                                BlocReadEvent.append(item),
                              );
                        },
                        onDownload: (item) {
                          context
                              .read<ExerciseMediaBlocRead>()
                              .add(BlocReadEvent.getOne(item));
                        },
                        onTap: (item) {
                          Navigator.of(ctx).pop(item);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
        if (media != null) {
          setState(() {
            _fields[index].media = media;
          });
        }
      },
      icon: const Icon(Icons.edit),
    );
  }
}
