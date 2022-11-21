import 'package:flutter/material.dart';
import 'package:iot_app_cusat/values/conf.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:http/http.dart' as http;

class LogScreen extends StatefulWidget {
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  @override
  void initState() {
    super.initState();
  }

  _fetchData() async {
    var request = http.Request('GET', Uri.parse(endpoint));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Temperture Log')],
        ),
      ),
      Container(
          child: SfSparkLineChart(
        //Enable the trackball
        trackball:
            SparkChartTrackball(activationMode: SparkChartActivationMode.tap),
        //Enable marker
        marker: SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
        //Enable data label
        labelDisplayMode: SparkChartLabelDisplayMode.all,
        data: <double>[
          1,
          5,
          -6,
          0,
          1,
          -2,
          7,
          -7,
          -4,
          -10,
          13,
          -6,
          7,
          5,
          11,
          5,
          3
        ],
      )),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Humidity Log')],
        ),
      ),
      Container(
          child: SfSparkLineChart(
        //Enable the trackball
        trackball:
            SparkChartTrackball(activationMode: SparkChartActivationMode.tap),
        //Enable marker
        marker: SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
        //Enable data label
        labelDisplayMode: SparkChartLabelDisplayMode.all,
        data: <double>[
          1,
          5,
          -6,
          0,
          1,
          -2,
          7,
          -7,
          -4,
          -10,
          13,
          -6,
          7,
          5,
          11,
          5,
          3
        ],
      )),
    ])));
  }
}
