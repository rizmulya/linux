-------------------------------------------------------------------------------
MANAJEMEN FILE & DIREKTORI

-----------------------------
NAVIGATING FILE
1. Absolute path   ->  $ cd /home/kali/Downloads
2. Relative path  ->  $ cd Downloads
3. menuju keluar 1 direktori  ->  $ ..
4. menuju direktori saat ini  -> $ .
*tanda $ menunjukan perintah terminal

-----------------------------
FILE MANAGEMENT
1. melihat lokasi aktif  ->  $ pwd
2. melihat isi folder  ->  $ ls
3. membuat file  ->  $ touch file.txt
4. membuat folder  ->  $ mkdir nama_folder
5. masuk ke folder  ->  $ cd nama_folder
6. memindahkan file  ->  $ mv file.txt folder_tujuan/
7. memidahkan folder  -> $ mv nama_folder folder_tujuan/
8. mengganti nama file  ->  $ mv file.txt file-update.txt
9. mengganti nama folder  ->  $ mv nama_folder nama_baru
10. mengkopi file  ->  $ cp file1.txt file2.txt foder_tujuan/
11. mengkopi folder  ->  $ cp -r nama_folder/ folder_tujuan/
12. menghapus file  ->  $ rm file.txt
13. menghapus folder  ->  $ rm -r nama_folder
14. membersihkan terminal  ->  $ clear
15. melihat history terminal ->  $ history

-----------------------------
WILDCARD
wilcard adalah simbol yang mewakili karakter lain
1.  *  ->  representasi semua karakter
2.  ?  ->  repsentasi single karakter
3.  {x..y}  ->  representasi range seubah karakter

contoh
$ touch file{1..9}.txt
$ touch file{1..3}
$ ls file?
$ ls file*


-----------------------------
SEARCHING FILE
1. menggunakan find
$ find <path> <expression>
contoh: $ find /home/kali/ -name "*.txt"

2. menggunakan locate
$ locate <pola>
•wajib $ sudo updatedb , jika ada penambahan file/dir baru
contoh: locate proxychains


-----------------------------
LISTING FILE & DIREKTORI
1. menampilkan isi direktori  ->  $ ls
2. menampilkan isi file  ->  $ cat nama_file
3. menampilkan isi file, berdasarkan abjad  ->  $ sort nama_file
4. menampilkan isi file, bagian atas saja -> $ head nama_file
5. menampilkan isi file, bagian akhir saja -> $ tail nama_file


-----------------------------
GREP
grep untuk menampilkan output yang sesuai dengan pola
$ grep <pola> <nama_file>
$ grep -c <pola> <nama_file>  ->  (menampilkan jumlahnya)
$ ls /etc/group | grep <pola>


-------------------------------------------------------------------------------
MANAJEMEN AKSES FILE & DIREKTORI

-----------------------------
MELIHAT IZIN FILE
$ ls -l

hasil -> (drwxr-xr-x 5 kali kali 4096 Jun 20 21:37 Tools)

1. huruf pertama (d) = direktori, jika file maka (-)
Tiga Set Izin (rwxr-xr-x):
Set pertama (rwx)  -> izin user pemilik
Set kedua (r-x) -> izin group pemilik
Set ketiga (r-x) -> izin untuk pengguna lain atau others
2. jumlah hard link (5)
3. user pemilik (kali)
4. grup pemilik (kali)
5. ukuran direktori (4096 bytes)
6. tgl dan waktu terakhir dimodifikasi (Jun 20 21:37)
7. nama file atau direktori (Tools).


-----------------------------
FILE PERMISSION
$ chmod <option>
u  -> Pengguna (user)
g  -> Grup pengguna (group)
o  -> Pengguna lain (others)
a  -> Semua pengguna (all)
+  -> Menambahkan izin
-  -> Mencabut izin
=  -> Mengatur izin secara eksplisit
r  -> izin membaca (read)
w  -> izin menulis (write)
x  -> izin mengeksekusi cd (execute)

contoh:
menambahkan izin membaca untuk user  -> $ chmod u+r nama_user
mencabut izin menulis untuk group  -> $ chmod g-w nama_group
multiple mode  ->  $ chmod u+r,g-w nama_file


-----------------------------
FILE OWNERSHIP (who can access)
$ chown  -> mengubah kepemilikan owner sebuah file atau direktori
$ chgrp -> mengubah kepemilikan grup sebuah file atau direktori
$ -R  -> mengubah folder beserta isi dalamnya

contoh:
$ chown user1 file.txt
$ chown -R user1 directory/
$ chown user2:group1 file.txt
$ chgrp group2 file.txt



