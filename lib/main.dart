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
      title: 'Eventos Deportivos - Adrian',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Eventos Deportivos"),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: eventList.length, // COUNT LIST
          itemBuilder: (context, index) {
            return MovieCard(event: eventList[index]);
          }
        )
      )
    );
  }
}
class MovieCard extends StatelessWidget {

  final Event event;

  MovieCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
            margin: EdgeInsets.only(top: 15),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              width: 300,
              height: 530,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    event.title,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Image.network(
                      event.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    event.description
                  ),
                  SizedBox(height: 30),
                 Row(
                  children: <Widget>[
                    Text(event.type),
                    Spacer(),
                    Text(event.date),
                    Spacer(),
                    Text(event.ubication),
                  ],
                ),
          ],
         )
      ),
    );
  }
}

// titulo
// genero
// url
class Event {
  final String title;
  final String description;
  final String image;
  final String type;
  final String date;
  final String ubication;

  Event({
    required this.title, 
    required this. description, 
    required this.image, 
    required this.type, 
    required this.date, 
    required this.ubication
  });
}

List<Event> eventList = [
  Event(
    title: "Torneo de Fútbol",
    description: "Torneo emocionante de fútbol en el Estadio Municipal. ¡Ven y disfruta del mejor deporte en acción!",
    image: "https://images.pexels.com/photos/47730/the-ball-stadion-football-the-pitch-47730.jpeg",
    type: "Deporte",
    date: "25-05-2024",
    ubication: "Estadio Municipal",
  ),
  Event(
    title: "Partido de Baloncesto",
    description: "Apasionante partido de baloncesto en el Gimnasio del Centro. ¡No te pierdas la acción en la cancha!",
    image: "https://www.shutterstock.com/image-photo/scoring-winning-points-basketball-game-600nw-173318291.jpg",
    type: "Deporte",
    date: "26-05-2024",
    ubication: "Gimnasio del Centro",
  ),
  Event(
    title: "Competencia de Tenis",
    description: "Competencia intensa de tenis en el Club de Tenis Local. ¡Ven y disfruta del talento en la cancha!",
    image: "https://static.vecteezy.com/system/resources/previews/003/491/993/non_2x/three-tennis-balls-and-racket-on-hard-court-under-sunlight-free-photo.jpg",
    type: "Deporte",
    date: "27-05-2024",
    ubication: "Club de Tenis Local",
  ),
  Event(
    title: "Carrera de Atletismo",
    description: "Emocionante carrera de atletismo en la Pista de Atletismo Municipal. ¡Ven y apoya a los atletas!",
    image: "https://hips.hearstapps.com/hmg-prod/images/usain-bolt-of-jamaica-wins-the-gold-medal-in-the-200m-news-photo-1591348216.jpg?crop=1.00xw:1.00xh;0,0&resize=2048:*",
    type: "Deporte",
    date: "28-05-2024",
    ubication: "Pista de Atletismo Municipal",
  ),
];
