import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medhealth/theme.dart';

class Pharmacy {
  final String name;
  final String address;
  final String phoneNumber;

  Pharmacy(this.name, this.address, this.phoneNumber);
}

class PharmacyListPage extends StatelessWidget {
  final List<Pharmacy> pharmacies = [
    Pharmacy('Apotek Pangsud', 'Jl. Panglima Sudirman No.68, Kauman, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62113', '(0353)893625'),
    Pharmacy('Apotek K-24 Adipura Bojonegoro', 'Jl. Diponegoro No.10, Sukorejo Lor, Sukorejo, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62115', '(0353)881919'),
    Pharmacy('Apotek Bojonegoro', 'Jl. Panglima Sudirman No.2, Kepatihan, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62111', '(0353)881334'),
    Pharmacy('Apotek Basuki Rahmad Bojonegoro', 'Jl. Basuki Rahmat No.Ruko 3, Mojo Kp., Mojokampung, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62119', '088215992399'),
    Pharmacy('Apotek Eba Medika Farma', 'Jl. Raya Kalitidu No.110, Krajan, Kalitidu, Kec. Kalitidu, Kabupaten Bojonegoro, Jawa Timur 62152', '(0353)511463'),
    Pharmacy('Apotik "Sehat" Praktek Spesialis anak', 'Jl. Panglima Sudirman, Kauman, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62113', ''),
    Pharmacy('Apotek Anita Farma', 'Jl. Kyai Haji Jl. Hasyim Asyari No.23, Kauman, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62113', '(0353) 893475'),
    Pharmacy('Apotek ALIFIA', 'Jl. Jaksa Agung Suprapto, Banjarjo, Bojonegoro, Karang Pacar, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62118', '082142758320'),
    Pharmacy('Apotek Kedung Waras', 'Jl. WR. Supratman No.2A, Kadipaten, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62111', '(0353)881324'),
    Pharmacy('Apotek Nusa', 'Jl. Rajekwesi No.47, Jetak, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62114', '(0353)883538'),
    Pharmacy('Apotek Polim Bojonegoro', 'No.40 B, Jl. Panglima Polim No.40b, Wisma Indah Baru, Sumbang, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62115', '(0353)311140'),
    Pharmacy('Apotek Faradina', 'Jl. Teuku Umar No.79A, Kadipaten, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62111', '(0353)882041'),
    Pharmacy('Apotek Budi Jaya', 'Jl. Dr. Cipto No.53A, Mojo Kp., Mojokampung, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62119', '(0353)892727'),
    Pharmacy('Apotik Bhakti', 'Jl. Ja. Suprapto, Banjarejo, Bojonegoro, Banjarejo, Banjarjo, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62118', '(0353)882162'),
    Pharmacy('Apotek Cokro Medika', 'Jl. HOS. Cokroaminoto No.18, Dukuhan Barat, Pacul, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62114', '082299764499'),
    Pharmacy('Apotek Joglo', 'Jl. Lisman No.05, Mlaten, Campurejo, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62119', '(0353)893333'),
    Pharmacy('Apotek Rafansyah Farma', 'Jl. Untung Suropati No.A6, Sumbang, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62115', '081336621979'),
    Pharmacy('Apotik Indria', 'Jl. Doktor Cipto, Mojo Kampung, Bojonegoro, Mojo Kp., Mojokampung, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62119', '(0353)882653'),
    Pharmacy('Apotek Kimia Farma Bojonegoro', 'Jl. Diponegoro No.77, Kepatihan, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62111', '081110678516'),
    Pharmacy('Apotek SS. Thamrin', 'Jl. MH. Thamrin No.103D, Kauman, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62113', '(0353)892490'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          backgroundColor: whiteColor,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 25),
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.contain,
                    height: 40,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Daftar Apotik',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: pharmacies.length,
        itemBuilder: (context, index) {
          return PharmacyCard(pharmacy: pharmacies[index]);
        },
      ),
    );
  }
}

class PharmacyCard extends StatelessWidget {
  final Pharmacy pharmacy;

  // Constructor
  PharmacyCard({@required this.pharmacy});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pharmacy.name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              pharmacy.address,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Telephone : ${pharmacy.phoneNumber}',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
