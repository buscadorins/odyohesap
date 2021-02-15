import 'package:flutter/material.dart';

class AnaEkran4 extends StatefulWidget {
  @override
  _AnaEkran4State createState() => _AnaEkran4State();
}

enum SingingCharacter { bay, bayan, evet, hayir }

class _AnaEkran4State extends State<AnaEkran4> {
  List<int> yasSayilar = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50,
    51,
    52,
    53,
    53,
    54,
    55,
    56,
    57,
    58,
    59,
    60,
    61,
    62,
    63,
    64,
    65,
    66,
    67,
    68,
    69,
    70,
    71,
    72,
    73,
    74,
    75,
    76,
    77,
    78,
    79,
    80,
    81,
    82,
    83,
    84,
    85,
    86,
    87,
    88,
    89,
    90,
    91,
    92,
    93,
    94,
    95,
    96,
    97,
    98,
    99,
  ];
  int yas = 40;

  hesapla() {
    {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            //return object of type dialog
            return AlertDialog(
              title: new Text(
                  "Girdiğiniz sonuçlara göre işitme değerlendirmeniz;"),
              content: new Text("Normal işitme"),
              actions: [
                new FlatButton(
                  child: new Text("Kapat"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  }

  SingingCharacter _cinsiyet = SingingCharacter.bayan;
  SingingCharacter _gurultu = SingingCharacter.hayir;
  SingingCharacter _ates = SingingCharacter.evet;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Scaffold(
        //color: Colors.pink.shade200,

        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(3),
            ),
            Text("Lütfen Timpanometre Değerlerini Giriniz"),
            //TİMPANOMETRE SONUÇLARINI GİRİNİZ YAZISI
            Padding(
              padding: EdgeInsets.all(6),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Sol Kulak Timpanometre basıncını giriniz.",
                      hintText: "Basınç Değeri",
                      hintStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(30, 24),
                        ),
                      ),
                    ),
                    validator: (girilenDeger) {
                      if (girilenDeger.length > 0) {
                        return null;
                      } else
                        return "Timpanometre basıncı boş olamaz";
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Sağ Kulak Timpanometre basıncını giriniz.",
                      hintText: "Basınç Değeri",
                      hintStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (girilenDeger) {
                      if (girilenDeger.length > 0) {
                        return null;
                      } else
                        return "Timpanometre basıncı boş olamaz";
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(6),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText:
                          "Sol Kulak Timpanometre genişlik değerini giriniz.",
                      hintText: "Timpanometre genişlik değeri",
                      hintStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (girilenDeger) {
                      if (girilenDeger.length > 0) {
                        return null;
                      } else
                        return "Timpanometre basıncı boş olamaz";
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText:
                          "Sağ Kulak Timpanometre genişlik değerini giriniz.",
                      hintText: "Timpanometre genişlik değeri",
                      hintStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (girilenDeger) {
                      if (girilenDeger.length > 0) {
                        return null;
                      } else
                        return "Timpanometre basıncı boş olamaz";
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(6),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText:
                          "Sol Kulak Timpanometre tepe değerini giriniz.",
                      hintText: " Tepe değeri",
                      hintStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (girilenDeger) {
                      if (girilenDeger.length > 0) {
                        return null;
                      } else
                        return "Timpanometre basıncı boş olamaz";
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText:
                          "Sağ Kulak Timpanometre tepe değerini giriniz.",
                      hintText: " Tepe değeri",
                      hintStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (girilenDeger) {
                      if (girilenDeger.length > 0) {
                        return null;
                      } else
                        return "Timpanometre basıncı boş olamaz";
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(6),
            ),
            Padding(
              padding: EdgeInsets.all(4),
            ),
            //YAŞ İÇİN DROPDOWNBUTTON EKLENECEK
            Text("Lütfen Yaşınızı Seçiniz"),
            DropdownButtonHideUnderline(
              child: DropdownButton(
                items: yasSayilar.map((oAnkiSayi) {
                  return DropdownMenuItem<int>(
                    child: Text("$oAnkiSayi"),
                    value: oAnkiSayi,
                  );
                }).toList(),
                onChanged: (i) {
                  setState(() {
                    yas = i;
                  });
                },
                value: yas,
              ),
            ),

            //CİNSİYET SEÇİLECEK
            Text("Lütfen Cinsiyetiniz Seçiniz"),
            Row(children: [
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.all(5),
                  title: const Text('Bay'),
                  leading: Radio(
                    value: SingingCharacter.bay,
                    groupValue: _cinsiyet,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _cinsiyet = value;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                    contentPadding: EdgeInsets.all(5),
                    title: const Text('Bayan'),
                    leading: Radio(
                      value: SingingCharacter.bayan,
                      groupValue: _cinsiyet,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _cinsiyet = value;
                        });
                      },
                    )),
              ),
            ]),

            //GÜRÜLTÜLÜ ORTAMDA ÇALIŞILDI MI?
            Text("Gürültülü Bir Ortamda Çalıştınız mı?"),
            Row(children: [
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.all(5),
                  title: const Text('Evet'),
                  leading: Radio(
                    value: SingingCharacter.evet,
                    groupValue: _gurultu,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _gurultu = value;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                    contentPadding: EdgeInsets.all(5),
                    title: const Text('Hayır'),
                    leading: Radio(
                      value: SingingCharacter.hayir,
                      groupValue: _gurultu,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _gurultu = value;
                        });
                      },
                    )),
              ),
            ]),

            //KÜÇÜKKEN ATEŞLİ HASTALIK GEÇİRDİ Mİ?

            Text("Ateşli Bir Hastalık Geçirdiniz mi?"),
            Row(children: [
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.all(5),
                  title: const Text('Evet'),
                  leading: Radio(
                    value: SingingCharacter.evet,
                    groupValue: _ates,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _ates = value;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                    contentPadding: EdgeInsets.all(5),
                    title: const Text('Hayır'),
                    leading: Radio(
                      value: SingingCharacter.hayir,
                      groupValue: _ates,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _ates = value;
                        });
                      },
                    )),
              ),
            ]),

            //BUTON EKLENECEK

            RaisedButton(
              onPressed: hesapla,
              child: Text("Hesapla"),
            ),
          ],
        ),
      ),
    );
  }
}
