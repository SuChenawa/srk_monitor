import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';

class StreamPlayer extends StatefulWidget {
  const StreamPlayer({super.key});

  @override
  State<StreamPlayer> createState() => _StreamPlayerState();
}

class _StreamPlayerState extends State<StreamPlayer> {
  Player player = Player(
    id: 0,
    // registerTexture: !Platform.isWindows,
  );

  MediaType mediaType = MediaType.network;
  CurrentState current = CurrentState();
  List<Device> devices = Devices.all;

  final media = Media.network(
      'https://d1--ov-gotcha07.bilivideo.com/live-bvc/794309/live_2183946_2272552_1500.flv?expires=1664105461&len=0&oi=3082008281&pt=&qn=0&trid=10008defaf253c1643c88b19324e700604a4&sigparams=cdn,expires,len,oi,pt,qn,trid&cdn=ov-gotcha07&sign=14b0af77dca5eb5c2abe7b4d1ae7797b&sk=f3250a5abbe81ab3113029bdd3e2ac15&p2p_type=0&src=57345&sl=1&free_type=0&pp=rtmp&source=one&site=5ed3b45b5569bd4c72bea78b3ca632ab&order=1');
  @override
  Widget build(BuildContext context) {
    player.setDevice(
      devices[0],
    );
    player.setVolume(0.3);
    player.open(media);
    // TODO we should use NativeVideo but somehow its not working perfectly
    // NativeVideo has better performance and less cpu usage.
    return Video(
      player: player,
      showControls: true,
    );
  }
}
