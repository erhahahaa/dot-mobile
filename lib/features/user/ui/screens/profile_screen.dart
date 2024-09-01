import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/app.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with FirebaseCrashLoggerService {
  ThemeMode _themeMode = ThemeMode.system;
  Locale _locale = const Locale('en', 'US');

  late TextEditingController _themeController, _languageController;
  late FocusNode _themeFocus, _languageFocus;

  @override
  void initState() {
    super.initState();
    _themeController = TextEditingController(
      text: _themeMode.name.capitalize,
    );
    _languageController = TextEditingController(
      text:
          '${L10n.getFlag(_locale.languageCode)} ${L10n.getLanguage(_locale.languageCode)}',
    );
    final prefBloc = context.read<UserPrefBloc>();
    _locale = prefBloc.state.locale;
    _themeMode = prefBloc.state.themeMode;

    _themeFocus = FocusNode();
    _languageFocus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (user, __) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildUserProfile(context, user),
                    FormLabel(context.str?.preferences),
                    _buildPreferences(context),
                    Gap(8.h),
                    FormLabel(context.str?.account),
                    MoonFilledButton(
                      width: double.infinity,
                      backgroundColor: context.moonColors?.frieza60,
                      label: BodySmall(context.str?.updateProfile),
                      onTap: () {
                        context.router.push(
                          const UpdateProfileRoute(),
                        );
                      },
                    ),
                    Gap(8.h),
                    BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.mapOrNull(
                          unauthenticated: (message) async {
                            context.router.replace(const SplashRoute());
                            try {
                              await sl.reset();
                              await configureDependencies();
                            } catch (error, stackTrace) {
                              await nonFatalError(
                                error: error,
                                stackTrace: stackTrace,
                              );
                            }
                          },
                        );
                      },
                      child: MoonFilledButton(
                        width: double.infinity,
                        backgroundColor: context.moonColors?.frieza60,
                        label: BodySmall(context.str?.signOut),
                        onTap: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signOut());
                        },
                      ),
                    ),
                  ],
                );
              },
              orElse: () => const Center(child: MoonCircularLoader()),
            );
          },
        ),
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context, UserModel user) {
    return Column(
      children: [
        Row(children: [
          const Spacer(),
          MoonButton.icon(
            icon: const Icon(MoonIcons.controls_close_24_light),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ]),
        Gap(16.h),
        CircleAvatar(
          radius: 40.r,
          backgroundImage: NetworkImage(user.image),
        ),
        Gap(8.h),
        TitleMedium(user.name),
        Gap(8.h),
        BodySmall(user.email),
        Gap(16.h),
      ],
    );
  }

  Widget _buildPreferences(BuildContext context) {
    return BlocListener<UserPrefBloc, UserPreferencesModel>(
      listener: (context, state) {
        setState(() {
          _themeMode = state.themeMode;
          _locale = state.locale;
          _themeController.text = _themeMode.name.capitalize;
          _languageController.text =
              '${L10n.getFlag(_locale.languageCode)} ${L10n.getLanguage(_locale.languageCode)}';
        });
      },
      child: Column(
        children: [
          FormCombobox<ThemeMode>(
            items: ThemeMode.values
                .map(
                  (e) => ComboboxItem(
                    value: e,
                    label: e.name.capitalize,
                  ),
                )
                .toList(),
            controller: _themeController,
            currentFocus: _themeFocus,
            readOnly: true,
            showCloseButton: false,
            onChanged: (value) {
              if (value == null) return;
              context.read<UserPrefBloc>().add(
                    UserPrefEvent.changeThemeMode(value),
                  );
              setState(() {
                _themeMode = value;
                _themeController.text = value.name.capitalize;
              });
            },
          ),
          Gap(8.h),
          FormCombobox<Locale>(
            items: L10n.all
                .map(
                  (e) => ComboboxItem(
                    value: e,
                    label:
                        '${L10n.getFlag(e.languageCode)} ${L10n.getLanguage(e.languageCode)}',
                  ),
                )
                .toList(),
            controller: _languageController,
            currentFocus: _languageFocus,
            readOnly: true,
            showCloseButton: false,
            onChanged: (value) {
              if (value == null) return;
              context.read<UserPrefBloc>().add(
                    UserPrefEvent.changeLocale(value),
                  );
              setState(() {
                _locale = value;
                _languageController.text =
                    '${L10n.getFlag(value.languageCode)} ${L10n.getLanguage(value.languageCode)}';
              });
            },
          ),
        ],
      ),
    );
  }
}
