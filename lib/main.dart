import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gallery/cardwidget.dart';
import 'package:gallery/detialpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  
  
  


  final List<String> imgList =[
    "https://i.pinimg.com/564x/b4/53/32/b45332d32a1fe612b7d58b152faf5830.jpg",
    "https://i.pinimg.com/564x/b0/8a/29/b08a2921cea281789ba160ed596363c6.jpg",
    "https://i.pinimg.com/564x/1e/a4/fb/1ea4fba7f6a1e27d04c6fef5cfea8f31.jpg",
    "https://i.pinimg.com/236x/2c/fa/0e/2cfa0eab8853df0446d8806a73dbfad7.jpg",
    "https://i.pinimg.com/564x/cf/99/fd/cf99fd63b3860138ba3a0cb3304be703.jpg"
   


  ];

  HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Artists App",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Choose your next destination",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            const Text(
              "Top destination",
              style: TextStyle(
                fontSize: 28.0,
              ),
            ),
            const SizedBox(height: 20.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                enableInfiniteScroll: false,
                initialPage:1, 

              ),
              items: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetialPage(imgList[0],' self portrait', 'van gogh')));
                  },
                  child: CardShape(imgList[0], ' self portrait', 'van gogh'),
                
               
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetialPage(imgList[1],'mona lisa ', 'da vinci')));
                  },
                  child: CardShape(imgList[1], 'mona lisa ', 'da vinci'),
                
               
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetialPage(imgList[2],'Scuola di Atene ', 'Raffaello Sanzio')));
                  },
                  child: CardShape(imgList[2], 'Scuola di Atene ', 'Raffaello Sanzio'),
                
               
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetialPage(imgList[3],'Scuola di Atene ', 'Raffaello Sanzio')));
                  },
                  child: CardShape(imgList[3], 'Saint Mark ', 'Donatello'),
                
               
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetialPage(imgList[4],'David ', 'michelangelo')));
                  },
                  child: CardShape(imgList[4], 'David ', 'michelangelo'),
                
               
                ),
                
              
               
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}