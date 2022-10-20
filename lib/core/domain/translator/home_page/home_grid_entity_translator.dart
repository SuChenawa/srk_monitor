import '../../entity/home_page/home_grid_entity.dart';
import '../../../data/dto/home_page/live_user_dto.dart';
import '../../../data/dto/home_page/room_info_dto.dart';

class HomeGridEntityTranslator {
  static HomeGridEntity mapDtoToEntity(
      RoomInfoDto roomInfoDto, LiveUserDto liveUserDto) {
    return HomeGridEntity(
      roomId: roomInfoDto.roomId.toString(),
      title: roomInfoDto.title,
      isLive: roomInfoDto.liveStatus,
      coverUrl: roomInfoDto.userCover,
      userName: liveUserDto.info?.uname ?? 'Error: Cannot get username',
      shortId: roomInfoDto.shortId.toString(),
    );
  }
}
