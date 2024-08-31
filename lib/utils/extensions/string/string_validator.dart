extension StringValidator on String {
  bool get isEmail {
    if (contains('@') && contains('.')) {
      return true;
    }
    return false;
  }

  bool get isPhoneNumber {
    if (startsWith('8')) {
      return true;
    }
    if (startsWith('0')) {
      return true;
    }
    if (startsWith('+')) {
      return true;
    }
    if (startsWith('62')) {
      return true;
    }
    return false;
  }

  bool get isValidEmail {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    return passwordRegex.hasMatch(this);
  }

  bool get isValidName {
    final nameRegex = RegExp(r'^[a-zA-Z ]+$');
    return nameRegex.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegex = RegExp(r'^8[0-9]{8,15}$');
    return phoneRegex.hasMatch(this);
  }

  bool get isContainUpperCase {
    final upperCaseRegex = RegExp(r'[A-Z]');
    return upperCaseRegex.hasMatch(this);
  }

  bool get isContainSpace {
    final spaceRegex = RegExp(r'\s');
    return spaceRegex.hasMatch(this);
  }
}
