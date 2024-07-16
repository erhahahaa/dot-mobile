import 'strings.dart';

/// The translations for English (`en`).
class StringsEn extends Strings {
  StringsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign In';

  @override
  String get signOut => 'Sign Out';

  @override
  String get signUp => 'Sign Up';

  @override
  String get failedSignIn => 'Failed to sign in';

  @override
  String get failedSignUp => 'Failed to sign up';

  @override
  String get failedSignOut => 'Failed to sign out';

  @override
  String get successSignIn => 'Signed in successfully';

  @override
  String get successSignUp => 'Signed up successfully';

  @override
  String get successSignOut => 'Signed out successfully';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';
}
