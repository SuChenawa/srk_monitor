import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';

import '../../../../core/domain/entity/live_stream/live_stream_entity.dart';

class StreamPlayer extends StatefulWidget {
  final bool playSound;
  final int playerId;
  final LiveStreamEntity? liveStreamEntity;
  const StreamPlayer({
    super.key,
    required this.playerId,
    required this.liveStreamEntity,
    required this.playSound,
  });

  @override
  State<StreamPlayer> createState() => _StreamPlayerState();
}

class _StreamPlayerState extends State<StreamPlayer> {
  Player? player;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player?.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player = Player(
      id: widget.playerId,
      // registerTexture: !Platform.isWindows,
    );
  }

  MediaType mediaType = MediaType.network;
  CurrentState current = CurrentState();
  List<Device> devices = Devices.all;
  @override
  Widget build(BuildContext context) {
    if (widget.liveStreamEntity != null) {
      final media = Media.network(widget.liveStreamEntity?.urls?[0]);
      debugPrint('liveUrl: ${widget.liveStreamEntity?.urls?[0]}');
      player?.setDevice(
        devices[0],
      );
      player?.setVolume(0.3);
      player?.open(media);
    }

    // TODO we should use NativeVideo but somehow its not working perfectly
    // NativeVideo has better performance and less cpu usage.
    return widget.liveStreamEntity == null &&
            widget.liveStreamEntity?.isLive == true
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            child: Video(
              player: player,
              showControls: true,
            ),
          );
  }
}
