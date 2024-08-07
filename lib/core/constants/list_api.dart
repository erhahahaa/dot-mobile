// ignore_for_file: constant_identifier_names

class ListAPI {
  ListAPI._();

  static const String CLEAN_URL = '192.168.53.169:3000';

  static const String BASE_URL = 'http://$CLEAN_URL';
  // static const String BASE_URL = 'https://dot-api.zenta.dev';

  static const String AUTH_SIGN_UP = '/auth/sign-up';
  static const String AUTH_SIGN_IN = '/auth/sign-in';
  static const String AUTH_ME = '/auth/me';
  static const String AUTH_LOGOUT = '/auth/logout';

  static const String CLUB = '/club';
  static const String CLUB_PROGRAM = '/club/program';
  static const String CLUB_PROGRAM_EXERCISE = '/club/program/exercise';
  static const String CLUB_EXAM = '/club/exam';
  static const String CLUB_EXAM_QUESTION = '/club/exam/question';
  static const String CLUB_EXAM_EVALUATION = '/club/exam/evaluation';
  static const String CLUB_TACTICAL = '/club/tactical';

  static const String USER = '/user';

  static const String MEDIA = '/media';

  static const String WEBSOCKET = 'ws://$CLEAN_URL';
  static const String LIVE_TACTICAL = '$WEBSOCKET/live/tactical';
}
