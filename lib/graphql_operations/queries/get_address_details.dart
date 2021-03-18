const String getAddressDetails = r'''
query($predictionId: String!, $locale: String!) {
    address(id: $predictionId, locale: $locale) {
        address1
        address2
        city
        zip
        country
        province
        provinceCode
    }
}
''';
