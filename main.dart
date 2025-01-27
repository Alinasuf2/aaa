import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("alinaaaa"),
        ),
        body: SingleChildScrollView(
        child: Column(
    children: <Widget> [
      Container(
        child: Image.network(
        "https://iso.500px.com/wp-content/uploads/2016/02/stock-photo-114337435-1500x1000.jpg",
        ),),
      Container(
        child: Image.asset("assets/images/12.jpg"),
      ),
      Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
          color:  Colors.lightBlueAccent,
          image: DecorationImage(
              image: NetworkImage('https://images.pexels.com/photos/2893685/pexels-photo-2893685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          fit: BoxFit.contain), //Масштабирует изображение, чтобы оно поместилось в контейнер при сохранении его отношения.
        ),
      ),

      Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          color:  Colors.redAccent,
          image: DecorationImage(
            image: NetworkImage('https://posterjack.ca/cdn/shop/articles/Tips_for_Taking_Photos_at_the_Beach_55dd7d25-11df-4acf-844f-a5b4ebeff4df.jpg?v=1563409972&width=1500'),
              fit: BoxFit.cover), // Масштабирует изображение, чтобы оно покрыло весь контейнер при сохранении его отношения к нему. Возможен обрезок.
        ),
      ),
      Container(
        height: 130,
        width: 150,
        decoration: BoxDecoration(
          color:  Colors.yellow,
          image: DecorationImage(
              image: NetworkImage('https://images.pexels.com/photos/2892012/pexels-photo-2892012.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              fit: BoxFit.fitHeight), //Масштабирует изображение, чтобы оно соответствовало высоте контейнера при сохранении его отношения.
        ),
      ),
      Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
          color:  Colors.black12,
          image: DecorationImage(
              image: NetworkImage('https://images.pexels.com/photos/3801347/pexels-photo-3801347.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              fit: BoxFit.fill), //Растягивает изображение до наполнения контейнера, искажая его соотношение сторон.
        ),
      ),
      Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
          color:  Colors.orange,
          image: DecorationImage(
              image: NetworkImage('https://images.pexels.com/photos/2070485/pexels-photo-2070485.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              fit: BoxFit.fitWidth), //Масштабирует изображение, чтобы оно соответствовало ширине контейнера при сохранении его отношения.
        ),
      ),
      Container(
        height: 90,
        width: 100,
        decoration: BoxDecoration(
          color:  Colors.greenAccent,
          image: DecorationImage(
              image: NetworkImage('https://images.pexels.com/photos/3383361/pexels-photo-3383361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              fit: BoxFit.none), //Отображает изображение в его исходном размере. Возможность его обрезки возможна, если изображение больше контейнера.
        ),
      ),
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color:  Colors.greenAccent,
          image: DecorationImage(
              image: NetworkImage('https://images.pexels.com/photos/2118483/pexels-photo-2118483.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              fit: BoxFit.scaleDown), //Аналогично none, но масштабирует изображение ниже, если оно больше контейнера.
        ),
      ),
      Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/13.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.black.withAlpha(100),
          ),
          Center(
            child: Text(
              "Welcome to Flutter",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
          SizedBox(
            height: 20,
          ),

        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
          width: 200,
          height: 50,
          child:  ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
      ),
            child: Text("Show SnackBar",
            style: TextStyle(
              fontSize: 16),
            ),
      ),
    ),

    SizedBox(
    height: 20,
    ),

    SizedBox(
    width: 200,
    height: 50,
    child: TextButton(onPressed: () {},

    style: TextButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.green,
    ),
    child: Text("Go to Second Screen",
    style: TextStyle(
    fontSize: 16
    ),)),

    ),

    SizedBox(
    height: 20,
    ),

    SizedBox(
    width: 200,
    height: 50,
    child:  ElevatedButton(onPressed: () {},
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black,
    ),
    child: Text("Toggle Image",
    style: TextStyle(
    fontSize: 16),
    ),
    ),
    ),

          SizedBox(
            height: 20,
          ),

  ],
    )
    ],
        ),
      ),
      ),
    );
  }
}

