import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/data/local_storage/live_stream/big1_small7/local_big1_small7_storage.dart';

class Big1Small7Notifier extends StateNotifier<LocalBig1Small7StorageModel> {
  Big1Small7Notifier() : super(LocalBig1Small7StorageModel()) {
    initPref();
  }
  late SharedPreferences prefs;
  final String _prefKey = 'big1Small7';

  void initPref() async {
    prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_prefKey);
    if (jsonString != null) {
      final jsonData = jsonDecode(jsonString);
      final storageModel = LocalBig1Small7StorageModel.fromJson(jsonData);
      state = storageModel;
    }
  }

  void setRoom(int playerId, String roomId) {
    LocalBig1Small7StorageModel storage = state;
    bool shouldReplace =
        storage.big1Small7?.any((element) => element.playerId == playerId) ??
            false;
    if (shouldReplace) {
      storage.big1Small7?.forEach((element) {
        if (element.playerId == playerId) {
          element.roomId = roomId;
        }
      });
    } else {
      final Big1Small7 big1small7 = Big1Small7(
        playerId: playerId,
        roomId: roomId,
      );
      storage.big1Small7 = [
        ...?storage.big1Small7,
        big1small7,
      ];
    }
    prefs.setString(
      _prefKey,
      jsonEncode(storage.toJson()),
    );
    state = storage;
  }

  // ONlY f0r teSt1Ng
  void dummyFakeData() {
    setRoom(1, '4506805');
    setRoom(2, '550335');
  }
}

final big1Small7NotifierProvider =
    StateNotifierProvider<Big1Small7Notifier, LocalBig1Small7StorageModel>(
  (ref) {
    return Big1Small7Notifier();
  },
);
