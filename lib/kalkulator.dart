import 'dart:io';

int penambahan(int a, int b) {
  //proses penambahan
  if (a < 0 || b < 0) {
    print("peringatan: angka penjumlahan negatif");
  }
  int hasil = a + b;
  return hasil;
}

int pengurangan(int a, int b) {
  //proses pengurangan
  if (a < b) {
    print("peringatan: angka penjumlahan negatif");
  }
  int hasil = a - b;
  return hasil;
}

int perkalian(int a, int b) {
  //proses perkalian
  if (a == 0 || b == 0) {
    print("peringatan: hasil perkalian noll jika angka dikali noll");
  }
  int hasil = a * b;
  return hasil;
}

int pembagian(int a, int b) {
  //proses pembagian
  if (a == 0) {
    print("error: tidak bisa dibagi dengan noll!");
  }
  int hasil = a ~/ b;
  return hasil;
}

void main() {
  while (true) {
    // input angka pertama
    print("tolong masukan angka pertama");
    String? input1 = stdin.readLineSync();
    int angka1 = int.parse(input1 ?? '0');
    // input operator
    print("tolong masukan operator (+,-,*,/):");
    String? operasi = stdin.readLineSync();
    // input angka kedua
    print("tolong masukan angka kedua");
    String? input2 = stdin.readLineSync();
    int angka2 = int.parse(input2 ?? '0');
    // variabel untuk menampung hasil
    int hasil = 0;
    //memanggil fungsi kalkulator
    if (operasi == "+") {
      hasil = penambahan(angka1, angka2);
    } else if (operasi == "-") {
      hasil = pengurangan(angka1, angka2);
    } else if (operasi == "*") {
      hasil = perkalian(angka1, angka2);
    } else if (operasi == "~/") {
      hasil = pembagian(angka1, angka2) as int;
    } else {
      print("operator tidak valid");
    }
    //menampilkan hasil
    print("hasil dari $angka1 $operasi $angka2 adalah: $hasil");
    // pengecekan jika hasil negatif, maka putar balik
    if (hasil < 0) {
      print(
        "peringatan: hasil bernilai negatif ($hasil). program akan mengulang otomatis!",
      );
      continue; // melompat kembali ke awal pengulangan while
    } else {
      print("hasil bernilai positif atau nol. program selesai.");
      break; // keluar dari pengulangan jika hasil tidak negatif
    }
  }
}
