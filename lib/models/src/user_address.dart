class Address {
  CustomerAddressUpdate customerAddressUpdate;

  Address({this.customerAddressUpdate});

  Address.fromJson(Map<String, dynamic> json) {
    customerAddressUpdate = json['customerAddressUpdate'] != null
        ? new CustomerAddressUpdate.fromJson(json['customerAddressUpdate'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customerAddressUpdate != null) {
      data['customerAddressUpdate'] = this.customerAddressUpdate.toJson();
    }
    return data;
  }
}

class CustomerAddressUpdate {
  CustomerAddress customerAddress;

  CustomerAddressUpdate({this.customerAddress});

  CustomerAddressUpdate.fromJson(Map<String, dynamic> json) {
    customerAddress = json['customerAddress'] != null
        ? new CustomerAddress.fromJson(json['customerAddress'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customerAddress != null) {
      data['customerAddress'] = this.customerAddress.toJson();
    }
    return data;
  }
}

class CustomerAddress {
  String address1;
  String address2;
  String city;
  String company;
  String countryCodeV2;
  String country;
  String firstName;
  String formattedArea;
  String id;
  String lastName;
  Null latitude;
  Null longitude;
  String name;
  String phone;
  String province;
  Null provinceCode;
  String zip;

  CustomerAddress(
      {this.address1,
        this.address2,
        this.city,
        this.company,
        this.countryCodeV2,
        this.country,
        this.firstName,
        this.formattedArea,
        this.id,
        this.lastName,
        this.latitude,
        this.longitude,
        this.name,
        this.phone,
        this.province,
        this.provinceCode,
        this.zip});

  CustomerAddress.fromJson(Map<String, dynamic> json) {
    address1 = json['address1'];
    address2 = json['address2'];
    city = json['city'];
    company = json['company'];
    countryCodeV2 = json['countryCodeV2'];
    country = json['country'];
    firstName = json['firstName'];
    formattedArea = json['formattedArea'];
    id = json['id'];
    lastName = json['lastName'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    name = json['name'];
    phone = json['phone'];
    province = json['province'];
    provinceCode = json['provinceCode'];
    zip = json['zip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['city'] = this.city;
    data['company'] = this.company;
    data['countryCodeV2'] = this.countryCodeV2;
    data['country'] = this.country;
    data['firstName'] = this.firstName;
    data['formattedArea'] = this.formattedArea;
    data['id'] = this.id;
    data['lastName'] = this.lastName;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['province'] = this.province;
    data['provinceCode'] = this.provinceCode;
    data['zip'] = this.zip;
    return data;
  }
}