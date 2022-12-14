import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iot Home App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
      ),
      home: const MyHomePage(title: 'My Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final isPressedList = <bool>[false,false,false,false,false]; 
  final buttonStatus =  <String>["OFF","OFF","OFF","OFF","OFF"];  
  final iotDevice =  <String>["Main Switch","Porch Light Switch","Room Blinds","Room Speaker","Water Heater"];  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'All', ),
              Tab(text: 'Living Room',),
              Tab(text: 'Room',),
              Tab(text: 'Bathroom',),
            ],
          ),
          title: Text(widget.title),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        body: TabBarView(
          children: [
            GridView.count(
              padding: const EdgeInsets.all(10),  
              crossAxisCount: 2,  
              crossAxisSpacing: 4.0,  
              mainAxisSpacing: 8.0,  
              children: <Widget> [
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.flash_on, color: (isPressedList[0]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[0]}'),
                            Text('${buttonStatus[0]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[0]=='ON'){
                                  isPressedList[0]=false;
                                  buttonStatus[0] = "OFF";
                                }
                                else{
                                  isPressedList[0]=true;
                                  buttonStatus[0] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.light, color: (isPressedList[1]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[1]}'),
                            Text('${buttonStatus[1]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[1]=='ON'){
                                  isPressedList[1]=false;
                                  buttonStatus[1] = "OFF";
                                }
                                else{
                                  isPressedList[1]=true;
                                  buttonStatus[1] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.horizontal_split_sharp, color: (isPressedList[2]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[2]}'),
                            Text('${buttonStatus[2]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[2]=='ON'){
                                  isPressedList[2]=false;
                                  buttonStatus[2] = "OFF";
                                }
                                else{
                                  isPressedList[2]=true;
                                  buttonStatus[2] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.surround_sound_sharp, color: (isPressedList[3]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[3]}'),
                            Text('${buttonStatus[3]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[3]=='ON'){
                                  isPressedList[3]=false;
                                  buttonStatus[3] = "OFF";
                                }
                                else{
                                  isPressedList[3]=true;
                                  buttonStatus[3] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.hot_tub, color: (isPressedList[4]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[4]}'),
                            Text('${buttonStatus[4]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[4]=='ON'){
                                  isPressedList[4]=false;
                                  buttonStatus[4] = "OFF";
                                }
                                else{
                                  isPressedList[4]=true;
                                  buttonStatus[4] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ] 
            ),  
            GridView.count(
              padding: const EdgeInsets.all(10),  
              crossAxisCount: 2,  
              crossAxisSpacing: 4.0,  
              mainAxisSpacing: 8.0,  
              children: <Widget> [
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.flash_on, color: (isPressedList[0]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[0]}'),
                            Text('${buttonStatus[0]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[0]=='ON'){
                                  isPressedList[0]=false;
                                  buttonStatus[0] = "OFF";
                                }
                                else{
                                  isPressedList[0]=true;
                                  buttonStatus[0] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.light, color: (isPressedList[1]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[1]}'),
                            Text('${buttonStatus[1]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[1]=='ON'){
                                  isPressedList[1]=false;
                                  buttonStatus[1] = "OFF";
                                }
                                else{
                                  isPressedList[1]=true;
                                  buttonStatus[1] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ] 
            ),  
            GridView.count(
              padding: const EdgeInsets.all(10),  
              crossAxisCount: 2,  
              crossAxisSpacing: 4.0,  
              mainAxisSpacing: 8.0,  
              children: <Widget> [
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.horizontal_split_sharp, color: (isPressedList[2]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[2]}'),
                            Text('${buttonStatus[2]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[2]=='ON'){
                                  isPressedList[2]=false;
                                  buttonStatus[2] = "OFF";
                                }
                                else{
                                  isPressedList[2]=true;
                                  buttonStatus[2] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.surround_sound_sharp, color: (isPressedList[3]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[3]}'),
                            Text('${buttonStatus[3]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[3]=='ON'){
                                  isPressedList[3]=false;
                                  buttonStatus[3] = "OFF";
                                }
                                else{
                                  isPressedList[3]=true;
                                  buttonStatus[3] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ] 
            ),  
            GridView.count(
              padding: const EdgeInsets.all(10),  
              crossAxisCount: 2,  
              crossAxisSpacing: 4.0,  
              mainAxisSpacing: 8.0,  
              children: <Widget> [
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //const SizedBox(height: 0,),
                            Icon(Icons.hot_tub, color: (isPressedList[4]) ? Colors.blue: Colors.grey, size: 100,),
                            Spacer(),
                            Text('${iotDevice[4]}'),
                            Text('${buttonStatus[4]}'),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(buttonStatus[4]=='ON'){
                                  isPressedList[4]=false;
                                  buttonStatus[4] = "OFF";
                                }
                                else{
                                  isPressedList[4]=true;
                                  buttonStatus[4] = "ON";
                                }
                              });
                            }, 
                            icon: Icon(
                              Icons.power_settings_new_rounded, color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ] 
            ),  
          ],
        ) 
      )
    );
  }
}


