import '../../../data/dto/home_page/live_user_dto.dart';
import '../../../data/dto/home_page/room_info_dto.dart';
import '../../entity/home_page/home_grid_entity.dart';
import '../../repository/home_page/home_page_repository.dart';
import '../../translator/home_page/home_grid_entity_translator.dart';

class HomePageUseCase {
  final HomePageRepository repository = HomePageRepository();
  final HomeGridEntity errorModel = HomeGridEntity(
    title: 'cannot get title',
    isLive: 0,
    roomId: '0',
    coverUrl: '',
    shortId: '0',
    userName: 'fetch data error',
  );

  Future<List<HomeGridEntity>?> getHomeGridEntityList(
      List<String> roomIds) async {
    List<HomeGridEntity>? list = [];
    for (var element in roomIds) {
      list.add((await _getHomePageLiveDetails(element)) ?? errorModel);
    }
    if (list.isNotEmpty) {
      return list;
    }
    return null;
  }

  Future<bool> checkRoomValid(String roomId) async {
    final RoomInfoDto? result = await repository.getRoomInfoDto(roomId);
    if (result != null) {
      return true;
    }
    return false;
  }

  Future<HomeGridEntity?> _getHomePageLiveDetails(String roomId) async {
    final RoomInfoDto? roomInfoDto = await repository.getRoomInfoDto(roomId);
    late final LiveUserDto? liveUserDto;
    if (roomInfoDto != null) {
      liveUserDto = await repository.getLiveUserDto(roomInfoDto.uid.toString());
    }
    if (roomInfoDto != null && liveUserDto != null) {
      return HomeGridEntityTranslator.mapDtoToEntity(roomInfoDto, liveUserDto);
    }
    return null;
  }
}
