// ignore_for_file: constant_identifier_names

class ListAPI {
  ListAPI._();

  // static const String BASE_URL = 'http:192.168.97.169:3000/api';
  static const String BASE_URL = 'http://192.168.113.169:3000/api';

  static const String AUTH_SIGN_UP = '/auth/sign-up';
  static const String AUTH_SIGN_IN = '/auth/sign-in';
  static const String AUTH_ME = '/auth/me';
  static const String AUTH_LOGOUT = '/auth/logout';

  static const String CLUB = '/club';
  static const String CLUB_PROGRAM = '/club/program';
  static const String CLUB_EXAM = '/club/exam';
  static const String CLUB_EXAM_QUESTION = '/club/exam/question';
  static const String CLUB_TACTICAL = '/club/tactical';
}
