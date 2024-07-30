import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _usernameController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
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

  UserGender selectedUserGender = UserGender.male;
  late List<DropdownMenuItem<UserGender>> userGender;

  DateTime? _bornDate;

  @override
  void initState() {
    final userCubit = context.read<UserCubit>();
    final user = userCubit.state.user;

    final phoneStr = user.phone.toString();
    _nameController = TextEditingController(text: user.name);
    _emailController = TextEditingController(text: user.email);
    _usernameController = TextEditingController(text: user.username);
    _phoneController = TextEditingController(
        text: phoneStr.startsWith('62') ? phoneStr.substring(2) : phoneStr);
    _passwordController = TextEditingController();
    _bornPlaceController = TextEditingController(text: user.bornPlace);
    _bornDateController =
        TextEditingController(text: user.bornDate?.toDayMonthYear());
    _addressController = TextEditingController(text: user.address);
    _religionController = TextEditingController(text: user.religion);
    _expertiseController = TextEditingController(text: user.expertise);

    selectedUserGender = user.gender;

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

    userGender = [
      const DropdownMenuItem(value: UserGender.male, child: Text('Male')),
      const DropdownMenuItem(value: UserGender.female, child: Text('Female')),
    ];

    userCubit.clearUsernameSuggestions();
    userCubit.emitInitial();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();

    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _usernameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _passwordFocusNode.dispose();
    _genderFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listenWhen: (p, c) {
        if (p.state != c.state) {
          return true;
        }
        if (p.user != c.user) {
          return true;
        }
        return false;
      },
      listener: (context, state) {},
      builder: (context, state) {
        return Parent(
          appBar: AppBar(
            title: Text(context.str?.editProfile ?? 'Edit Profile'),
          ),
          body: SingleChildScrollView(
            child: AutofillGroup(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    ImagePickerWidget(
                      firstChild: imageFallback(
                        state.image,
                        state.user.image,
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return context.pickImageDialog(
                              galleryTap: () {
                                context
                                    .read<UserCubit>()
                                    .pickImageFromGallery()
                                    .then(
                                  (_) {
                                    Navigator.of(context).pop();
                                  },
                                );
                              },
                              cameraTap: () {
                                context
                                    .read<UserCubit>()
                                    .pickImageFromCamera()
                                    .then(
                                  (_) {
                                    Navigator.of(context).pop();
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                    Container(
                      padding: EdgeInsets.all(8.w),
                      margin: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Theme.of(context)
                            .colorScheme
                            .primaryContainer
                            .withOpacity(0.1),
                      ),
                      child: Column(
                        children: [
                          TextF(
                            key: const Key('editProfileForm_name'),
                            autofillHints: const [AutofillHints.name],
                            currFocusNode: _nameFocusNode,
                            nextFocusNode: _emailFocusNode,
                            textInputAction: TextInputAction.next,
                            controller: _nameController,
                            keyboardType: TextInputType.name,
                            prefixIcon: Icon(
                              Icons.person,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText:
                                context.str?.enterYourName ?? 'Enter your name',
                            hint: context.str?.name ?? 'Name',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.nameRequired ??
                                    'Name is required';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 12.h),
                          TextF(
                            key: const Key('editProfileForm_email'),
                            autofillHints: const [AutofillHints.email],
                            currFocusNode: _emailFocusNode,
                            nextFocusNode: _usernameFocusNode,
                            textInputAction: TextInputAction.next,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            prefixIcon: Icon(
                              Icons.email,
                              color: context.theme.disabledColor,
                            ),
                            hintText: context.str?.enterYourEmail ??
                                'Enter your email',
                            hint: context.str?.email ?? 'Email',
                            enabled: false,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.emailRequired ??
                                    'Email is required';
                              }
                              if (!value.isValidEmail()) {
                                return context.str?.invalidEmail ??
                                    'Invalid email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 12.h),
                          BlocConsumer<UserCubit, UserState>(
                            listener: (context, state) {
                              if (state.state == BaseState.failure ||
                                  state.failure != null) {
                                log.e(state.failure?.message);
                                if (state.failure?.message.startsWith(
                                        'Email, username, or phone already exists') ??
                                    false) {
                                  context.read<UserCubit>().checkUsername(
                                        _usernameController.text,
                                        _emailController.text,
                                      );
                                }
                              }
                            },
                            builder: (context, state) {
                              return TextF(
                                key: const Key('editProfileForm_username'),
                                autofillHints: const [AutofillHints.username],
                                currFocusNode: _usernameFocusNode,
                                nextFocusNode: _emailFocusNode,
                                textInputAction: TextInputAction.next,
                                controller: _usernameController,
                                keyboardType: TextInputType.name,
                                prefixIcon: Icon(
                                  Icons.co_present_rounded,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color,
                                ),
                                hintText: context.str?.enterYourUsername ??
                                    'Enter your username',
                                hint: context.str?.username ?? 'Username',
                                onChanged: (String? val) {
                                  if (val != null && val.isNotEmpty) {
                                    final userCubit = context.read<UserCubit>();
                                    userCubit.clearUsernameSuggestions();
                                    userCubit.emitLoading();
                                    EasyDebounce.debounce(
                                      'username',
                                      const Duration(milliseconds: 500),
                                      () async => await context
                                          .read<UserCubit>()
                                          .checkUsername(
                                            val,
                                            _emailController.text,
                                          ),
                                    );
                                  }
                                },
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return context.str?.usernameRequired ??
                                        'Username is required';
                                  }
                                  if (value.isContainUpperCase()) {
                                    return context.str
                                            ?.usernameCantContainUppercase ??
                                        'Username must not contain uppercase';
                                  }
                                  if (state.usernameSuggestions.isNotEmpty) {
                                    return context.str?.usernameNotAvailable ??
                                        'Username not available';
                                  }
                                  return null;
                                },
                                suffixIcon: state.usernameSuggestions.isEmpty
                                    ? state.state == BaseState.loading
                                        ? Transform.scale(
                                            scale: 0.3,
                                            child:
                                                const CircularProgressIndicator(),
                                          )
                                        : const Icon(
                                            Icons.check_circle,
                                            color: Colors.green,
                                          )
                                    : IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(),
                                        onPressed: () {
                                          _usernameController.clear();
                                          context
                                              .read<UserCubit>()
                                              .clearUsernameSuggestions();
                                        },
                                        icon: Icon(
                                          Icons.clear,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.color,
                                        ),
                                      ),
                              );
                            },
                          ),
                          SizedBox(height: 12.h),
                          BlocBuilder<UserCubit, UserState>(
                            builder: (context, state) {
                              if (state.usernameSuggestions.isEmpty) {
                                return Container();
                              } else {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Text(
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
                                        children: state.usernameSuggestions
                                            .map(
                                              (suggestion) => InkWell(
                                                onTap: () {
                                                  _usernameController.text =
                                                      suggestion;
                                                  context
                                                      .read<UserCubit>()
                                                      .clearUsernameSuggestions();
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
                            },
                          ),
                          SizedBox(height: 12.h),
                          DropDown<UserGender>(
                            hint: context.str?.gender,
                            value: selectedUserGender,
                            items: userGender,
                            currFocusNode: _genderFocusNode,
                            nextFocusNode: _phoneFocusNode,
                            prefixIcon: Icon(
                              Icons.male_rounded,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            onChanged: (value) => setState(() {
                              if (value == null) {
                                return;
                              }
                              selectedUserGender = value;
                            }),
                          ),
                          SizedBox(height: 12.h),
                          TextF(
                            key: const Key('editProfileForm_phone'),
                            autofillHints: const [
                              AutofillHints.telephoneNumber
                            ],
                            currFocusNode: _phoneFocusNode,
                            nextFocusNode: _passwordFocusNode,
                            textInputAction: TextInputAction.next,
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            prefixIcon: Text(
                              '+62',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            hintText: context.str?.enterYourPhoneNumber ??
                                'Enter your phone number',
                            hint: context.str?.phoneNumber ?? 'Phone Number',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.phoneNumberRequired ??
                                    'Phone number is required';
                              }
                              if (!value.isValidPhoneNumber()) {
                                return context.str?.invalidPhoneNumber ??
                                    'Invalid phone number';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 12.h),
                          BlocBuilder<AuthCubit, AuthState>(
                            builder: (context, state) {
                              return Column(
                                children: [
                                  TextF(
                                    autofillHints: const [
                                      AutofillHints.password
                                    ],
                                    key: const Key(
                                        'editProfileForm_passwordField'),
                                    currFocusNode: _passwordFocusNode,
                                    nextFocusNode: _bornPlaceFocusNode,
                                    controller: _passwordController,
                                    textInputAction: TextInputAction.done,
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.color,
                                    ),
                                    hintText: context.str?.enterYourPass ??
                                        'Enter your password',
                                    hint: context.str?.password ?? 'Password',
                                    keyboardType: TextInputType.visiblePassword,
                                    maxLines: 1,
                                    obscureText: state.passwordVisibility ==
                                        PasswordVisibility.hidden,
                                    suffixIcon: IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                      onPressed: () => context
                                          .read<AuthCubit>()
                                          .showHidePassword(),
                                      icon: Icon(
                                        state.passwordVisibility ==
                                                PasswordVisibility.hidden
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.color,
                                      ),
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return context.str?.passRequired ??
                                            'Password is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                          SizedBox(height: 12.h),
                          TextF(
                            key: const Key('editProfileForm_bornPlace'),
                            autofillHints: const [AutofillHints.addressCity],
                            currFocusNode: _bornPlaceFocusNode,
                            nextFocusNode: _bornDateFocusNode,
                            textInputAction: TextInputAction.next,
                            controller: _bornPlaceController,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(
                              Icons.location_city,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: context.str?.enterYourBornPlace ??
                                'Enter your born place',
                            hint: context.str?.bornPlace ?? 'Born Place',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.bornPlaceRequired ??
                                    'Born place is required';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 12.h),
                          TextF(
                            key: const Key('editProfileForm_bornDate'),
                            autofillHints: const [AutofillHints.birthday],
                            currFocusNode: _bornDateFocusNode,
                            nextFocusNode: _addressFocusNode,
                            textInputAction: TextInputAction.next,
                            controller: _bornDateController,
                            keyboardType: TextInputType.datetime,
                            prefixIcon: Icon(
                              Icons.calendar_today,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: context.str?.enterYourBornDate ??
                                'Enter your born date',
                            hint: context.str?.bornDate ?? 'Born Date',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.bornDateRequired ??
                                    'Born date is required';
                              }
                              return null;
                            },
                            onTap: () async {
                              final res = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now(),
                              );
                              if (res != null) {
                                setState(() {
                                  _bornDate = res;
                                  _bornDateController.text =
                                      res.toDayMonthYear();
                                });
                              }
                            },
                            suffixIcon: IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () async {
                                final res = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                );
                                if (res != null) {
                                  setState(() {
                                    _bornDate = res;
                                    _bornDateController.text =
                                        res.toDayMonthYear();
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.calendar_today,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                              ),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          TextF(
                            key: const Key('editProfileForm_address'),
                            autofillHints: const [
                              AutofillHints.fullStreetAddress,
                              AutofillHints.addressCity,
                              AutofillHints.addressState,
                            ],
                            currFocusNode: _addressFocusNode,
                            nextFocusNode: _religionFocusNode,
                            textInputAction: TextInputAction.next,
                            controller: _addressController,
                            keyboardType: TextInputType.text,
                            maxLines: 10,
                            prefixIcon: Icon(
                              Icons.location_on,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: context.str?.enterYourAddress ??
                                'Enter your address',
                            hint: context.str?.address ?? 'Address',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.addressRequired ??
                                    'Address is required';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 12.h),
                          TextF(
                            key: const Key('editProfileForm_religion'),
                            currFocusNode: _religionFocusNode,
                            nextFocusNode: _expertiseFocusNode,
                            textInputAction: TextInputAction.next,
                            controller: _religionController,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(
                              Icons.star,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: context.str?.enterYourReligion ??
                                'Enter your religion',
                            hint: context.str?.religion ?? 'Religion',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.religionRequired ??
                                    'Religion is required';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 12.h),
                          TextF(
                            key: const Key('editProfileForm_expertise'),
                            currFocusNode: _expertiseFocusNode,
                            textInputAction: TextInputAction.done,
                            controller: _expertiseController,
                            keyboardType: TextInputType.text,
                            prefixIcon: Icon(
                              Icons.star_border,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            ),
                            hintText: context.str?.enterYourExpertise ??
                                'Enter your expertise',
                            hint: context.str?.expertise ?? 'Expertise',
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return context.str?.expertiseRequired ??
                                    'Expertise is required';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Button(
                        text: context.str?.updateProfile ?? 'Update Profile',
                        isLoading: state.state == BaseState.loading,
                        isDisabled: state.state == BaseState.loading,
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            if (state.usernameSuggestions.isEmpty) {
                              context.read<UserCubit>().updateProfile(
                                    UpdateUserParams(
                                      id: state.user.id,
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                      name: _nameController.text,
                                      username: _usernameController.text,
                                      phone: int.parse(_phoneController.text),
                                      gender: selectedUserGender,
                                      role: state.user.role,
                                      bornPlace: _bornPlaceController.text,
                                      bornDate: _bornDate,
                                      religion: _religionController.text,
                                      address: _addressController.text,
                                      expertise: _expertiseController.text,
                                      image: state.image,
                                    ),
                                  );
                            }
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 96.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
