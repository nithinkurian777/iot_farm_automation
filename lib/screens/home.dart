import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iot_app_cusat/values/colors.dart';
import 'package:iot_app_cusat/values/fonts.dart';
import 'package:iot_app_cusat/widgets/actuator_node.dart';
import 'package:iot_app_cusat/widgets/sensor_node.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.bgColor,
      body: Column(
        children: [
          Container(
            height: 200,
            color: ColorValues.primaryColor,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset('assets/images/top_circle.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      foregroundImage: AssetImage(
                        'assets/images/login_image.png',
                      ),
                      radius: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Welcome Nithin',
                        style: FontValues.whiteStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: GridView(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 3 / 1.5),
              children: const [
                SensorNode(
                    icon: 'thermometer.png',
                    label: 'Temperature',
                    value: '37\u00B0 C'),
                SensorNode(
                    icon: 'humidity.png', label: 'Humidity', value: '80 %'),
                SensorNode(
                    icon: 'moisture.png', label: 'Moisture', value: '8.8 %'),
                SensorNode(icon: 'rain.png', label: 'Rain', value: 'YES')
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return ActuatorNode(
                    icon: 'motor.png',
                    label: 'Motor ${index + 1}',
                    description: 'Motor ${index + 1} description',
                    btnStatus: index % 2 == 0,
                  );
                })),
          ),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            label: 'Config',
            icon: ImageIcon(AssetImage('assets/images/config.png'))),
        BottomNavigationBarItem(
            label: 'Home',
            icon: ImageIcon(AssetImage('assets/images/home.png'))),
        BottomNavigationBarItem(
            label: 'User',
            icon: ImageIcon(AssetImage('assets/images/user_icon.png')))
      ]),
    );
  }
}
