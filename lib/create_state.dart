import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 0;
  RangeValues _rangeValues = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey[400],
      child: Column(
        children: [
          Text('Slider Value: ${_sliderValue.toStringAsFixed(2)}'),
          Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          Text('Range Values: ${_rangeValues.start.toStringAsFixed(2)} - ${_rangeValues.end.toStringAsFixed(2)}'),
          RangeSlider(
            values: _rangeValues,
            min: 0,
            max: 100,
            onChanged: (values) {
              setState(() {
                _rangeValues = values;
              });
            },
          ),
        ],
      ),
    );
  }
}
