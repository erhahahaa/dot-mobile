import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/core/gen/assets.gen.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObsecure = true;

  late TextEditingController _identifierController;
  late TextEditingController _passwordController;

  late FocusNode _identifierFocus;
  late FocusNode _passwordFocus;

  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.clear());
    _identifierController = TextEditingController(
      text: 'john@gmail.com',
    );
    _passwordController = TextEditingController(
      text: 'password',
    );

    _identifierFocus = FocusNode();
    _passwordFocus = FocusNode();

    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _identifierController.dispose();
    _passwordController.dispose();

    _identifierFocus.dispose();
    _passwordFocus.dispose();

    _formKey.currentState?.dispose();

    super.dispose();
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
            _buildSignUpOption(),
          ],
        ),
      ),
    );
  }

  Widget _buildHero() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Assets.images.hero.signIn.image(
          width: 344.w,
          height: 260.w,
        ),
        Gap(12.h),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: TitleLarge(context.str?.signIn),
        )
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
                FormLabel(context.str?.emailOrUsernameOrPhone),
                FormInput(
                  controller: _identifierController,
                  currentFocus: _identifierFocus,
                  nextFocus: _passwordFocus,
                  hintText: context.str?.enterEmailOrUsernameOrPhone,
                  leading: const Icon(MoonIcons.mail_email_stats_24_light),
                  autoFillHints: const [
                    AutofillHints.email,
                    AutofillHints.telephoneNumber,
                  ],
                  textInputAction: TextInputAction.next,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return context.str?.identifierRequired ??
                          'Identifier is required';
                    }
                    if (value.isEmail) {
                      if (!value.isValidEmail) {
                        return context.str?.invalidEmail ?? 'Invalid email';
                      }
                    }

                    if (value.isPhoneNumber) {
                      if (!value.isValidPhone) {
                        return context.str?.invalidPhoneNumber ??
                            'Invalid phone number';
                      }
                    }

                    if (value.contains(' ')) {
                      return context.str?.noSpaceAllowed ?? 'No space allowed';
                    }
                    return null;
                  },
                ),
                Gap(12.h),
                FormLabel(context.str?.password),
                FormInput(
                  controller: _passwordController,
                  currentFocus: _passwordFocus,
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
                      return context.str?.passRequired ??
                          'Password is required';
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
                  context.successToast(
                      title: context.str?.successSignIn,
                      description: '${context.str?.welcomeBack}, ${user.name}');
                  context.router.replace(const ListClubRoute());
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
                  text: context.str?.signIn,
                  isLoading: state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      context.read<AuthBloc>().add(
                            AuthEvent.signIn(
                              SignInParams(
                                  identifier: _identifierController.text,
                                  password: _passwordController.text),
                            ),
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

  Widget _buildSignUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BodyMedium(context.str?.dontHaveAnAccount),
        Gap(4.w),
        InkWell(
          onTap: () => context.router.push(const SignUpRoute()),
          child: BodyMedium(
            context.str?.signUp,
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
