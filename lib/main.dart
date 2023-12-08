import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'DetailPage.dart';
import 'components/custom_list_view.dart';
import 'model/Musics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

        debugShowCheckedModeBanner: false,
        home:  MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {


  late List musics;

  @override
  void initState() {
    musics = getList();
    super.initState();
  }

   List getList() {
    return [
      Musics(
          title: "Uptown Funk",
          singer: "One Republic",
          url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
          image:
              "https://img.mensxp.com/media/content/2019/Nov/2-1572701995.jpg"),
      Musics(
        title: "Black Space",
        singer: "Sia",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3",
        image:
            "https://img.mensxp.com/media/content/2022/Aug/New-Project-47_62e8fc4159ccf.jpeg",
      ),
      Musics(
        title: "Shake it off",
        singer: "Coldplay",
        url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3",
        image:
            "https://img.mensxp.com/media/content/2019/Nov/7-1572702200.jpg",
      ),
      Musics(
          title: "Lean On",
          singer: "T. Schürger",
          url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3",
          image:
              "https://img.mensxp.com/media/content/2022/Aug/New-Project-50_62e8ff04d0d49.jpeg"),
      Musics(
          title: "Sugar",
          singer: "Adele",
          url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3",
          image:
              "https://img.mensxp.com/media/content/2022/Aug/New-Project-44_62e8c040d5e18.jpeg"),
      Musics(
          title: "Believer",
          singer: "Ed Sheeran",
          url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-6.mp3",
          image:
              "https://img.mensxp.com/media/content/2022/Aug/New-Project-58_62ea17b17f0f1.jpeg"),
      Musics(
          title: "Stressed out",
          singer: "Mark Ronson",
          url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-7.mp3",
          image:
              "https://img.mensxp.com/media/content/2022/Aug/New-Project-59_62ea184ea1e84.jpeg"),
      Musics(
          title: "Girls Like You",
          singer: "Maroon 5",
          url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3",
          image:
              "https://img.mensxp.com/media/content/2023/Mar/best-perfume-for-men-large_6421601fd98a4.jpeg"),
      Musics(
          title: "Let her go",
          singer: "Passenger",
          url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-9.mp3",
          image:
              "https://img.mensxp.com/media/content/2023/Mar/how-to-select-a-perfume_6422c7339c4c2.jpeg"),
      Musics(
          title: "Roar",
          singer: "Katy Perry",
          url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-10.mp3",
          image:
              "https://img.mensxp.com/media/content/2022/Aug/New-Project-54_62ea124ed1b6c.jpeg"),
    ];


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFF03174C),
        appBar: AppBar(
          backgroundColor: const Color(0xFF03174C),
          centerTitle: true,
          title: const Text(
            "Recommended Musics",
            style: TextStyle(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontSize: 20.0),
          ),
        ),
        body: Stack(children: [

             SvgPicture.asset(
            'assets/bg_home_border.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.topStart,
          ),
          SvgPicture.asset(
            'assets/bg_moon_home.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.topStart,
          ),
          Column(children: [
            Expanded(child: ListView.builder(
               itemCount: getList().length,
              itemBuilder: (context, index) => customListView(
                        
                        onTap: (){

                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(mMusic: musics[index])),
                          );

                        },

                        title: musics[index].title,
                        singer: musics[index].singer,
                        image: musics[index].image,
              )
              
              ))
          ],)

        ]) ,

    );
  }
}



