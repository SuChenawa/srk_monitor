import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:srk_monitor/services/base_resopnse.dart';

import '../models/responses/room_info_response_data.dart';
import '../services/home_page_services.dart';

class StreamerNotifier extends StateNotifier<List<RoomInfoResponse>> {
  late SharedPreferences prefs;
  List<String> roomIds = [];
  // 關注的房間list
  StreamerNotifier() : super([]) {
    // initialize shared_preferences
    initpref();
  }

  void addStreamer(BuildContext context, String roomId) async {
    if (await checkRoomValid(roomId)) {
      roomIds = [...roomIds, roomId];
      prefs.setStringList('subscripe', roomIds);
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
    prefs.setStringList('subscripe', roomIds);
    fetchData();
  }

  Future<bool> checkRoomValid(String roomId) async {
    BaseResponse respons = await HomePageServices().getRoomInfo(roomId);
    debugPrint(respons.code.toString());
    if (respons.code == 0) {
      return true;
    } else {
      return false;
    }
  }

  void fetchData() async {
    List<RoomInfoResponse> roomList = [];
    for (var id in roomIds) {
      BaseResponse respons = await HomePageServices().getRoomInfo(id);
      if (respons.code == 0) {
        RoomInfoResponse data = respons.data;
        roomList = [...roomList, data];
        state = roomList;
      }
    }
  }

  void initpref() async {
    prefs = await SharedPreferences.getInstance();
    roomIds = prefs.getStringList('subscripe') ?? [];
    fetchData();
  }
}

final streamerProvider =
    StateNotifierProvider<StreamerNotifier, List<RoomInfoResponse>>((ref) {
  return StreamerNotifier();
});
