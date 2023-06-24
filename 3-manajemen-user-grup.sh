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

