import 'dart:io';

var ulang = true;

void main() {
  User user1 = User('firman', 123, 50000);
  User user2 = User('radit', 246, 13000);

  tryLogin(user1, user2);
}

void tryLogin(User user, User user2) {
  do {
    stdout.write('Masuk \nPIN : ');
    var login = int.parse(stdin.readLineSync());

    if (login == user.pin) {
      do {
        print(
            '\n\nSelamat Datang Eudeka! \n1 = Tarik Tunai \n2 = Setor Tunai \n3 = Cek Saldo \n4 = Ganti Akun \n5 = Info Akun \n6 = Keluar Aplikasi\n');
        print('Pilih Menu : ');
        var menu = int.parse(stdin.readLineSync());
        var saldo = user.saldo;
        var name = user.name;
        var pin = user.pin;

        if (menu == 1) {
          stdout.write('\nTarik Tunai \nNominal : ');
          var tt = int.parse(stdin.readLineSync());
          saldo = (user.saldo = user.saldo - tt);
          print('\nanda menarik uang sebesar $tt \nsisa saldo: $saldo');
        } else if (menu == 2) {
          stdout.write('\nSetor Tunai \nNominal : ');
          var st = int.parse(stdin.readLineSync());
          saldo = (user.saldo = user.saldo + st);
          print('\nanda menyetor uang sebesar $st \nsaldo menjadi: $saldo');
        } else if (menu == 3) {
          stdout.write('\nCek Saldo \n$saldo\n');
        } else if (menu == 4) {
          print('\nBerhasil keluar\n\n');
          tryLogin(user, user2);
        } else if (menu == 5) {
          print('\nInformasi Akun\nNama : $name\nPIN : $pin');
        } else if (menu == 6) {
          print('\nTerimakasih sudah menggunakan app ini!\n');
          ulang = false;
        } else {
          print('\nKamu memasukan angka yang salah');
        }
      } while (ulang == true);
    } else if (login == user2.pin) {
      do {
        print(
            '\n\nSelamat Datang Eudeka! \n1 = Tarik Tunai \n2 = Setor Tunai \n3 = Cek Saldo \n4 = Ganti Akun \n5 = Info Akun \n6 = Keluar Aplikasi\n');
        print('Pilih Menu : ');
        var menu = int.parse(stdin.readLineSync());
        var saldo = user2.saldo;
        var name = user2.name;
        var pin = user2.pin;

        if (menu == 1) {
          stdout.write('\nTarik Tunai \nNominal : ');
          var tt = int.parse(stdin.readLineSync());
          saldo = (user2.saldo = user2.saldo - tt);
          print('\nanda menarik uang sebesar $tt \nsisa saldo: $saldo');
        } else if (menu == 2) {
          stdout.write('\nSetor Tunai \nNominal : ');
          var st = int.parse(stdin.readLineSync());
          saldo = (user2.saldo = user2.saldo + st);
          print('\nanda menyetor uang sebesar $st \nsaldo menjadi: $saldo');
        } else if (menu == 3) {
          stdout.write('\nCek Saldo \n$saldo\n');
        } else if (menu == 4) {
          print('\nBerhasil keluar\n\n');
          tryLogin(user, user2);
        } else if (menu == 5) {
          print('\nInformasi Akun\nNama : $name\nPIN : $pin');
        } else if (menu == 6) {
          print('\nTerimakasih sudah menggunakan app ini!\n');
          ulang = false;
        } else {
          print('\nKamu memasukan angka yang salah');
        }
      } while (ulang == true);
    } else {
      print('\nPIN anda salah\n');
    }
  } while (ulang == true);
}

class User {
  String name;
  int pin;
  int saldo;

  User(String name, int pin, int saldo) {
    this.name = name;
    this.pin = pin;
    this.saldo = saldo;
  }
}
