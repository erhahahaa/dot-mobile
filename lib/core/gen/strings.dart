import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'strings_en.dart';
import 'strings_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of Strings
/// returned by `Strings.of(context)`.
///
/// Applications need to include `Strings.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/strings.dart';
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
    Locale('id')
  ];

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @accountCreated.
  ///
  /// In en, this message translates to:
  /// **'Account created'**
  String get accountCreated;

  /// No description provided for @addExercise.
  ///
  /// In en, this message translates to:
  /// **'Add Exercise'**
  String get addExercise;

  /// No description provided for @addMember.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get addMember;

  /// No description provided for @addQuestion.
  ///
  /// In en, this message translates to:
  /// **'Add Question'**
  String get addQuestion;

  /// No description provided for @exercise.
  ///
  /// In en, this message translates to:
  /// **'Exercise'**
  String get exercise;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @addressIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Address is required'**
  String get addressIsRequired;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @answer.
  ///
  /// In en, this message translates to:
  /// **'Answer'**
  String get answer;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing...'**
  String get processing;

  /// No description provided for @assetsIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Assets is empty'**
  String get assetsIsEmpty;

  /// No description provided for @assetUploadSuccess.
  ///
  /// In en, this message translates to:
  /// **'Asset uploaded successfully'**
  String get assetUploadSuccess;

  /// No description provided for @noFileSelected.
  ///
  /// In en, this message translates to:
  /// **'No file selected'**
  String get noFileSelected;

  /// No description provided for @pleaseWaitAssetIsBeingProcessed.
  ///
  /// In en, this message translates to:
  /// **'Please wait, asset is being processed...'**
  String get pleaseWaitAssetIsBeingProcessed;

  /// No description provided for @downloadingAssets.
  ///
  /// In en, this message translates to:
  /// **'Downloading assets...'**
  String get downloadingAssets;

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// No description provided for @uploadingAssets.
  ///
  /// In en, this message translates to:
  /// **'Uploading assets...'**
  String get uploadingAssets;

  /// No description provided for @size.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// No description provided for @selectTacticalBoard.
  ///
  /// In en, this message translates to:
  /// **'Select tactical board'**
  String get selectTacticalBoard;

  /// No description provided for @assetInfo.
  ///
  /// In en, this message translates to:
  /// **'Asset Info'**
  String get assetInfo;

  /// No description provided for @urlCopied.
  ///
  /// In en, this message translates to:
  /// **'URL copied'**
  String get urlCopied;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @areYouSureYouWantToDeleteAthleteNameEvaluation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {athleteName} evaluation?'**
  String areYouSureYouWantToDeleteAthleteNameEvaluation(String? athleteName);

  /// No description provided for @areYouSureYouWantToDeleteExam.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {examName} exam?'**
  String areYouSureYouWantToDeleteExam(String? examName);

  /// No description provided for @areYouSureYouWantToDeleteProgram.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {programName} program?'**
  String areYouSureYouWantToDeleteProgram(String? programName);

  /// No description provided for @areYouSureYouWantToKickUsernameFromClubName.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to kick {username} from {clubName}?'**
  String areYouSureYouWantToKickUsernameFromClubName(String? clubName, String? username);

  /// No description provided for @areYouSureYouWantToLeaveClubName.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to leave {clubName}?'**
  String areYouSureYouWantToLeaveClubName(String? clubName);

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

  /// No description provided for @athleteDetail.
  ///
  /// In en, this message translates to:
  /// **'Athlete Detail'**
  String get athleteDetail;

  /// No description provided for @athleteEvaluation.
  ///
  /// In en, this message translates to:
  /// **'Athlete Evaluation'**
  String get athleteEvaluation;

  /// No description provided for @bornDate.
  ///
  /// In en, this message translates to:
  /// **'Born Date'**
  String get bornDate;

  /// No description provided for @bornDateIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Born date is required'**
  String get bornDateIsRequired;

  /// No description provided for @bornPlace.
  ///
  /// In en, this message translates to:
  /// **'Born Place'**
  String get bornPlace;

  /// No description provided for @bornPlaceIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Born place is required'**
  String get bornPlaceIsRequired;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar;

  /// No description provided for @club.
  ///
  /// In en, this message translates to:
  /// **'Club'**
  String get club;

  /// No description provided for @clubAbout.
  ///
  /// In en, this message translates to:
  /// **'{clubName} About'**
  String clubAbout(String? clubName);

  /// No description provided for @clubCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Club created successfully'**
  String get clubCreatedSuccessfully;

  /// No description provided for @clubDescription.
  ///
  /// In en, this message translates to:
  /// **'Club Description'**
  String get clubDescription;

  /// No description provided for @clubDescriptionIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Club description is required'**
  String get clubDescriptionIsRequired;

  /// No description provided for @clubDetail.
  ///
  /// In en, this message translates to:
  /// **'{clubName} Detail'**
  String clubDetail(String? clubName);

  /// No description provided for @clubDoesntHaveAnyEvaluation.
  ///
  /// In en, this message translates to:
  /// **'{clubName} doesn\'t have any evaluation yet'**
  String clubDoesntHaveAnyEvaluation(String? clubName);

  /// No description provided for @clubDoesntHaveAnyExam.
  ///
  /// In en, this message translates to:
  /// **'{clubName} doesn\'t have any exam yet'**
  String clubDoesntHaveAnyExam(String? clubName);

  /// No description provided for @clubDoesntHaveAnyProgram.
  ///
  /// In en, this message translates to:
  /// **'{clubName} doesn\'t have any program yet'**
  String clubDoesntHaveAnyProgram(String? clubName);

  /// No description provided for @clubDoesntHaveAnyTactic.
  ///
  /// In en, this message translates to:
  /// **'{clubName} doesn\'t have any tactic yet'**
  String clubDoesntHaveAnyTactic(String? clubName);

  /// No description provided for @clubImageIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Club image is required'**
  String get clubImageIsRequired;

  /// No description provided for @clubMembers.
  ///
  /// In en, this message translates to:
  /// **'{clubName} Members'**
  String clubMembers(String? clubName);

  /// No description provided for @clubName.
  ///
  /// In en, this message translates to:
  /// **'Club Name'**
  String get clubName;

  /// No description provided for @clubNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Club name is required'**
  String get clubNameIsRequired;

  /// No description provided for @clubOverview.
  ///
  /// In en, this message translates to:
  /// **'{clubName} Overview'**
  String clubOverview(String? clubName);

  /// No description provided for @clubPrograms.
  ///
  /// In en, this message translates to:
  /// **'{clubName} Programs'**
  String clubPrograms(String? clubName);

  /// No description provided for @clubUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Club updated successfully'**
  String get clubUpdatedSuccessfully;

  /// No description provided for @clubWithNameNotFound.
  ///
  /// In en, this message translates to:
  /// **'Club with name {name} not found'**
  String clubWithNameNotFound(String name);

  /// No description provided for @createClub.
  ///
  /// In en, this message translates to:
  /// **'Create Club'**
  String get createClub;

  /// No description provided for @createEvaluation.
  ///
  /// In en, this message translates to:
  /// **'Create Evaluation'**
  String get createEvaluation;

  /// No description provided for @createEvaluationFailed.
  ///
  /// In en, this message translates to:
  /// **'Create evaluation failed'**
  String get createEvaluationFailed;

  /// No description provided for @createExam.
  ///
  /// In en, this message translates to:
  /// **'Create Exam'**
  String get createExam;

  /// No description provided for @createExamFailed.
  ///
  /// In en, this message translates to:
  /// **'Create exam failed'**
  String get createExamFailed;

  /// No description provided for @createFailed.
  ///
  /// In en, this message translates to:
  /// **'Create failed'**
  String get createFailed;

  /// No description provided for @createProgram.
  ///
  /// In en, this message translates to:
  /// **'Create Program'**
  String get createProgram;

  /// No description provided for @createSuccess.
  ///
  /// In en, this message translates to:
  /// **'Create success'**
  String get createSuccess;

  /// No description provided for @createTactical.
  ///
  /// In en, this message translates to:
  /// **'Create Tactical'**
  String get createTactical;

  /// No description provided for @deleteEvaluation.
  ///
  /// In en, this message translates to:
  /// **'Delete Evaluation'**
  String get deleteEvaluation;

  /// No description provided for @deleteExam.
  ///
  /// In en, this message translates to:
  /// **'Delete Exam'**
  String get deleteExam;

  /// No description provided for @deleteExamFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete exam failed'**
  String get deleteExamFailed;

  /// No description provided for @deleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get deleteFailed;

  /// No description provided for @deleteProgram.
  ///
  /// In en, this message translates to:
  /// **'Delete Program'**
  String get deleteProgram;

  /// No description provided for @deleteProgramFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete program failed'**
  String get deleteProgramFailed;

  /// No description provided for @deleteSuccess.
  ///
  /// In en, this message translates to:
  /// **'Delete success'**
  String get deleteSuccess;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @detail.
  ///
  /// In en, this message translates to:
  /// **'Detail'**
  String get detail;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAnAccount;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailIsRequired;

  /// No description provided for @emailOrUsernameOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Email or username or phone'**
  String get emailOrUsernameOrPhone;

  /// No description provided for @emailOrUsernameOrPhoneIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Email or username or phone is required'**
  String get emailOrUsernameOrPhoneIsRequired;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

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

  /// No description provided for @enterExamDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter exam description'**
  String get enterExamDescription;

  /// No description provided for @enterExamTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter exam title'**
  String get enterExamTitle;

  /// No description provided for @enterExerciseDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter exercise description'**
  String get enterExerciseDescription;

  /// No description provided for @enterExerciseName.
  ///
  /// In en, this message translates to:
  /// **'Enter exercise name'**
  String get enterExerciseName;

  /// No description provided for @enterHeight.
  ///
  /// In en, this message translates to:
  /// **'Enter height'**
  String get enterHeight;

  /// No description provided for @enterProgramEndDate.
  ///
  /// In en, this message translates to:
  /// **'Enter program end date'**
  String get enterProgramEndDate;

  /// No description provided for @enterProgramName.
  ///
  /// In en, this message translates to:
  /// **'Enter program name'**
  String get enterProgramName;

  /// No description provided for @enterProgramStartDate.
  ///
  /// In en, this message translates to:
  /// **'Enter program start date'**
  String get enterProgramStartDate;

  /// No description provided for @enterQuestion.
  ///
  /// In en, this message translates to:
  /// **'Enter question'**
  String get enterQuestion;

  /// No description provided for @enterTacticalDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter tactical description'**
  String get enterTacticalDescription;

  /// No description provided for @enterTacticalName.
  ///
  /// In en, this message translates to:
  /// **'Enter tactical name'**
  String get enterTacticalName;

  /// No description provided for @enterTotalIntensity.
  ///
  /// In en, this message translates to:
  /// **'Enter total intensity'**
  String get enterTotalIntensity;

  /// No description provided for @enterTotalPlayers.
  ///
  /// In en, this message translates to:
  /// **'Enter total players'**
  String get enterTotalPlayers;

  /// No description provided for @enterTotalReps.
  ///
  /// In en, this message translates to:
  /// **'Enter total reps'**
  String get enterTotalReps;

  /// No description provided for @enterTotalRest.
  ///
  /// In en, this message translates to:
  /// **'Enter total rest'**
  String get enterTotalRest;

  /// No description provided for @enterTotalSets.
  ///
  /// In en, this message translates to:
  /// **'Enter total sets'**
  String get enterTotalSets;

  /// No description provided for @enterTotalTempo.
  ///
  /// In en, this message translates to:
  /// **'Enter tempo'**
  String get enterTotalTempo;

  /// No description provided for @enterWidth.
  ///
  /// In en, this message translates to:
  /// **'Enter width'**
  String get enterWidth;

  /// No description provided for @enterYourAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter your address'**
  String get enterYourAddress;

  /// No description provided for @enterYourBornDate.
  ///
  /// In en, this message translates to:
  /// **'Enter your born date'**
  String get enterYourBornDate;

  /// No description provided for @enterYourBornPlace.
  ///
  /// In en, this message translates to:
  /// **'Enter your born place'**
  String get enterYourBornPlace;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterYourEmail;

  /// No description provided for @enterYourEmailOrUsernameOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter your email or username or phone'**
  String get enterYourEmailOrUsernameOrPhone;

  /// No description provided for @enterYourExpertise.
  ///
  /// In en, this message translates to:
  /// **'Enter your expertise'**
  String get enterYourExpertise;

  /// No description provided for @enterYourFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enterYourFullName;

  /// No description provided for @enterYourGender.
  ///
  /// In en, this message translates to:
  /// **'Enter your gender'**
  String get enterYourGender;

  /// No description provided for @enterYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterYourPassword;

  /// No description provided for @enterYourPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone'**
  String get enterYourPhone;

  /// No description provided for @enterYourReligion.
  ///
  /// In en, this message translates to:
  /// **'Enter your religion'**
  String get enterYourReligion;

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

  /// No description provided for @evaluate.
  ///
  /// In en, this message translates to:
  /// **'Evaluate'**
  String get evaluate;

  /// No description provided for @evaluation.
  ///
  /// In en, this message translates to:
  /// **'Evaluation'**
  String get evaluation;

  /// No description provided for @evaluationCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Evaluation created successfully'**
  String get evaluationCreatedSuccessfully;

  /// No description provided for @evaluationDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'{athleteName} evaluation deleted successfully'**
  String evaluationDeletedSuccessfully(String? athleteName);

  /// No description provided for @evaluationDetail.
  ///
  /// In en, this message translates to:
  /// **'Evaluation Detail'**
  String get evaluationDetail;

  /// No description provided for @evaluations.
  ///
  /// In en, this message translates to:
  /// **'Evaluations'**
  String get evaluations;

  /// No description provided for @evaluationUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Evaluation updated successfully'**
  String get evaluationUpdatedSuccessfully;

  /// No description provided for @evaluator.
  ///
  /// In en, this message translates to:
  /// **'Evaluator'**
  String get evaluator;

  /// No description provided for @exam.
  ///
  /// In en, this message translates to:
  /// **'Exam'**
  String get exam;

  /// No description provided for @examDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Exam deleted successfully'**
  String get examDeletedSuccessfully;

  /// No description provided for @examDescription.
  ///
  /// In en, this message translates to:
  /// **'Exam Description'**
  String get examDescription;

  /// No description provided for @examDescriptionIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Exam description is required'**
  String get examDescriptionIsRequired;

  /// No description provided for @examDetail.
  ///
  /// In en, this message translates to:
  /// **'Exam Detail'**
  String get examDetail;

  /// No description provided for @examQuestions.
  ///
  /// In en, this message translates to:
  /// **'{examName} Questions'**
  String examQuestions(String? examName);

  /// No description provided for @exams.
  ///
  /// In en, this message translates to:
  /// **'Exams'**
  String get exams;

  /// No description provided for @examTitle.
  ///
  /// In en, this message translates to:
  /// **'Exam Title'**
  String get examTitle;

  /// No description provided for @examTitleIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Exam title is required'**
  String get examTitleIsRequired;

  /// No description provided for @exerciseDescription.
  ///
  /// In en, this message translates to:
  /// **'Exercise Description'**
  String get exerciseDescription;

  /// No description provided for @exerciseName.
  ///
  /// In en, this message translates to:
  /// **'Exercise Name'**
  String get exerciseName;

  /// No description provided for @exerciseNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Exercise name is required'**
  String get exerciseNameIsRequired;

  /// No description provided for @exercises.
  ///
  /// In en, this message translates to:
  /// **'Exercises'**
  String get exercises;

  /// No description provided for @exerciseSavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Exercise saved successfully'**
  String get exerciseSavedSuccessfully;

  /// No description provided for @expertise.
  ///
  /// In en, this message translates to:
  /// **'Expertise'**
  String get expertise;

  /// No description provided for @expertiseIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Expertise is required'**
  String get expertiseIsRequired;

  /// No description provided for @failedToUpdateTacticalStrategy.
  ///
  /// In en, this message translates to:
  /// **'Failed to update tactical strategy'**
  String get failedToUpdateTacticalStrategy;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @fullNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Full name is required'**
  String get fullNameIsRequired;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @genderIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Gender is required'**
  String get genderIsRequired;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height (m)'**
  String get height;

  /// No description provided for @heightIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Height is required'**
  String get heightIsRequired;

  /// No description provided for @intensity.
  ///
  /// In en, this message translates to:
  /// **'Intensity'**
  String get intensity;

  /// No description provided for @intensityIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Intensity is required'**
  String get intensityIsRequired;

  /// No description provided for @invalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid credentials'**
  String get invalidCredentials;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @invalidNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid number'**
  String get invalidNumber;

  /// No description provided for @invalidOption.
  ///
  /// In en, this message translates to:
  /// **'Invalid option'**
  String get invalidOption;

  /// No description provided for @invalidPhone.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone'**
  String get invalidPhone;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalidPhoneNumber;

  /// No description provided for @invalidUnit.
  ///
  /// In en, this message translates to:
  /// **'Unit tidak valid'**
  String get invalidUnit;

  /// No description provided for @kickMember.
  ///
  /// In en, this message translates to:
  /// **'Kick Member'**
  String get kickMember;

  /// No description provided for @leaveClub.
  ///
  /// In en, this message translates to:
  /// **'Leave Club'**
  String get leaveClub;

  /// No description provided for @loadingExercises.
  ///
  /// In en, this message translates to:
  /// **'Loading exercises...'**
  String get loadingExercises;

  /// No description provided for @loadingQuestions.
  ///
  /// In en, this message translates to:
  /// **'Loading questions...'**
  String get loadingQuestions;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members;

  /// No description provided for @myClubs.
  ///
  /// In en, this message translates to:
  /// **'My Clubs'**
  String get myClubs;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @newClub.
  ///
  /// In en, this message translates to:
  /// **'New Club'**
  String get newClub;

  /// No description provided for @newEvaluation.
  ///
  /// In en, this message translates to:
  /// **'New Evaluation'**
  String get newEvaluation;

  /// No description provided for @newExam.
  ///
  /// In en, this message translates to:
  /// **'New Exam'**
  String get newExam;

  /// No description provided for @newProgram.
  ///
  /// In en, this message translates to:
  /// **'New Program'**
  String get newProgram;

  /// No description provided for @newTactic.
  ///
  /// In en, this message translates to:
  /// **'New Tactic'**
  String get newTactic;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @noImageSelected.
  ///
  /// In en, this message translates to:
  /// **'No image selected'**
  String get noImageSelected;

  /// No description provided for @noSpaceAllowed.
  ///
  /// In en, this message translates to:
  /// **'No space allowed'**
  String get noSpaceAllowed;

  /// No description provided for @notJoinedAnyClubs.
  ///
  /// In en, this message translates to:
  /// **'Not joined any clubs'**
  String get notJoinedAnyClubs;

  /// No description provided for @obsecuredState.
  ///
  /// In en, this message translates to:
  /// **'Obsecured State'**
  String get obsecuredState;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @passwordIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordIsRequired;

  /// No description provided for @passwordMustBeAtLeast8Characters.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get passwordMustBeAtLeast8Characters;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @phoneIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone is required'**
  String get phoneIsRequired;

  /// No description provided for @pleaseRestartTheApp.
  ///
  /// In en, this message translates to:
  /// **'Please restart the app'**
  String get pleaseRestartTheApp;

  /// No description provided for @pleaseSelectAnImageForEachExercise.
  ///
  /// In en, this message translates to:
  /// **'Please select an image for each exercise'**
  String get pleaseSelectAnImageForEachExercise;

  /// No description provided for @pleaseSelectUnit.
  ///
  /// In en, this message translates to:
  /// **'Silakan pilih unit'**
  String get pleaseSelectUnit;

  /// No description provided for @pleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Please try again'**
  String get pleaseTryAgain;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @profileUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileUpdatedSuccessfully;

  /// No description provided for @program.
  ///
  /// In en, this message translates to:
  /// **'Program'**
  String get program;

  /// No description provided for @programCreateFailed.
  ///
  /// In en, this message translates to:
  /// **'Program create failed'**
  String get programCreateFailed;

  /// No description provided for @programDeletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Program deleted successfully'**
  String get programDeletedSuccessfully;

  /// No description provided for @programDetail.
  ///
  /// In en, this message translates to:
  /// **'Program Detail'**
  String get programDetail;

  /// No description provided for @programEndDate.
  ///
  /// In en, this message translates to:
  /// **'Program End Date'**
  String get programEndDate;

  /// No description provided for @programEndDateIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Program end date is required'**
  String get programEndDateIsRequired;

  /// No description provided for @programImageIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Program image is required'**
  String get programImageIsRequired;

  /// No description provided for @programName.
  ///
  /// In en, this message translates to:
  /// **'Program Name'**
  String get programName;

  /// No description provided for @programNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Program name is required'**
  String get programNameIsRequired;

  /// No description provided for @programs.
  ///
  /// In en, this message translates to:
  /// **'Programs'**
  String get programs;

  /// No description provided for @programStartDate.
  ///
  /// In en, this message translates to:
  /// **'Program Start Date'**
  String get programStartDate;

  /// No description provided for @programStartDateIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Program start date is required'**
  String get programStartDateIsRequired;

  /// No description provided for @programUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Program update failed'**
  String get programUpdateFailed;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// No description provided for @questionIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Question is required'**
  String get questionIsRequired;

  /// No description provided for @questions.
  ///
  /// In en, this message translates to:
  /// **'Questions'**
  String get questions;

  /// No description provided for @questionSavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Question saved successfully'**
  String get questionSavedSuccessfully;

  /// No description provided for @questionSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Question save failed'**
  String get questionSaveFailed;

  /// No description provided for @questionType.
  ///
  /// In en, this message translates to:
  /// **'Question Type'**
  String get questionType;

  /// No description provided for @questionTypeIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Question type is required'**
  String get questionTypeIsRequired;

  /// No description provided for @religion.
  ///
  /// In en, this message translates to:
  /// **'Religion'**
  String get religion;

  /// No description provided for @religionIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Religion is required'**
  String get religionIsRequired;

  /// No description provided for @reload.
  ///
  /// In en, this message translates to:
  /// **'Reload'**
  String get reload;

  /// No description provided for @reps.
  ///
  /// In en, this message translates to:
  /// **'Reps'**
  String get reps;

  /// No description provided for @repsIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Reps is required'**
  String get repsIsRequired;

  /// No description provided for @rest.
  ///
  /// In en, this message translates to:
  /// **'Rest'**
  String get rest;

  /// No description provided for @restIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Rest is required'**
  String get restIsRequired;

  /// No description provided for @role.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get role;

  /// No description provided for @roleIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Role is required'**
  String get roleIsRequired;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @saveStrategy.
  ///
  /// In en, this message translates to:
  /// **'Save Strategy'**
  String get saveStrategy;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @selectExerciseAsset.
  ///
  /// In en, this message translates to:
  /// **'Select exercise asset'**
  String get selectExerciseAsset;

  /// No description provided for @selectProgramAsset.
  ///
  /// In en, this message translates to:
  /// **'Select program asset'**
  String get selectProgramAsset;

  /// No description provided for @selectQuestionType.
  ///
  /// In en, this message translates to:
  /// **'Select question type'**
  String get selectQuestionType;

  /// No description provided for @selectRole.
  ///
  /// In en, this message translates to:
  /// **'Select role'**
  String get selectRole;

  /// No description provided for @selectSportType.
  ///
  /// In en, this message translates to:
  /// **'Select sport type'**
  String get selectSportType;

  /// No description provided for @sets.
  ///
  /// In en, this message translates to:
  /// **'Sets'**
  String get sets;

  /// No description provided for @setsIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Sets is required'**
  String get setsIsRequired;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signInFailed.
  ///
  /// In en, this message translates to:
  /// **'Sign in failed'**
  String get signInFailed;

  /// No description provided for @signInSuccess.
  ///
  /// In en, this message translates to:
  /// **'Sign in Success'**
  String get signInSuccess;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signUpFailed.
  ///
  /// In en, this message translates to:
  /// **'Sign up failed'**
  String get signUpFailed;

  /// No description provided for @signUpSuccess.
  ///
  /// In en, this message translates to:
  /// **'Sign up success'**
  String get signUpSuccess;

  /// No description provided for @sportType.
  ///
  /// In en, this message translates to:
  /// **'Sport Type'**
  String get sportType;

  /// No description provided for @sportTypeIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Sport type is required'**
  String get sportTypeIsRequired;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @strategyNotFound.
  ///
  /// In en, this message translates to:
  /// **'Strategy not found'**
  String get strategyNotFound;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @tactic.
  ///
  /// In en, this message translates to:
  /// **'Tactic'**
  String get tactic;

  /// No description provided for @tacticalBoard.
  ///
  /// In en, this message translates to:
  /// **'Tactical Board'**
  String get tacticalBoard;

  /// No description provided for @tacticalBoardIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Tactical board is required'**
  String get tacticalBoardIsRequired;

  /// No description provided for @tacticalDescription.
  ///
  /// In en, this message translates to:
  /// **'Tactical Description'**
  String get tacticalDescription;

  /// No description provided for @tacticalDescriptionIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Tactical description is required'**
  String get tacticalDescriptionIsRequired;

  /// No description provided for @tacticalName.
  ///
  /// In en, this message translates to:
  /// **'Tactical Name'**
  String get tacticalName;

  /// No description provided for @tacticalNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Tactical name is required'**
  String get tacticalNameIsRequired;

  /// No description provided for @tacticalStrategyUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Tactical strategy updated successfully'**
  String get tacticalStrategyUpdatedSuccessfully;

  /// No description provided for @tactics.
  ///
  /// In en, this message translates to:
  /// **'Tactics'**
  String get tactics;

  /// No description provided for @tempo.
  ///
  /// In en, this message translates to:
  /// **'Tempo'**
  String get tempo;

  /// No description provided for @tempoIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Tempo is required'**
  String get tempoIsRequired;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @totalPlayers.
  ///
  /// In en, this message translates to:
  /// **'Total Players / Team'**
  String get totalPlayers;

  /// No description provided for @totalPlayersIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Total players is required'**
  String get totalPlayersIsRequired;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @updateClub.
  ///
  /// In en, this message translates to:
  /// **'Update {clubName}'**
  String updateClub(String? clubName);

  /// No description provided for @updateEvaluation.
  ///
  /// In en, this message translates to:
  /// **'Update Evaluation'**
  String get updateEvaluation;

  /// No description provided for @updateEvaluationFailed.
  ///
  /// In en, this message translates to:
  /// **'Update evaluation failed'**
  String get updateEvaluationFailed;

  /// No description provided for @updateExam.
  ///
  /// In en, this message translates to:
  /// **'Update Exam'**
  String get updateExam;

  /// No description provided for @updateExamFailed.
  ///
  /// In en, this message translates to:
  /// **'Update exam failed'**
  String get updateExamFailed;

  /// No description provided for @updateFailed.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get updateFailed;

  /// No description provided for @updateProfile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get updateProfile;

  /// No description provided for @updateProfileFailed.
  ///
  /// In en, this message translates to:
  /// **'Update profile failed'**
  String get updateProfileFailed;

  /// No description provided for @updateProgram.
  ///
  /// In en, this message translates to:
  /// **'Update Program'**
  String get updateProgram;

  /// No description provided for @updateSuccess.
  ///
  /// In en, this message translates to:
  /// **'Update success'**
  String get updateSuccess;

  /// No description provided for @updateTactical.
  ///
  /// In en, this message translates to:
  /// **'Update Tactical'**
  String get updateTactical;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @usernameCannotContainSpace.
  ///
  /// In en, this message translates to:
  /// **'Username cannot contain space'**
  String get usernameCannotContainSpace;

  /// No description provided for @usernameIsAlreadyTaken.
  ///
  /// In en, this message translates to:
  /// **'Username is already taken'**
  String get usernameIsAlreadyTaken;

  /// No description provided for @usernameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Username is required'**
  String get usernameIsRequired;

  /// No description provided for @usernameSuggestions.
  ///
  /// In en, this message translates to:
  /// **'Username Suggestions'**
  String get usernameSuggestions;

  /// No description provided for @userWithNameNotFound.
  ///
  /// In en, this message translates to:
  /// **'User with name {name} not found'**
  String userWithNameNotFound(String name);

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back {name}'**
  String welcomeBack(String name);

  /// No description provided for @width.
  ///
  /// In en, this message translates to:
  /// **'Width (m)'**
  String get width;

  /// No description provided for @widthIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Width is required'**
  String get widthIsRequired;

  /// No description provided for @wouldYouLikeToAddUsernameMemberToClubName.
  ///
  /// In en, this message translates to:
  /// **'Would you like to add {username} member to {clubName}?'**
  String wouldYouLikeToAddUsernameMemberToClubName(String clubName, String username);

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;
}

class _StringsDelegate extends LocalizationsDelegate<Strings> {
  const _StringsDelegate();

  @override
  Future<Strings> load(Locale locale) {
    return SynchronousFuture<Strings>(lookupStrings(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_StringsDelegate old) => false;
}

Strings lookupStrings(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return StringsEn();
    case 'id': return StringsId();
  }

  throw FlutterError(
    'Strings.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
