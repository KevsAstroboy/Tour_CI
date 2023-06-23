import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DHomePage extends StatefulWidget {
  const DHomePage({Key? key}) : super(key: key);

  @override
  State<DHomePage> createState() => _DHomePageState();
}

class _DHomePageState extends State<DHomePage> {
  final assetImages = [
    'https://github.com/KevsAstroboy/AR/blob/main/home.png?raw=true',
    'https://media-files.abidjan.net/photo/can-2021-match-cote-divoire-algerie_742s1r3m5vm.jpg',
    'https://www.radarpress.net/wp-content/uploads/2022/01/ceremonie-ouverture-can-2021-cameroun.jpg',
    'https://afrique.le360.ma/sites/default/files/assets/images/2022/02/stade_ebimpe.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TourCI',
            style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.orange)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            height: 30,
            width: 60,
            decoration: BoxDecoration(
                color: Color(0xffF3F3F3),
                borderRadius: BorderRadius.all(Radius.circular(60))),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 20,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 15)),
            Container(
              height: 50,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      child: Container(
                    width: 77,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange),
                    child: Center(
                      child: Text('Actu',
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      child: Container(
                    width: 77,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF3F3F3)),
                    child: Center(
                      child: Text('Villes',
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      child: Container(
                    width: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF3F3F3)),
                    child: Center(
                      child: Text('Sites Touristiques',
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      child: Container(
                    width: 77,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF3F3F3)),
                    child: Center(
                      child: Text('Hotels',
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  )),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
                itemCount: assetImages.length,
                itemBuilder: (context, index, realIndex) {
                  final assetImage = assetImages[index];
                  return buildmage(assetImage, index);
                },
                options: CarouselOptions(
                    height: 150,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 8))),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(scrollDirection: Axis.vertical, children: [
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/kh.jpg','Stade de Khorogo'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/kh.jpg','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/kh.jpg','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/kh.jpg','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/kh.jpg','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                buildList('assets/v.png','Stade d\'Epimbe'),
                
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildList(String image,String stadeName) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    child: Container(
                  //width: 200,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.black38)],
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  ),
                  child: Container(
                    height: 100,
                    width: 200,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                              width: 90,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),

                        Column(children: [
                          Padding(padding: EdgeInsets.only(top: 8.0,left: 50.0)),
                          Text(stadeName,style: GoogleFonts.poppins(fontWeight: FontWeight.normal,fontSize:15),),
                          SizedBox(height: 20,),
                          Text('En Savoir plus',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.orange,fontSize:15),),

                          
                        ],)
                      ],
                    ),
                  ),
                )),
              );
  }

  Widget buildmage(String assetImage, int index) => Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.network(
            assetImage,
            fit: BoxFit.cover,
            width: 410,
          ),
        ),
      );
}
