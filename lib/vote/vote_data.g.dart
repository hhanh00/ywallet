// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ElectionInfo on _ElectionInfo, Store {
  late final _$filepathAtom =
      Atom(name: '_ElectionInfo.filepath', context: context);

  @override
  String? get filepath {
    _$filepathAtom.reportRead();
    return super.filepath;
  }

  @override
  set filepath(String? value) {
    _$filepathAtom.reportWrite(value, super.filepath, () {
      super.filepath = value;
    });
  }

  late final _$electionAtom =
      Atom(name: '_ElectionInfo.election', context: context);

  @override
  Election? get election {
    _$electionAtom.reportRead();
    return super.election;
  }

  @override
  set election(Election? value) {
    _$electionAtom.reportWrite(value, super.election, () {
      super.election = value;
    });
  }

  late final _$downloadedAtom =
      Atom(name: '_ElectionInfo.downloaded', context: context);

  @override
  bool get downloaded {
    _$downloadedAtom.reportRead();
    return super.downloaded;
  }

  @override
  set downloaded(bool value) {
    _$downloadedAtom.reportWrite(value, super.downloaded, () {
      super.downloaded = value;
    });
  }

  late final _$filesAtom = Atom(name: '_ElectionInfo.files', context: context);

  @override
  List<String> get files {
    _$filesAtom.reportRead();
    return super.files;
  }

  @override
  set files(List<String> value) {
    _$filesAtom.reportWrite(value, super.files, () {
      super.files = value;
    });
  }

  late final _$_ElectionInfoActionController =
      ActionController(name: '_ElectionInfo', context: context);

  @override
  void reloadFileList() {
    final _$actionInfo = _$_ElectionInfoActionController.startAction(
        name: '_ElectionInfo.reloadFileList');
    try {
      return super.reloadFileList();
    } finally {
      _$_ElectionInfoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
filepath: ${filepath},
election: ${election},
downloaded: ${downloaded},
files: ${files}
    ''';
  }
}
