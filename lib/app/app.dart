import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/app/router.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotApp extends StatelessWidget {
  DotApp({super.key});
  final _router = sl<AppRouter>();
  final _theme = DotTheme();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<UserPrefBloc>()
            ..add(
              const UserPrefEvent.initialize(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<UserBloc>()
            ..add(
              const UserEvent.initialize(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<AuthBloc>(),
        ),
        BlocProvider<ClubBloc>(
          create: (_) => sl<ClubBloc>()
            ..add(
              const ClubEvent.getClubs(),
            ),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(344, 760),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (ctx, child) {
          return BlocBuilder<UserPrefBloc, UserPreferencesModel>(
            builder: (context, state) {
              return MaterialApp.router(
                title: AppConstants.APP_NAME,
                routerConfig: _router.config(),
                localizationsDelegates: const [
                  Strings.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                debugShowCheckedModeBanner: false,
                builder: (c, child) {
                  return MediaQuery(
                    data: MediaQuery.of(c).copyWith(
                      textScaler: const TextScaler.linear(1),
                      alwaysUse24HourFormat: true,
                    ),
                    child: child ??
                        const Center(child: CircularProgressIndicator()),
                  );
                },
                theme: _theme.lightTheme(),
                darkTheme: _theme.darkTheme(),
                themeMode: state.themeMode,
                supportedLocales: L10n.all,
                locale: state.locale,
              );
            },
          );
        },
      ),
    );
  }
}
