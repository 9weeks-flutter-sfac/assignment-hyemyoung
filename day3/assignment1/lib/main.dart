// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:assignment1/MusicTile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.dark(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('아워리스트'),
          centerTitle: false,
          elevation: 0,
          leading: Icon(Icons.navigate_before),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.airplay),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
          shape: Border(
            bottom: BorderSide(color: Colors.white10, width: 1),
          ),
        ),
        body: ListView(
          children: [
            MusicTile(
              title: 'Come with me',
              artist: 'Surfaces 및 salem ileses',
              duration: '3:00',
              albumImg: 'assets/music_come_with_me.png',
            ),
            MusicTile(
              title: 'Good Day',
              artist: 'Surfaces',
              duration: '3:00',
              albumImg: 'assets/music_good_day.png',
            ),
            MusicTile(
              title: 'Honesty',
              artist: 'Pink Sweat\$',
              duration: '3:09',
              albumImg: 'assets/music_honesty.png',
            ),
            MusicTile(
              title: 'I Wish I Missed My Ex ',
              artist: '마할리아 버크마',
              duration: '3:24',
              albumImg: 'assets/music_i_wish_i_missed_my_ex.png',
            ),
            MusicTile(
              title: 'Plastic Plants',
              artist: '마할리아 버크마',
              duration: '3:20',
              albumImg: 'assets/music_plastic_plants.png',
            ),
            MusicTile(
              title: 'Sucker for you',
              artist: '맷 테리',
              duration: '3:24',
              albumImg: 'assets/music_sucker_for_you.png',
            ),
            MusicTile(
              title: 'Summer is for falling in love',
              artist: 'Sarah Kang & Eye Love Brandonl',
              duration: '3:00',
              albumImg: 'assets/music_summer_is_for_falling_in_love.png',
            ),
            MusicTile(
              title:
                  'These days(feat. Jess Glynne, Macklemore & Dan Caplen) - Rudimental',
              artist: 'Rudimental',
              duration: '3:00',
              albumImg: 'assets/music_these_days.png',
            ),
          ],
        ),
        bottomSheet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 64,
              color: Colors.white12,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    'assets/music_you_make_me.png',
                    width: 60,
                  ),
                ),
                title: Text(
                  'You Make Me',
                ),
                subtitle: Text(
                  'Day6',
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.play_arrow,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.skip_next,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              alignment: Alignment.centerLeft,
              child: Container(width: 30, color: Colors.white),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: '둘러보기'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_music,
              ),
              label: '보관함',
            ),
          ],
          currentIndex: 2,
          selectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
