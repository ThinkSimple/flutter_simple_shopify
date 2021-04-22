class Address {
  final String? id;
  final String? address1;
  final String? address2;
  final String? city;
  final String? company;
  final String? country;
  final String? countryCode;
  final String? firstName;
  final String? lastName;
  final String? formattedArea;
  final String? latitude;
  final String? longitude;
  final String? name;
  final String? phone;
  final String? province;
  final String? provinceCode;
  final String? zip;

  Address(
      {this.id,
      this.address1,
      this.address2,
      this.city,
      this.company,
      this.country,
      this.countryCode,
      this.firstName,
      this.lastName,
      this.formattedArea,
      this.latitude,
      this.longitude,
      this.name,
      this.phone,
      this.province,
      this.provinceCode,
      this.zip});

  static Address fromJson(Map<String, dynamic> json) {
    return Address(
        id: (json['node'] ?? const {})['id'],
        address1: (json['node'] ?? const {})['address1'],
        address2: (json['node'] ?? const {})['address2'],
        city: (json['node'] ?? const {})['city'],
        company: (json['node'] ?? const {})['company'],
        country: (json['node'] ?? const {})['country'],
        countryCode: (json['node'] ?? const {})['countryCode'],
        firstName: (json['node'] ?? const {})['firstName'],
        lastName: (json['node'] ?? const {})['lastName'],
        formattedArea: (json['node'] ?? const {})['formattedArea'],
        latitude: (json['node'] ?? const {})['latitude'],
        longitude: (json['node'] ?? const {})['longitude'],
        name: (json['node'] ?? const {})['name'],
        phone: (json['node'] ?? const {})['phone'],
        province: (json['node'] ?? const {})['province'],
        provinceCode: (json['node'] ?? const {})['provinceCode'],
        zip: (json['node'] ?? const {})['zip']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'address1': address1,
      'address2': address2,
      'company': company,
      'city': city,
      'country': country,
      'firstName': firstName,
      'countryCode': countryCode,
      'lastName': lastName,
      'formattedArea': formattedArea,
      'latitude': latitude,
      'longitude': longitude,
      'name': name,
      'phone': phone,
      'province': province,
      'provinceCode': provinceCode,
      'zip': zip,
    };
  }

  Map<String, dynamic> toJsonNode() {
    return {
      'node': toJson(),
    };
  }
}
