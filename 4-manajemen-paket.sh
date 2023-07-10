MANAJEMENT PAKET 
1. Mengupdate daftar paket
$ sudo apt update

2. Memperbarui paket yang terinstal
$ sudo apt upgrade

3. Menginstal paket
$ sudo apt install <nama_paket>

4. Menginstal paket deb file
$ sudo dpkg -i <file.deb>
- jika membutuhkan dependensi:
$ sudo apt -f install
$ sudo dpkg -i <file.deb>

5. Menghapus paket
$ sudo apt remove <nama_paket>

6. Menghapus paket beserta konfigurasi dan data terkait
$ sudo apt purge <nama_paket>

7. Mencari paket
$ apt search <kata_kunci>

8. Menampilkan informasi paket
$ apt show <nama_paket>

9. Membersihkan cache paket
$ sudo apt clean

10. Melihat daftar paket yang terinstall
$ dpkg --list | grep ^ii

11. Melakukan upgrade distribusi sistem operasi
$ sudo apt dist-upgrade

