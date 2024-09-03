import 'strings.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class StringsEn extends Strings {
  StringsEn([String locale = 'en']) : super(locale);

  @override
  String get account => 'Account';

  @override
  String get accountCreated => 'Account created';

  @override
  String get addExercise => 'Add Exercise';

  @override
  String get addMember => 'Add Member';

  @override
  String get addQuestion => 'Add Question';

  @override
  String get exercise => 'Exercise';

  @override
  String get address => 'Address';

  @override
  String get addressIsRequired => 'Address is required';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';

  @override
  String get answer => 'Answer';

  @override
  String get processing => 'Processing...';

  @override
  String get assetsIsEmpty => 'Assets is empty';

  @override
  String get assetUploadSuccess => 'Asset uploaded successfully';

  @override
  String get noFileSelected => 'No file selected';

  @override
  String get pleaseWaitAssetIsBeingProcessed => 'Please wait, asset is being processed...';

  @override
  String get downloadingAssets => 'Downloading assets...';

  @override
  String get upload => 'Upload';

  @override
  String get uploadingAssets => 'Uploading assets...';

  @override
  String get size => 'Size';

  @override
  String get selectTacticalBoard => 'Select tactical board';

  @override
  String get assetInfo => 'Asset Info';

  @override
  String get urlCopied => 'URL copied';

  @override
  String get close => 'Close';

  @override
  String areYouSureYouWantToDeleteAthleteNameEvaluation(String? athleteName) {
    return 'Are you sure you want to delete $athleteName evaluation?';
  }

  @override
  String areYouSureYouWantToDeleteExam(String? examName) {
    return 'Are you sure you want to delete $examName exam?';
  }

  @override
  String areYouSureYouWantToDeleteProgram(String? programName) {
    return 'Are you sure you want to delete $programName program?';
  }

  @override
  String areYouSureYouWantToKickUsernameFromClubName(String? clubName, String? username) {
    return 'Are you sure you want to kick $username from $clubName?';
  }

  @override
  String areYouSureYouWantToLeaveClubName(String? clubName) {
    return 'Are you sure you want to leave $clubName?';
  }

  @override
  String get assets => 'Assets';

  @override
  String get athlete => 'Athlete';

  @override
  String get athleteDetail => 'Athlete Detail';

  @override
  String get athleteEvaluation => 'Athlete Evaluation';

  @override
  String get bornDate => 'Born Date';

  @override
  String get bornDateIsRequired => 'Born date is required';

  @override
  String get bornPlace => 'Born Place';

  @override
  String get bornPlaceIsRequired => 'Born place is required';

  @override
  String get calendar => 'Calendar';

  @override
  String get club => 'Club';

  @override
  String clubAbout(String? clubName) {
    return '$clubName About';
  }

  @override
  String get clubCreatedSuccessfully => 'Club created successfully';

  @override
  String get clubDescription => 'Club Description';

  @override
  String get clubDescriptionIsRequired => 'Club description is required';

  @override
  String clubDetail(String? clubName) {
    return '$clubName Detail';
  }

  @override
  String clubDoesntHaveAnyEvaluation(String? clubName) {
    return '$clubName doesn\'t have any evaluation yet';
  }

  @override
  String clubDoesntHaveAnyExam(String? clubName) {
    return '$clubName doesn\'t have any exam yet';
  }

  @override
  String clubDoesntHaveAnyProgram(String? clubName) {
    return '$clubName doesn\'t have any program yet';
  }

  @override
  String clubDoesntHaveAnyTactic(String? clubName) {
    return '$clubName doesn\'t have any tactic yet';
  }

  @override
  String get clubImageIsRequired => 'Club image is required';

  @override
  String clubMembers(String? clubName) {
    return '$clubName Members';
  }

  @override
  String get clubName => 'Club Name';

  @override
  String get clubNameIsRequired => 'Club name is required';

  @override
  String clubOverview(String? clubName) {
    return '$clubName Overview';
  }

  @override
  String clubPrograms(String? clubName) {
    return '$clubName Programs';
  }

  @override
  String get clubUpdatedSuccessfully => 'Club updated successfully';

  @override
  String clubWithNameNotFound(String name) {
    return 'Club with name $name not found';
  }

  @override
  String get createClub => 'Create Club';

  @override
  String get createEvaluation => 'Create Evaluation';

  @override
  String get createEvaluationFailed => 'Create evaluation failed';

  @override
  String get createExam => 'Create Exam';

  @override
  String get createExamFailed => 'Create exam failed';

  @override
  String get createFailed => 'Create failed';

  @override
  String get createProgram => 'Create Program';

  @override
  String get createSuccess => 'Create success';

  @override
  String get createTactical => 'Create Tactical';

  @override
  String get deleteEvaluation => 'Delete Evaluation';

  @override
  String get deleteExam => 'Delete Exam';

  @override
  String get deleteExamFailed => 'Delete exam failed';

  @override
  String get deleteFailed => 'Delete failed';

  @override
  String get deleteProgram => 'Delete Program';

  @override
  String get deleteProgramFailed => 'Delete program failed';

  @override
  String get deleteSuccess => 'Delete success';

  @override
  String get description => 'Description';

  @override
  String get detail => 'Detail';

  @override
  String get dontHaveAnAccount => 'Don\'t have an account?';

  @override
  String get email => 'Email';

  @override
  String get emailIsRequired => 'Email is required';

  @override
  String get emailOrUsernameOrPhone => 'Email or username or phone';

  @override
  String get emailOrUsernameOrPhoneIsRequired => 'Email or username or phone is required';

  @override
  String get endDate => 'End Date';

  @override
  String get enterClubDescription => 'Enter club description';

  @override
  String get enterClubName => 'Enter club name';

  @override
  String get enterExamDescription => 'Enter exam description';

  @override
  String get enterExamTitle => 'Enter exam title';

  @override
  String get enterExerciseDescription => 'Enter exercise description';

  @override
  String get enterExerciseName => 'Enter exercise name';

  @override
  String get enterHeight => 'Enter height';

  @override
  String get enterProgramEndDate => 'Enter program end date';

  @override
  String get enterProgramName => 'Enter program name';

  @override
  String get enterProgramStartDate => 'Enter program start date';

  @override
  String get enterQuestion => 'Enter question';

  @override
  String get enterTacticalDescription => 'Enter tactical description';

  @override
  String get enterTacticalName => 'Enter tactical name';

  @override
  String get enterTotalIntensity => 'Enter total intensity';

  @override
  String get enterTotalPlayers => 'Enter total players';

  @override
  String get enterTotalReps => 'Enter total reps';

  @override
  String get enterTotalRest => 'Enter total rest';

  @override
  String get enterTotalSets => 'Enter total sets';

  @override
  String get enterTotalTempo => 'Enter tempo';

  @override
  String get enterWidth => 'Enter width';

  @override
  String get enterYourAddress => 'Enter your address';

  @override
  String get enterYourBornDate => 'Enter your born date';

  @override
  String get enterYourBornPlace => 'Enter your born place';

  @override
  String get enterYourEmail => 'Enter your email';

  @override
  String get enterYourEmailOrUsernameOrPhone => 'Enter your email or username or phone';

  @override
  String get enterYourExpertise => 'Enter your expertise';

  @override
  String get enterYourFullName => 'Enter your full name';

  @override
  String get enterYourGender => 'Enter your gender';

  @override
  String get enterYourPassword => 'Enter your password';

  @override
  String get enterYourPhone => 'Enter your phone';

  @override
  String get enterYourReligion => 'Enter your religion';

  @override
  String get enterYourUsername => 'Enter your username';

  @override
  String get error => 'Error';

  @override
  String get evaluate => 'Evaluate';

  @override
  String get evaluation => 'Evaluation';

  @override
  String get evaluationCreatedSuccessfully => 'Evaluation created successfully';

  @override
  String evaluationDeletedSuccessfully(String? athleteName) {
    return '$athleteName evaluation deleted successfully';
  }

  @override
  String get evaluationDetail => 'Evaluation Detail';

  @override
  String get evaluations => 'Evaluations';

  @override
  String get evaluationUpdatedSuccessfully => 'Evaluation updated successfully';

  @override
  String get evaluator => 'Evaluator';

  @override
  String get exam => 'Exam';

  @override
  String get examDeletedSuccessfully => 'Exam deleted successfully';

  @override
  String get examDescription => 'Exam Description';

  @override
  String get examDescriptionIsRequired => 'Exam description is required';

  @override
  String get examDetail => 'Exam Detail';

  @override
  String examQuestions(String? examName) {
    return '$examName Questions';
  }

  @override
  String get exams => 'Exams';

  @override
  String get examTitle => 'Exam Title';

  @override
  String get examTitleIsRequired => 'Exam title is required';

  @override
  String get exerciseDescription => 'Exercise Description';

  @override
  String get exerciseName => 'Exercise Name';

  @override
  String get exerciseNameIsRequired => 'Exercise name is required';

  @override
  String get exercises => 'Exercises';

  @override
  String get exerciseSavedSuccessfully => 'Exercise saved successfully';

  @override
  String get expertise => 'Expertise';

  @override
  String get expertiseIsRequired => 'Expertise is required';

  @override
  String get failedToUpdateTacticalStrategy => 'Failed to update tactical strategy';

  @override
  String get fullName => 'Full name';

  @override
  String get fullNameIsRequired => 'Full name is required';

  @override
  String get gender => 'Gender';

  @override
  String get genderIsRequired => 'Gender is required';

  @override
  String get height => 'Height (m)';

  @override
  String get heightIsRequired => 'Height is required';

  @override
  String get intensity => 'Intensity';

  @override
  String get intensityIsRequired => 'Intensity is required';

  @override
  String get invalidCredentials => 'Invalid credentials';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get invalidNumber => 'Invalid number';

  @override
  String get invalidOption => 'Invalid option';

  @override
  String get invalidPhone => 'Invalid phone';

  @override
  String get invalidPhoneNumber => 'Invalid phone number';

  @override
  String get invalidUnit => 'Unit tidak valid';

  @override
  String get kickMember => 'Kick Member';

  @override
  String get leaveClub => 'Leave Club';

  @override
  String get loadingExercises => 'Loading exercises...';

  @override
  String get loadingQuestions => 'Loading questions...';

  @override
  String get members => 'Members';

  @override
  String get myClubs => 'My Clubs';

  @override
  String get name => 'Name';

  @override
  String get newClub => 'New Club';

  @override
  String get newEvaluation => 'New Evaluation';

  @override
  String get newExam => 'New Exam';

  @override
  String get newProgram => 'New Program';

  @override
  String get newTactic => 'New Tactic';

  @override
  String get no => 'No';

  @override
  String get noImageSelected => 'No image selected';

  @override
  String get noSpaceAllowed => 'No space allowed';

  @override
  String get notJoinedAnyClubs => 'Not joined any clubs';

  @override
  String get obsecuredState => 'Obsecured State';

  @override
  String get overview => 'Overview';

  @override
  String get password => 'Password';

  @override
  String get passwordIsRequired => 'Password is required';

  @override
  String get passwordMustBeAtLeast8Characters => 'Password must be at least 8 characters';

  @override
  String get phone => 'Phone';

  @override
  String get phoneIsRequired => 'Phone is required';

  @override
  String get pleaseRestartTheApp => 'Please restart the app';

  @override
  String get pleaseSelectAnImageForEachExercise => 'Please select an image for each exercise';

  @override
  String get pleaseSelectUnit => 'Silakan pilih unit';

  @override
  String get pleaseTryAgain => 'Please try again';

  @override
  String get preferences => 'Preferences';

  @override
  String get profileUpdatedSuccessfully => 'Profile updated successfully';

  @override
  String get program => 'Program';

  @override
  String get programCreateFailed => 'Program create failed';

  @override
  String get programDeletedSuccessfully => 'Program deleted successfully';

  @override
  String get programDetail => 'Program Detail';

  @override
  String get programEndDate => 'Program End Date';

  @override
  String get programEndDateIsRequired => 'Program end date is required';

  @override
  String get programImageIsRequired => 'Program image is required';

  @override
  String get programName => 'Program Name';

  @override
  String get programNameIsRequired => 'Program name is required';

  @override
  String get programs => 'Programs';

  @override
  String get programStartDate => 'Program Start Date';

  @override
  String get programStartDateIsRequired => 'Program start date is required';

  @override
  String get programUpdateFailed => 'Program update failed';

  @override
  String get question => 'Question';

  @override
  String get questionIsRequired => 'Question is required';

  @override
  String get questions => 'Questions';

  @override
  String get questionSavedSuccessfully => 'Question saved successfully';

  @override
  String get questionSaveFailed => 'Question save failed';

  @override
  String get questionType => 'Question Type';

  @override
  String get questionTypeIsRequired => 'Question type is required';

  @override
  String get religion => 'Religion';

  @override
  String get religionIsRequired => 'Religion is required';

  @override
  String get reload => 'Reload';

  @override
  String get reps => 'Reps';

  @override
  String get repsIsRequired => 'Reps is required';

  @override
  String get rest => 'Rest';

  @override
  String get restIsRequired => 'Rest is required';

  @override
  String get role => 'Role';

  @override
  String get roleIsRequired => 'Role is required';

  @override
  String get save => 'Save';

  @override
  String get saveStrategy => 'Save Strategy';

  @override
  String get search => 'Search';

  @override
  String get selectExerciseAsset => 'Select exercise asset';

  @override
  String get selectProgramAsset => 'Select program asset';

  @override
  String get selectQuestionType => 'Select question type';

  @override
  String get selectRole => 'Select role';

  @override
  String get selectSportType => 'Select sport type';

  @override
  String get sets => 'Sets';

  @override
  String get setsIsRequired => 'Sets is required';

  @override
  String get signIn => 'Sign In';

  @override
  String get signInFailed => 'Sign in failed';

  @override
  String get signInSuccess => 'Sign in Success';

  @override
  String get signOut => 'Sign Out';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signUpFailed => 'Sign up failed';

  @override
  String get signUpSuccess => 'Sign up success';

  @override
  String get sportType => 'Sport Type';

  @override
  String get sportTypeIsRequired => 'Sport type is required';

  @override
  String get startDate => 'Start Date';

  @override
  String get strategyNotFound => 'Strategy not found';

  @override
  String get success => 'Success';

  @override
  String get tactic => 'Tactic';

  @override
  String get tacticalBoard => 'Tactical Board';

  @override
  String get tacticalBoardIsRequired => 'Tactical board is required';

  @override
  String get tacticalDescription => 'Tactical Description';

  @override
  String get tacticalDescriptionIsRequired => 'Tactical description is required';

  @override
  String get tacticalName => 'Tactical Name';

  @override
  String get tacticalNameIsRequired => 'Tactical name is required';

  @override
  String get tacticalStrategyUpdatedSuccessfully => 'Tactical strategy updated successfully';

  @override
  String get tactics => 'Tactics';

  @override
  String get tempo => 'Tempo';

  @override
  String get tempoIsRequired => 'Tempo is required';

  @override
  String get title => 'Title';

  @override
  String get totalPlayers => 'Total Players / Team';

  @override
  String get totalPlayersIsRequired => 'Total players is required';

  @override
  String get type => 'Type';

  @override
  String updateClub(String? clubName) {
    return 'Update $clubName';
  }

  @override
  String get updateEvaluation => 'Update Evaluation';

  @override
  String get updateEvaluationFailed => 'Update evaluation failed';

  @override
  String get updateExam => 'Update Exam';

  @override
  String get updateExamFailed => 'Update exam failed';

  @override
  String get updateFailed => 'Update failed';

  @override
  String get updateProfile => 'Update Profile';

  @override
  String get updateProfileFailed => 'Update profile failed';

  @override
  String get updateProgram => 'Update Program';

  @override
  String get updateSuccess => 'Update success';

  @override
  String get updateTactical => 'Update Tactical';

  @override
  String get username => 'Username';

  @override
  String get usernameCannotContainSpace => 'Username cannot contain space';

  @override
  String get usernameIsAlreadyTaken => 'Username is already taken';

  @override
  String get usernameIsRequired => 'Username is required';

  @override
  String get usernameSuggestions => 'Username Suggestions';

  @override
  String userWithNameNotFound(String name) {
    return 'User with name $name not found';
  }

  @override
  String welcomeBack(String name) {
    return 'Welcome back $name';
  }

  @override
  String get width => 'Width (m)';

  @override
  String get widthIsRequired => 'Width is required';

  @override
  String wouldYouLikeToAddUsernameMemberToClubName(String clubName, String username) {
    return 'Would you like to add $username member to $clubName?';
  }

  @override
  String get yes => 'Yes';
}
