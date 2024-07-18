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
  String get successCreateClub => 'Success Create Club';

  @override
  String get failedCreateClub => 'Failed to create club';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';

  @override
  String get clubName => 'Club Name';

  @override
  String get clubDescription => 'Club Description';

  @override
  String get clubNameRequired => 'Club name is required';

  @override
  String get clubDescriptionRequired => 'Club description is required';

  @override
  String get enterClubName => 'Enter club name';

  @override
  String get enterClubDescription => 'Enter club description';

  @override
  String get createClub => 'Create Club';

  @override
  String get club => 'Club';

  @override
  String get sportType => 'Sport Type';

  @override
  String get detail => 'Detail';
}
