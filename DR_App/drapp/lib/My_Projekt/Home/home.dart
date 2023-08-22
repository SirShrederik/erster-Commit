import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class DailyRoutineersHome extends StatefulWidget {
  const DailyRoutineersHome({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _DailyRoutineersHomeState createState() => _DailyRoutineersHomeState();
}

class _DailyRoutineersHomeState extends State<DailyRoutineersHome> {
  double _sliderValue = 50.0;
  

  @override
  Widget build(BuildContext context) {
   


    return Scaffold(
      backgroundColor: const Color.fromRGBO(145, 185, 255, 0.827),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                "Daily Routineers",
                style: TextStyle(fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text(
                "My Routines",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/myRoutines');
                // Handle navigation to "My Routines" page
              },
            ),
            ListTile(
              title: const Text(
                "Actual Success",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/actualSuccess');
                // Handle navigation to "Actual Success" page
              },
            ),
            ListTile(
              title: const Text(
                "Diary",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "Diary" page
              },
            ),
            ListTile(
              title: const Text(
                "My Profil",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "My Profil" page
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: CupertinoColors.lightBackgroundGray,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(211, 132, 170, 236),

              // image: DecorationImage(
              //   colorFilter: ColorFilter.mode(
              //       Colors.black.withOpacity(0.8), BlendMode.dstATop),
              //   image: const AssetImage("assets/images/sandclock.jpg"),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Text(
                    "How do you feel today?",
                    style: TextStyle(fontSize: 18),
                  ),
                  Slider(
                    thumbColor: const Color.fromARGB(255, 94, 94, 94),
                    activeColor: const Color.fromARGB(255, 53, 115, 33),
                    inactiveColor: const Color.fromARGB(255, 159, 71, 42),
                    value: _sliderValue,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                  const Text('Wrap your Feelings'),
                  const SizedBox(height: 36),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.8),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                    "assets/images/man_nerves.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey),
                          width: 300,
                          height: 50,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.8),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                    "assets/images/woman_nerves.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey),
                          width: 300,
                          height: 50,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.8),
                                    BlendMode.dstATop),
                                image:
                                    const AssetImage("assets/images/Mood.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey),
                          width: 300,
                          height: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home_rounded),
              onPressed: () {
                // Handle menu button click
              },
            ),
            IconButton(
              icon: const Icon(Icons.add_chart_rounded),
              onPressed: () {
                // Handle menu button click
              },
            ),
            IconButton(
              icon: const Icon(Icons.music_note_rounded),
              onPressed: () {
                // Handle menu button click
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle menu button click
              },
            ),
          ],
        ),
      ),
    );
  }
}




























// I D E E N

//         SliderTheme(
// data: SliderTheme.of(context).copyWith(
// activeTrackColor: Colors.white,
// thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
// overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
// ),
// child: Slider(
//          value: _sliderValue,
//          min: 120.0,
//          max: 220.0,
//          activeColor: Colors.white,
//          inactiveColor: Color(0xFF8D8E98),
//          onChanged: (double newValue) {
//              setState(() {
//                     _sliderValue = newValue.round() as double;
//                   });
//                 },
//               ),
//             ),

// ListView (
              //   children: [
              //     Container(
              //       width: 150,
              //       height: 150,
              //       color: Colors.black87,
              //    child:
              //     Text(
              //       text[index],
              //     ) ),
              //   children: List.generate(text.length, (index) {return GestureDetector(onTap: () {
              //     print('waaaaaooo');

              //   ],)
              //   },)
              //   }
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     buildColumnWithIconAndText(Icons.menu, "Routines"),
              //     buildColumnWithIconAndText(
              //         Icons.check_circle, "Actual Success"),
              //   ],
              // ),
              // const SizedBox(height: 16),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     buildColumnWithIconAndText(Icons.book, "Diary"),
              //     buildColumnWithIconAndText(Icons.account_circle, "My Profil"),
              //   ],
              // ),




  //               Widget buildColumnWithIconAndText(IconData iconData, String text) {
  //   return Column(
  //     children: [
  //       CircleAvatar(
  //         backgroundColor: Colors.lightGreen,
  //         foregroundColor: Color.fromARGB(255, 255, 255, 255),
  //         radius: 30,
  //         child: Icon(iconData),
  //       ),
  //       const SizedBox(height: 8),
  //       Text(text, style: const TextStyle(fontSize: 16)),
  //     ],
  //   );
  // }