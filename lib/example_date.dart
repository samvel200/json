import 'package:json/address.dart';
import 'package:json/human.dart';

final humans = [
  Human(name: 'Samvel', surname: 'Hakobyan', age: 20, address: [
    Address(city: 'Erevan', street: 'Manandyan', house: '3', flat: 13),
    Address(city: 'Gyumri', street: 'Getq', house: '23', flat: 103),
    Address(city: 'Ararat', street: 'Tumanyan', house: '6', flat: 203),
    
  ]),

  Human(name: 'Narek', surname: 'Hakobyan', age: 21, address: [
    Address(city: 'Erevan', street: 'Mayisi9', house: '1', flat: 1),
    Address(city: 'Jermuk', street: 'miBan', house: '634', flat: 20),
    Address(city: 'herHer', street: 'Gom', house: '9', flat: 23),
    
  ]),
];

const jsonSrring = '''
[
  {
    "name": "Samvel",
    "surname": "Hakobyan",
    "age": 20,
    "address": [
      {
        "city": "Erevan",
        "street": "Manandyan",
        "house": "3",
        "flat": 13
      },
      {
        "city": "Gyumri",
        "street": "Getq",
        "house": "23",
        "flat": 103
      },
      {
        "city": "Ararat",
        "street": "Tumanyan",
        "house": "6",
        "flat": 203
      }
    ]
  },
  {
    "name": "Narek",
    "surname": "Hakobyan",
    "age": 21,
    "address": [
      {
        "city": "Erevan",
        "street": "Mayisi9",
        "house": "1",
        "flat": 1
      },
      {
        "city": "Jermuk",
        "street": "miBan",
        "house": "634",
        "flat": 20
      },
      {
        "city": "herHer",
        "street": "Gom",
        "house": "9",
        "flat": 23
      }
    ]
  }
]
''';

