import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/domain/entity/home_page/home_grid_entity.dart';
import '../../../core/domain/use_case/home_page/home_page_use_case.dart';

class StreamerNotifier extends StateNotifier<List<HomeGridEntity>> {
  late SharedPreferences prefs;
  List<String> roomIds = [];
  // 關注的房間list
  StreamerNotifier() : super([]) {
    // initialize shared_preferences
    initPref();
  }
  final HomePageUseCase useCase = HomePageUseCase();

  void addStreamer(BuildContext context, String roomId) async {
    if (await useCase.checkRoomValid(roomId)) {
      roomIds = [...roomIds, roomId];
      prefs.setStringList('subscript', roomIds);
      fetchData();
    } else {
      const snackBar = SnackBar(
        content: Text('錯誤!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void removeStreamer(String roomId, String shortId) {
    roomIds = [
      for (final id in roomIds)
        if (id != roomId) id
    ];
    roomIds = [
      for (final id in roomIds)
        if (id != shortId) id
    ];
    prefs.setStringList('subscript', roomIds);
    fetchData();
  }

  void fetchData() async {
    final List<HomeGridEntity>? entityList =
        await useCase.getHomeGridEntityList(roomIds);
    if (entityList != null) {
      state = entityList;
    }
  }

  void initPref() async {
    prefs = await SharedPreferences.getInstance();
    roomIds = prefs.getStringList('subscript') ?? [];
    fetchData();
  }
}

final streamerProvider =
    StateNotifierProvider<StreamerNotifier, List<HomeGridEntity>>((ref) {
  return StreamerNotifier();
});
