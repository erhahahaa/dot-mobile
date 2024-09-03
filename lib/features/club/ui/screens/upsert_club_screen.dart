import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

@RoutePage()
class UpsertClubScreen extends StatefulWidget implements AutoRouteWrapper {
  const UpsertClubScreen({
    super.key,
  });

  @override
  State<UpsertClubScreen> createState() => _UpsertClubScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: sl<ClubBlocWrite>(),
      child: this,
    );
  }
}

class _UpsertClubScreenState extends BaseState<UpsertClubScreen> {
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late TextEditingController _sportTypeController;

  late FocusNode _nameFocusNode;
  late FocusNode _descriptionFocusNode;
  late FocusNode _sportTypeFocusNode;
  late GlobalKey<FormState> _formKey;

  SportType? selectedSportType;

  File? image;
  String? imageError;

  @override
  void initState() {
    _nameController = TextEditingController(
      text: context.clubRead?.name,
    );
    _descriptionController = TextEditingController(
      text: context.clubRead?.description,
    );
    _sportTypeController = TextEditingController(
      text: context.clubRead?.type.name,
    );

    selectedSportType = context.clubRead?.type;

    _nameFocusNode = FocusNode();
    _descriptionFocusNode = FocusNode();
    _sportTypeFocusNode = FocusNode();

    _formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    image?.delete();
    image = null;
    selectedSportType = null;
    _nameController.dispose();
    _descriptionController.dispose();
    _sportTypeController.dispose();

    _nameFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _sportTypeFocusNode.dispose();

    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: TitleMedium(
          context.clubWatch == null
              ? context.str?.createClub
              : context.str?.updateClub(context.clubWatch?.name),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: _buildForm(context),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ImagePickerWidget(
                firstChild: imageFallback(
                  image,
                  context.clubWatch?.media?.url,
                ),
                onTap: () async {
                  final res =
                      await sl<ImagePickerService>().getImageFromGallery();
                  res.fold(
                    (l) {
                      imageError = l.message;
                    },
                    (r) {
                      setState(() {
                        imageError = null;
                        image = r;
                      });
                    },
                  );
                },
              ),
            ),
            if (imageError != null) ...[
              Gap(8.h),
              Center(
                child: BodyMedium(
                  imageError,
                  color: context.theme.colorScheme.error,
                ),
              ),
            ],
            Gap(16.h),
            FormLabel(context.str?.clubName),
            FormInput(
              controller: _nameController,
              currentFocus: _nameFocusNode,
              nextFocus: _descriptionFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterClubName,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.clubNameIsRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.clubDescription),
            FormInput(
              controller: _descriptionController,
              currentFocus: _descriptionFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterClubDescription,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.clubDescriptionIsRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.sportType),
            FormCombobox<SportType>(
              items: SportType.values
                  .map(
                    (e) => ComboboxItem(value: e, label: e.name),
                  )
                  .toList(),
              controller: _sportTypeController,
              currentFocus: _sportTypeFocusNode,
              hintText: context.str?.selectSportType,
              textInputAction: TextInputAction.done,
              onChanged: (value) {
                setState(() {
                  selectedSportType = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.sportTypeIsRequired;
                }
                final isInList =
                    SportType.values.any((element) => element.name == value);
                if (!isInList) {
                  return context.str?.invalidOption;
                }
                return null;
              },
            ),
            Gap(12.h),
            BlocConsumer<ClubBlocWrite, BlocWriteState<ClubModel>>(
              listener: (context, state) {
                state.mapOrNull(
                  success: (success) {
                    final msg = context.clubRead == null
                        ? context.str?.clubCreatedSuccessfully
                        : context.str?.clubUpdatedSuccessfully;
                    context.successToast(
                      title: context.str?.success,
                      description: msg,
                    );
                    context.read<ClubBlocRead>().add(
                          BlocReadEvent.append(success.item),
                        );
                    context.read<ClubBlocRead>().add(
                          BlocReadEvent.select(success.item),
                        );
                    Future.delayed(Durations.medium2, () {
                      if (context.mounted) {
                        context.router.back();
                      }
                    });
                  },
                  failure: (failure) {
                    context.errorToast(
                      title: context.clubRead == null
                          ? context.str?.createFailed
                          : context.str?.updateFailed,
                      description: failure.message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return FormButton(
                  isLoading: state is BlocWriteStateLoading,
                  text: context.clubRead == null
                      ? context.str?.createClub
                      : context.str?.updateClub(context.clubRead?.name),
                  onTap: () {
                    if (image == null && context.clubRead == null) {
                      setState(() {
                        imageError = context.str?.clubImageIsRequired;
                      });
                      return;
                    } else {
                      setState(() {
                        imageError = null;
                      });
                    }
                    if (selectedSportType == null) {
                      context.showSnackBar(
                        message: context.str?.sportTypeIsRequired ??
                            'Sport type is required',
                      );
                      return;
                    }
                    if (_formKey.currentState?.validate() ?? false) {
                      if (!mounted) {
                        return context.errorToast(
                          title: context.str?.obsecuredState,
                          description: context.str?.pleaseTryAgain,
                        );
                      }

                      if (context.clubRead != null) {
                        context.read<ClubBlocWrite>().add(
                              BlocWriteEvent.update(
                                UpdateClubParams(
                                  id: context.clubRead!.id,
                                  name: _nameController.text,
                                  description: _descriptionController.text,
                                  type: selectedSportType!,
                                  image: image,
                                ),
                              ),
                            );
                      } else {
                        context.read<ClubBlocWrite>().add(
                              BlocWriteEvent.create(
                                CreateClubParams(
                                  name: _nameController.text,
                                  description: _descriptionController.text,
                                  type: selectedSportType!,
                                  image: image!,
                                ),
                              ),
                            );
                      }
                    }
                  },
                );
              },
            ),
            Gap(256.h),
          ],
        ),
      ),
    );
  }
}
