import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ootd/API/location.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:ootd/model/model.dart';

const List<String> list = <String>['카카오톡 로그인','주간OOTD','알람'];

class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.parseWeatherData});
  final dynamic parseWeatherData;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}
enum RGB {a, b, c }
class _WeatherScreenState extends State<WeatherScreen> {
  Model model = Model();

  var date = DateTime.now();
  Widget ?icon;

  String cityName = 'cityName';
  String weather = 'weather';
  double min_temp = 10;
  double max_temp = 10;
  double temp = 10;
  double pressure= 1000;
  double humidity= 50;
  double wind_speed = 1;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    UpdateData(widget.parseWeatherData);
  }
  String ?getSystemTime(){
    var now = DateTime.now();
    return DateFormat("h:mm a").format(now);
  }
  void UpdateData(dynamic weatherData){
    int condition = weatherData['weather'][0]['id'];
    temp = weatherData['main']['temp'];
    min_temp = weatherData['main']['temp_min'];
    max_temp = weatherData['main']['temp_max'];
    pressure = weatherData['main']['pressure'];
    humidity = weatherData['main']['humidity'];
    wind_speed = weatherData['wind']['speed'];
    weather = weatherData['weather'][0]['main'];
    cityName = weatherData['name'];

    icon = model.getWeatherIcon(condition);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //title: Text('메뉴'),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton<RGB>(
          onSelected: (RGB result){
            setState(() {
              if(result ==RGB.a)
                Navigator.pushNamed(context, '/b');
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry <RGB>>[
            const PopupMenuItem<RGB>(
              value: RGB.a,
              child: Text('카카오톡 로그인'),
            ),
            const PopupMenuItem<RGB>(
              value: RGB.b,
              child: Text('주간OOTD'),
            ),
            const PopupMenuItem<RGB>(
              value: RGB.c,
              child: Text('알람'),
            ),
          ],
        ),
        actions:[
          IconButton(
            icon: Icon(Icons.near_me),
            onPressed: (){
              Navigator.pushNamed(context, '/');
            },
            iconSize: 30.0,
          )
        ]
      ),
        body: Container(
          child: Stack(
            children: <Widget>[
              Image.asset('background.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),

              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150.0,
                        ),
                        Text(
                          'Gumi',
                          style: GoogleFonts.lato(
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            TimerBuilder.periodic(
                                (Duration(minutes: 1)),
                            builder: (context){
                                  print('${getSystemTime()}');
                                  return Text(
                                      '${getSystemTime()}',
                                    style: GoogleFonts.lato(
                                      fontSize: 16.0,
                                      color: Colors.white
                                    ),
                                  );
                              },
                            ),
                            Text(
                              DateFormat(' - EEEE, ').format(date),
                              style: GoogleFonts.lato(
                                fontSize: 16.0,
                                color: Colors.white
                              ),
                            ),
                            Text(
                              DateFormat('d MMM, yyy ').format(date),
                              style: GoogleFonts.lato(
                                  fontSize: 16.0,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '$temp°C',
                          style: GoogleFonts.lato(
                              fontSize: 85.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ]
                    ),
                    Row(
                      children: [
                        icon!,
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                         'Clear sky',
                          style: GoogleFonts.lato(
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      thickness: 2.0,
                      color: Colors.white30,
                    ),
                    Image.asset('kakao_login_medium.png',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
