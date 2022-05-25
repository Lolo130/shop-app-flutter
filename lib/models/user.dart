class User {
  String gender;
  //Name name;
  //Location location;
  String email;
  //Login login;
  //Dob dob;
  //Registered registered;
  String phone;
  String cell;
  //Id id;
  //Picture picture;
  String nat;

  User(
      {this.gender,
       //this.name,
       //this.location,
        this.email,
        //this.login,
        //this.dob,
       //this.registered,
        this.phone,
        this.cell,
        //this.id,
        //this.picture,
        this.nat});
}

//class Name {
//  String title;
//  String first;
//  String last;
//
//  Name({this.title, this.first, this.last});
//
//  Name.fromJson(Map<String, dynamic> json) {
//    title = json['title'];
//    first = json['first'];
//    last = json['last'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['title'] = this.title;
//    data['first'] = this.first;
//    data['last'] = this.last;
//    return data;
//  }
//}

//class Location {
//  String street;
//  String city;
//  String state;
//  String postcode;
//  Coordinates coordinates;
//  Timezone timezone;
//
//  Location(
//      {this.street,
//        this.city,
//        this.state,
//        this.postcode,
//        this.coordinates,
//        this.timezone});
//
//  Location.fromJson(Map<String, dynamic> json) {
//    street = json['street'];
//    city = json['city'];
//    state = json['state'];
//    postcode = json['postcode'].toString();
//    coordinates = json['coordinates'] != null
//        ? new Coordinates.fromJson(json['coordinates'])
//        : null;
//    timezone = json['timezone'] != null
//        ? new Timezone.fromJson(json['timezone'])
//        : null;
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['street'] = this.street;
//    data['city'] = this.city;
//    data['state'] = this.state;
//    data['postcode'] = this.postcode;
//    if (this.coordinates != null) {
//      data['coordinates'] = this.coordinates.toJson();
//    }
//    if (this.timezone != null) {
//      data['timezone'] = this.timezone.toJson();
//    }
//    return data;
//  }
//}

//class Coordinates {
//  String latitude;
//  String longitude;
//
//  Coordinates({this.latitude, this.longitude});
//
//  Coordinates.fromJson(Map<String, dynamic> json) {
//    latitude = json['latitude'];
//    longitude = json['longitude'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['latitude'] = this.latitude;
//    data['longitude'] = this.longitude;
//    return data;
//  }
//}

//class Timezone {
//  String offset;
//  String description;
//
//  Timezone({this.offset, this.description});
//
//  Timezone.fromJson(Map<String, dynamic> json) {
//    offset = json['offset'];
//    description = json['description'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['offset'] = this.offset;
//    data['description'] = this.description;
//    return data;
//  }
//}
//
//}