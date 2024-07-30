import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'strings_en.dart';
import 'strings_es.dart';
import 'strings_hi.dart';
import 'strings_id.dart';
import 'strings_zh.dart';

/// Callers can lookup localized strings with an instance of Strings
/// returned by `Strings.of(context)`.
///
/// Applications need to include `Strings.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/strings.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Strings.localizationsDelegates,
///   supportedLocales: Strings.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Strings.supportedLocales
/// property.
abstract class Strings {
  Strings(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Strings? of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  static const LocalizationsDelegate<Strings> delegate = _StringsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('hi'),
    Locale('id'),
    Locale('zh')
  ];

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @activeSession.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get activeSession;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @addMember.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get addMember;

  /// No description provided for @alert.
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get alert;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @assets.
  ///
  /// In en, this message translates to:
  /// **'Assets'**
  String get assets;

  /// No description provided for @athlete.
  ///
  /// In en, this message translates to:
  /// **'Athlete'**
  String get athlete;

  /// No description provided for @athletes.
  ///
  /// In en, this message translates to:
  /// **'Athletes'**
  String get athletes;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @basketBall.
  ///
  /// In en, this message translates to:
  /// **'Basketball'**
  String get basketBall;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @club.
  ///
  /// In en, this message translates to:
  /// **'Club'**
  String get club;

  /// No description provided for @clubDashboard.
  ///
  /// In en, this message translates to:
  /// **'Club Dashboard'**
  String get clubDashboard;

  /// No description provided for @clubDescription.
  ///
  /// In en, this message translates to:
  /// **'Club Description'**
  String get clubDescription;

  /// No description provided for @clubDescriptionRequired.
  ///
  /// In en, this message translates to:
  /// **'Club description is required'**
  String get clubDescriptionRequired;

  /// No description provided for @clubImageRequired.
  ///
  /// In en, this message translates to:
  /// **'Club image is required'**
  String get clubImageRequired;

  /// No description provided for @clubManagement.
  ///
  /// In en, this message translates to:
  /// **'Club Management'**
  String get clubManagement;

  /// No description provided for @clubName.
  ///
  /// In en, this message translates to:
  /// **'Club Name'**
  String get clubName;

  /// No description provided for @clubNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Club name is required'**
  String get clubNameRequired;

  /// No description provided for @clubs.
  ///
  /// In en, this message translates to:
  /// **'Clubs'**
  String get clubs;

  /// No description provided for @coach.
  ///
  /// In en, this message translates to:
  /// **'Coach'**
  String get coach;

  /// No description provided for @coaches.
  ///
  /// In en, this message translates to:
  /// **'Coaches'**
  String get coaches;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @createClub.
  ///
  /// In en, this message translates to:
  /// **'Create Club'**
  String get createClub;

  /// No description provided for @createProgram.
  ///
  /// In en, this message translates to:
  /// **'Create Program'**
  String get createProgram;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get dark;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @detail.
  ///
  /// In en, this message translates to:
  /// **'Detail'**
  String get detail;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\t have an account?'**
  String get dontHaveAnAccount;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @editClub.
  ///
  /// In en, this message translates to:
  /// **'Edit Club'**
  String get editClub;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @editProgram.
  ///
  /// In en, this message translates to:
  /// **'Edit Program'**
  String get editProgram;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailOrUsernameOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Email / Username / Phone'**
  String get emailOrUsernameOrPhone;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @emailUsernamePhoneAlreadyRegistered.
  ///
  /// In en, this message translates to:
  /// **'Email / Username / Phone already registered'**
  String get emailUsernamePhoneAlreadyRegistered;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @endDateRequired.
  ///
  /// In en, this message translates to:
  /// **'End date is required'**
  String get endDateRequired;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @enterClubDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter club description'**
  String get enterClubDescription;

  /// No description provided for @enterClubName.
  ///
  /// In en, this message translates to:
  /// **'Enter club name'**
  String get enterClubName;

  /// No description provided for @enterEmailOrUsernameOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter email / username / phone'**
  String get enterEmailOrUsernameOrPhone;

  /// No description provided for @enterEndDate.
  ///
  /// In en, this message translates to:
  /// **'Enter the end date'**
  String get enterEndDate;

  /// No description provided for @enterProgramName.
  ///
  /// In en, this message translates to:
  /// **'Enter program name'**
  String get enterProgramName;

  /// No description provided for @enterStartDate.
  ///
  /// In en, this message translates to:
  /// **'Enter the start date'**
  String get enterStartDate;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterYourEmail;

  /// No description provided for @enterYourGender.
  ///
  /// In en, this message translates to:
  /// **'Enter your gender'**
  String get enterYourGender;

  /// No description provided for @enterYourName.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterYourName;

  /// No description provided for @enterYourPass.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterYourPass;

  /// No description provided for @enterYourPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number'**
  String get enterYourPhoneNumber;

  /// No description provided for @enterYourUsername.
  ///
  /// In en, this message translates to:
  /// **'Enter your username'**
  String get enterYourUsername;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @errorCreateExercise.
  ///
  /// In en, this message translates to:
  /// **'Failed to create exercise'**
  String get errorCreateExercise;

  /// No description provided for @establishedAt.
  ///
  /// In en, this message translates to:
  /// **'Established at :'**
  String get establishedAt;

  /// No description provided for @exam.
  ///
  /// In en, this message translates to:
  /// **'Exam'**
  String get exam;

  /// No description provided for @exams.
  ///
  /// In en, this message translates to:
  /// **'Exams'**
  String get exams;

  /// No description provided for @exercise.
  ///
  /// In en, this message translates to:
  /// **'Exercise'**
  String get exercise;

  /// No description provided for @expiredSession.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expiredSession;

  /// No description provided for @failedCreateClub.
  ///
  /// In en, this message translates to:
  /// **'Failed to create club'**
  String get failedCreateClub;

  /// No description provided for @failedCreateProgram.
  ///
  /// In en, this message translates to:
  /// **'Failed to create program'**
  String get failedCreateProgram;

  /// No description provided for @failedEditProgram.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit program'**
  String get failedEditProgram;

  /// No description provided for @failedLeaveClub.
  ///
  /// In en, this message translates to:
  /// **'Failed to leave club'**
  String get failedLeaveClub;

  /// No description provided for @failedLogout.
  ///
  /// In en, this message translates to:
  /// **'Failed to logout'**
  String get failedLogout;

  /// No description provided for @failedSignIn.
  ///
  /// In en, this message translates to:
  /// **'Failed to sign in'**
  String get failedSignIn;

  /// No description provided for @failedSignUp.
  ///
  /// In en, this message translates to:
  /// **'Failed to sign up'**
  String get failedSignUp;

  /// No description provided for @futsal.
  ///
  /// In en, this message translates to:
  /// **'Futsal'**
  String get futsal;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @genderRequired.
  ///
  /// In en, this message translates to:
  /// **'Gender is required'**
  String get genderRequired;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @handBall.
  ///
  /// In en, this message translates to:
  /// **'Handball'**
  String get handBall;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello,'**
  String get hello;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @identifierRequired.
  ///
  /// In en, this message translates to:
  /// **'Identifier is required'**
  String get identifierRequired;

  /// No description provided for @indonesian.
  ///
  /// In en, this message translates to:
  /// **'Indonesian'**
  String get indonesian;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalidPhoneNumber;

  /// No description provided for @invite.
  ///
  /// In en, this message translates to:
  /// **'Invite'**
  String get invite;

  /// No description provided for @join.
  ///
  /// In en, this message translates to:
  /// **'Join'**
  String get join;

  /// No description provided for @kick.
  ///
  /// In en, this message translates to:
  /// **'Kick'**
  String get kick;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @leave.
  ///
  /// In en, this message translates to:
  /// **'Leave'**
  String get leave;

  /// No description provided for @leaveClubSuccess.
  ///
  /// In en, this message translates to:
  /// **'Successfully leave club'**
  String get leaveClubSuccess;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get light;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @management.
  ///
  /// In en, this message translates to:
  /// **'Management'**
  String get management;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members;

  /// No description provided for @myClub.
  ///
  /// In en, this message translates to:
  /// **'My Club'**
  String get myClub;

  /// No description provided for @myClubTraining.
  ///
  /// In en, this message translates to:
  /// **'My Club'**
  String get myClubTraining;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @nameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get nameRequired;

  /// No description provided for @newProgram.
  ///
  /// In en, this message translates to:
  /// **'New Program'**
  String get newProgram;

  /// No description provided for @noClubsFound.
  ///
  /// In en, this message translates to:
  /// **'No clubs found'**
  String get noClubsFound;

  /// No description provided for @noEvents.
  ///
  /// In en, this message translates to:
  /// **'No events'**
  String get noEvents;

  /// No description provided for @noExpertise.
  ///
  /// In en, this message translates to:
  /// **'No expertise'**
  String get noExpertise;

  /// No description provided for @noMembersFound.
  ///
  /// In en, this message translates to:
  /// **'No members found'**
  String get noMembersFound;

  /// No description provided for @noSpaceAllowed.
  ///
  /// In en, this message translates to:
  /// **'Space no allowed'**
  String get noSpaceAllowed;

  /// No description provided for @noUsersFound.
  ///
  /// In en, this message translates to:
  /// **'No users found'**
  String get noUsersFound;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page not found'**
  String get pageNotFound;

  /// No description provided for @passRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passRequired;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @phoneNumberRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get phoneNumberRequired;

  /// No description provided for @program.
  ///
  /// In en, this message translates to:
  /// **'Program'**
  String get program;

  /// No description provided for @programDetail.
  ///
  /// In en, this message translates to:
  /// **'Program Detail'**
  String get programDetail;

  /// No description provided for @programNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Program name is required'**
  String get programNameRequired;

  /// No description provided for @programs.
  ///
  /// In en, this message translates to:
  /// **'Programs'**
  String get programs;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @session.
  ///
  /// In en, this message translates to:
  /// **'Session'**
  String get session;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @soccer.
  ///
  /// In en, this message translates to:
  /// **'Soccer'**
  String get soccer;

  /// No description provided for @sport.
  ///
  /// In en, this message translates to:
  /// **'Sport :'**
  String get sport;

  /// No description provided for @sportType.
  ///
  /// In en, this message translates to:
  /// **'Sport Type'**
  String get sportType;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @startDateRequired.
  ///
  /// In en, this message translates to:
  /// **'Start date is required'**
  String get startDateRequired;

  /// No description provided for @succesEditProgram.
  ///
  /// In en, this message translates to:
  /// **'Successfully edit program'**
  String get succesEditProgram;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @successCreateClub.
  ///
  /// In en, this message translates to:
  /// **'Successfully created club'**
  String get successCreateClub;

  /// No description provided for @successCreateExercise.
  ///
  /// In en, this message translates to:
  /// **'Successfully to create exercise'**
  String get successCreateExercise;

  /// No description provided for @successCreateProgram.
  ///
  /// In en, this message translates to:
  /// **'Successfully create program'**
  String get successCreateProgram;

  /// No description provided for @successLogout.
  ///
  /// In en, this message translates to:
  /// **'Successfully logged out'**
  String get successLogout;

  /// No description provided for @successSignIn.
  ///
  /// In en, this message translates to:
  /// **'Successfully signed in '**
  String get successSignIn;

  /// No description provided for @successSignUp.
  ///
  /// In en, this message translates to:
  /// **'Successfully signed up '**
  String get successSignUp;

  /// No description provided for @successUpdateExercises.
  ///
  /// In en, this message translates to:
  /// **'Successfully update exercises'**
  String get successUpdateExercises;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @tactical.
  ///
  /// In en, this message translates to:
  /// **'Tactical'**
  String get tactical;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @updateClub.
  ///
  /// In en, this message translates to:
  /// **'Update Club'**
  String get updateClub;

  /// No description provided for @updateProfile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get updateProfile;

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @usernameCantContainUppercase.
  ///
  /// In en, this message translates to:
  /// **'Username cannot contain capital letters'**
  String get usernameCantContainUppercase;

  /// No description provided for @usernameNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Username is not available'**
  String get usernameNotAvailable;

  /// No description provided for @usernameRequired.
  ///
  /// In en, this message translates to:
  /// **'Username is required'**
  String get usernameRequired;

  /// No description provided for @volleyBall.
  ///
  /// In en, this message translates to:
  /// **'Volleyball'**
  String get volleyBall;
}

class _StringsDelegate extends LocalizationsDelegate<Strings> {
  const _StringsDelegate();

  @override
  Future<Strings> load(Locale locale) {
    return SynchronousFuture<Strings>(lookupStrings(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es', 'hi', 'id', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_StringsDelegate old) => false;
}

Strings lookupStrings(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return StringsEn();
    case 'es': return StringsEs();
    case 'hi': return StringsHi();
    case 'id': return StringsId();
    case 'zh': return StringsZh();
  }

  throw FlutterError(
    'Strings.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
