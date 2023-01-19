import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital_maps/models/hospital_model.dart';

class HospitalServices {
  static List<HospitalModel> getHospital() {
    return <HospitalModel>[
      HospitalModel(
        title: "RSUD Jagakarsa",
        address:
            "Jl. Moh. Kahfi 1 No.27 A, RT.1/RW.6, Jagakarsa, Kec. Jagakarsa, Kota Jakarta Selatan",
        location: const LatLng(-6.31623, 106.811354),
        imageUrl: 'images/pic/jagakarsa.jpg',
      ),
      HospitalModel(
        title: "RS Andhika",
        address:
            "Jl. Wr. Sila No.8, RT.6/RW.4, Ciganjur, Kec. Jagakarsa, Kota Jakarta Selatan",
        location: const LatLng(-6.3439395, 106.8143708),
        imageUrl: 'images/pic/andhika.jpg',
      ),
      HospitalModel(
        title: "RSUD Pasar Minggu",
        address:
            "Jl. TB Simatupang No.1, RT.1/RW.5, Ragunan, Kec. Ps. Minggu, Kota Jakarta Selatan",
        location: const LatLng(-6.2941632, 106.8199995),
        imageUrl: 'images/pic/psminggu.jpg',
      ),
      HospitalModel(
        title: "RS Prikasih",
        address:
            "Jl. RS. Fatmawati Raya No.74, RT.5/RW.1, Pd. Labu, Kec. Cilandak, Kota Jakarta Selatan",
        location: const LatLng(-6.314685, 106.793831),
        imageUrl: 'images/pic/prikasih.jpg',
      ),
      HospitalModel(
        title: "RS Aulia",
        address:
            "Jl. Jeruk Raya No.15, Jagakarsa, Kec. Jagakarsa, Kota Jakarta Selatan",
        location: const LatLng(-6.3345156, 106.8272116),
        imageUrl: 'images/pic/aulia.jpg',
      ),
      HospitalModel(
        title: "RS Marinir Cilandak",
        address:
            "Jl. Seroja No.3, Cilandak Tim., Ps. Minggu, Kota Jakarta Selatan",
        location: const LatLng(-6.304766, 106.810342),
        imageUrl: 'images/pic/marinir.jpg',
      ),
      HospitalModel(
        title: "RS Ali Sibroh Malisi",
        address:
            "Jl. Wr. Sila No.1, RT.8/RW.5, Gudang Baru, Kec. Jagakarsa, Kota Jakarta Selatan",
        location: const LatLng(-6.344679, 106.813888),
        imageUrl: 'images/pic/sibroh.jpg',
      ),
      HospitalModel(
        title: "RSUD Jati Padang",
        address:
            "Jalan Raya Ragunan No.16, Pasar Minggu, Kecamatan Pasar Minggu, Kota Administrasi Jakarta Selatan, DKI Jakarta 12740",
        location: const LatLng(-6.285538, 106.842269),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSUD Kebayoran Baru",
        address:
            "Jalan Abdul Majid Raya No.28, Cipete Utara, Kecamatan Kebayoran Baru, Kota Administrasi Jakarta Selatan, DKI Jakarta 12150",
        location: const LatLng(-6.265509, 106.798665),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSUD Kebayoran Lama",
        address:
            "Jalan Jatayu No.12, Kebayoran Lama Selatan, Kecamatan Kebayoran Lama, Kota Administrasi Jakarta Selatan, DKI Jakarta 12240",
        location: const LatLng(-6.248712, 106.785628),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSUD Mampang Prapatan",
        address:
            "Jalan Kapten Tendean No.9, Mampang Prapatan, Kecamatan Mampang Prapatan, Kota Administrasi Jakarta Selatan, DKI Jakarta 12710",
        location: const LatLng(-6.240572, 106.826906),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSUD Pesanggrahan",
        address:
            "Jalan Cenek I No.1, Pesanggrahan, Kecamatan Pesanggrahan, Kota Administrasi Jakarta Selatan, DKI Jakarta 12320",
        location: const LatLng(-6.258119, 106.756838),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSUD Tebet",
        address:
            "Jalan Prof. dr. Soepomo SH No.54, Tebet Barat, Kecamatan Tebet, Kota Administrasi Jakarta Selatan, DKI Jakarta 12810",
        location: const LatLng(-6.231689, 106.846642),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Agung",
        address:
            "Jalan Sultan Agung No.67, Pasar Manggis, Kecamatan Setiabudi, Kota Administrasi Jakarta Selatan, DKI Jakarta 12970",
        location: const LatLng(-6.209099, 106.846420),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSU Bhayangkara Sespimma Polri",
        address:
            "Jalan Ciputat Raya No.40, Pondok Pinang, Kecamatan Kebayoran Lama, Kota Administrasi Jakarta Selatan, DKI Jakarta 12310",
        location: const LatLng(-6.262322, 106.775609),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Brawijaya Duren Tiga",
        address:
            "Jalan Duren Tiga No.5, Pancoran, Kecamatan Pancoran, Kota Administrasi Jakarta Selatan, DKI Jakarta 12780",
        location: const LatLng(-6.253319, 106.841121),
      ),
      HospitalModel(
        title: "RSIA Brawijaya Jakarta",
        address:
            "Jalan Taman Brawijaya No.1, Cipete Utara, Kecamatan Kebayoran Baru, Kota Administrasi Jakarta Selatan, DKI Jakarta 12150",
        location: const LatLng(-6.257504, 106.807577),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Gandaria",
        address:
            "Jalan Gandaria Tengah II No.6, Kramat Pela, Kecamatan Kebayoran Baru, Kota Administrasi Jakarta Selatan, DKI Jakarta 12130",
        location: const LatLng(-6.244005, 106.790664),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Halimun",
        address:
            "Jalan Halimun Raya No.9, Guntur, Kecamatan Setiabudi, Kota Administrasi Jakarta Selatan, DKI Jakarta 12980",
        location: const LatLng(-6.206304, 106.833910),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Harapan Kartini",
        address:
            "Jalan Ampera Raya No.2A, Ragunan, Kecamatan Pasar Minggu, Kota Administrasi Jakarta Selatan, DKI Jakarta 12560",
        location: const LatLng(-6.286154, 106.815629),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Indah Medika",
        address:
            "Jalan Tebet Raya No.4, Tebet Barat, Kecamatan Tebet, Kota Administrasi Jakarta Selatan, DKI Jakarta 12810",
        location: const LatLng(-6.229460, 106.848241),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Jakarta",
        address:
            "Jalan Jenderal Sudirman No.49, Karet Semanggi, Kecamatan Setiabudi, Kota Administrasi Jakarta Selatan, DKI Jakarta 12930",
        location: const LatLng(-6.218234, 106.816178),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Jakarta Medical Center",
        address:
            "Jalan Hj Tutty Alawiyah No.15, Kalibata, Kecamatan Pancoran, Kota Administrasi Jakarta Selatan, DKI Jakarta 12740",
        location: const LatLng(-6.271396, 106.830266),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Mayapada Jakarta",
        address:
            "Jalan Lebak Bulus I No.29, Cilandak Barat, Kecamatan Cilandak, Kota Administrasi Jakarta Selatan, DKI Jakarta 12430",
        location: const LatLng(-6.297696, 106.785626),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Mayapada Kuningan",
        address:
            "Jalan HR. Rasuna Said No.17, Karet Kuningan, Kecamatan Setiabudi, Kota Administrasi Jakarta Selatan, DKI Jakarta 12940",
        location: const LatLng(-6.218479, 106.831907),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Medistra",
        address:
            "Jalan Gatot Subroto No.59, Kuningan Timur, Kecamatan Setiabudi, Kota Administrasi Jakarta Selatan, DKI Jakarta 12950",
        location: const LatLng(-6.239720, 106.833831),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Pondok Indah",
        address:
            "Jalan Metro Duta I No.4, Pondok Pinang, Kecamatan Kebayoran Lama, Kota Administrasi Jakarta Selatan, DKI Jakarta 12310",
        location: const LatLng(-6.283580, 106.781620),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Pusat Pertamina",
        address:
            "Jalan Kyai Maja No.43, Gunung, Kecamatan Kebayoran Baru, Kota Administrasi Jakarta Selatan, DKI Jakarta 12120",
        location: const LatLng(-6.239936, 106.793196),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Setia Mitra",
        address:
            "Jalan RS. Fatmawati No.80, Cilandak Barat, Kecamatan Cilandak, Kota Administrasi Jakarta Selatan, DKI Jakarta 12430",
        location: const LatLng(-6.281222, 106.795836),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Siloam Asri",
        address:
            "Jalan Duren Tiga No.20, Duren Tiga, Kecamatan Pancoran, Kota Administrasi Jakarta Selatan, DKI Jakarta 12760",
        location: const LatLng(-6.254457, 106.832298),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Siloam Semanggi",
        address:
            "Jalan Garnisiun Dalam No.2, Karet Semanggi, Kecamatan Setiabudi, Kota Administrasi Jakarta Selatan, DKI Jakarta 12930",
        location: const LatLng(-6.218949, 106.817168),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Siloam TB Simatupang",
        address:
            "Jalan R.A.Kartini No.8, Cilandak Barat, Kecamatan Cilandak, Kota Administrasi Jakarta Selatan, DKI Jakarta 12430",
        location: const LatLng(-6.292259, 106.784453),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Tebet",
        address:
            "Jalan Letjen MT. Haryono No.13, Tebet Barat, Kecamatan Tebet, Kota Administrasi Jakarta Selatan, DKI Jakarta 12810",
        location: const LatLng(-6.242774, 106.850245),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSIA Kemang Medical Care",
        address:
            "Jalan Ampera Raya No.34, Ragunan, Kecamatan Pasar Minggu, Kota Administrasi Jakarta Selatan, DKI Jakarta 12550",
        location: const LatLng(-6.286128, 106.819217),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSU Zahirah",
        address:
            "Jalan Sirsak No.21, Jagakarsa, Kecamatan Jagakarsa, Kota Administrasi Jakarta Selatan, DKI Jakarta 12620",
        location: const LatLng(-6.335676, 106.823550),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSUP Fatmawati",
        address:
            "Jalan RS. Fatmawati No.4, Cilandak Barat, Kecamatan Cilandak, Kota Administrasi Jakarta Selatan, DKI Jakarta 12430",
        location: const LatLng(-6.295124, 106.796430),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Avisena",
        address:
            "Jalan H. Rohimin No.142, Ulujami, Kecamatan Pesanggrahan, Kota Administrasi Jakarta Selatan, DKI Jakarta 12250",
        location: const LatLng(-6.232391, 106.762539),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Dharmawangsa",
        address:
            "Jalan Dharmawangsa No.13, Pulo, Kecamatan Kebayoran Baru, Kota Administrasi Jakarta Selatan, DKI Jakarta 12160",
        location: const LatLng(-6.254967, 106.802616),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS dr.Suyoto Pusrehab Kemhan",
        address:
            "Jalan RC. Veteran Raya No.178, Bintaro, Kecamatan Pesanggrahan, Kota Administrasi Jakarta Selatan, DKI Jakarta 12330",
        location: const LatLng(-6.268684, 106.766263),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Muhammadiyah Taman Puring",
        address:
            "Jalan Gandaria I No.20, Kramat Pela, Kecamatan Kebayoran Baru, Kota Administrasi Jakarta Selatan, DKI Jakarta 12130",
        location: const LatLng(-6.241719, 106.787512),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Petukangan",
        address:
            "Jalan Ciledug Raya No.8A, Petukangan Selatan, Kecamatan Pesanggrahan, Kota Administrasi Jakarta Selatan, DKI Jakarta 12270",
        location: const LatLng(-6.236895, 106.751692),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Prof.dr.Moestopo",
        address:
            "Jalan Bintaro Permai No.3, Bintaro, Kecamatan Pesanggrahan, Kota Administrasi Jakarta Selatan, DKI Jakarta 12330",
        location: const LatLng(-6.259170, 106.765126),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Siaga Raya",
        address:
            "Jalan Siaga Raya No.4, Pejaten Barat, Kecamatan Pasar Minggu, Kota Administrasi Jakarta Selatan, DKI Jakarta 12510",
        location: const LatLng(-6.272910, 106.839244),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Tria Dipa",
        address:
            "Jalan Raya Pasar Minggu No.3A, Pancoran, Kecamatan Pancoran, Kota Administrasi Jakarta Selatan, DKI Jakarta 12780",
        location: const LatLng(-6.250819, 106.841890),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RS Yadika Kebayoran Lama",
        address:
            "Jalan Ciputat Raya No.5, Kebayoran Lama Selatan, Kecamatan Kebayoran Lama, Kota Administrasi Jakarta Selatan, DKI Jakarta 12240",
        location: const LatLng(-6.255118, 106.777657),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSIA Budhi Jaya",
        address:
            "Jalan Dr. Sahardjo No.120, Menteng Atas, Kecamatan Setiabudi, Kota Administrasi Jakarta Selatan, DKI Jakarta 12960",
        location: const LatLng(-6.218894, 106.845080),
        imageUrl: 'images/pic/hospital.jpg',
      ),
      HospitalModel(
        title: "RSIA Kartini",
        address:
            "Jalan Ciledug Raya No.94, Cipulir, Kecamatan Kebayoran Lama, Kota Administrasi Jakarta Selatan, DKI Jakarta 12230",
        location: const LatLng(-6.238391, 106.769980),
        imageUrl: 'images/pic/hospital.jpg',
      ),
    ];
  }
}
