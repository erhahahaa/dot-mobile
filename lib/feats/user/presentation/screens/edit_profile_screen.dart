import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
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
  late TextEditingController _genderController;

  late FocusNode _nameFocusNode;
  late FocusNode _emailFocusNode;
  late FocusNode _usernameFocusNode;
  late FocusNode _phoneFocusNode;
  late FocusNode _passwordFocusNode;
  late FocusNode _genderFocusNode;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  UserGender selectedUserGender = UserGender.male;
  late List<DropdownMenuItem<UserGender>> userGender;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: 'John Doe');
    _emailController = TextEditingController(text: 'john@gmail.com');
    _usernameController = TextEditingController(text: 'John');
    _phoneController = TextEditingController(text: '81234567890');
    _passwordController = TextEditingController(text: 'password');
    _genderController = TextEditingController(text: 'Male');

    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _usernameFocusNode = FocusNode();
    _phoneFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _genderFocusNode = FocusNode();

    userGender = [
      DropdownMenuItem(value: UserGender.male, child: Text('Male')),
      DropdownMenuItem(value: UserGender.female, child: Text('Female')),
    ];
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _genderController.dispose();

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
    final theme = Theme.of(context);
    final msg = Strings.of(context);

    return Parent(
      appBar: AppBar(
        title: Text(context.str?.editProfile ?? 'Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              ImagePickerWidget(),
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
                      key: const Key('signUpForm_name'),
                      autofillHints: const [AutofillHints.name],
                      currFocusNode: _nameFocusNode,
                      nextFocusNode: _usernameFocusNode,
                      textInputAction: TextInputAction.next,
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText: context.str?.enterYourName ?? 'Enter your name',
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
                      key: const Key('signUpForm_username'),
                      autofillHints: const [AutofillHints.username],
                      currFocusNode: _usernameFocusNode,
                      nextFocusNode: _emailFocusNode,
                      textInputAction: TextInputAction.next,
                      controller: _usernameController,
                      keyboardType: TextInputType.username,
                      prefixIcon: Icon(
                        Icons.co_present_rounded,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText: context.str?.enterYourUsername ??
                          'Enter your username',
                      hint: context.str?.username ?? 'Username',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return context.str?.usernameRequired ??
                              'Username is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 12.h),
                    TextF(
                      key: const Key('signUpForm_email'),
                      autofillHints: const [AutofillHints.email],
                      currFocusNode: _emailFocusNode,
                      nextFocusNode: _genderFocusNode,
                      textInputAction: TextInputAction.next,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      hintText:
                          context.str?.enterYourEmail ?? 'Enter your email',
                      hint: "Email",
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return context.str?.emailRequired ??
                              'Email is required';
                        }
                        if (!value.isValidEmail()) {
                          return context.str?.invalidEmail ?? 'Invalid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 12.h),
                    DropDown<UserGender>(
                      hint: msg?.gender,
                      value: selectedUserGender,
                      items: userGender,
                      prefixIcon: Icon(
                        Icons.male_rounded,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
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
                      key: const Key('signUpForm_phone'),
                      autofillHints: const [AutofillHints.telephoneNumber],
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
                              autofillHints: const [AutofillHints.password],
                              key: const Key('signInForm_passwordField'),
                              currFocusNode: _passwordFocusNode,
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Button(
                  text: msg?.updateProfile ?? 'Update Profile',
                  // isLoading: state.state == BaseState.loading,
                  // isDisabled: state.state == BaseState.loading,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
