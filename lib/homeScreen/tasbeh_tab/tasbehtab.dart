import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TasbeehTab extends StatefulWidget {

  @override
  State<TasbeehTab> createState() => _TasbeehTabState();
}

class _TasbeehTabState extends State<TasbeehTab> {
  int counter=0;
  @override
    double turns = 0.0;

    void Rotation() {
      setState(() => turns += 1.0 / 8.0);
    }

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Column(
          children: [
            AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 1),
              child:Stack(
                children: [
                  Positioned(
                    left:100,
                      child: Image.asset("assests/images/img_9.png" , height: 100,)),
                  Container(
                    margin: EdgeInsets.only(top: 75),
                      child: Image.asset("assests/images/img_8.png")),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("عدد التسبيحات" , style: GoogleFonts.getFont("El Messiri", fontSize: 25)),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(183, 147, 95, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25 , right: 25 , top: 15 , bottom: 15),
                child: Text("${counter}" , style: TextStyle(fontSize: 25),),
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed:(){
              Rotation();
              counter++;
              setState(() {

              });
            }, child: Text("سبحان الله", style: GoogleFonts.getFont("El Messiri", fontSize: 25 , color: Colors.white)
            ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(183, 147, 95, 1))
              ),
            ),
          ],
        ),
      );
    }
  }
