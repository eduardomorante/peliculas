import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Películas en cines'),
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search)
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            _swiperTarjetas()
          ],
        ),
      )
    );
  }
  
  Widget _swiperTarjetas() {
    return CardSwiper(peliculas: [1,2,3,4,5]);
  }
}