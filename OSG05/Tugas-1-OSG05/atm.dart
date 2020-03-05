import 'dart:io';

void main() {
  tryLogin();
}

class Users {
  // nama pengguna
  String name;
  // pin pengguna
  int pin;
  // saldo pengguna
  int saldo;

  // konstruktor model atau kelas pengguna, untuk mendapatkan nilai dari luar kelas
  Users(this.name, this.pin, this.saldo);

  // mengambil nilai balik berbentuk String yang berisi nama pengguna
  String getName() {
    return name;
  }

  // mengambil nilai balik berbentuk int yang berisi pin pengguna
  int getPin() {
    return pin;
  }

  // mengambil nilai balik berbentuk int yang berisi saldo pengguna
  int getSaldo() {
    return saldo;
  }

  // mengubah nilai saldo pengguna
  setSaldo(int saldo) {
    this.saldo = saldo;
  }
}

// mendeklarasikan daftar pengguna dan menginisialisasikan nilai nilainya
List<Users> users = [
  Users('Firman', 123, 50000),
  Users('Radit', 246, 13000),
  Users('Kabayan', 212, 900000),
];

// mendeklarasikan pengguna
Users user;

// membuat fungsi login
void tryLogin() {
  // menjalankan fungsi checkUser yang bernilai balik boolean didalam if
  if (checkUser()) {
    // jika checkUser mengembalikan nilai benar (true) maka lanjut ke fungsi homePage
    homePage();
  } else {
    // jika checkUser mengembalikan nilai salah (false) maka kembali ke fungsi main yang akan mengulang fungsi login
    main();
  }
}

// membuat fungsi checkUser
bool checkUser() {
  // mendeklarasikan nilai isLogin dengan nilai salah (false)
  bool isLogin = false;
  print('\n');
  print('Masuk');
  stdout.write('PIN : ');
  // mengambil nilai inputan dan memasukkan hasil inputan ke dalam nilai pin
  var pin = int.parse(stdin.readLineSync());
  // mengecek nilai usr (Users) yang ada di dalam nilai users (List<Users>)
  for (Users usr in users) {
    // jika nilai pin hasil inputan sama dengan nilai pin yang di dapat dari salah satu usr (jika terdapat dua pin yang sama akan diambil nilai yang paling pertama di deklarasikan)
    if (pin == usr.getPin()) {
      // jika benar maka atur nilai user dengan nilai usr yang di dapat dan atur isLogin menjadi benar (true)
      user = usr;
      isLogin = true;
    }
  }
  // kembalikan nilai isLogin ketika fungsi checkUser dipanggil
  return isLogin;
}

// membuat fungsi homePage
void homePage() {
  // mengambil dan menampilkan nama pengguna dari pengguna yang sedang login pada homePage
  var name = user.getName();
  print(
      '\n\nSelamat Datang Eudeka! \n1 = Tarik Tunai \n2 = Setor Tunai \n3 = Cek Saldo \n4 = Ganti Akun \n5 = Info Akun \n6 = Keluar Aplikasi\n');
  print('Pilih Menu : ');
  // menjalankan fungsi menuPage
  menuPage();
}

void menuPage() {
  // mengambil inputan dan memasukkan ke dalam nilai menu
  var menu = stdin.readLineSync();
  // pengecekan nilai menu secara paralel
  switch (menu) {
    // jika menu 1 lanjut ke fungsi tarik
    case '1':
      tarik();
      break;
    // jika menu 2 lanjut ke fungsi setor
    case '2':
      setor();
      break;
    // jika menu 3 lanjut ke fungsi saldo
    case '3':
      cekSaldo();
      break;
    // jika menu 4 lanjut ke fungsi main atau kembali ke fungsi awal lagi yaitu login
    case '4':
      main();
      break;
    // jika menu 5 cek detail informasi (nama dan pin)
    case '5':
      info();
      break;
    // jika menu 6 keluar dari aplikasi
    case '6':
      print('\n');
      exit(0);
      break;
    // jika menu tidak tersedia maka kembali ke menuPage
    default:
      print('\n');
      print('Menu tidak tersedia');
      print('\n');
      stdout.write('Pilih antara 1 2 3 4 5 atau 6 : ');
      menuPage();
  }
}

// buat fungsi tarik tunai
void tarik() {
  print('\n');
  print('Tarik Tunai');
  stdout.write('Nominal : ');
  // mengambil inputan dan memasukkan ke dalam nilai nominal
  var nominal = int.parse(stdin.readLineSync());
  // melakukan pengecekan jika nilai saldo pengguna dari pengguna yang sedang login lebih besar dari nominal
  if (user.getSaldo() > nominal) {
    // maka lanjut ke fungsi updateSaldo dengan memasukkan parameter nilai nominal yang negatif
    updateSaldo(-nominal);
  } else {
    // jika nilai saldo pengguna tidak lebih besar dari nominal tampilkan peringatan saldo tidak cukup
    print('Saldo tidak cukup');
  }
  // lalu kembali ke homePage
  homePage();
}

// buat fungsi setor
void setor() {
  print('\n');
  print('Setor Tunai');
  stdout.write('Nominal : ');
  // mengambil inputan dan memasukkan ke dalam nilai nominal
  var nominal = int.parse(stdin.readLineSync());
  // lanjut ke fungsi updateSaldo dengan memasukkan parameter nilai nominal
  updateSaldo(nominal);
  // lalu kembali ke homePage
  homePage();
}

// buat fungsi saldo
void cekSaldo() {
  print('\n');
  print('Cek Saldo');
  // ambil dan cetak nilai saldo dari pengguna yang sedang login
  print(user.getSaldo());
  // lalu kembali ke homePage
  homePage();
}

// buat fungsi updateSaldo dengan parameter wajib dengan tipedata int
void updateSaldo(int nominal) {
  // mengambil nilai saldo dari pengguna yang sedang login ditambah nilai nominal dari parameter fungsi tersebut dan memasukkan ke dalam nilai balance
  var saldo = user.getSaldo() + nominal;
  // ubah nilai saldo pengguna yang sedang login dengan nilai balance
  user.setSaldo(saldo);
}

// buat fungsi untuk menampilkan informasi nama dan pin yang sedang aktif
void info() {
  // deklarasi variable dan beri nilai nama dan pin dari pengguna yg sedang aktif
  var name = user.getName();
  var pin = user.getPin();

  print('\n');
  print('Informasi Pengguna');
  // ambil dan cetak nilai nama dari pengguna yang sedang login
  print('\nNama : $name');
  // ambil dan cetak nilai pin dari pengguna yang sedang login
  print('PIN : $pin');
  // lalu kembali ke homePage
  homePage();
}
