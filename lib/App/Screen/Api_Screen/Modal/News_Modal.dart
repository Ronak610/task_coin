/// gID : "atme_001"
/// gname : "Air Hockey"
/// gUrl : "https://games.atmegame.com/play2083/games/air-hockey/?utm_source=Play2083G2K91u&utm_medium=Play2083G2K91u"
/// gDesc : "Choose any from 3 levels: Easy, Medium and Hard and get ready to show off your intense hockey skills! Score your 15 points first before your opponent does to win! Make your goal from a perfect angle to be the best air hockey champion!"
/// category : "Sports & Racing"
/// thumbnail : "https://games.atmegame.com/play2083/images/air-hockey/thumb.png"
/// small_wall : "https://games.atmegame.com/play2083/images/air-hockey/small-wall.png"
/// wall : "https://games.atmegame.com/play2083/images/air-hockey/wall.png"
/// gPlayed : "3,283,550"
/// gStatus : "1"
/// orientation : "portrait"

class NewsModal {
  NewsModal({
      String? gID, 
      String? gname, 
      String? gUrl, 
      String? gDesc, 
      String? category, 
      String? thumbnail, 
      String? smallWall, 
      String? wall, 
      String? gPlayed, 
      String? gStatus, 
      String? orientation,}){
    _gID = gID;
    _gname = gname;
    _gUrl = gUrl;
    _gDesc = gDesc;
    _category = category;
    _thumbnail = thumbnail;
    _smallWall = smallWall;
    _wall = wall;
    _gPlayed = gPlayed;
    _gStatus = gStatus;
    _orientation = orientation;
}

  NewsModal.fromJson(dynamic json) {
    _gID = json['gID'];
    _gname = json['gname'];
    _gUrl = json['gUrl'];
    _gDesc = json['gDesc'];
    _category = json['category'];
    _thumbnail = json['thumbnail'];
    _smallWall = json['small_wall'];
    _wall = json['wall'];
    _gPlayed = json['gPlayed'];
    _gStatus = json['gStatus'];
    _orientation = json['orientation'];
  }
  String? _gID;
  String? _gname;
  String? _gUrl;
  String? _gDesc;
  String? _category;
  String? _thumbnail;
  String? _smallWall;
  String? _wall;
  String? _gPlayed;
  String? _gStatus;
  String? _orientation;
NewsModal copyWith({  String? gID,
  String? gname,
  String? gUrl,
  String? gDesc,
  String? category,
  String? thumbnail,
  String? smallWall,
  String? wall,
  String? gPlayed,
  String? gStatus,
  String? orientation,
}) => NewsModal(  gID: gID ?? _gID,
  gname: gname ?? _gname,
  gUrl: gUrl ?? _gUrl,
  gDesc: gDesc ?? _gDesc,
  category: category ?? _category,
  thumbnail: thumbnail ?? _thumbnail,
  smallWall: smallWall ?? _smallWall,
  wall: wall ?? _wall,
  gPlayed: gPlayed ?? _gPlayed,
  gStatus: gStatus ?? _gStatus,
  orientation: orientation ?? _orientation,
);
  String? get gID => _gID;
  String? get gname => _gname;
  String? get gUrl => _gUrl;
  String? get gDesc => _gDesc;
  String? get category => _category;
  String? get thumbnail => _thumbnail;
  String? get smallWall => _smallWall;
  String? get wall => _wall;
  String? get gPlayed => _gPlayed;
  String? get gStatus => _gStatus;
  String? get orientation => _orientation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gID'] = _gID;
    map['gname'] = _gname;
    map['gUrl'] = _gUrl;
    map['gDesc'] = _gDesc;
    map['category'] = _category;
    map['thumbnail'] = _thumbnail;
    map['small_wall'] = _smallWall;
    map['wall'] = _wall;
    map['gPlayed'] = _gPlayed;
    map['gStatus'] = _gStatus;
    map['orientation'] = _orientation;
    return map;
  }

}