/// id : 6
/// title : "Blade and Soul"
/// thumbnail : "https://www.freetogame.com/g/6/thumbnail.jpg"
/// short_description : "A free-to-play martial arts MMORPG that tasks players with learning combination attacks."
/// game_url : "https://www.freetogame.com/open/blade-and-soul"
/// genre : "MMORPG"
/// platform : "PC (Windows)"
/// publisher : "NCSoft"
/// developer : "NCSoft"
/// release_date : "2016-01-19"
/// freetogame_profile_url : "https://www.freetogame.com/blade-and-soul"

class NewsModal {
  NewsModal({
      num? id, 
      String? title, 
      String? thumbnail, 
      String? shortDescription, 
      String? gameUrl, 
      String? genre, 
      String? platform, 
      String? publisher, 
      String? developer, 
      String? releaseDate, 
      String? freetogameProfileUrl,}){
    _id = id;
    _title = title;
    _thumbnail = thumbnail;
    _shortDescription = shortDescription;
    _gameUrl = gameUrl;
    _genre = genre;
    _platform = platform;
    _publisher = publisher;
    _developer = developer;
    _releaseDate = releaseDate;
    _freetogameProfileUrl = freetogameProfileUrl;
}

  NewsModal.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _thumbnail = json['thumbnail'];
    _shortDescription = json['short_description'];
    _gameUrl = json['game_url'];
    _genre = json['genre'];
    _platform = json['platform'];
    _publisher = json['publisher'];
    _developer = json['developer'];
    _releaseDate = json['release_date'];
    _freetogameProfileUrl = json['freetogame_profile_url'];
  }
  num? _id;
  String? _title;
  String? _thumbnail;
  String? _shortDescription;
  String? _gameUrl;
  String? _genre;
  String? _platform;
  String? _publisher;
  String? _developer;
  String? _releaseDate;
  String? _freetogameProfileUrl;
NewsModal copyWith({  num? id,
  String? title,
  String? thumbnail,
  String? shortDescription,
  String? gameUrl,
  String? genre,
  String? platform,
  String? publisher,
  String? developer,
  String? releaseDate,
  String? freetogameProfileUrl,
}) => NewsModal(  id: id ?? _id,
  title: title ?? _title,
  thumbnail: thumbnail ?? _thumbnail,
  shortDescription: shortDescription ?? _shortDescription,
  gameUrl: gameUrl ?? _gameUrl,
  genre: genre ?? _genre,
  platform: platform ?? _platform,
  publisher: publisher ?? _publisher,
  developer: developer ?? _developer,
  releaseDate: releaseDate ?? _releaseDate,
  freetogameProfileUrl: freetogameProfileUrl ?? _freetogameProfileUrl,
);
  num? get id => _id;
  String? get title => _title;
  String? get thumbnail => _thumbnail;
  String? get shortDescription => _shortDescription;
  String? get gameUrl => _gameUrl;
  String? get genre => _genre;
  String? get platform => _platform;
  String? get publisher => _publisher;
  String? get developer => _developer;
  String? get releaseDate => _releaseDate;
  String? get freetogameProfileUrl => _freetogameProfileUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['thumbnail'] = _thumbnail;
    map['short_description'] = _shortDescription;
    map['game_url'] = _gameUrl;
    map['genre'] = _genre;
    map['platform'] = _platform;
    map['publisher'] = _publisher;
    map['developer'] = _developer;
    map['release_date'] = _releaseDate;
    map['freetogame_profile_url'] = _freetogameProfileUrl;
    return map;
  }

}