class Forms {
  String gender;
  String city;
  String locality;
  String status;
  String nature;
  String design;
  String budget;


  Map<String, dynamic> toJson() => {'gender': gender, 'city': city, 'locality':locality,'status':status,
  'nature': nature, 'design': design, 'budget': budget};

  Forms.fromSnapshot(snapshot)
      : gender = snapshot.data()['gender'],
      city = snapshot.data()['city'],
      locality = snapshot.data()['locality'],
      status = snapshot.data()['status'],
      nature = snapshot.data()['nature'],
      design = snapshot.data()['design'],
      budget = snapshot.data()['budget'];
}
        
