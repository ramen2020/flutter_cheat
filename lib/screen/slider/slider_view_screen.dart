import 'package:flutter/material.dart';

class SliderViewScreen extends StatefulWidget {
  @override
  _SliderViewScreenState createState() => _SliderViewScreenState();
}

class _SliderViewScreenState extends State<SliderViewScreen> {
  double _currentSliderValue = 20;
  double _customSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SliderViewScreen'),
        ),
        body: Container(
            color: Colors.yellow[100],
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  // 基本のslider
                  Column(children: <Widget>[
                    Text("Slider"),
                    Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ]),

                  // 実務的なslider　色など変えている
                  Column(children: <Widget>[
                    Text("Custom Slider"),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 10,
                        thumbColor: Colors.purpleAccent,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12),
                        valueIndicatorColor: Colors.orange,
                        overlayColor: Colors.orange.withAlpha(80),
                        activeTrackColor: Colors.black,
                        inactiveTrackColor: Colors.amber,
                        inactiveTickMarkColor: Colors.blue,
                        activeTickMarkColor: Colors.green,
                      ),
                      child: Slider(
                        min: 0,
                        max: 100,
                        divisions: 10,
                        value: _customSliderValue,
                        label: '${_customSliderValue.floor()}',
                        onChanged: (d) => setState(() {
                          _customSliderValue = d;
                        }),
                      ),
                    )
                  ]
                  )
                ])));
  }
}
