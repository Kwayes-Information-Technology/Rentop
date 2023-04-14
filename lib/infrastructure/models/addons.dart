class Addons {
  final AddonsTemplate template;
  final AddonsFields fields;

  Addons({
    required this.fields,
    required this.template,
  });

  static List<Addons> fromData(List<dynamic> data) {
    final List<Addons> addons = [];
    for (final element in data) {
      addons.add(
        Addons(
          fields: AddonsFields.fromData(element['fields']),
          template: AddonsTemplate.fromData(element['template']),
        ),
      );
    }
    return addons;
  }
}

class AddonsTemplate {
  final String id;
  final String name;
  final String heading;
  final String headingTxt;

  AddonsTemplate({
    required this.id,
    required this.name,
    required this.heading,
    required this.headingTxt,
  });

  static AddonsTemplate fromData(Map<String, dynamic> data) {
    return AddonsTemplate(
      id: data['id'],
      name: data['name'],
      heading: data['heading'],
      headingTxt: data['heading_text'],
    );
  }
}

class AddonsFields {
  final String name;
  final double? price;
  final String key;

  AddonsFields({
    required this.name,
    required this.price,
    required this.key,
  });

  static AddonsFields fromData(Map<String, dynamic> data) {
    return AddonsFields(
      name: data['name'],
      price: double.tryParse(data['price'].toString()),
      key: data['key'],
    );
  }
}
