import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({super.key});

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _usernameController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;

  late FocusNode _nameFocusNode;
  late FocusNode _emailFocusNode;
  late FocusNode _usernameFocusNode;
  late FocusNode _genderFocusNode;
  late FocusNode _phoneFocusNode;
  late FocusNode _passwordFocusNode;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  UserGender selectedUserGender = UserGender.male;
  late List<DropdownMenuItem<UserGender>> userGender;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: 'John Doe');
    _emailController = TextEditingController(text: 'john@gmail.com');
    _usernameController = TextEditingController(text: 'john');
    _phoneController = TextEditingController(text: '81234567890');
    _passwordController = TextEditingController(text: 'password');

    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _usernameFocusNode = FocusNode();
    _phoneFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _genderFocusNode = FocusNode();

    userGender = [
      const DropdownMenuItem(value: UserGender.male, child: Text('Male')),
      const DropdownMenuItem(value: UserGender.female, child: Text('Female')),
    ];
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

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12.w),
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  TextF(
                    key: const Key('signUpForm_name'),
                    autofillHints: const [AutofillHints.name],
                    currFocusNode: _nameFocusNode,
                    nextFocusNode: _emailFocusNode,
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
                        return context.str?.nameRequired ?? 'Name is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12.h),
                  TextF(
                    key: const Key('signUpForm_email'),
                    autofillHints: const [AutofillHints.email],
                    currFocusNode: _emailFocusNode,
                    nextFocusNode: _usernameFocusNode,
                    textInputAction: TextInputAction.next,
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                    hintText: context.str?.enterYourEmail ?? 'Enter your email',
                    hint: context.str?.email ?? 'Email',
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
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state.state == BaseState.failure ||
                          state.failure != null) {
                        log.e(state.failure?.message);
                        if (state.failure?.message.startsWith(
                                'Email, username, or phone already exists') ??
                            false) {
                          context.read<AuthCubit>().checkUsername(
                                _usernameController.text,
                                _emailController.text,
                              );
                        }
                      }
                    },
                    builder: (context, state) {
                      return TextF(
                        key: const Key('signUpForm_username'),
                        autofillHints: const [AutofillHints.username],
                        currFocusNode: _usernameFocusNode,
                        nextFocusNode: _emailFocusNode,
                        textInputAction: TextInputAction.next,
                        controller: _usernameController,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icon(
                          Icons.co_present_rounded,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                        hintText: context.str?.enterYourUsername ??
                            'Enter your username',
                        hint: context.str?.username ?? 'Username',
                        onChanged: (String? val) {
                          if (val != null && val.isNotEmpty) {
                            final authCubit = context.read<AuthCubit>();
                            authCubit.clearUsernameSuggestions();
                            authCubit.emitLoading();
                            EasyDebounce.debounce(
                              'username',
                              const Duration(milliseconds: 500),
                              () async =>
                                  await context.read<AuthCubit>().checkUsername(
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
                            return context.str?.usernameCantContainUppercase ??
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
                                    child: CircularProgressIndicator(),
                                  )
                                : Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                  )
                            : IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                onPressed: () {
                                  _usernameController.clear();
                                  context
                                      .read<AuthCubit>()
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
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      if (state.usernameSuggestions.isEmpty) {
                        return Container();
                      } else {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Text(
                                'Username suggestions',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: Wrap(
                                spacing: 12.w,
                                runSpacing: 12.h,
                                children: state.usernameSuggestions
                                    .map(
                                      (suggestion) => InkWell(
                                        onTap: () {
                                          _usernameController.text = suggestion;
                                          context
                                              .read<AuthCubit>()
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
                  DropDown<UserGender>(
                    hint: context.str?.gender,
                    value: selectedUserGender,
                    items: userGender,
                    currFocusNode: _genderFocusNode,
                    nextFocusNode: _phoneFocusNode,
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
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
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
                              onPressed: () =>
                                  context.read<AuthCubit>().showHidePassword(),
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
            SizedBox(height: 12.h),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Button(
                    key: const Key('signUpForm_signUpButton'),
                    text: context.str?.signUp ?? 'Sign Up',
                    onPressed: () {
                      context.read<AuthCubit>().checkUsername(
                            _usernameController.text,
                            _emailController.text,
                          );
                      if (_formKey.currentState!.validate()) {
                        if (state.usernameSuggestions.isEmpty) {
                          context.read<AuthCubit>().signUp(
                                RegisterParams(
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  username:
                                      _usernameController.text.toLowerCase(),
                                  password: _passwordController.text,
                                  phone: int.parse(_phoneController.text),
                                  gender: selectedUserGender,
                                  role: UserRole.athlete,
                                ),
                              );
                        }
                      }
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
