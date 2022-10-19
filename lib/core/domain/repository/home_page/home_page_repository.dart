import 'package:flutter/foundation.dart';
import 'package:srk_monitor/core/data/data_source/home_page/live_room_info_data_source.dart';
import 'package:srk_monitor/core/data/data_source/home_page/live_user_info_data_source.dart';
import 'package:srk_monitor/core/data/dto/base_resopnse.dart';
import 'package:srk_monitor/core/data/dto/home_page/live_user_dto.dart';
import 'package:srk_monitor/core/data/dto/home_page/room_info_dto.dart';

import '../../entity/home_page/home_grid_entity.dart';

class HomePageRepository {
  final LiveRoomInfoDataSource _liveRoomInfoDataSource =
      LiveRoomInfoDataSource();
  final LiveUserInfoDataSource _liveUserInfoDataSource =
      LiveUserInfoDataSource();

  Future<HomeGridEntity> getHomePageLiveDetails(String roomId) async {
    final RoomInfoDto? roomInfoDto = await _getRoomInfoDto(roomId);
    late final LiveUserDto? liveUserDto;
    if (roomInfoDto != null) {
      liveUserDto = await _getLiveUserDto(roomInfoDto.uid.toString());
    }
    // TODO Mapper;
  }

  Future<LiveUserDto?> _getLiveUserDto(String uid) async {
    try {
      final BaseResponse response =
          await _liveUserInfoDataSource.getLiveUser(uid);
      if (response.code == 0) {
        LiveUserDto liveUserDto = response.data;
        return liveUserDto;
      }
    } catch (e) {
      debugPrint('HomePageRepository._getLiveUserDto error: $e');
    }
  }

  Future<RoomInfoDto?> _getRoomInfoDto(String roomId) async {
    try {
      final BaseResponse response =
          await _liveRoomInfoDataSource.getRoomInfo(roomId);
      if (response.code == 0) {
        RoomInfoDto roomInfoDto = response.data;
        return roomInfoDto;
      }
    } catch (e) {
      debugPrint('HomePageRepository._getRoomInfoDto error: $e');
    }
  }
}
