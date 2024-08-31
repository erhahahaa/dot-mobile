import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/extensions/datetime.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class UpdateProfileScreen extends StatefulWidget implements AutoRouteWrapper {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    context.read<UserBloc>().add(const UserEvent.clear());
    return this;
  }
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  UserModel? _user;
  late UserBloc _userBloc;

  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _usernameController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  late TextEditingController _genderController;
  late TextEditingController _bornPlaceController;
  late TextEditingController _bornDateController;
  late TextEditingController _addressController;
  late TextEditingController _religionController;
  late TextEditingController _expertiseController;

  late FocusNode _nameFocusNode;
  late FocusNode _emailFocusNode;
  late FocusNode _usernameFocusNode;
  late FocusNode _phoneFocusNode;
  late FocusNode _passwordFocusNode;
  late FocusNode _genderFocusNode;
  late FocusNode _bornPlaceFocusNode;
  late FocusNode _bornDateFocusNode;
  late FocusNode _addressFocusNode;
  late FocusNode _religionFocusNode;
  late FocusNode _expertiseFocusNode;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DateTime? _bornDate;
  File? _image;

  @override
  void initState() {
    final userCubit = context.read<UserBloc>();
    final user = userCubit.state.maybeWhen(
      success: (user, _) => user,
      orElse: () => const UserModel(),
    );
    _user = user;

    final phoneStr = user.phone.toString();
    _nameController = TextEditingController(text: user.name);
    _emailController = TextEditingController(text: user.email);
    _usernameController = TextEditingController(text: user.username);
    _phoneController = TextEditingController(
        text: phoneStr.startsWith('62') ? phoneStr.substring(2) : phoneStr);
    _passwordController = TextEditingController();
    _genderController = TextEditingController(text: user.gender.name);
    _bornPlaceController = TextEditingController(text: user.bornPlace);
    _bornDateController =
        TextEditingController(text: user.bornDate?.toDayMonthYear());
    _addressController = TextEditingController(text: user.address);
    _religionController = TextEditingController(text: user.religion);
    _expertiseController = TextEditingController(text: user.expertise);

    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _usernameFocusNode = FocusNode();
    _phoneFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _bornPlaceFocusNode = FocusNode();
    _bornDateFocusNode = FocusNode();
    _addressFocusNode = FocusNode();
    _religionFocusNode = FocusNode();
    _genderFocusNode = FocusNode();
    _expertiseFocusNode = FocusNode();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userBloc = context.read<UserBloc>();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _genderController.dispose();
    _bornPlaceController.dispose();
    _bornDateController.dispose();
    _addressController.dispose();
    _religionController.dispose();
    _expertiseController.dispose();

    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _usernameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _passwordFocusNode.dispose();
    _bornPlaceFocusNode.dispose();
    _bornDateFocusNode.dispose();
    _genderFocusNode.dispose();
    _addressFocusNode.dispose();
    _religionFocusNode.dispose();
    _expertiseFocusNode.dispose();

    _formKey.currentState?.dispose();
    _bornDate = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: AppBar(
        title: Text(context.str?.updateProfile ?? 'Edit Profile'),
      ),
      body: AutofillGroup(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImagePickerWidget(
                  firstChild: imageFallback(
                    _image,
                    _user?.image,
                  ),
                  onTap: () async {
                    final res =
                        await sl<ImagePickerService>().getImageFromGallery();
                    res.fold(
                      (l) {
                        context.showSnackBar(
                          message: context.str?.noImageSelected ??
                              'No image selected',
                        );
                      },
                      (r) {
                        setState(() {
                          _image = r;
                        });
                      },
                    );
                  },
                ),
                ContainerWrapper(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FormLabel(context.str?.fullName),
                      FormInput(
                        key: const Key('editProfileForm_name'),
                        autoFillHints: const [AutofillHints.name],
                        currentFocus: _nameFocusNode,
                        nextFocus: _emailFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        hintText:
                            context.str?.enterYourFullName ?? 'Enter your name',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.fullNameIsRequired ??
                                'Name is required';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.email),
                      FormInput(
                        key: const Key('editProfileForm_email'),
                        autoFillHints: const [AutofillHints.email],
                        currentFocus: _emailFocusNode,
                        nextFocus: _usernameFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        hintText:
                            context.str?.enterYourEmail ?? 'Enter your email',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.emailIsRequired ??
                                'Email is required';
                          }
                          if (!value.isEmail) {
                            return context.str?.invalidEmail ??
                                'Email is invalid';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.username),
                      BlocConsumer<UserBloc, UserState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            failure: (message) {
                              if (message.startsWith(
                                  'Email, username, or phone already exists')) {
                                context.read<UserBloc>().add(
                                      UserEvent.checkUsername(
                                        FindUsernamesParams(
                                          username: _usernameController.text,
                                          email: _emailController.text,
                                        ),
                                      ),
                                    );
                              }
                            },
                          );
                        },
                        builder: (context, state) {
                          return FormInput(
                            controller: _usernameController,
                            currentFocus: _usernameFocusNode,
                            nextFocus: _phoneFocusNode,
                            hintText: context.str?.enterYourUsername,
                            leading:
                                const Icon(MoonIcons.text_hashtag_24_light),
                            autoFillHints: const [AutofillHints.username],
                            textInputAction: TextInputAction.next,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.usernameIsRequired ??
                                    'Username is required';
                              }
                              if (value.isContainSpace) {
                                return context
                                        .str?.usernameCannotContainSpace ??
                                    'Username must not contain uppercase';
                              }
                              state.maybeWhen(
                                foundUsernames: (usernames) {
                                  if (usernames.isNotEmpty) {
                                    return context
                                            .str?.usernameIsAlreadyTaken ??
                                        'Username already exists';
                                  }
                                },
                                orElse: () {},
                              );
                              return null;
                            },
                            onChanged: (value) {
                              _userBloc.add(const UserEvent.clear());
                              EasyDebounce.debounce(
                                'find-username',
                                const Duration(milliseconds: 500),
                                () => _userBloc.add(
                                  UserEvent.checkUsername(
                                    FindUsernamesParams(
                                      username: value,
                                      email: _emailController.text,
                                    ),
                                  ),
                                ),
                              );
                            },
                            trailing: state.whenOrNull(
                              loading: () => Transform.scale(
                                scale: 0.3,
                                child: const MoonCircularLoader(),
                              ),
                              foundUsernames: (usernames) {
                                if (usernames.isNotEmpty) {
                                  return IconButton(
                                    onPressed: () {
                                      _usernameController.clear();
                                      _userBloc.add(const UserEvent.clear());
                                    },
                                    icon: const Icon(MoonIcons
                                        .text_clear_formatting_16_regular),
                                  );
                                } else {
                                  return const Icon(
                                    MoonIcons
                                        .generic_check_alternative_16_light,
                                    color: Colors.green,
                                  );
                                }
                              },
                            ),
                          );
                        },
                      ),
                      Gap(12.h),
                      BlocBuilder<UserBloc, UserState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            foundUsernames: (usernames) {
                              if (usernames.isNotEmpty) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Text(
                                        context.str?.usernameSuggestions ??
                                            'Username suggestions',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.w),
                                      child: Wrap(
                                        spacing: 12.w,
                                        runSpacing: 12.h,
                                        children: usernames
                                            .map(
                                              (suggestion) => InkWell(
                                                onTap: () {
                                                  _usernameController.text =
                                                      suggestion;
                                                  context.read<UserBloc>().add(
                                                      const UserEvent.clear());
                                                },
                                                child: Chip(
                                                  label: Text(suggestion),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                  ],
                                );
                              }
                              return const SizedBox();
                            },
                            orElse: () {
                              return const SizedBox();
                            },
                          );
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.phone),
                      FormInput(
                        key: const Key('editProfileForm_phone'),
                        autoFillHints: const [AutofillHints.telephoneNumber],
                        currentFocus: _phoneFocusNode,
                        nextFocus: _passwordFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        hintText:
                            context.str?.enterYourPhone ?? 'Enter your phone',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.phoneIsRequired ??
                                'Phone is required';
                          }
                          if (!value.isPhoneNumber) {
                            return context.str?.invalidPhoneNumber ??
                                'Phone is invalid';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.password),
                      FormInput(
                        key: const Key('editProfileForm_password'),
                        autoFillHints: const [AutofillHints.newPassword],
                        currentFocus: _passwordFocusNode,
                        obsecureText: true,
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        hintText: context.str?.enterYourPassword ??
                            'Enter your password',
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.passwordIsRequired ??
                                'Password is required';
                          }
                          if (value.length < 8) {
                            return context
                                    .str?.passwordMustBeAtLeast8Characters ??
                                'Password must be at least 8 characters';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.gender),
                      FormCombobox<UserGender>(
                        controller: _genderController,
                        currentFocus: _genderFocusNode,
                        nextFocus: _passwordFocusNode,
                        hintText: context.str?.enterYourGender,
                        leading: const Icon(Icons.male_rounded),
                        readOnly: true,
                        items: UserGender.values.map((e) {
                          return ComboboxItem(
                            value: e,
                            label: e.name,
                          );
                        }).toList(),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.genderIsRequired;
                          }
                          final isInList = UserGender.values
                              .any((element) => element.name == value);
                          if (!isInList) {
                            return context.str?.invalidOption;
                          } else {
                            return null;
                          }
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.bornPlace),
                      FormInput(
                        key: const Key('editProfileForm_bornPlace'),
                        autoFillHints: const [AutofillHints.addressCity],
                        currentFocus: _bornPlaceFocusNode,
                        nextFocus: _bornDateFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _bornPlaceController,
                        keyboardType: TextInputType.text,
                        hintText: context.str?.enterYourBornPlace,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.bornPlaceIsRequired ??
                                'Born place is required';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.bornDate),
                      FormInput(
                        key: const Key('editProfileForm_bornDate'),
                        autoFillHints: const [AutofillHints.birthday],
                        currentFocus: _bornDateFocusNode,
                        nextFocus: _addressFocusNode,
                        textInputAction: TextInputAction.next,
                        readOnly: true,
                        controller: _bornDateController,
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                          if (date != null) {
                            setState(() {
                              _bornDate = date;
                              _bornDateController.text = date.toDayMonthYear();
                            });
                          }
                        },
                        hintText: context.str?.enterYourBornDate,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.bornDateIsRequired ??
                                'Born date is required';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.address),
                      FormInput(
                        key: const Key('editProfileForm_address'),
                        autoFillHints: const [AutofillHints.fullStreetAddress],
                        currentFocus: _addressFocusNode,
                        nextFocus: _religionFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _addressController,
                        keyboardType: TextInputType.streetAddress,
                        hintText: context.str?.enterYourAddress,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.addressIsRequired ??
                                'Address is required';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.religion),
                      FormInput(
                        key: const Key('editProfileForm_religion'),
                        currentFocus: _religionFocusNode,
                        nextFocus: _expertiseFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _religionController,
                        keyboardType: TextInputType.text,
                        hintText: context.str?.enterYourReligion,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.religionIsRequired ??
                                'Religion is required';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      FormLabel(context.str?.expertise),
                      FormInput(
                        key: const Key('editProfileForm_expertise'),
                        currentFocus: _expertiseFocusNode,
                        textInputAction: TextInputAction.done,
                        controller: _expertiseController,
                        keyboardType: TextInputType.text,
                        hintText: context.str?.enterYourExpertise,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return context.str?.expertiseIsRequired ??
                                'Expertise is required';
                          }
                          return null;
                        },
                      ),
                      Gap(12.h),
                      BlocConsumer<UserBloc, UserState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            failure: (message) {
                              context.errorToast(
                                title: context.str?.updateProfileFailed,
                                description: message,
                              );
                            },
                            success: (user, _) {
                              context.successToast(
                                title: context.str?.updateSuccess,
                                description: context.str?.profileUpdatedSuccessfully,
                              );
                              context.router.back();
                            },
                          );
                        },
                        builder: (context, state) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: FormButton(
                              text: context.str?.updateProfile,
                              isLoading: state is UserStateLoading,
                              onTap: () {
                                final params = UpdateProfileParams(
                                  id: _user!.id,
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                  name: _nameController.text,
                                  username: _usernameController.text,
                                  phone: int.parse(_phoneController.text),
                                  gender: UserGender.fromString(
                                    _genderController.text,
                                  ),
                                  role: _user!.role,
                                  bornPlace: _bornPlaceController.text,
                                  bornDate: _bornDate,
                                  religion: _religionController.text,
                                  address: _addressController.text,
                                  expertise: _expertiseController.text,
                                  image: _image,
                                );
                                _userBloc.add(UserEvent.updateProfile(params));
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
