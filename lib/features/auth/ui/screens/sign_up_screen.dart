import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/core/gen/assets.gen.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _usernameController;
  late TextEditingController _genderController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;

  late FocusNode _nameFocusNode;
  late FocusNode _emailFocusNode;
  late FocusNode _usernameFocusNode;
  late FocusNode _genderFocusNode;
  late FocusNode _phoneFocusNode;
  late FocusNode _passwordFocusNode;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late UserBloc _userBloc;
  late AuthBloc _authBloc;

  bool isObsecure = true;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(
        // text: 'John Doe',
        );
    _emailController = TextEditingController(
        // text: 'john@gmail.com',
        );
    _usernameController = TextEditingController(
        // text: 'john',
        );
    _genderController = TextEditingController();

    _phoneController = TextEditingController(
        // text: '81234567890',
        );
    _passwordController = TextEditingController(
        // text: 'password',
        );

    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _usernameFocusNode = FocusNode();
    _phoneFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _genderFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _genderController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();

    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _usernameFocusNode.dispose();
    _genderFocusNode.dispose();
    _phoneFocusNode.dispose();
    _passwordFocusNode.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userBloc = context.read<UserBloc>();
    _authBloc = context.read<AuthBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHero(),
            Gap(12.h),
            AutofillGroup(child: _buildForm()),
            Gap(12.h),
            _buildSignInOption(),
          ],
        ),
      ),
    );
  }

  Widget _buildHero() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Assets.images.hero.signUp.image(
          width: 344.w,
          height: 260.w,
        ),
        Gap(12.h),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: TitleLarge(context.str?.signUp),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EightCard(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormLabel(context.str?.name),
                FormInput(
                  controller: _nameController,
                  currentFocus: _nameFocusNode,
                  nextFocus: _emailFocusNode,
                  hintText: context.str?.enterYourName,
                  leading: const Icon(MoonIcons.generic_user_24_light),
                  autoFillHints: const [AutofillHints.name],
                  textInputAction: TextInputAction.next,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return context.str?.nameRequired ?? 'Name is required';
                    }
                    return null;
                  },
                ),
                Gap(12.h),
                FormLabel(context.str?.email),
                FormInput(
                  controller: _emailController,
                  currentFocus: _emailFocusNode,
                  nextFocus: _usernameFocusNode,
                  hintText: context.str?.enterYourEmail,
                  leading: const Icon(MoonIcons.mail_email_stats_24_light),
                  autoFillHints: const [AutofillHints.email],
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return context.str?.emailRequired ?? 'Email is required';
                    }
                    if (!value.isEmail) {
                      return context.str?.invalidEmail ?? 'Invalid email';
                    }
                    return null;
                  },
                ),
                Gap(12.h),
                FormLabel(context.str?.username),
                BlocConsumer<UserBloc, UserState>(
                  listener: (context, state) {
                    state.maybeWhen(
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
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return FormInput(
                      controller: _usernameController,
                      currentFocus: _usernameFocusNode,
                      nextFocus: _phoneFocusNode,
                      hintText: context.str?.enterYourUsername,
                      leading: const Icon(MoonIcons.text_hashtag_24_light),
                      autoFillHints: const [AutofillHints.username],
                      textInputAction: TextInputAction.next,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return context.str?.usernameRequired ??
                              'Username is required';
                        }
                        if (value.isContainUpperCase) {
                          return context.str?.usernameCantContainUppercase ??
                              'Username must not contain uppercase';
                        }
                        state.maybeWhen(
                          foundUsernames: (usernames) {
                            if (usernames.isNotEmpty) {
                              return context.str?.usernameNotAvailable ??
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
                      trailing: state.maybeWhen(
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
                              icon: const Icon(
                                  MoonIcons.text_clear_formatting_16_regular),
                            );
                          } else {
                            return const Icon(
                              MoonIcons.generic_check_alternative_16_light,
                              color: Colors.green,
                            );
                          }
                        },
                        orElse: () => null,
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
                                  children: usernames
                                      .map(
                                        (suggestion) => InkWell(
                                          onTap: () {
                                            _usernameController.text =
                                                suggestion;
                                            context
                                                .read<UserBloc>()
                                                .add(const UserEvent.clear());
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
                FormLabel(context.str?.phoneNumber),
                FormInput(
                  controller: _phoneController,
                  currentFocus: _phoneFocusNode,
                  nextFocus: _passwordFocusNode,
                  hintText: context.str?.enterYourPhoneNumber,
                  leading: const BodyMedium('+62'),
                  autoFillHints: const [AutofillHints.telephoneNumber],
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return context.str?.phoneNumberRequired ??
                          'Phone is required';
                    }
                    if (!value.isPhoneNumber) {
                      return context.str?.invalidPhoneNumber ?? 'Invalid phone';
                    }
                    if (!value.isValidPhone) {
                      return context.str?.invalidPhoneNumber ??
                          'Invalid phone number';
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
                  items: UserGender.values.map((e) {
                    return ComboboxItem(
                      value: e,
                      label: e.name,
                    );
                  }).toList(),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return context.str?.genderRequired;
                    }
                    final isInList = UserGender.values
                        .any((element) => element.name == value);
                    if (!isInList) {
                      return 'Invalid option';
                    } else {
                      return null;
                    }
                  },
                ),
                Gap(12.h),
                FormLabel(context.str?.password),
                FormInput(
                  key: const Key('password'),
                  controller: _passwordController,
                  currentFocus: _passwordFocusNode,
                  hintText: context.str?.enterYourPass,
                  leading: const Icon(MoonIcons.security_password_24_light),
                  obsecureText: isObsecure,
                  autoFillHints: const [AutofillHints.password],
                  textInputAction: TextInputAction.done,
                  trailing: IconButton(
                    icon: Icon(
                      isObsecure
                          ? MoonIcons.controls_eye_16_regular
                          : MoonIcons.controls_eye_crossed_24_regular,
                    ),
                    onPressed: () {
                      setState(() {
                        isObsecure = !isObsecure;
                      });
                    },
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return context.str?.passRequired;
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          Gap(12.h),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                authenticated: (user) {
                  final name = user.name;
                  final nameLength = name.length;
                  context.successToast(
                      title: context.str?.successSignIn,
                      description:
                          '${context.str?.welcomeBack}, ${user.name.maxChar(
                        nameLength > 15 ? 15 : nameLength,
                      )}');
                  _authBloc.add(const AuthEvent.clear());
                  _userBloc.add(const UserEvent.clear());
                  context.router.replace(const SignInRoute());
                },
                unauthenticated: (message) {
                  context.errorToast(
                    title: context.str?.error,
                    description: message,
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: FormButton(
                  text: context.str?.signUp,
                  isLoading: state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  onTap: () {
                    _userBloc.add(const UserEvent.clear());

                    if (_formKey.currentState?.validate() ?? false) {
                      final username = _usernameController.text;
                      final email = _emailController.text;
                      _userBloc.add(
                        UserEvent.checkUsername(
                          FindUsernamesParams(
                            username: username,
                            email: email,
                          ),
                        ),
                      );
                      _userBloc.state.maybeWhen(
                        foundUsernames: (usernames) {
                          if (usernames.isNotEmpty) {
                            context.errorToast(
                              title: context.str?.error,
                              description: context.str?.usernameNotAvailable,
                            );
                          } else {
                            final phone = int.tryParse(_phoneController.text);
                            if (phone == null) {
                              context.showSnackBar(
                                  message: 'Phone number must be a number');
                              return;
                            }

                            _authBloc.add(AuthEvent.signUp(SignUpParams(
                              email: email,
                              password: _passwordController.text,
                              name: _nameController.text,
                              username: username,
                              phone: phone,
                              gender: UserGender.values.firstWhere(
                                (element) =>
                                    element.name == _genderController.text,
                              ),
                              role: UserRole.athlete,
                              fcmToken: _userBloc.state.maybeWhen(
                                success: (_, fcmToken) => fcmToken,
                                orElse: () => '',
                              ),
                            )));
                          }
                        },
                        orElse: () {},
                      );
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSignInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BodyMedium(context.str?.alreadyHaveAnAccount),
        Gap(4.w),
        InkWell(
          onTap: () => context.router.back(),
          child: BodyMedium(
            context.str?.signIn,
            style: context.theme.textTheme.bodyMedium?.copyWith(
              color: context.theme.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
