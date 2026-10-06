import 'dart:io';

void main() {
  // Biodata Diri
  String nama = "Mitha Dwi";
  int nomorAbsen = 17;
  String kelas = "XI RPL 1";
  int umur = 17;
  String alamat = "JL. Kedung Tangkil RT03 RW06";
  double nilai = 90.0;
  bool kehadiran = true;

  String statusKtp;
  if (umur >= 17) {
    statusKtp = "Sudah ada KTP";
  } else {
    statusKtp = "Belum ada KTP";
  }

  print('Nama: $nama');
  print('Nomor Absen: $nomorAbsen');
  print('Kelas: $kelas');
  print('Umur: $umur tahun');
  print('Status KTP: $statusKtp');
  print('Alamat: $alamat');
  print('Nilai: $nilai');
  print('Kehadiran: ${kehadiran ? "Hadir" : "Tidak Hadir"}');
}
