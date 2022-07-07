-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2022 pada 07.48
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tahu_1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `cookie`) VALUES
(1, 'admin', '$2y$10$pKGfQG2etJ5lDW06PZncIOqY94RJTioYG4oM4n0/Up.cUpnX5HkRO', 'jVVei3128F6bfusLMDAJrdm2gHFoNlkOP4Mr5OvYWsmBjq6Wh8tGcQyaZSUpEBQT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `img`, `url`) VALUES
(14, '1621434436735.jpg', 'https://kincaimedia.net/home/'),
(15, '1621434447920.png', 'https://kincaimedia.net/home/'),
(18, '1621435149605.jpg', 'https://kincaimedia.net/'),
(19, '1621435158507.jpg', 'https://kincaimedia.net/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `weight` int(11) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`) VALUES
(9, 'Tahu', '1645474767550.jpg', 'tahu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cod`
--

CREATE TABLE `cod` (
  `id` int(11) NOT NULL,
  `regency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cod`
--

INSERT INTO `cod` (`id`, `regency_id`) VALUES
(5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost_delivery`
--

CREATE TABLE `cost_delivery` (
  `id` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cost_delivery`
--

INSERT INTO `cost_delivery` (`id`, `destination`, `price`) VALUES
(1, 177, 40000),
(2, 105, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_send`
--

CREATE TABLE `email_send` (
  `id` int(11) NOT NULL,
  `mail_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `footer`
--

INSERT INTO `footer` (`id`, `page`, `type`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 2),
(4, 1, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `app_name` varchar(50) NOT NULL,
  `slogan` varchar(150) NOT NULL,
  `navbar_color` varchar(10) NOT NULL,
  `api_rajaongkir` varchar(70) NOT NULL,
  `host_mail` varchar(50) NOT NULL,
  `port_mail` varchar(10) NOT NULL,
  `crypto_smtp` varchar(20) NOT NULL,
  `account_gmail` varchar(50) NOT NULL,
  `pass_gmail` varchar(50) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `whatsappv2` varchar(20) NOT NULL,
  `email_contact` varchar(50) NOT NULL,
  `server_api_midtrans` varchar(150) NOT NULL,
  `client_api_midtrans` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `general`
--

INSERT INTO `general` (`id`, `app_name`, `slogan`, `navbar_color`, `api_rajaongkir`, `host_mail`, `port_mail`, `crypto_smtp`, `account_gmail`, `pass_gmail`, `whatsapp`, `whatsappv2`, `email_contact`, `server_api_midtrans`, `client_api_midtrans`) VALUES
(1, 'Toko Tahu', 'Toko Tahu', '#4169E1', '4958a0652c835b3fc2d8971395ac3342', 'mail.401xd.com', '465', '', 'danilukman2206@gmail.com', 'support', '085797887711', '6285797887711', 'danilukman2206@gmail.com', 'SB-Mid-server-uNS3xNZcw4-5nb1uL_6UNrOb', 'SB-Mid-client-UpR2ZlWMWplZAkJ2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `grosir`
--

CREATE TABLE `grosir` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `img_product`
--

INSERT INTO `img_product` (`id`, `id_product`, `img`) VALUES
(1, 22, '1589840767903.jpg'),
(2, 22, '1589840786550.jpg'),
(5, 22, '1589840836102.jpg'),
(7, 29, '1621436002940.jpg'),
(8, 8, '1621436022420.jpg'),
(9, 8, '1621436027602.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `invoice_code` varchar(10) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `province` int(11) NOT NULL,
  `regency` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `address` text NOT NULL,
  `courier` varchar(5) NOT NULL,
  `courier_service` varchar(70) NOT NULL,
  `ongkir` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `total_all` int(11) NOT NULL,
  `date_input` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `resi` varchar(30) NOT NULL,
  `pay_status` varchar(30) NOT NULL,
  `link_pay` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`id`, `user`, `invoice_code`, `label`, `name`, `email`, `telp`, `province`, `regency`, `district`, `village`, `zipcode`, `address`, `courier`, `courier_service`, `ongkir`, `total_price`, `total_all`, `date_input`, `status`, `resi`, `pay_status`, `link_pay`) VALUES
(72, 12, '1216559545', 'Sirau Kemranjen Bany', 'Dani Lukman Hakim', 'member@gmail.com', '085797887711', 10, 41, 'Kemranjen', 'Banyumas', 53193, 'Sirau Kemranjen Banyuma', 'jne', 'REG', '18000', 14000, 32000, '2022-02-22 03:32:25', 2, '0', 'settlement', 'https://app.sandbox.midtrans.com/snap/v1/transactions/40d22a12-0a39-48b1-a98d-6e57e6a1997f/pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `title`, `link`) VALUES
(1, 'Home', ''),
(2, 'Produk', ''),
(3, 'Testimoni', 'testimoni'),
(4, 'Kontak', 'contact'),
(7, 'Pembayaran', 'payment/confirmation');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES
(1, 'Tentang Kami', '<p>Lakukan tugas Anda dengan senang hati dan gunakan humor Anda di waktu kerja terutama saat sulit dan tegang-tegang, itulah salah satu budaya (fun) kami.</p><p>Religious, Passionate, Tough, Knowledgeable, Fun &amp; Customer Service adalah budaya-budaya yang ada di <a href=\"https://kincaimedia.net\">Kincaimedia.net</a>, dan kami sangat menjunjung tinggi budaya kami dengan cara memberikan yang terbaik bagi pelanggan, diri kita, keluarga, dan masyarakat.</p><p>&nbsp;</p><h2>Visi dan Misi</h2><h3>Visi</h3><p>\"Menjadi sebuah perusahaan kelas dunia dengan semangat pemanfaatan informasi teknologi, dan menjadi kebanggaan bangsa.\"</p><h3>Misi</h3><p>\"Menjadi webstore nomor satu di Indonesia yang menyediakan kelengkapan dan kemudahan belanja, serta memperhatikan dan memberikan pengalaman belanja yang berkesan kepada pelanggan, melalui nilai-nilai delapan dimensi pengalaman.\"</p><p>&nbsp;</p><h2>Sekapur Sirih</h2><p>Sejak awal <a href=\"https://kincaimedia.net\">Kincaimedia.net</a> berdiri, kami bertekad membangun bisnis yang berdaya tahan panjang. Mengutamakan citra merk dengan pelayanan dan menjadikannya bagian dari budaya kerja. Fokus pada pelayanan berarti memberi nilai tambah dalam setiap layanan. Sebab itulah mengapa pelanggan kami menekan tombol\'beli\' dan tetap kembali lagi di kemudian hari.</p><p>Menengok sejenak ke belakang, kami bersyukur fokus pada pelayanan dan \'human touch\' dalam membangun <a href=\"https://kincaimedia.net\">Kincaimedia.net</a>, yang dirumuskan dengan sebuah kalimat sederhana \'Pelayanan Dari Hati\'. Dan sekarang, kalimat ini telah menjadi esensi dalam setiap langkah yang kami lakukan, mudah dicerna tanpa perlu segala embel-embel dan frase-frase yang sulit untuk dipahami dalam melayani pelanggan kami.</p><p>Standar pelayanan kami pun semakin tinggi setiap tahun. Berinovasi dan menyajikan pengalamanan berbelanja yang berkesan, mulai dari produk yang lengkap, harga yang kompetitif, mudah dalam bertransaksi, jaminan purna jual, hingga kejutan-kejutan mengasyikkan untuk setiap pelanggan kami, yang menjadikan belanja di<a href=\"https://kincaimedia.net\">Kincaimedia.net</a> semakin nyaman, baik online maupun offline.</p><p>Untuk teman-teman komunitas <a href=\"https://kincaimedia.net\">Kincaimedia.net</a> yang bersama dengan kami sejak awal perkembangan internet dimulai di Indonesia, kami akan terus perhatikan dan senantiasa mengembangkan banyak fitur yang akan semakin asyik untuk saling bertemu, berbagi, berbincang, belajar, atau sekedar melakukan jual-beli produk. Offline store <a href=\"https://kincaimedia.net\">Kincaimedia.net</a> juga menjadi tempat untuk workshop, tempat berkumpul, dan ngobrol antar komunitas.</p><p>Akhirnya, saya sangat berbahagia <a href=\"https://kincaimedia.net\">Kincaimedia.net</a> dapat berkontribusi untuk negeri ini dan membawa nilai lebih untuk masyarakat Indonesia. Kami akan selalu berusaha dan mendorong diri kami sendiri untuk menjadi salah satu perusahaan berbasis teknologi yang menjadi kebanggaan bangsa Indonesia.</p>', 'about'),
(2, 'Kontak Kami', '<p>Hubungi Tim Penjualan Kami</p><p>&nbsp;</p><p><strong>Konsultan Penjualan</strong></p><p>Melayani kebutuhan Anda untuk seluruh kategori produk. Silakan hubungi 021-29292828 atau email kami.</p><p><strong>Korporasi &amp; Pemerintah.</strong></p><p>Melayani kebutuhan korporasi &amp; proyek. Silakan email kami ke support@kincaimedia.net</p><p><strong>Solusi Software &amp; Lisensi</strong></p><p>Melayani kebutuhan lisensi &amp; konsultasi software. Silakan email kami ke support@kincaimedia.net</p><p><strong>Solusi Percetakan &amp; Signage</strong></p><p>Melayani kebutuhan printer besar, signage, &amp; produk 3D. Silakan email support@kincaimedia.net</p><p>&nbsp;</p><p><strong>Kantor Pusat</strong><br>Jl. Gunung Sahari Raya 73C No. 5-6<br>Jakarta 10610, Indonesia</p><p>Hubungi Tim Pendukung Kami</p><p><strong>Layanan Klaim Garansi</strong></p><p>Untuk bantuan teknisi dan klaim garansi produk, silakan telepon ke (021) 2929-2828 atau email support@kincaimedia.net</p><p><strong>Layanan Pengembalian Barang &amp; Refund</strong></p><p>Jika produk yang diterima salah/cacat/rusak &amp; ingin mengurus pengembalian dana, untuk laporan dan bantuan dapat menghubungi kami email support@kincaimedia.net.</p><p><strong>Layanan Pelanggan</strong></p><p>Silakan berikan feedback atas pelayanan yang kurang berkenan dari tim kami. Tuliskan masukan Anda email support@kincaimedia.net.</p><p><strong>Status Pengiriman</strong></p><p>Untuk bantuan tracking status pesanan &amp; status pengiriman, silakan telepon ke (021) 2929-2828 atau Anda dapat menghubungi kami email support@kincaimedia.net.</p><p>&nbsp;</p><p><strong>Merchant&nbsp;</strong></p><p>Ingin memulai jualan di <a href=\"https://kincaimedia.net\">Kincaimedia.net</a>? Anda bisa mendaftar menjadi merchant &amp; bertanya seputar <a href=\"https://kincaimedia.net\">Kincaimedia.net</a> Marketplace email support@kincaimedia.net.</p><p><strong>Tidak Dapat Menemukan Tim yang Anda Cari?</strong></p><p>Anda dapat menghubungi kami email support@kincaimedia.net.</p>', 'contact'),
(3, 'Testimoni', '<p>redirect page</p>', 'testimoni'),
(4, 'Kebijakan Privasi', '<h2><strong>KEBIJAKAN PRIVASI SITUS DAN APLIKASI</strong></h2><p>MATAHARI memahami dan menghormati privasi Anda dan nilai hubungan kami dengan Anda. Kebijakan Privasi ini menjelaskan bagaimana Matahari mengumpulkan, mengatur dan melindungi informasi Anda ketika Anda mengunjungi dan/atau menggunakan situs atau aplikasi MATAHARI, bagaimana Matahari menggunakan informasi dan kepada siapa Matahari dapat berbagi. Kebijakan privasi ini juga memberitahu Anda bagaimana Anda dapat meminta Matahari untuk mengakses atau mengubah informasi Anda serta menjawab pertanyaan Anda sehubungan dengan Kebijakan Privasi ini.<br>Kata-kata yang dimulai dengan huruf besar dalam Kebijakan Privacy ini mempunyai pengertian yang sama dengan Syarat dan Ketentuan penggunaan situs dan aplikasi MATAHARI.</p><p>&nbsp;</p><h2><strong>Informasi yang kami kumpulkan</strong></h2><p>Matahari dapat memperoleh dan mengumpulkan informasi dan/atau konten dari situs dan aplikasi yang Anda atau pengguna lain sambungkan atau disambungkan oleh situs atau aplikasi MATAHARI dengan situs atau pengguna tertentu dan informasi dan/atau konten yang Anda berikan melalui penggunaan situs atau aplikasi MATAHARI dan/atau pengisian Aplikasi.</p><p><br>Ketika Anda mengunjungi situs atau aplikasi MATAHARI, Matahari dapat mengumpulkan informasi apapun yang telah dipilih bisa terlihat oleh semua orang dan setiap informasi publik yang tersedia. Informasi ini dapat mencakup nama Anda, gambar profil, jenis kelamin, kota saat ini, hari lahir, email, jaringan, daftar teman, dan informasi-informasi Anda lainnya yang tersedia dalam jaringan. Selain itu, ketika Anda menggunakan aplikasi MATAHARI, atau berinteraksi dengan alat terkait, widget atau plug-in, Matahari dapat mengumpulkan informasi tertentu dengan cara otomatis, seperti cookies dan web beacon. Informasi yang Matahari kumpulkan dengan cara ini termasuk alamat IP, perangkat pengenal unik, karakteristik perambah, karakteristik perangkat, sistem operasi, preferensi bahasa, URL, informasi tentang tindakan yang dilakukan, tanggal dan waktu kegiatan. Melalui metode pengumpulan otomatis ini, Matahari mendapatkan informasi mengenai Anda. Matahari mungkin menghubungkan unsur-unsur tertentu atas data yang telah dikumpulkan melalui sarana otomatis, seperti informasi browser Anda, dengan informasi lain yang diperoleh tentang Anda, misalnya, apakah Anda telah membuka email yang dikirimkan kepada Anda. Matahari juga dapat menggunakan alat analisis pihak ketiga yang mengumpulkan informasi tentang lalu lintas pengunjung situs atau aplikasi MATAHARI. Browser Anda mungkin memberitahu Anda ketika Anda menerima cookie jenis tertentu atau cara untuk membatasi atau menonaktifkan beberapa jenis cookies. Harap dicatat, bahwa tanpa cookie Anda mungkin tidak dapat menggunakan semua fitur dari situs atau aplikasi MATAHARI.</p><p><br>Situs atau aplikasi MATAHARI mungkin berisi link ke tempat pihak lain yang dapat dioperasikan oleh pihak lain tersebut yang mungkin tidak memiliki kebijakan privasi yang sama dengan Matahari. Matahari sangat menyarankan Anda untuk membaca dan mempelajari kebijakan privasi dan ketentuan-ketentuan pihak lain tersebut sebelum masuk atau menggunakannya. Matahari tidak bertanggung jawab atas pengumpulan dan/atau penyebaran informasi pribadi Anda oleh pihak lain atau yang berkaitan dengan penggunaan media sosial seperti Facebook dan Twitter dan Matahari dibebaskan dari segala akibat yang timbul atas penyebaran dan/atau penyalahgunaan informasi tersebut.</p><p>&nbsp;</p><h2><strong>BAGAIMANA MATAHARI MENGGUNAKAN INFORMASI</strong></h2><p>Matahari dapat menggunakan informasi Anda yang diperoleh untuk menyediakan produk dan layanan yang Anda minta, sebagai data riset atau berkomunikasi tentang dan/atau mengelola partisipasi Anda dalam survei atau undian atau kontes atau acara khusus lainnya yang diadakan oleh Matahari, pengoperasian Matahari, memberikan dukungan kepada Anda sebagai pengunjung dan/atau pengguna situs atau aplikasi MATAHARI, merespon dan berkomunikasi dengan Anda mengenai permintaan Anda, pertanyaan dan/atau komentar Anda, membiarkan Anda untuk meninggalkan komentar di situs atau aplikasi MATAHARI atau melalui media sosial lainnya, membangun dan mengelola Akun Anda, mengirimkan berita-berita dan/atau penawaran-penawaran yang berlaku bagi Anda selaku pengunjung dan penguna situs atau aplikasi MATAHARI, untuk mengoperasikan, mengevaluasi dan meningkatkan bisnis Matahari termasuk untuk mengembangkan produk dan layanan baru; untuk mengelola komunikasi Matahari, menentukan efektifitas layanan, pemasaran dan periklanan situs atau aplikasi MATAHARI, dan melakukan akutansi, audit, dan kegiatan Matahari lainnya, melakukan analisis data termasuk pasar dan pencarian konsumen, analisis trend, keuangan, dan informasi pribadi, melaksanakan kerjasama dengan mitra Matahari yang terkait dengan program-program yang diadakan oleh Matahari, melindungi, mengidentifikasi, dan mencegah penipuan dan kegiatan kriminal lainnya, klaim dan kewajiban lainnya, membantu mendiagnosa masalah teknis dan layanan, untuk memelihara, mengoperasikan, atau mengelola situs atau aplikasi MATAHARIyang dilakukan oleh Matahari atau pihak lain yang ditentukan oleh Matahari, mengidentifikasi pengguna situs atau aplikasi MATAHARI, serta mengumpulkan informasi demografis tentang pengguna situs atau aplikasi MATAHARI, untuk cara lain yang Matahari beritahukan pada saat pengumpulan informasi.</p><p><br>Matahari tidak akan menjual atau memberikan informasi pribadi Anda kepada pihak lain, kecuali seperti yang dijelaskan dalam kebijakan privasi ini. Matahari akan berbagi informasi dengan afiliasi Matahari atau pihak lain yang melakukan layanan berdasarkan petunjuk dari Matahari. Pihak lain tersebut tidak diizinkan untuk menggunakan atau mengungkapkan informasi tersebut kecuali diperlukan untuk melakukan layanan atas nama Matahari atau untuk mematuhi persyaratan hukum. Matahari juga dapat berbagi informasi dengan pihak lain yang merupakan mitra Matahari untuk menawarkan produk atau jasa yang mungkin menarik bagi Anda<br>Matahari dapat mengungkapkan informasi jika dianggap perlu dalam kebijakan tunggal Matahari, untuk mematuhi hukum yang berlaku, peraturan, proses hukum atau permintaan pemerintah, dan peraturan yang berlaku di Matahari. Selain itu, Matahari dapat mengungkapkan informasi ketika percaya, pengungkapan diperlukan atau wajib dilakukan untuk mencegah kerusakan fisik atau kerugian finansial atau hal lainnya sehubungan dengan dugaan atau terjadinya kegiatan ilegal. Matahari juga berhak untuk mengungkapkan dan/atau mengalihkan informasi yang dimiliki apabila sebagian atau seluruh bisnis atau aset Matahari dijual atau dialihkan.<br>Matahari dapat menyimpan dan/atau memusnahkan informasi tentang Anda sesuai kebijakan yang berlaku atau jika diperlukan.</p><p>&nbsp;</p><h2><strong>UPDATE KEBIJAKAN PRIVASI INI</strong></h2><p>Kebijakan Privasi ini mungkin diperbarui secara berkala dan tanpa pemberitahuan sebelumnya kepada Anda untuk mencerminkan perubahan dalam praktik informasi pribadi. Matahari akan menampilkan pemberitahuan di bagian info profil website untuk memberitahu Anda tentang perubahan terhadap Kebijakan Privasi dan menunjukkan di bagian atas Kebijakan saat ketika Kebijakan Privasi ini terakhir diperbarui. Kebijakan Privasi ini merupakan satu kesatuan dan menjadi bagian yang tidak terpisahkan dari Syarat dan Ketentuan Penggunaan situs dan aplikasi MATAHARI.</p>', 'privacy-policy'),
(5, 'Syarat dan Ketentuan', '<h2><strong>SYARAT DAN KETENTUAN SITUS DAN APLIKASI</strong></h2><p>Selamat datang dan terima kasih telah mengunjungi situs/aplikasi MATAHARI. Silahkan membaca Syarat dan Ketentuan ini dengan seksama. Syarat dan Ketentuan ini mengatur akses, penelusuran, penggunaan, dan pembelian barang-barang yang ditawarkan atau dijual di www.MATAHARI.com kepada Anda. Dengan mengakses, menelusuri, dan menggunakan situs/aplikasi MATAHARI ini, berarti Anda telah membaca, mengerti, dan setuju untuk tunduk dan terikat pada Syarat dan Ketentuan ini, dan Anda juga setuju untuk tidak mempengaruhi, mengganggu, atau berusaha mempengaruhi atau mengganggu jalannya situs/aplikasi MATAHARI dengan cara apapun. Jika Anda tidak menyetujui salah satu, sebagian, atau seluruh isi Syarat dan Ketentuan ini, maka Anda tidak diperkenankan untuk mengakses, menelusuri atau menggunakan situs/aplikasi MATAHARI ini. Akses, penelusuran, dan penggunaan situs/aplikasi MATAHARI ini hanya untuk penggunaan pribadi Anda. Anda tidak diperkenankan untuk mendistribusikan, memodifikasi, menjual, atau mengirimkan apapun yang Anda akses dari situs/aplikasi MATAHARI ini, termasuk tetapi tidak terbatas pada teks, gambar, audio, dan video untuk keperluan bisnis, komersial, publik atau kepeluan non-personal lainnya.</p><p><br>Penggunaan konten situs/aplikasi MATAHARI, logo MATAHARI, merek layanan dan/atau merek dagang yang tidak sah dapat melanggar undang-undang hak kekayaan intelektual, hak cipta, merek, privasi, publisitas, hukum perdata dan pidana tertentu. Syarat dan Ketentuan ini termasuk hak kekayaan intelektual milik MATAHARI yang dilindungi hak cipta. Setiap penggunaan Syarat dan Ketentuan ini oleh pihak manapun, baik sebagian maupun seluruhnya, tidak diizinkan. Pelanggaran atas hak atas kekayaan intelektual MATAHARI ini dapat dikenakan tindakan atau sanksi berdasarkan ketentuan hukum yang berlaku.<br>Anda perlu mengunjungi halaman ini secara berkala untuk mengetahui setiap perubahan Syarat dan Ketentuan ini.</p>', 'terms'),
(6, 'Cara Berbelanja', '<p>Anda bisa mengklik “Blanja sekarang” di blanja.com untuk membeli produk, atau Anda bisa menambahkan produk ke Favorit dahulu lalu menempatkan pesanan.</p><p><strong>1. Blanja sekarang</strong></p><p>1.1 Jika Anda ingin membeli produk langsung ketika Anda melihatnya di Product Detail Page (gambar di bawah), Anda bisa mengklik “Blanja sekarang” setelah Anda memilih atribut, jumlah, dll. dari produk tersebut.</p><p>&nbsp;</p><p>1.2 Setelah Anda mengkonfirmasi alamat pengiriman, informasi pesanan dan informasi lainnya, klik “Selanjutnya”.</p><p>&nbsp;</p><p>1.3 Anda bisa masuk ke “My blanja”-“Pesanan Saya” dan melihat pesanan yang telah ditempatkan. Jika Anda sudah mengkonfirmasi jumlah dari pesanan tersebut, klik “Bayar”.</p><p>&nbsp;</p><p>1.4 Masuk ke halaman pembayaran dan bayarkan pesanan. Status pemesanan akan berubah menjadi “Telah dibayar”, yang artinya barang sedang menunggu dikirim oleh penjual.</p><p>&nbsp;</p><p>1.5 Setelah penjual berhasil mengirimkan barang, status pemesanan akan berubah menjadi “Telah dikirim”. Ketika anda menerima barang dan mengkonfirmasi, mohon klik “Konfirmasi”.</p><p>&nbsp;</p><p>Anda harus memasukkan password Dompet Blanja sebelum mengklik “Konfirmasi”.</p><p>&nbsp;</p><p>1.6 Ketika status berubah ke \"Selesai\", maka berarti transaksi telah selesai</p><p>&nbsp;</p><p><strong>Checkout beberapa produk yang telah ditambahkan ke Troli blanja secara bersamaan</strong></p><p>Anda bisa menambahkan beberapa produk ke Troli blanja dan membelinya secara bersamaan, lalu menempatkan pesanan dan membayar sekali sekaligus. Prosesnya sama seperti proses “Blanja sekarang”.</p>', 'shopping-help'),
(7, 'Pengiriman Barang', '<ol><li>Pengiriman barang untuk setiap transaksi yang terjadi melalui Platform Bukalapak menggunakan layanan pengiriman barang yang disediakan Bukalapak atas kerjasama Bukalapak dengan pihak jasa ekspedisi pengiriman barang resmi.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk peraturan terkait dengan syarat dan ketentuan pengiriman barang sepenuhnya ditentukan oleh pihak jasa ekspedisi pengiriman barang dan sepenuhnya menjadi tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Bukalapak hanya berperan sebagai media perantara antara Pengguna dengan pihak jasa ekspedisi pengiriman barang.</li><li>Pengguna wajib memahami, menyetujui, serta mengikuti ketentuan-ketentuan pengiriman barang yang telah dibuat oleh pihak jasa ekspedisi pengiriman barang.</li><li>Pengiriman barang atas transaksi melalui sistem Bukalapak menggunakan jasa ekspedisi pengiriman barang dilakukan dengan tujuan agar barang dapat dipantau melalui sistem Bukalapak.</li><li>Pelapak (Penjual) wajib bertanggung jawab penuh atas barang yang dikirimnya.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk kerugian yang dapat timbul akibat kerusakan ataupun kehilangan pada barang, baik pada saat pengiriman barang tengah berlangsung maupun pada saat pengiriman barang telah selesai, adalah sepenuhnya tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Dalam hal diperlukan untuk dilakukan proses pengembalian barang, maka Pengguna, baik Pelapak (Penjual) maupun Pembeli, diwajibkan untuk melakukan pengiriman barang langsung ke masing-masing Pembeli maupun Pelapak (Penjual). Bukalapak tidak menerima pengembalian atau pengiriman barang atas transaksi yang dilakukan oleh Pengguna dalam kondisi apa pun.</li></ol>', 'pengiriman-barang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_proof`
--

CREATE TABLE `payment_proof` (
  `id` int(11) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `file` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `condit` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_submit` datetime NOT NULL,
  `publish` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `transaction` int(11) NOT NULL,
  `promo_price` int(11) NOT NULL,
  `viewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `stock`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`) VALUES
(31, 'Tahu isi', 7000, 98, 9, 1, 5, '1645475090053.jpg', '', '2022-02-22 03:24:50', 1, 'tahu-isi', 2, 0, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `rekening` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id`, `rekening`, `name`, `number`) VALUES
(1, 'DANA', 'Toni Suwendi', '088215005600'),
(3, 'GOPAY', 'Toni Suwendi', '088215005600'),
(7, 'OVO', 'Toni Suwendi', '088215005600');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `promo_time` varchar(40) NOT NULL,
  `short_desc` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `regency_id` int(11) NOT NULL,
  `verify` int(11) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `favicon` varchar(30) NOT NULL,
  `default_ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `promo`, `promo_time`, `short_desc`, `address`, `regency_id`, `verify`, `logo`, `favicon`, `default_ongkir`) VALUES
(1, 0, '', 'Toko online terlengkap dan terpercaya. Dapatkan penawaran dengan kualitas terbaik. TokoKu Laku hadir untuk memenuhi kebutuhan Anda.', 'Jl. Sumbawa, Ulak Karang Utara, Kec. Padang Utara, Kota Padang, Sumatera Barat, Indonesia', 105, 1, '1645474886974.png', '1645474896326.png', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'facebook-f', 'https://facebook.com/MyCodingXD'),
(3, 'Twitter', 'twitter', 'https://twitter.com/MyCodingXD'),
(5, 'Instagram', 'instagram', 'https://instagram.com/MyCodingXD'),
(6, 'Youtube', 'youtube', 'https://youtube.com/c/MyCodingXD'),
(7, 'Blog', 'blogger', 'https://blog.kincaimedia.net');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `submenu` int(11) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id`, `name`, `submenu`, `link`) VALUES
(8, 'Tahu', 2, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_subs` datetime NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `date_subs`, `code`) VALUES
(0, 'Semua Email', '2020-04-21 13:59:23', ''),
(21, 'member@gmail.com', '2021-05-19 22:20:52', '1621437652141395667'),
(22, 'dhanispeed90@gmail.com', '2022-02-22 06:19:10', '164548555015566078'),
(23, 'danihakim2206@gmail.com', '2022-02-22 06:21:58', '1645485718342263187');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `photo`, `content`) VALUES
(1, 'Aliyah Wati - Jakarta', '', 'Sist makasih barangnya udah sampe, bagus dan lucu2. Temenku aja pada ngiri. Semoga sukses selalu buat eveshopashopnya. Sory baru bisa kasih kabar.'),
(2, 'Een Enarsih - Banten', '', 'Sis barang ny dh sya trima,mkasih bnyak untuk layan’n ny sngat m’muaskan untuk sya,smu prtanya’n di jwab…\r\nRespon ny jga sngat baek,smoga usaha ny smakin brkembang'),
(3, 'Ayung Darma - Pekalongan', '', 'Oia mf sis,Nich brg nya brsan aja ampe, mksh ya\r\nBrg nya bgs banget, sesuai yg digambarnya, makasih ya'),
(4, 'Via Garolita - Cimahi', '', 'Sistaaaa……\r\nbaju nyaa udah smpee…\r\nbguss dechh…suka bgt…\r\nmaaksiih yaa'),
(5, 'Dewanti - Solo', '', 'Barang tidak mengecewakan.. cs nya fast respon, resi besoknya langsung di share tanpa kita tanya.. mantap tokohijabku'),
(6, 'Dina - Malang', '', 'Respon cs baik, tapi untuk pengirimannya agak lama, padahal pakai ekspedisi ”sicepat”\r\nharusnya bisa cepat sampainya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `id_invoice`, `user`, `product_name`, `price`, `qty`, `slug`, `ket`, `img`) VALUES
(69, 1216559545, 12, 'Tahu isi', 7000, 2, 'tahu-isi', '', '1645475090053.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_register` datetime NOT NULL,
  `is_activate` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `token_reset` varchar(100) NOT NULL,
  `cookie` varchar(100) NOT NULL,
  `photo_profile` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `date_register`, `is_activate`, `token`, `token_reset`, `cookie`, `photo_profile`) VALUES
(12, '401XD Group', '401xd-group', 'member@gmail.com', '$2y$10$cIJ4gL/TvfCzvhlFIlS96uCB8.1erZ.4m0PCuqgthorGXqex37iNm', '2021-05-19 22:20:52', 1, 'ef68bc405b7e534fb2010ef57ca1f020cb29653f', '', 'jwvPgHdtmZzJif7rg6e5C1tO3JOsMRdlkLL1N4o9iuEGYIWuWarXDaCy3mUSfUAK', 'default.png'),
(13, 'dani', 'dani', 'dhanispeed90@gmail.com', '$2y$10$0.7YOajpO1e9bBzCa82ZOOFBAqt/0elD8GiFxzpHCxc3fsPyNwM1e', '2022-02-22 06:19:10', 0, '58875165b967858b9eaa9b3939dcbaa8bbb3854a', '', '', 'default.png'),
(14, 'hakim', 'hakim', 'danihakim2206@gmail.com', '$2y$10$9oGMXFlp9VjUP/nNOsweh.2sG.GhbEbKBqFqjdyIKYZtxAZv0zCUq', '2022-02-22 06:21:58', 1, '89bfd678fec12b237fc8e22e81d8e57387fa33e8', '', '', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cod`
--
ALTER TABLE `cod`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cost_delivery`
--
ALTER TABLE `cost_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_send`
--
ALTER TABLE `email_send`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `grosir`
--
ALTER TABLE `grosir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payment_proof`
--
ALTER TABLE `payment_proof`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `cod`
--
ALTER TABLE `cod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `cost_delivery`
--
ALTER TABLE `cost_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `email_send`
--
ALTER TABLE `email_send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `grosir`
--
ALTER TABLE `grosir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `payment_proof`
--
ALTER TABLE `payment_proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
