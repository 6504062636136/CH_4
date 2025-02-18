import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.white, // พื้นหลังสีขาว
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),

                // Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'EQE Saloon',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mercedes-Benz',
                    style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 20),

                // Car Image
                Container(
                  width: 500, // ปรับขนาดความกว้างของกรอบ
                  height: 200, // ความสูงของกรอบ
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://veho.studio.crasman.cloud/pub/system/files/new-vehicles/100/1000303674/b396990e590da1_1000303674.jpg?c=1920x1080',
                      ),
                      fit: BoxFit.cover, // ปรับขนาดให้พอดีกับพื้นที่
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // กล่อง Charge Point ครอบทุกอย่างที่เกี่ยวข้อง
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // หัวข้อ Charge Point
                      const Text(
                        'Charge Point',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),

                      // ชื่อสถานีชาร์จ
                     

                      const Row(children: [
                        Icon(Icons.location_pin),
                         const SizedBox(height: 10),
                          const Text(
                        'EleX by EGAT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:16,
                        ),
                      ),
                      const SizedBox(height: 10),    
                      ],),
                      const Text(
                        '      EleX by EGAT สถานีชาร์จร 109 ซ. เผือกจิตต์\n      แขวงจตุจักร เขตจตุจักร กรุงเทพมหานคร 10900',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize:16,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 20),

                // Charging Date-Time Row with Icons
                const Row(
                  children: [
                    Icon(Icons.battery_saver_rounded),
                    SizedBox(width: 10),
                    Text(
                      'Charging Date-Time',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(Icons.ev_station),
                    SizedBox(width: 10),
                    Text(
                      'Charging Station',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                SizedBox(
                        width: double.infinity, // ให้ปุ่มกว้างเต็ม container
                        child: ElevatedButton(
                          onPressed: () {
                            print("ดูประวัติการชาร์จ");
                          },
                          child: const Text("ดูประวัติการชาร์จ"),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
