import 'package:flutter/material.dart';

class MeetItem extends StatefulWidget {
  final String title;
    final String mes;
    final String dia;
    final String hours;
    final String link;




  const MeetItem({super.key,
  required this.title,
  required this.mes,
  required this.dia,
  required this.hours,
  required this.link,
  });
    
  @override
  State<MeetItem> createState() => _MeetItemState();
}

class _MeetItemState extends State<MeetItem> {

  Color bgColor = Colors.white;
  bool done = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeDone,
      child: Container(
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: bgColor,
          border: BoxBorder.all(color: const Color.fromARGB(255, 207, 207, 207),width: 1),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: BoxBorder.all(color: const Color.fromARGB(255, 227, 226, 226),width: 1),
                color: bgColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.mes,style: TextStyle(color: const Color.fromARGB(255, 206, 205, 205)),),
                  Text(widget.dia,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                  ],
              ),
            ),
            SizedBox(
              width: 240,
              height: 60,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                  SizedBox(height: 5,),
                  Container(
                    width: 145,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 209, 242, 246),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.history,color:  const Color.fromARGB(255, 7, 106, 119),fontWeight: FontWeight.bold,),
                        SizedBox(width: 10,),
                        Text(widget.hours, style: TextStyle(color: const Color.fromARGB(255, 7, 106, 119),fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                  child: done ? Icon(Icons.done,color: const Color.fromARGB(255, 64, 126, 66),) : SizedBox.shrink(),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: Image.network(
                    widget.link,
                    fit: BoxFit.cover,
                    ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _changeDone() {
    setState(() {
      bgColor = bgColor == Colors.white ? Colors.grey : Colors.white; 
      done = !done;
    });
  }
}