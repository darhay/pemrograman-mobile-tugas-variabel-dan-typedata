void main(List<String> args) {
  Map<String, dynamic> karyawan = {
    "nama": "Haydar",
    "jamKerja": 35,
    "upahPerJam": 100000.0,
    "statusTetap": true
  };

  String nama = karyawan["nama"];
  int jamKerja = karyawan["jamKerja"];
  double upahPerJam = karyawan["upahPerJam"];
  bool statusTetap = karyawan["statusTetap"];

  double gajiKotor = jamKerja * upahPerJam;
  double pajak = statusTetap ? gajiKotor * 0.1 : 0.05 * gajiKotor;
  double gajiBersih = gajiKotor - pajak;

  print("Nama: $nama");
  print("Jam Kerja: $jamKerja jam");
  print("Upah Per Jam: Rp$upahPerJam");
  print("Status Tetap: $statusTetap");
  print("Gaji Kotor: Rp$gajiKotor");
  print("Pajak: Rp$pajak");
  print("Gaji Bersih: Rp$gajiBersih");

}