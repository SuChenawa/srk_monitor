import 'package:flutter/foundation.dart';
import 'package:srk_monitor/core/data/data_source/home_page/live_room_info_data_source.dart';
import 'package:srk_monitor/core/data/data_source/home_page/live_user_info_data_source.dart';
import 'package:srk_monitor/core/data/dto/base_resopnse.dart';
import 'package:srk_monitor/core/data/dto/home_page/live_user_dto.dart';
import 'package:srk_monitor/core/data/dto/home_page/room_info_dto.dart';

class HomePageRepository {
  final LiveRoomInfoDataSource _liveRoomInfoDataSource =
      LiveRoomInfoDataSource();
  final LiveUserInfoDataSource _liveUserInfoDataSource =
      LiveUserInfoDataSource();

  Future<LiveUserDto?> getLiveUserDto(String uid) async {
    try {
      final BaseResponse response =
          await _liveUserInfoDataSource.getLiveUser(uid);
      if (response.code == 0) {
        LiveUserDto liveUserDto = response.data;
        return liveUserDto;
      }
      return null;
    } catch (e) {
      debugPrint('HomePageRepository._getLiveUserDto error: $e');
      return null;
    }
  }

  Future<RoomInfoDto?> getRoomInfoDto(String roomId) async {
    try {
      final BaseResponse response =
          await _liveRoomInfoDataSource.getRoomInfo(roomId);
      if (response.code == 0) {
        RoomInfoDto roomInfoDto = response.data;
        return roomInfoDto;
      }
      return null;
    } catch (e) {
      debugPrint('HomePageRepository._getRoomInfoDto error: $e');
      return null;
    }
  }
}
