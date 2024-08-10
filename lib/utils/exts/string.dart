import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:flutter/services.dart';

extension StringExt on String {
  bool isContainUpperCase() {
    return contains(RegExp(r'[A-Z]'));
  }

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

  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }

  bool isValidPhoneNumber() {
    return RegExp(
      r'^8[0-9]{8,15}$',
    ).hasMatch(this);
  }

  String? get capitalizeFirst {
    if (isEmpty) {
      return null;
    }
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return split(' ').map((e) => e.capitalizeFirst!).join(' ');
  }

  ProgramRepitionUnit get toRepitionUnit {
    switch (this) {
      case 'rep':
      case 'Rep':
        return ProgramRepitionUnit.rep;
      default:
        return ProgramRepitionUnit.rep;
    }
  }

  ProgramSetsUnit get toSetsUnit {
    switch (this) {
      case 'set':
      case 'Set':
        return ProgramSetsUnit.set;
      default:
        return ProgramSetsUnit.set;
    }
  }

  ProgramRestUnit get toRestUnit {
    switch (this) {
      case 'sec':
      case 'Sec':
      case 'Second':
        return ProgramRestUnit.sec;
      case 'min':
      case 'Min':
      case 'Minute':
        return ProgramRestUnit.min;
      case 'hour':
      case 'Hour':
        return ProgramRestUnit.hour;
      default:
        return ProgramRestUnit.sec;
    }
  }

  ProgramTempoUnit get toTempoUnit {
    switch (this) {
      case 'bpm':
      case 'BPM':
        return ProgramTempoUnit.bpm;
      case 'mpm':
      case 'MPM':
        return ProgramTempoUnit.mpm;
      case 'mph':
      case 'MPH':
        return ProgramTempoUnit.mph;
      case 'kph':
      case 'KPH':
        return ProgramTempoUnit.kph;
      case 'sec':
      case 'Sec':
      case 'Second':
        return ProgramTempoUnit.sec;
      default:
        return ProgramTempoUnit.bpm;
    }
  }

  ProgramIntensityUnit get toIntesityUnit {
    switch (this) {
      case 'rpe':
      case 'RPE':
        return ProgramIntensityUnit.rpe;
      case 'rir':
      case 'RIR':
        return ProgramIntensityUnit.rir;
      case 'rm':
      case 'RM':
        return ProgramIntensityUnit.rm;
      case 'kg':
      case 'KG':
        return ProgramIntensityUnit.kg;
      case 'lbs':
      case 'LBS':
        return ProgramIntensityUnit.lbs;
      default:
        return ProgramIntensityUnit.rpe;
    }
  }

  String sanitize() {
    if (contains('http://127.0.0.1')) {
      final baseUrl = ListAPI.BASE_URL.split(':3000').first;
      return replaceAll('http://127.0.0.1', baseUrl);
    }
    return this;
  }

  String maxChar({int? length}) {
    if (length == null) {
      return this;
    }
    if (this.length <= length) {
      return this;
    }
    return '${substring(0, length)}...';
  }

  void toClipboard() async {
    await Clipboard.setData(ClipboardData(text: this));
  }
}
