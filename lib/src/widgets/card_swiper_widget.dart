import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({
    super.key,
    required this.peliculas
  });

  final List<dynamic> peliculas;


  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;
    

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Swiper(
          itemBuilder: (BuildContext context,int index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network("https://via.placeholder.com/350x150",fit: BoxFit.cover),
            );
          },
          itemWidth: _screenSize.width * 0.7,
          itemHeight: _screenSize.height * 0.5,
          itemCount: peliculas.length,
          pagination: SwiperPagination(),
          control: SwiperControl(),
          layout: SwiperLayout.STACK,
        ),
    );
  }
}