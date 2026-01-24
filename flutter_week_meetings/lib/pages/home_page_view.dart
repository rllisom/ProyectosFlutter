import 'package:flutter/material.dart';
import 'package:flutter_week_meetings/shared/meet_item.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _selectedIndex = 1; 

  Widget _getBody() {
    if (_selectedIndex == 0) {
      return  Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text("Página principal", style: TextStyle(fontSize: 24))));
    } else if (_selectedIndex == 1) {
      return Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 239, 237, 237),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your meetings",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 99, 99, 99))),
                          Icon(Icons.more_horiz,color: const Color.fromARGB(255, 64, 64, 64),)
                        ],
                      ),
                      Text("Weeckly schedule",style: TextStyle(fontSize: 26),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  MeetItem(title: "Meeting with marketing team", mes: "Sep", dia: "15",
                    hours: "13:00 - 13:45", link: "https://www.uc3m.es/sdic/media/sdic/img/mediana/original/en-im_servicios_comunicacion_google-meet_icono_52777.../im_servicios_comunicacion_google_meet.png")
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text("Perfil de usuario", style: TextStyle(fontSize: 24,color: Colors.black))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadiusGeometry.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 227, 227, 227),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.meeting_room),
              label: "Meets"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
            )
          ] 
        ),
      ),
    );
  }
}