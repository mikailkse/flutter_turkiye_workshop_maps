import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationsModel {
  final String? country;
  final double? lat;
  final double? long;
  final Detail? detail;

  LocationsModel({this.country, this.lat, this.long, this.detail});

  LatLng get latlong =>
      LatLng(double.parse(lat.toString()), double.parse(long.toString()));
}

class Detail {
  final String? name;
  final String? description;
  final String? photoUrl;

  Detail({this.name, this.description, this.photoUrl});
}

class DummyLocation {
  static final List<LocationsModel> locations = [
    LocationsModel(
      country: 'İtalya',
      detail: Detail(
        name: 'Kolezyum',
        description:
            'Kolezyum ya da Flavianus Amfitiyatro, İtalyanın başkenti Romada bulunan oval bir amfitiyatrodur.Usta bir komutan olan Vespasianus tarafından MS 72 yılında yapımına başlandı ve MS 80 yılında Titus döneminde tamamlandı. Daha sonraki değişiklikler Domitian hükümdarlığı zamanında yapılmıştır.',
        photoUrl:
            'https://images.unsplash.com/photo-1586369276231-4cdac6bfe5c5?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870',
      ),
      lat: 41.890251,
      long: 12.492373,
    ),
    LocationsModel(
      country: 'Çin',
      detail: Detail(
        name: 'Çin Seddi',
        description:
            'Çin Seddi, Çinin kuzeybatısı boyunca uzanan, Dünyanın en uzun savunma duvarıdır. Kalıntıları Po Hay körfezinde deniz kıyısında başlar. Pekinin kuzeyinden geçerek batıya yönelir ve Huang-Ho nehrini ikiye bölerek güneybatıya uzanır. Gobi Çölünün güneyinden batıya yönelerek devam eder.',
        photoUrl:
            'https://images.unsplash.com/flagged/photo-1552553030-837c9c2b0fac?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2336',
      ),
      lat: 40.431908,
      long: 116.570374,
    ),
    LocationsModel(
      country: 'Hindistan',
      detail: Detail(
        name: 'Tac Mahal',
        description:
            'Tac Mahal, Hindistanın Agra şehrinde, 1631-1654 yıllarında inşa edilmiş anıt mezar.İslam türbe mimarisinin en önemli eserlerinden birisi olarak kabul edilir.[1] Babür İmparatorluğunun 5. hükümdarı Şah Cihanın 17 Haziran 1631 tarihinde genç yaşta ölen eşi Ercümend Bânû Begüm (Mümtaz Mahal) için o zamanki imparatorluğun başkenti olan Agrada Yamuna Nehrinin kıyısında yaptırılmıştır. Mümtaz Mahalin ve 1666da ölen imparator Şah Cihanın mezarlarını barındırır.',
        photoUrl:
            'https://images.unsplash.com/photo-1526711657229-e7e080ed7aa1?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=850',
      ),
      lat: 27.173891,
      long: 78.042068,
    ),
    LocationsModel(
      country: 'Peru',
      detail: Detail(
        name: 'Machu Picchu',
        description:
            'Machu Picchu (okunuş: Maçu Piççu veya Maçu Piçu, Keçuva dili: Machu Pikchu), bugüne kadar çok iyi korunarak gelmiş olan bir İnka antik şehridir. 7 Temmuz 2007 tarihinde Dünyanın Yeni Yedi Harikasından biri olarak seçilmiştir.',
        photoUrl:
            'https://images.unsplash.com/photo-1509216242873-7786f446f465?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870',
      ),
      lat: -13.163068,
      long: -72.545128,
    ),
    LocationsModel(
      country: 'Brezilya',
      detail: Detail(
        name: 'Christo Redentor',
        description:
            ' Kurtarıcı İsa (Portekizce: Cristo Redentor), Brezilyanın Rio de Janeiro şehrinde Corcovado Dağı üzerinde yer alan ve şehrin sembollerinden biri olan İsa heykelidir.',
        photoUrl:
            'https://images.unsplash.com/photo-1593995863951-57c27e518295?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2835',
      ),
      lat: -22.9510,
      long: -43.2065,
    ),
    LocationsModel(
      country: 'Meksika',
      detail: Detail(
        name: 'Chichen Itza',
        description:
            'Chichen Itza (ya da okunuşuyla Çiçen İtza), Meksikanın Yucatán Yarımadasında, Valladolid ve Mérida arasında yer alan, Kristof Kolomb öncesi dönemde kurulmuş bir İtza Maya kentidir. Muhtemelen bir dönem Yucatan’ın dini merkezi olmuştur.',
        photoUrl:
            'https://images.unsplash.com/photo-1568402102990-bc541580b59f?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774',
      ),
      lat: 20.684285,
      long: -88.567783,
    ),
    LocationsModel(
      country: 'Ürdün',
      detail: Detail(
        name: 'Petra',
        description:
            'Petra (Antik Yunanca: Πέτρα, Petra; Arapça: البتراء, El-Bitrā), Ürdünün Lut Gölü ile Akabe Körfezi arasındaki toprakları üzerinde yer alan antik kenttir.',
        photoUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Petra_Jordan_BW_21.JPG/800px-Petra_Jordan_BW_21.JPG',
      ),
      lat: 30.328960,
      long: 35.444832,
    ),
  ];
}
