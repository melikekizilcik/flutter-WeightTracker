import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


part 'record.freezed.dart';

part 'record.g.dart';

@freezed
class Record with _$Record {
  const factory Record({
    required int weight,
    required DateTime dateTime,
    final String? note,
    final String? photoUrl,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic?> json)
      => _$RecordFromJson(json);
}
