import 'dart:io';

void main(List<String> args) {
  print("Masukkan data karyawan: ");
  stdout.write("Nama: ");
  String? nama = stdin.readLineSync();
  stdout.write("Jam kerja (seminggu): ");
  int? jamKerja = int.parse(stdin.readLineSync()!);
  stdout.write("Upah per jam: ");
  double? upahPerJam = double.parse(stdin.readLineSync()!);
  stdout.write("Status Tetap (true/false): ");
  bool? statusTetap = stdin.readLineSync() == "true";

  Map<String, dynamic> karyawan = {
    "nama": nama,
    "jamKerja": jamKerja,
    "upahPerJam": upahPerJam,
    "statusTetap": statusTetap
  };

  double gajiKotor = karyawan ["jamKerja"] * karyawan["upahPerJam"]; 
  double pajak = karyawan["statusTetap"] ? gajiKotor * 0.1 : 0.05 * gajiKotor;
  double gajiBersih = gajiKotor - pajak;

  print("\n--Slip Gaji--");
  print("Nama Karyawan: $nama");
  print("Gaji Kotor: Rp$gajiKotor");
  print("Pajak: Rp$pajak");
  print("Gaji Bersih: Rp$gajiBersih");

}