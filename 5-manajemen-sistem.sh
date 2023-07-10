-------------------------
MANAJEMEN SISTEM LAYANAN
1. start layanan
$ systemctl start <layanan>
$ service <layanan> start
contoh: $ service tor start

2. stop layanan
$ systemctl stop <layanan>
$ service <layanan> stop

3. status layanan
$ systemctl status <layanan>
$ service <layanan> status

4. restart layanan
$ systemctl restart <layanan>
$ service <layanan> restart

5. start layanan agar mulai otomatis saat boot
$ systemctl enable <layanan>
$ service <layanan> enable

6. stop layanan agar tidak dimulai saat boot
$ systemctl disable <layanan>
$ service <layanan> disable

7. menampilkan daftar unit yang ada dalam sistem
$ systemctl list-units

8. menampilkan daftar file konfigurasi unit yang ada dalam sistem
$ systemctl list-unit-files

9. memeriksa apakah unit tertentu sedang aktif atau tidak
$ systemctl is-active <layanan>

10. Memeriksa apakah unit tertentu diaktifkan untuk dimulai secara otomatis saat boot
$ systemctl is-enabled <layanan>

11. memeriksa apakah unit tertentu mengalami kegagalan
$ systemctl is-failed <layanan>



-------------------------
MANAJEMEN POWER BUTTON
1. shutdown
$ shutdown now

2. restart
$ reboot

3. suspend
$ systemctl suspend

4. hibernate
$ systemctl hibernate

5. sleep
$ systemctl sleep

6. logout
$ logout

7. switch user
$ su <username>  ->  switch biasa
