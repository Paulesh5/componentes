import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Lugares turísticos';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(appTitle)),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/laRonda.jpg',
              ),
              TitleSection(name: 'La Ronda', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(
                description:
                  'La Ronda es una de las calles más antiguas y pintorescas '
                  'de Quito, Ecuador. Ubicada en el centro histórico de la '
                  'ciudad, esta vía empedrada y estrecha es conocida por sus '
                  'coloridas casas coloniales, balcones adornados con flores '
                  'y faroles antiguos. La Ronda ha sido revitalizada como un '
                  'atractivo turístico, ofreciendo una variedad de restaurantes, '
                  'cafés, galerías de arte y tiendas de artesanías. Es un lugar '
                  'ideal para disfrutar de la cultura y la historia ecuatoriana, '
                  'especialmente en las noches, cuando se llena de vida con música '
                  'en vivo y eventos culturales.',
                ),
              ImageSection(
                image: 'images/basilica.jpg',
              ),
              TitleSection(name: 'La Basílica del Voto Nacional', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(
                description: 
                  'La Basílica del Voto Nacional, ubicada en Quito, Ecuador, '
                  'es una impresionante iglesia neogótica y uno de los '
                  'edificios religiosos más grandes de América Latina. '
                  'Construida a finales del siglo XIX y principios del XX, '
                  'destaca por su arquitectura imponente, con altas torres y '
                  'detalles ornamentales que incluyen gárgolas en forma de '
                  'animales ecuatorianos. Los visitantes pueden subir a las '
                  'torres para disfrutar de vistas panorámicas de Quito y su '
                  'entorno. La Basílica es un símbolo importante de la devoción '
                  'católica en Ecuador y un atractivo turístico significativo en '
                  'el centro histórico de la ciudad.'
                ),
              ImageSection(
                image: 'images/mitadDelMundo.jpg',
              ),
              TitleSection(name: 'Mitad del Mundo', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(
                description: 
                  'La Mitad del Mundo es un monumento y complejo turístico '
                  'ubicado cerca de Quito, Ecuador. Marca el punto donde se '
                  'cree que la línea ecuatorial divide el hemisferio norte del '
                  'hemisferio sur. El sitio principal es el Monumento a la Mitad '
                  'del Mundo, una torre de 30 metros de altura coronada con un '
                  'globo terrestre. Alrededor del monumento hay un museo etnográfico, '
                  'tiendas de souvenirs, restaurantes y diversas exhibiciones '
                  'interactivas. Es un destino popular para turistas que buscan '
                  'tomarse fotos con un pie en cada hemisferio y aprender más '
                  'sobre la geografía y cultura ecuatoriana.'
                ),
              ImageSection(
                image: 'images/panecillo.jpg',
              ),
              TitleSection(name: 'El Panecillo', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(
                description: 
                  'El Panecillo es una colina ubicada en el centro de Quito, '
                  'Ecuador, que ofrece vistas panorámicas de la ciudad. En su '
                  'cima se encuentra la icónica estatua de la Virgen de Quito, '
                  'una monumental figura de aluminio de la Virgen María con alas, '
                  'que mide 45 metros de altura. El Panecillo es un lugar popular '
                  'para turistas y locales, ideal para apreciar la arquitectura '
                  'colonial de Quito y las montañas circundantes. Además de su '
                  'valor turístico, tiene importancia histórica y cultural, siendo '
                  'un punto de referencia en la ciudad.'
                ),
              ImageSection(
                image: 'images/foch.jpg',
              ),
              TitleSection(name: 'La Plaza Foch', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(
                description: 
                  'La Plaza Foch, ubicada en el barrio La Mariscal de Quito, '
                  'Ecuador, es conocida como el epicentro de la vida nocturna '
                  'y turística de la ciudad. Rodeada de numerosos bares, '
                  'restaurantes, discotecas y cafés, es un lugar vibrante y '
                  'animado, especialmente durante las noches y los fines de semana. '
                  'La plaza es un punto de encuentro popular tanto para turistas '
                  'como para locales, ofreciendo una amplia variedad de opciones '
                  'de entretenimiento y gastronomía. Su ambiente cosmopolita y '
                  'seguro la convierte en un destino atractivo para quienes buscan '
                  'disfrutar de la vida social y cultural de Quito.'
                )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            //1/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //2/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          //3/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
