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
1. grep biasa
$ grep <pola> <nama_file>

2. grep menampilkan jumlah
$ grep -c <pola> <nama_file>

3. grep yg digabung perintah lain
$ ls /etc/group | grep <pola>

4. grep seluruh file pada direktori saat itu
$ grep -nr <pola>

-----------------------------
OPERATOR >
digunakan untuk mengarahkan output dari suatu perintah ke file
1. Menulis output ke file
$ echo "Halo dunia" > output.txt
2. Menulis tanpa menggantikan isinya
$ echo "Halo dunia" >> output.txt






