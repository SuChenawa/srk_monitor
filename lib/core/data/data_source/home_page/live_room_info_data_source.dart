import '../../api/api.dart';
import '../../dto/base_resopnse.dart';
import '../../dto/home_page/room_info_dto.dart';
import '../../http_services/http_services.dart';

class LiveRoomInfoDataSource {
  final HttpService httpService = HttpService();
  Future<BaseResponse> getRoomInfo(String roomId) async {
    try {
      Map<String, dynamic> queryParams = {
        'room_id': roomId,
      };
      final urlParams = Uri(queryParameters: queryParams).query;
      final url = '${Api.getRoomInfoUrl()}?$urlParams';
      final jsonData = await httpService.get(url);
      if (jsonData.isNotEmpty) {
        BaseResponse baseResponse =
            BaseResponse.fromSuccess({}, RoomInfoDto.fromJson(jsonData));
        return baseResponse;
      } else {
        return BaseResponse.fromFail(jsonData, {});
      }
    } catch (e) {
      BaseResponse result = BaseResponse.fromFail({}, {});
      return result;
    }
  }
}
