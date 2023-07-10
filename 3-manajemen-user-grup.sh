-------------------------------------------------------------------------------
MANAJEMENT USER & GROUP

-------------------------
USER untuk memberikan batasan keamanan
1. penyimpanan info user  ->  $ cat /etc/passwd
2. menambahkan user  -> $ adduser nama_user
3. berpindah user  -> $ su nama_user
4. mengganti password  ->  $ passwd nama_user

5. mengganti nama user :
$ adduser baru
$ su baru
 $ ps -u olduser 
 $ sudo kill sesuai-kode-error
$ (usermod -l newuser olduser)
$ sudo chfn -f "Nama Lengkap" newuser

-------------------------
GROUP adalah kumpulan user yg dapat berbagi akses file
1. penyimpanan info group  ->  $ cat /etc/group
2. menambahkan group -> $ groupadd nama_group
3. menambahkan user ke group  -> $ usermod -G nama_group nama_user
*jika 1 user > 1 group  ->  $ usermod -aG nama_group nama_user

4. mengganti nama -> $ groupmod -n new old


----------------------
SUPER USER
1. masuk ke super user  ->  $ sudo su
2. meminjam hak akses  ->  $ sudo <perintah>
3. menambahkan user menjadi superuser  ->  $ usermod -aG sudo nama_user

*lihat enkripsi password di /etc/shadow



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
FILE OWNERSHIP 
$ chown  -> mengubah kepemilikan owner sebuah file atau direktori
$ chgrp -> mengubah kepemilikan grup sebuah file atau direktori
$ -R  -> mengubah folder beserta isi dalamnya

contoh:
$ chown user1 file.txt
$ chown -R user1 directory/
$ chown user2:group1 file.txt
$ chgrp group2 file.txt


