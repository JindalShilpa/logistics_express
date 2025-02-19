class GetDistanceFromPlaces {
  List<String>? destinationAddresses;
  List<String>? originAddresses;
  List<Rows>? rows;
  String? status;

  GetDistanceFromPlaces({
    this.destinationAddresses,
    this.originAddresses,
    this.rows,
    this.status,
  });

  GetDistanceFromPlaces.fromJson(Map<String, dynamic> json) {
    destinationAddresses =
        List<String>.from(json['destination_addresses'] ?? []);
    originAddresses = List<String>.from(json['origin_addresses'] ?? []);
    if (json['rows'] != null) {
      rows = <Rows>[];
      json['rows'].forEach((v) {
        rows!.add(Rows.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['destination_addresses'] = destinationAddresses;
    data['origin_addresses'] = originAddresses;
    if (rows != null) {
      data['rows'] = rows!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    return data;
  }
}

class Rows {
  List<Elements>? elements;

  Rows({this.elements});

  Rows.fromJson(Map<String, dynamic> json) {
    if (json['elements'] != null) {
      elements = <Elements>[];
      json['elements'].forEach((v) {
        elements!.add(Elements.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (elements != null) {
      data['elements'] = elements!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Elements {
  Distance? distance;
  Distance? duration;
  String? status;

  Elements({this.distance, this.duration, this.status});

  Elements.fromJson(Map<String, dynamic> json) {
    distance =
        json['distance'] != null ? Distance.fromJson(json['distance']) : null;
    duration =
        json['duration'] != null ? Distance.fromJson(json['duration']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (distance != null) {
      data['distance'] = distance!.toJson();
    }
    if (duration != null) {
      data['duration'] = duration!.toJson();
    }
    data['status'] = status;
    return data;
  }
}

class Distance {
  String? text;
  int? value;

  Distance({this.text, this.value});

  Distance.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['text'] = text;
    data['value'] = value;
    return data;
  }
}
