// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChataiStruct extends FFFirebaseStruct {
  ChataiStruct({
    String? message,
    Role? role,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _message = message,
        _role = role,
        super(firestoreUtilData);

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "Role" field.
  Role? _role;
  Role? get role => _role;
  set role(Role? val) => _role = val;

  bool hasRole() => _role != null;

  static ChataiStruct fromMap(Map<String, dynamic> data) => ChataiStruct(
        message: data['Message'] as String?,
        role: data['Role'] is Role
            ? data['Role']
            : deserializeEnum<Role>(data['Role']),
      );

  static ChataiStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChataiStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Message': _message,
        'Role': _role?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Message': serializeParam(
          _message,
          ParamType.String,
        ),
        'Role': serializeParam(
          _role,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static ChataiStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChataiStruct(
        message: deserializeParam(
          data['Message'],
          ParamType.String,
          false,
        ),
        role: deserializeParam<Role>(
          data['Role'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'ChataiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChataiStruct &&
        message == other.message &&
        role == other.role;
  }

  @override
  int get hashCode => const ListEquality().hash([message, role]);
}

ChataiStruct createChataiStruct({
  String? message,
  Role? role,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChataiStruct(
      message: message,
      role: role,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChataiStruct? updateChataiStruct(
  ChataiStruct? chatai, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatai
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChataiStructData(
  Map<String, dynamic> firestoreData,
  ChataiStruct? chatai,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatai == null) {
    return;
  }
  if (chatai.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatai.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chataiData = getChataiFirestoreData(chatai, forFieldValue);
  final nestedData = chataiData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatai.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChataiFirestoreData(
  ChataiStruct? chatai, [
  bool forFieldValue = false,
]) {
  if (chatai == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatai.toMap());

  // Add any Firestore field values
  chatai.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChataiListFirestoreData(
  List<ChataiStruct>? chatais,
) =>
    chatais?.map((e) => getChataiFirestoreData(e, true)).toList() ?? [];
