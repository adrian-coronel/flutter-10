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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menú"),
        ),
        body: ListView.builder(
          itemCount: dishList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                dishList[index].image,
              ),
              title: Text(dishList[index].name),
              subtitle: Text(dishList[index].price.toString()),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(dish: dishList[index]),
                  ),
                )
              },
            );
          }
        )
      )
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Dish dish;

  DetailScreen({required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: ${dish.name}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              'Price: ${dish.price}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),
            ),
            Image.network(dish.image),
          ],
        ),
      ),
    );
  }
}


class Dish {
  final String name;
  final double price;
  final String image;

  Dish({required this.name, required this.price, required this.image});
}

List<Dish> dishList = [
  Dish(
    name: "Lomo saltado", 
    price: 16.0,
    image: "https://statics.exitosanoticias.pe/2023/09/650c3e034c568.png"
  ),
  Dish(
    name: "Seco a la norteña", 
    price: 15.0,
    image: "https://i.ytimg.com/vi/ktGZN84kOm0/maxresdefault.jpg"
  ),
  Dish(
    name: "Ceviche", 
    price: 25.50,
    image: "https://www.elespectador.com/resizer/tyGJPN_YmWpagQFeXq_YYOxAKjY=/arc-anglerfish-arc2-prod-elespectador/public/2AVD5Z6Y2ZFWHETPQGCPLMNK4A.jpg"
  ),
  Dish(
    name: "bistec a lo pobre", 
    price: 14.0,
    image: "https://origin.cronosmedia.glr.pe/large/2023/07/31/lg_64c7e2b78350642f29677b85.jpg"
  ),
  Dish(
    name: "Ají de Gallina", 
    price: 13.0,
    image: "https://www.recetasnestle.com.pe/sites/default/files/srh_recipes/535186920a8b142c9d521f8e9390fedd.jpg"
  ),
  Dish(
    name: "Arroz con Pollo", 
    price: 14.0,
    image: "https://i.pinimg.com/736x/3f/12/0f/3f120f02440e701951ff8a9d73f48a3a.jpg"
  ),
  Dish(
    name: "Tallarines a la Huancaína", 
    price: 12.50,
    image: "https://www.comida-peruana.com/base/stock/Recipe/250-image/250-image_web.jpg.webp"
  ),
  Dish(
    name: "Aguadito", 
    price: 13.0,
    image: "https://perudelights.com/wp-content/uploads/2012/09/Chicken-Aguadito.-jpg-1.jpg"
  ),
  Dish(
    name: "Pachamanca", 
    price: 19.50,
    image: "https://i.ytimg.com/vi/u9AMJGOF26g/maxresdefault.jpg"
  ),
  Dish(
    name: "Tacu Tacu", 
    price: 14.0,
    image: "https://www.seriouseats.com/thmb/trUkovmZBP-USomb_AoJFXcLYQg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/20230308-SEA-TacuTacu-AmandaSuarez-14-c35f9084c37743989224a64c046d1091.JPG"
  ),
];
