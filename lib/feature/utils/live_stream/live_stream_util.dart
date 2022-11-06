import '../../../core/data/local_storage/live_stream/big1_small7/local_big1_small7_storage.dart';
import '../../../core/domain/entity/live_stream/live_stream_entity.dart';

class LiveStreamUtil {
  static LiveStreamEntity? getLiveUrlsFromEntity(
    List<LiveStreamEntity>? entityList,
    LocalBig1Small7StorageModel? storageModel,
    int playerId,
  ) {
    String? roomId;
    if (storageModel?.big1Small7 != null) {
      storageModel?.big1Small7?.forEach((element) {
        if (element.playerId == playerId) {
          roomId = element.roomId;
        }
      });
      if (roomId != null && entityList != null) {
        for (var element in entityList) {
          if (element.roomId == roomId) {
            return element;
          }
        }
      }
    }
    return null;
  }
}
