import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInFormWidget extends StatefulWidget {
  const SignInFormWidget({super.key});

  @override
  State<SignInFormWidget> createState() => _SigInpFormWidgetState();
}

class _SigInpFormWidgetState extends State<SignInFormWidget> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;

  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _emailController = TextEditingController(
      text: 'john@gmail.com',
    );
    _passwordController = TextEditingController(
      text: 'password',
    );

    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();

    _formKey = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();

    _formKey.currentState?.dispose();

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
                    autofillHints: const [AutofillHints.email],
                    key: const Key('signInForm_emailField'),
                    currFocusNode: _emailFocusNode,
                    nextFocusNode: _passwordFocusNode,
                    controller: _emailController,
                    textInputAction: TextInputAction.next,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                    hintText: context.str?.enterYourEmail ?? 'Enter your email',
                    hint: 'Email',
                    keyboardType: TextInputType.emailAddress,
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
                  SizedBox(height: 16.h),
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
            SizedBox(height: 16.h),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Button(
                    key: const Key('signInForm_signInButton'),
                    text: context.str?.signIn ?? 'Sign In',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthCubit>().signIn(
                              LoginParams(
                                email: _emailController.text,
                                password: _passwordController.text,
                              ),
                            );
                      }
                    },
                    isLoading: state.state == BaseState.loading,
                    isDisabled: state.state == BaseState.loading,
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
