import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/services/base_resopnse.dart';
import 'package:srk_monitor/views/home_page/providers/streamer_notifier.dart';
import 'package:srk_monitor/core/data/data_source/home_page/live_user_info_data_source.dart';

import '../models/responses/live_user_response.dart';
import '../models/responses/room_info_response_data.dart';

class LiveUserNotifier extends StateNotifier<List<LiveUserResponse>> {
  LiveUserNotifier(this.roomInfoList) : super([]) {
    getUserIdList();
    debugPrint(userIdList.toString());
    fetchData();
  }

  List<RoomInfoResponse>? roomInfoList;
  List<String>? userIdList;

  void getUserIdList() {
    if (roomInfoList != null) {
      roomInfoList?.forEach(
        (element) {
          userIdList = [...?userIdList, element.uid.toString()];
        },
      );
    }
  }

  void fetchData() async {
    if (userIdList != null) {
      for (var uid in userIdList!) {
        BaseResponse response = await HomePageServices().getLiveUser(uid);
        if (response.code == 0) {
          LiveUserResponse data = response.data;
          state = [...state, data];
        }
      }
    }
  }
}

final liveUserProvider =
    StateNotifierProvider<LiveUserNotifier, List<LiveUserResponse>>(
  (ref) => LiveUserNotifier(
    ref.watch(streamerProvider),
  ),
);
