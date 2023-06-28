//Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

void main() {
  List<Map<String,dynamic>> contacts = [{"Name":"Bilal", "phoneNumber":0300123456,"age":16},{"Name":"Rehman", "phoneNumber":0300123466,"age":26},{"Name":"Ijaz", "phoneNumber":0302123456,"age":26}];

  Iterable<Map<String, dynamic>> keysWithLengthFour = contacts.where((contact) => contact["Name"].toString().length == 4);

  print('Contacts: $contacts');
  print('Keys with length 4: $keysWithLengthFour');
}