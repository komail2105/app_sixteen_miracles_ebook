import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/constants/sizes.dart';
import 'package:app_sixteen_miracles_ebook/models/quran.dart';

import "package:audioplayers/audioplayers.dart";
import 'package:flutter/material.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  late bool image = true;

  final quranList = Quran.generateSurahs();

  var dataindex = 0;

  late bool playlist = false;

  final audioplayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();

    setAudio(dataindex);

    audioplayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });

    audioplayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioplayer.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    audioplayer.onPlayerCompletion.listen((newonDone) {
      setState(() {
        position = Duration.zero;
      });
    });
  }

  Future setAudio(dataindex) async {
    final player = AudioCache(prefix: 'assets/audio/');

    final url = await player.load(quranList[dataindex].audio);

    audioplayer.setUrl(url.path, isLocal: true);

    // String url = quranList[dataindex].audio;
    // audioplayer.setUrl(url);
  }

  @override
  void dispose() {
    super.dispose();
    audioplayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    bool repeat = false;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kColor,
        title: const Text(
          "LISTEN QURAN",
          style: TextStyle(
              fontSize: 18,
              color: kFont,
              wordSpacing: 1.1,
              letterSpacing: 1.1,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                image = !image;
                playlist = !playlist;
              });
            },
            icon: const Icon(
              Icons.list_sharp,
            ),
            iconSize: 32,
            color: kFont,
          ),
        ],
      ),
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: kColor, borderRadius: BorderRadius.circular(12)),
                width: mediaquerywidth(context),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: playlist,
                      child: Expanded(
                        flex: 1,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: quranList.length,
                            itemBuilder: (context, index) => Card(
                                  elevation: 1,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 12),
                                  color: kFont,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      (quranList[index].surahname),
                                      style: const TextStyle(
                                          color: kColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                      ),
                    ),
                    Visibility(
                      visible: image,
                      child: ClipRRect(
                        child: Image.asset(
                          quranList[dataindex].logo,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: image,
                      child: Container(
                        height: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          color: kFont,
                        ),
                        width: mediaquerywidth(context),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                quranList[dataindex].surahno,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: kGrey),
                              ),
                              Text(
                                quranList[dataindex].surahname,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: kGrey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: kColor, borderRadius: BorderRadius.circular(12)),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                width: mediaquerywidth(context),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        formatTime(position),
                        style: const TextStyle(
                          color: kFont,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.shuffle,
                            color: kFont,
                          )),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () => {
                                setState(() {
                                  repeat = true;
                                  if (repeat) {
                                  } else {}
                                })
                              },
                          icon: const Icon(
                            Icons.repeat,
                            color: kFont,
                          )),
                    ),
                    Expanded(
                      child: Text(
                        formatTime(duration - position),
                        style: const TextStyle(color: kFont),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    color: kColor, borderRadius: BorderRadius.circular(12)),
                width: mediaquerywidth(context),
                child: Slider(
                    activeColor: kFont,
                    inactiveColor: Colors.grey[300],
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      final position = Duration(seconds: value.toInt());
                      await audioplayer.seek(position);
                      await audioplayer.resume();
                    }),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 24),
                decoration: BoxDecoration(
                    color: kColor, borderRadius: BorderRadius.circular(12)),
                width: mediaquerywidth(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            dataindex = --dataindex;
                            if (dataindex < quranList.length) {
                              dataindex =
                                  quranList.indexWhere((element) => true);
                              setAudio(dataindex);
                            } else {
                              setAudio(dataindex);
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.skip_previous_rounded,
                          color: kFont,
                          size: 32,
                        )),
                    IconButton(
                        iconSize: 32,
                        onPressed: () async {
                          if (isPlaying) {
                            await audioplayer.pause();
                          } else {
                            await audioplayer.resume();
                          }
                        },
                        icon: Icon(
                          isPlaying
                              ? Icons.pause_rounded
                              : Icons.play_arrow_rounded,
                          color: kFont,
                        )),
                    IconButton(
                        iconSize: 32,
                        onPressed: () {
                          setState(() {
                            dataindex = ++dataindex;
                            if (dataindex >= quranList.length) {
                              dataindex = 0;
                              setAudio(dataindex);
                            } else {
                              setAudio(dataindex);
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.skip_next_rounded,
                          color: kFont,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds,
  ].join(':');
}
