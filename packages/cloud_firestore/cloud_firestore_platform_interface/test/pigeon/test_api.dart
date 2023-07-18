// Autogenerated from Pigeon (v10.1.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cloud_firestore_platform_interface/src/pigeon/messages.pigeon.dart';

class _TestFirebaseFirestoreHostApiCodec extends StandardMessageCodec {
  const _TestFirebaseFirestoreHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonDocumentChange) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonDocumentSnapshot) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonDocumentSnapshot) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFirebaseApp) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFirebaseSettings) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is PigeonGetOptions) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is PigeonQuerySnapshot) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is PigeonSnapshotMetadata) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonDocumentChange.decode(readValue(buffer)!);
      case 129:
        return PigeonDocumentSnapshot.decode(readValue(buffer)!);
      case 130:
        return PigeonDocumentSnapshot.decode(readValue(buffer)!);
      case 131:
        return PigeonFirebaseApp.decode(readValue(buffer)!);
      case 132:
        return PigeonFirebaseSettings.decode(readValue(buffer)!);
      case 133:
        return PigeonGetOptions.decode(readValue(buffer)!);
      case 134:
        return PigeonQuerySnapshot.decode(readValue(buffer)!);
      case 135:
        return PigeonSnapshotMetadata.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestFirebaseFirestoreHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec =
      _TestFirebaseFirestoreHostApiCodec();

  Future<String> loadBundle(PigeonFirebaseApp app, Uint8List bundle);

  Future<PigeonQuerySnapshot> namedQueryGet(
      PigeonFirebaseApp app, String name, PigeonGetOptions options);

  Future<PigeonQuerySnapshot> clearPersistence(PigeonFirebaseApp app);

  static void setup(TestFirebaseFirestoreHostApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle was null, expected non-null PigeonFirebaseApp.');
          final Uint8List? arg_bundle = (args[1] as Uint8List?);
          assert(arg_bundle != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle was null, expected non-null Uint8List.');
          final String output = await api.loadBundle(arg_app!, arg_bundle!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet was null, expected non-null PigeonFirebaseApp.');
          final String? arg_name = (args[1] as String?);
          assert(arg_name != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet was null, expected non-null String.');
          final PigeonGetOptions? arg_options = (args[2] as PigeonGetOptions?);
          assert(arg_options != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet was null, expected non-null PigeonGetOptions.');
          final PigeonQuerySnapshot output =
              await api.namedQueryGet(arg_app!, arg_name!, arg_options!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseFirestoreHostApi.clearPersistence', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.clearPersistence was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final PigeonFirebaseApp? arg_app = (args[0] as PigeonFirebaseApp?);
          assert(arg_app != null,
              'Argument for dev.flutter.pigeon.FirebaseFirestoreHostApi.clearPersistence was null, expected non-null PigeonFirebaseApp.');
          final PigeonQuerySnapshot output =
              await api.clearPersistence(arg_app!);
          return <Object?>[output];
        });
      }
    }
  }
}