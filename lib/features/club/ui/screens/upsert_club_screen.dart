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
  final void Function(ClubModel club) onUpserted;
  const UpsertClubScreen({
    super.key,
    required this.onUpserted,
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

class _UpsertClubScreenState extends State<UpsertClubScreen> {
  ClubModel? _club;
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
    final clubBloc = context.read<ClubBlocRead>();
    _club = clubBloc.state.whenOrNull(
      success: (_, __, selectedClub) => selectedClub,
    );

    _nameController = TextEditingController(
      text: _club?.name,
    );
    _descriptionController = TextEditingController(
      text: _club?.description,
    );
    _sportTypeController = TextEditingController(
      text: _club?.type.name,
    );

    selectedSportType = _club?.type;

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
          _club == null ? 'Create Club' : 'Update ${_club?.name}',
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
                  _club?.media?.url,
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
                  return context.str?.clubNameRequired;
                }
                return null;
              },
            ),
            Gap(12.h),
            FormLabel(context.str?.description),
            FormInput(
              controller: _descriptionController,
              currentFocus: _descriptionFocusNode,
              textInputAction: TextInputAction.next,
              hintText: context.str?.enterDescription,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return context.str?.clubDescriptionRequired;
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
              textInputAction: TextInputAction.done,
              onChanged: (value) {
                setState(() {
                  selectedSportType = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Sport type is required';
                }
                final isInList =
                    SportType.values.any((element) => element.name == value);
                if (!isInList) {
                  return 'Invalid sport type';
                }
                return null;
              },
            ),
            Gap(12.h),
            BlocConsumer<ClubBlocWrite, BlocStateWrite<ClubModel>>(
              listener: (context, state) {
                state.mapOrNull(
                  success: (success) {
                    final msg = _club == null
                        ? 'Club created successfully'
                        : 'Club updated successfully';
                    context.successToast(
                      title: 'Success',
                      description: msg,
                    );
                    widget.onUpserted.call(success.item);
                    context.router.maybePop();
                  },
                  failure: (failure) {
                    context.errorToast(
                      title: 'Error',
                      description: failure.message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return FormButton(
                  isLoading: state is BlocStateWriteLoading,
                  text: 'Create club',
                  onTap: () {
                    if (image == null && _club == null) {
                      setState(() {
                        imageError = context.str?.clubImageRequired;
                      });
                      return;
                    } else {
                      setState(() {
                        imageError = null;
                      });
                    }
                    if (selectedSportType == null) {
                      context.showSnackBar(message: 'Sport type is required');
                      return;
                    }
                    if (_formKey.currentState?.validate() ?? false) {
                      if (!mounted) {
                        return context.showSnackBar(message: 'Un mounter');
                      }

                      if (_club != null) {
                        context.read<ClubBlocWrite>().add(
                              BlocEventWrite.update(
                                UpdateClubParams(
                                  id: _club!.id,
                                  name: _nameController.text,
                                  description: _descriptionController.text,
                                  type: selectedSportType!,
                                  image: image,
                                ),
                              ),
                            );
                      } else {
                        context.read<ClubBlocWrite>().add(
                              BlocEventWrite.create(
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
