import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: SliderDemo(),));
}

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double sliderRed =10.0;
  double sliderGreen = 10.0;
  double sliderBlue=10.0;
  Color clrBg = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        clrBg=Colors.redAccent;
        setState(() {

        });
      }),
      backgroundColor: clrBg,
      body:Column(
        children: [
          Slider(
              min: 0,
              max: 255,
              value: sliderRed, onChanged: (value){
            sliderRed=value;
            clrBg = Color.fromRGBO(sliderRed.toInt(), sliderGreen.toInt(), sliderBlue.toInt(), 1);
            setState(() {

            });
          }),
          Slider(
              min: 0,
              max: 255,
              value: sliderBlue, onChanged: (value){
            sliderBlue=value;
            clrBg = Color.fromRGBO(sliderRed.toInt(), sliderGreen.toInt(), sliderBlue.toInt(), 1);
            setState(() {

            });
          }),
          Slider(
              min: 0,
              max: 255,
              value: sliderGreen, onChanged: (value){
            sliderGreen=value;
            clrBg = Color.fromRGBO(sliderRed.toInt(), sliderGreen.toInt(), sliderBlue.toInt(), 1);
            setState(() {

            });
          }),
        ],
      ),
    );
  }
}




