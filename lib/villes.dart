import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Villes extends StatefulWidget {
  const Villes({Key? key}) : super(key: key);

  @override
  State<Villes> createState() => _VillesState();
}

class _VillesState extends State<Villes> {
  final assetImages = [
    'https://upload.wikimedia.org/wikipedia/fr/6/64/Basilique_Notre-Dame_de_la_Paix_Yamoussoukro.jpg',
    'https://content.r9cdn.net/rimg/dimg/64/69/78ad29db-city-48214-1697de2f34f.jpg?crop=true&width=1366&height=768&xhint=2428&yhint=2687',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/da/78/9a/cascadas.jpg?w=700&h=500&s=1'
  ];
  late List<String> villes = ['Yamoussoukro', 'San-Pedro', 'Man'];
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
            Padding(padding: EdgeInsets.all(15)),
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
                        color: Color(0xffF3F3F3)),
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
                        color: Colors.orange),
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
              height: 40,
            ),
            CarouselSlider.builder(
                itemCount: assetImages.length,
                itemBuilder: (context, index, realIndex) {
                  final assetImage = assetImages[index];
                  final ville = villes[index];
                  return buildmage(
                    assetImage,
                    index,
                    ville,
                  );
                },
                options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3))),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(scrollDirection: Axis.vertical, children: [
                buildList('assets/pontdeliane.png','MAN'),
                buildList('assets/sanpedroplage.jpg','SAN-PEDRO'),
                buildList('assets/assinie.png','ASSINIE'),
                buildList('assets/bingerville.jpg','BINGERVILLE'),
                buildList('assets/assinie.png', 'ASSINIE'),
                buildList('assets/bingerville.jpg','BINGERVILLE'),
                buildList('assets/assinie.png','ASSINIE'),
                buildList('assets/bingerville.jpg','BINGERVILLE'),

              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildmage(String assetImage, int index, String villeName) => Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
          )
        ],
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10.0)),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.network(
              assetImage,
              fit: BoxFit.cover,
              width: 200,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            villeName,
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 05,
          ),
          Text(
            'En Savoir plus',
            style: GoogleFonts.poppins(color: Colors.orange, fontSize: 10),
          ),
        ],
      ));

  Padding buildList(String backgroudImage, String ville) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: InkWell(
        onTap: () {
          
        },
          child: Container(
        padding: EdgeInsets.all(15.0),
        alignment: Alignment.bottomRight,
        height: 110,
        width: 200,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black38)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(backgroudImage), fit: BoxFit.cover)),
        child: Text(
          ville,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
