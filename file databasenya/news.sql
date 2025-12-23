-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 23, 2025 at 07:22 AM
-- Server version: 5.7.39
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_12_22_005726_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `konten`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'RCC Poltekpar Lombok Perkuat Kompetensi Asesor Menuju Layanan Sertifikasi Berstandar Nasional', 'Politeknik Pariwisata (Poltekpar) Lombok menyelenggarakan kegiatan Recognition of Current Competency (RCC) pada 11–12 Desember 2025 di Ballroom Selaparang, de Balen Soultan Hotel. Kegiatan ini merupakan bagian dari upaya strategis institusi untuk memastikan peningkatan kualitas sumber daya manusia khususnya para asesor sertifikasi. RCC menghadirkan Master Asesor BNSP, Dr. Siti Saenab, M.Pd., dan Dr. I Ketut Sutapa, S.E., M.M., sebagai narasumber utama yang memberikan arahan komprehensif terkait mekanisme asesmen profesional. Pelaksanaan kegiatan ini menjadi momentum penguatan standar layanan sertifikasi di Poltekpar Lombok. Melalui kegiatan ini, institusi menegaskan komitmennya dalam menjaga kualitas asesmen sesuai ketentuan nasional.\r\n\r\nSelama dua hari, seluruh peserta mengikuti rangkaian pembelajaran intensif yang dirancang untuk memperkuat pemahaman dan keterampilan teknis dalam proses asesmen. Materi yang disampaikan mencakup kebijakan sertifikasi nasional, perancangan instrumen asesmen, teknik penilaian, serta mekanisme pelaksanaan asesmen berbasis MUK ASEAN. Para peserta mendapatkan kesempatan untuk berdiskusi, mengklarifikasi prosedur, dan mendalami penerapan standar asesmen yang berlaku. Kegiatan ini tidak hanya meningkatkan kapasitas teknis, tetapi juga memperluas wawasan peserta mengenai dinamika sertifikasi kompetensi. Dengan demikian, RCC menjadi ruang pembelajaran yang efektif sekaligus relevan bagi peningkatan kualitas asesor.\r\n\r\nKehadiran Master Asesor BNSP memberikan nilai tambah signifikan dalam penyelenggaraan kegiatan RCC ini. Pendampingan yang diberikan bersifat aplikatif dan berbasis praktik, sehingga peserta dapat menerapkan pengetahuan secara langsung dalam konteks tugas asesor. Narasumber juga menekankan pentingnya integritas, objektivitas, dan ketelitian dalam setiap proses asesmen untuk memastikan kredibilitas hasil sertifikasi. Selain itu, pemaparan mengenai asesmen berbasis standar ASEAN memperkaya perspektif peserta terkait kompetensi lintas negara. Seluruh rangkaian kegiatan berlangsung interaktif, kondusif, dan sesuai dengan prinsip pembelajaran profesional.\r\n\r\nMelalui kegiatan RCC 2025 ini, Poltekpar Lombok berharap dapat memperkuat mutu layanan sertifikasi kompetensi di lingkungan kampus. Penguatan kompetensi asesor diharapkan mampu meningkatkan akurasi dan kualitas pelaksanaan asesmen di berbagai skema sertifikasi. Lebih jauh lagi, kegiatan ini menjadi landasan penting bagi institusi untuk terus menyesuaikan diri dengan perkembangan standar nasional dan regional. Poltekpar Lombok berkomitmen untuk menjaga profesionalisme serta meningkatkan daya saing lulusan melalui layanan sertifikasi yang kredibel. Dengan semangat kolaborasi dan peningkatan berkelanjutan, Poltekpar Lombok terus berupaya menghadirkan layanan sertifikasi yang unggul, akuntabel, dan berstandar tinggi.', 'foto/Yj92xW1ZiD4eZxMfzjJhRWhUKwgOd1602qMY1HF7.jpg', '2025-12-21 17:19:58', '2025-12-21 17:19:58'),
(2, 'Hilirisasi Riset dan Inovasi Produk untuk Mendukung Program Makan Bergizi Gratis (MBG)', 'Pusat Penelitian dan Pengabdian kepada Masyarakat Poltekpar Lombok melaksanakan kegiatan hilirisasi riset selama empat bulan sebagai upaya mendukung penguatan Program Makan Bergizi Gratis (MBG) di Provinsi Nusa Tenggara Barat. Kegiatan ini dilaksanakan di berbagai Sekolah Menengah Atas dan Sekolah Menengah Kejuruan penerima layanan MBG untuk memperoleh data empiris terkait kebutuhan gizi peserta didik. Pelaksanaan survei lapangan dilakukan melalui observasi langsung dan wawancara mendalam di dapur MBG untuk melihat efektivitas pelaksanaan program. Hasil pengumpulan data ini menjadi landasan ilmiah dalam mengembangkan inovasi pangan yang relevan dengan kebutuhan masyarakat. Poltekpar Lombok berupaya memastikan seluruh proses penelitian berjalan sistematis dan sesuai kaidah akademik.\r\n\r\nRangkaian kegiatan dilanjutkan dengan pengembangan produk inovasi pangan di Laboratorium Praktik PPL sebagai bentuk implementasi dari data dan temuan lapangan. Tim peneliti merancang berbagai olahan pangan bergizi yang dapat mendukung pemenuhan gizi harian peserta didik secara lebih optimal. Setiap produk diuji berdasarkan standar kualitas, keamanan, serta potensi aplikasinya dalam program MBG. Pengembangan ini dilakukan dengan melibatkan tenaga ahli dan praktisi untuk memastikan inovasi yang dihasilkan dapat diimplementasikan secara berkelanjutan. Tahap ini menjadi momentum penting dalam menghadirkan solusi pangan yang adaptif dan berbasis riset.\r\n\r\nHasil pengembangan produk selanjutnya dipresentasikan melalui uji publik atau diseminasi sebagai sarana memperoleh masukan dari pemangku kepentingan. Kegiatan diseminasi melibatkan pihak sekolah, pemilik dapur MBG, serta perwakilan masyarakat untuk menilai kelayakan dan kebermanfaatan produk inovasi. Umpan balik yang diperoleh digunakan untuk menyempurnakan formulasi produk serta memperkuat rekomendasi yang akan disusun. Tahap diseminasi ini menjadi bagian penting dalam memastikan inovasi yang dihasilkan benar-benar sesuai kebutuhan pengguna. Proses ini juga mendorong kolaborasi lintas sektor dalam penguatan kualitas implementasi MBG.\r\n\r\nMelalui keseluruhan rangkaian kegiatan ini, Poltekpar Lombok berkomitmen menghadirkan inovasi berbasis riset yang memberikan kontribusi nyata bagi peningkatan gizi masyarakat. Kegiatan hilirisasi riset ini menjadi langkah strategis dalam memperkuat ekosistem pangan bergizi di daerah, terutama dalam mendukung keberlanjutan program pemerintah. Hasil riset dan diseminasi juga menjadi dasar penyusunan rekomendasi ilmiah untuk pelaksanaan Pengabdian kepada Masyarakat (PKM) tahun 2026. Poltekpar Lombok terus mendorong kolaborasi untuk memperluas pemanfaatan inovasi pangan di berbagai sektor. Upaya ini diharapkan mampu meningkatkan kualitas kesehatan dan kesejahteraan masyarakat secara berkelanjutan.', 'foto/ESlCvLKRiiMHk0P5Emk3VsQK1grkDUQGMR9zf9w4.jpg', '2025-12-21 17:25:08', '2025-12-21 17:25:08'),
(3, 'Poltekpar Lombok Gelar Workshop Smart UMKM untuk Tingkatkan Daya Saing Global', 'Politeknik Pariwisata Lombok menyelenggarakan Workshop Smart UMKM: Inovasi dan Teknologi sebagai Kunci Naik Kelas di Pasar Global sebagai upaya penguatan kapasitas pelaku usaha lokal. Kegiatan ini menghadirkan tiga narasumber, yaitu Dr. Ariyanti Dwiyani, S.Pd., M.Pd dari Dinas Perindustrian Provinsi NTB, Iwin Insani selaku Direktur PT Karya Iwin Insani, serta perwakilan dari Dinas Koperasi dan UMKM Kabupaten Lombok Tengah. Workshop ini dirancang untuk memberikan pemahaman mendalam mengenai peningkatan kualitas dan daya saing UMKM di era digital. Agenda berlangsung diikuti dengan antusias oleh ratusan peserta dari berbagai latar belakang. Kegiatan ini menjadi bentuk kolaborasi strategis antara pemerintah, akademisi, dan sektor industri.\r\n\r\nWorkshop tersebut turut melibatkan mahasiswa, alumni Start.inc, UMKM Lingkar KEK Mandalika, serta UMKM penyangga KEK Mandalika. Para peserta menunjukkan minat yang tinggi terhadap materi dan diskusi yang disampaikan para narasumber. Kehadiran pelaku usaha dari ekosistem Mandalika memberikan dinamika positif terhadap proses pembelajaran. Selain itu, interaksi antara UMKM dan akademisi membuka ruang sinergi yang lebih luas. Melalui kegiatan ini, peserta dapat saling bertukar pengalaman dan gagasan terkait pengembangan usaha.\r\n\r\nSelama kegiatan berlangsung, peserta mendapatkan wawasan baru mengenai pentingnya adaptasi terhadap perkembangan teknologi dan kebutuhan pasar global. Para narasumber menyampaikan berbagai sudut pandang mengenai peluang serta tantangan yang dihadapi UMKM saat ini. Pemahaman tersebut membantu peserta menilai kembali strategi usaha yang telah dijalankan. Selain itu, peserta diajak untuk melihat potensi pasar yang lebih luas melalui pemanfaatan teknologi digital. Kegiatan ini memberikan pengetahuan yang aplikatif dan mudah diintegrasikan ke dalam praktik usaha sehari-hari.\r\n\r\nMelalui workshop ini, diharapkan peserta mampu mengimplementasikan ilmu yang diperoleh untuk meningkatkan kualitas dan daya saing usaha mereka. Pemanfaatan teknologi, inovasi produk, dan pemahaman pasar global menjadi fokus utama yang ingin dicapai. Politeknik Pariwisata Lombok berharap kegiatan ini menjadi titik awal transformasi UMKM menuju model bisnis yang lebih modern. Selain itu, kegiatan ini diharapkan memperkuat ekosistem UMKM di kawasan Mandalika dan sekitarnya. Komitmen berkelanjutan dari seluruh pihak akan menjadi kunci terciptanya UMKM yang kuat, kompetitif, dan berorientasi global.', 'foto/Xh3CC0XK18nm27krmPfafp8msPWJ9honsKKz3q63.jpg', '2025-12-21 17:30:24', '2025-12-21 17:30:24'),
(4, 'Poltekpar Lombok Selenggarakan Diklat Penyelia Halal untuk Penguatan Ekosistem Halal di NTB', 'Unit Pusat Unggulan Pariwisata Berkelanjutan (Pusaka) Poltekpar Lombok menyelenggarakan Diklat Penyelia Halal untuk mendukung edukarsa, sertifikasi, dan penguatan ekosistem halal di destinasi super prioritas. Kegiatan ini berlangsung pada 5–6 Desember 2025 bertempat di Ruang Amphiteater, Gedung Rektorat Poltekpar Lombok. Acara dibuka secara resmi oleh Direktur Poltekpar Lombok, Dr. Ali Muhtasom, S.Sos., M.M., CHCM., CHE. Pembukaan turut dihadiri dan disampaikan sambutan oleh Kepala Bidang Kelembagaan Dispar NTB, Bapak Mawardi S.T., M.Par, Kepala Bidang Bimas Islam Kemenag NTB, Bapak Drs. H. Azharuddin, M.Sy, serta Kepala BPJPH, Prof. Dr. Ir. Ahmad Haikal Hasan, S.Kom., M.M.T. (Babe Haikal) dan Kepala Bank Indonesia Cabang NTB, Bapak Hario K. Pamungkas, diwakili oleh Ibu Alvin Hasani, Analis Fungsi Pengembangan UMKM Keuangan Inklusif dan Syariah.\r\n\r\nPelatihan ini diikuti oleh peserta dari berbagai latar belakang, mulai dari instansi pemerintah daerah, lembaga keagamaan, dan perbankan. Sivitas akademika Poltekpar Lombok, UMKM, serta dapur produksi dari berbagai wilayah NTB turut berpartisipasi aktif dalam kegiatan ini. Keberagaman tersebut menghadirkan proses pembelajaran yang saling melengkapi dan memperkuat pemahaman peserta. Setiap peserta membawa pengalaman yang berbeda, sehingga diskusi berlangsung relevan dan menyentuh kebutuhan lapangan. Interaksi yang terbangun selama kegiatan menjadikan pelatihan semakin dinamis dan aplikatif.\r\n\r\nPada hari pertama, materi disampaikan oleh narasumber dari BPJPH dan PT Kayama Amanah Sejati. Sesi dimulai dengan paparan dari Prof. Dr. Ir. Ahmad Haikal Hasan, S.Kom., M.M.T., serta Bapak Syisfari Datuk Gonjong dalam sesi sambutan teknis awal. Materi inti disampaikan oleh Bapak H. Mahdisin, S.H.I., M.H., Bapak Romli Eko Wahyudi, S.Kh., M.M., Bapak H. Mohamad Djamauluddin, S.Ag., M.Pd., serta Ibu Dina Sujana, S.T.P.. Para pemateri menekankan bahwa sertifikasi halal hanyalah langkah awal, sedangkan konsistensi penerapannya merupakan wujud komitmen yang sebenarnya. Mereka juga menjelaskan perbedaan produk yang wajib disertifikasi dan yang tidak, seperti air minum, sayuran segar, dan hewan potong segar yang tidak memerlukan sertifikasi halal.\r\n\r\nHari kedua diisi oleh narasumber teknis dari PT Kayama Amanah Sejati yang melanjutkan pendalaman materi terkait praktik penyeliaan halal di lapangan. Sesi dimulai oleh Dr. Anna P. Roswiem, M.S. yang membahas pengawasan bahan, proses, dan produk halal. Materi selanjutnya dibawakan oleh Dr. Aji Jumiono, S.T.P., M.Si., yang mengulas penanganan produk tidak memenuhi kriteria halal, audit internal, serta evaluasi tindak lanjut hasil audit. Penutupan materi dilakukan oleh H. Nurhanudin, S.T., M.Kom., yang menjelaskan alur pendaftaran sertifikat halal di PTSP Sihalal. Rangkaian pelatihan ini dipungkasi dengan post-test sebelum kegiatan resmi ditutup.\r\n\r\nMelalui penyampaian materi yang komprehensif selama dua hari, peserta diharapkan mampu menerapkan pengetahuan baru tersebut dalam operasional usaha masing-masing. Pemahaman terkait alur sertifikasi, pengawasan proses, audit internal, serta identifikasi bahan menjadi bekal penting untuk peningkatan standar produksi halal. Kegiatan ini juga memperkuat sinergi antara Poltekpar Lombok, pemerintah daerah, dan pelaku usaha dalam membangun ekosistem halal yang unggul dan berdaya saing. Kesuksesan pelatihan ini membuka peluang untuk penyelenggaraan program lanjutan di masa mendatang. Poltekpar Lombok melalui Unit Pusaka tetap berkomitmen untuk mendukung pengembangan pariwisata halal yang berkelanjutan di NTB.', 'foto/XjZR3tXFDhPjfzBOT1pCePjMkjR6BV1vVQUEylEV.jpg', '2025-12-21 17:32:52', '2025-12-21 17:32:52'),
(5, 'Sivitas Akademika Poltekpar Lombok Salurkan Bantuan Kemanusiaan untuk Korban Bencana di Wilayah Sumatera', 'Politeknik Pariwisata Lombok melaksanakan kegiatan penggalangan dan penyaluran donasi sebagai bentuk respons institusional terhadap bencana yang menimpa masyarakat. Pengumpulan donasi berlangsung pada 2–4 Desember 2025 di Gedung Rektorat, Ruang ADUM. Kegiatan ini melibatkan sivitas akademika secara menyeluruh, mulai dari pimpinan, dosen, tenaga kependidikan, hingga mahasiswa. Partisipasi tersebut mencerminkan kepedulian kolektif civitas akademika terhadap isu kemanusiaan. Inisiatif ini juga sejalan dengan nilai sosial dan kemasyarakatan yang dikembangkan dalam lingkungan pendidikan tinggi.\r\n\r\nDonasi yang berhasil dihimpun terdiri atas berbagai kebutuhan dasar, diantaranya makanan instan, pakaian layak pakai, selimut, air mineral, sembako, serta kebutuhan penting lainnya. Seluruh bantuan dikumpulkan dan diseleksi untuk memastikan kelayakan serta kebermanfaatannya bagi penerima. Proses pengelolaan donasi dilaksanakan secara terkoordinasi dengan mengedepankan prinsip akuntabilitas. Hal ini bertujuan agar bantuan yang disalurkan tepat sasaran dan sesuai dengan kebutuhan di lapangan. Kegiatan penggalangan donasi ini mendapat respon positif dari seluruh unsur sivitas akademika.\r\n\r\nPenyaluran donasi dilaksanakan pada 5 Desember 2025 melalui mekanisme yang telah ditetapkan oleh institusi. Bantuan diserahkan kepada pihak terkait untuk kemudian didistribusikan kepada masyarakat terdampak bencana. Proses penyaluran dilakukan secara tertib dan terpantau guna menjamin kelancaran distribusi. Poltekpar Lombok memastikan setiap bantuan dapat diterima oleh pihak yang membutuhkan. Tahapan ini menjadi bagian penting dalam memastikan efektivitas kegiatan kemanusiaan yang dilaksanakan.\r\n\r\nPoliteknik Pariwisata Lombok menyampaikan apresiasi kepada seluruh sivitas akademika atas kontribusi dan kepedulian yang diberikan. Keterlibatan aktif tersebut menunjukkan solidaritas dan tanggung jawab sosial yang kuat di lingkungan kampus. Bantuan yang disalurkan diharapkan dapat membantu meringankan beban masyarakat terdampak bencana. Selain memberikan dukungan material, kegiatan ini juga membawa pesan empati dan kepedulian bersama. Poltekpar Lombok berkomitmen untuk terus mengambil peran aktif dalam kegiatan sosial kemasyarakatan.', 'foto/POONHY6CzG6GE7mS2pkG7pbyze7jGgbjnJZ4ASkV.jpg', '2025-12-21 18:25:00', '2025-12-21 18:25:00'),
(6, 'Poltekpar Lombok dan PUM Netherlands Perkuat Implementasi Kerja Sama Kewirausahaan', 'Politeknik Pariwisata Lombok menerima kunjungan resmi dari PUM Netherlands pada Selasa, 18 November 2025, sebagai bagian dari penguatan implementasi kerjasama strategis di bidang kewirausahaan. Kunjungan ini menjadi momentum untuk meninjau pelaksanaan program yang telah dirancang bersama dan memastikan keberlanjutan kegiatan yang bersifat jangka panjang. Dalam rangkaian acara tersebut, perwakilan PUM Netherlands berdiskusi langsung dengan jajaran pimpinan dan tim pelaksana program. Pertemuan ini membuka ruang dialog mengenai kebutuhan pengembangan kewirausahaan berbasis vokasi yang relevan dengan dinamika industri. Komitmen kedua pihak menunjukkan keseriusan dalam membangun kemitraan internasional yang kuat dan produktif.\r\n\r\nSebagai bagian dari implementasi kerjasama, kegiatan dilaksanakan selama dua minggu, yakni dari 17 hingga 28 November 2025, dengan rangkaian agenda yang telah disusun secara intensif. Program ini mencakup pelatihan, pendampingan, konsultasi, serta peningkatan kapasitas dalam sektor-sektor prioritas yang mendukung pengembangan kewirausahaan. Fokus kegiatan meliputi produksi pangan olahan, pengembangan bisnis, serta pendekatan kewirausahaan terapan yang relevan bagi mahasiswa. Keterlibatan aktif tenaga ahli dari PUM Netherlands memberikan pemahaman baru mengenai standar global dalam pengelolaan usaha kreatif. Melalui kegiatan ini, Poltekpar Lombok memperkuat pondasi akademik yang berorientasi pada pemberdayaan dan inovasi bisnis.\r\n\r\nPelaksanaan program dua minggu tersebut melibatkan mahasiswa, dosen, dan tenaga kependidikan yang berpartisipasi dalam berbagai sesi berbasis praktik. Perwakilan PUM Netherlands turut memberikan evaluasi teknis, rekomendasi pengembangan, serta pendampingan intensif kepada para peserta. Mahasiswa memperoleh kesempatan untuk mengembangkan ide usaha, menyempurnakan konsep bisnis, dan meningkatkan keberanian dalam memulai aktivitas wirausaha. Melalui transfer pengetahuan ini, ekosistem kewirausahaan kampus semakin diperkuat dengan pendekatan yang lebih terstruktur dan adaptif. Kegiatan ini menjadi bukti nyata bahwa kerja sama internasional mampu memberikan dampak langsung pada kualitas pembelajaran vokasi.\r\n\r\nKolaborasi Poltekpar Lombok dan PUM Netherlands dinilai sebagai langkah strategis dalam memperluas jejaring global dan meningkatkan daya saing lulusan di sektor pariwisata dan industri kreatif. Momentum ini memberikan landasan bagi peningkatan kompetensi sivitas akademika melalui pertukaran pengalaman lintas negara. Poltekpar Lombok berkomitmen untuk terus memperkokoh kemitraan internasional sebagai bagian dari transformasi institusi pendidikan vokasi yang unggul. Bersama PUM Netherlands, institusi berupaya menciptakan inovasi baru yang relevan dengan tuntutan industri modern. Dengan sinergi yang terjalin, Poltekpar Lombok optimis dapat memberikan kontribusi signifikan bagi pengembangan pariwisata Indonesia.', 'foto/fGbb5MJbFA6S4laP5kPObAsuKprcE6iKYvuBdZ2d.jpg', '2025-12-21 18:37:15', '2025-12-21 18:37:15'),
(7, 'Poltekpar Lombok Terima Kunjungan Monitoring dan Evaluasi Kerja Sama Internasional', 'Politeknik Pariwisata Lombok menerima kunjungan Asisten Deputi Hubungan Antar Lembaga Internasional Kementerian Pariwisata sebagai bagian dari pelaksanaan monitoring dan evaluasi kerja sama pada 19 November 2025. Kunjungan ini menjadi momentum penting bagi institusi untuk memperkuat hubungan kelembagaan di tingkat nasional maupun internasional. Kehadiran tim dari kementerian menunjukkan perhatian terhadap perkembangan kerja sama yang telah dibangun sepanjang tahun 2025. Selain itu, kegiatan ini memberikan ruang bagi kedua pihak untuk memahami progres program yang telah dijalankan secara lebih mendalam. Poltekpar Lombok menyambut baik proses evaluasi ini sebagai bagian dari upaya peningkatan kualitas institusi.\r\n\r\nForum diskusi yang berlangsung difokuskan untuk menginventarisasi capaian kerja sama internasional pada tahun 2025, termasuk inisiatif terkait pengembangan pariwisata ramah Muslim. Berbagai capaian dianalisis secara komprehensif untuk memastikan manfaat program selaras dengan tujuan pembangunan pariwisata inklusif. Evaluasi meliputi pencapaian akademik, penguatan kurikulum, serta kolaborasi pelatihan yang mendukung konsep Muslim Friendly Tourism. Hasil analisis ini menjadi langkah penting dalam menilai kesiapan institusi menghadapi tuntutan industri global. Selain itu, forum ini mendorong peningkatan kualitas kerja sama di masa mendatang.\r\n\r\nSelain meninjau progres tahun berjalan, pertemuan ini juga membahas arah kebijakan dan rencana program Poltekpar Lombok untuk tahun 2026. Diskusi berjalan konstruktif dengan mengidentifikasi peluang kolaborasi baru di tingkat internasional. Pihak kementerian memberikan masukan terkait strategi penguatan jejaring global yang lebih adaptif dan relevan dengan kebutuhan industri pariwisata. Di sisi lain, Poltekpar Lombok menyampaikan rancangan program yang berfokus pada peningkatan kompetensi mahasiswa dan perluasan kerjasama akademik. Pembahasan ini diharapkan menghasilkan langkah strategis yang berdampak jangka panjang bagi institusi.\r\n\r\nKehadiran tim dari Kementerian Pariwisata turut mempertegas komitmen Poltekpar Lombok dalam meningkatkan mutu pendidikan dan pengembangan SDM pariwisata. Dukungan pemerintah menjadi energi positif untuk memperluas jangkauan program internasional yang lebih berkualitas. Poltekpar Lombok menegaskan kesiapannya untuk terus berinovasi dan memperkuat kerja sama lintas negara. Institusi juga berkomitmen menjaga transparansi dan akuntabilitas dalam setiap bentuk kolaborasi yang dijalankan. Dengan sinergi yang kuat, Poltekpar Lombok optimis dapat meningkatkan kontribusi dalam pembangunan pariwisata nasional dan global.', 'foto/CsEwOgWM8Mt13jp4oFZaedbBZOE2ALyk2rPxHfWE.jpg', '2025-12-21 18:56:52', '2025-12-21 18:56:52'),
(8, 'Penguatan Standar Pariwisata Halal: Poltekpar Lombok Selenggarakan FGD Penyusunan Buku Panduan', 'Unit Pusat Unggulan Pariwisata Berkelanjutan (Pusaka) Politeknik Pariwisata Lombok menyelenggarakan Forum Group Discussion (FGD) sebagai langkah strategis untuk menyempurnakan Buku Panduan Pariwisata Halal/Ramah Muslim. Kegiatan ini bertujuan memastikan panduan tersebut memiliki substansi yang komprehensif dan relevan dengan dinamika industri pariwisata modern. Poltekpar Lombok menempatkan kegiatan ini sebagai bagian dari komitmen institusi dalam menghadirkan acuan yang dapat diimplementasikan oleh berbagai pemangku kepentingan. FGD ini dilaksanakan di Gedung Rektorat Poltekpar Lombok dengan melibatkan berbagai unsur akademik dan praktisi. Pelaksanaan FGD menjadi momentum penting untuk memperkuat arah pengembangan pariwisata ramah Muslim di Indonesia.\r\n\r\n \r\n\r\nKegiatan tersebut menghadirkan para pakar, praktisi, dan pemangku kepentingan dari berbagai sektor untuk memberikan masukan strategis bagi penyempurnaan buku panduan. Para narasumber memberikan pandangan kritis terkait struktur, konsep, dan konten yang harus selaras dengan kebutuhan industri dan kebijakan nasional. Diskusi berlangsung interaktif dengan menyoroti tantangan dan peluang dalam implementasi pariwisata halal di berbagai daerah. Keberadaan para ahli memberikan sudut pandang yang memperkaya proses penyusunan buku panduan. Melalui kolaborasi ini, standar pariwisata halal diharapkan semakin kuat dan terukur.\r\n\r\n \r\n\r\nSelain itu, FGD ini menjadi wadah evaluasi bagi Poltekpar Lombok dalam memastikan buku panduan memiliki nilai akademik sekaligus aplikatif. Peserta aktif menyampaikan saran mengenai tata kelola destinasi, pelayanan ramah Muslim, serta aspek sertifikasi halal yang perlu diperjelas dalam panduan. Berbagai rekomendasi diberikan untuk meningkatkan kualitas penyajian informasi sehingga mudah diadaptasi oleh industri dan pemerintah daerah. FGD juga menekankan pentingnya harmonisasi antara kebijakan nasional, praktik lapangan, dan kebutuhan wisatawan Muslim. Dengan demikian, buku panduan ini diharapkan dapat menjadi rujukan yang kredibel bagi seluruh pemangku kepentingan pariwisata.\r\n\r\n \r\n\r\nPoltekpar Lombok terus menunjukkan komitmen dalam mengembangkan pariwisata halal di Indonesia melalui kegiatan berbasis kajian dan kolaborasi lintas sektor. Institusi ini berupaya memastikan setiap output akademik dapat memberikan dampak nyata terhadap kualitas layanan dan standar pariwisata nasional. Pelaksanaan FGD menjadi salah satu bentuk kontribusi nyata dalam mendukung Indonesia sebagai destinasi unggulan pariwisata ramah Muslim. Upaya ini menegaskan posisi Poltekpar Lombok sebagai pusat pengetahuan dan inovasi di bidang pariwisata berkelanjutan. Kehadiran buku panduan yang diperkuat melalui FGD ini diharapkan semakin mendukung perkembangan pariwisata halal di tingkat nasional maupun internasional.', 'foto/HA3IfMyG6hgT6SDvfReY9CsapUY10zv1QdsQPomK.jpg', '2025-12-21 18:57:48', '2025-12-21 18:57:48'),
(9, 'Pdadaoltekpar Lombok Gelar Widya Wisata Semester 1 untuk Penguatan Etika dan Profesionalisme Mahasiswa', 'Politeknik Pariwisata Lombok melaksanakan kegiatan Widya Wisata Semester 1 yang berlangsung setiap hari Sabtu dan Minggu, mulai 11 Oktober hingga 23 November 2025. Kegiatan ini melibatkan 406 mahasiswa dari Program Studi Usaha Perjalanan Wisata, Divisi Kamar, Seni Kuliner, dan Tata Hidang. Pelaksanaan secara bertahap dilakukan untuk memastikan seluruh mahasiswa mendapatkan pengalaman belajar yang optimal. Setiap kelas mengikuti rangkaian kegiatan selama dua hari dengan pendampingan dari tim akademik. Poltekpar Lombok menegaskan bahwa kegiatan ini menjadi bagian penting dalam kurikulum pembelajaran berbasis praktik.\r\n\r\nRangkaian Widya Wisata diawali dengan sesi team building yang diselenggarakan di De Balen Soultan Hotel sebagai media penguatan karakter dan kerja sama tim. Kegiatan dilanjutkan dengan agenda kunjungan edukatif ke desa wisata binaan Poltekpar Lombok untuk memberikan pemahaman nyata tentang pariwisata berbasis masyarakat. Mahasiswa mendapat kesempatan berinteraksi langsung dengan pengelola desa wisata dan mempelajari konsep pengembangan destinasi. Selain itu, peserta juga melakukan observasi mengenai potensi, atraksi, dan strategi pemberdayaan masyarakat. Pengalaman ini dirancang untuk menghubungkan teori perkuliahan dengan praktik lapangan.\r\n\r\nPada hari kedua, mahasiswa mengikuti sesi Table Manner yang dilaksanakan di hotel sebagai upaya meningkatkan pemahaman mengenai standar layanan makanan dan minuman. Kegiatan ini memberikan pengalaman langsung mengenai tata cara makan formal sesuai etika industri hospitality. Dengan adanya praktik ini, mahasiswa diharapkan memiliki kompetensi dasar yang relevan dengan dunia kerja. Pelatihan Table Manner juga menjadi sarana untuk menanamkan disiplin, etika, dan profesionalisme sejak dini. Seluruh rangkaian kegiatan berjalan terstruktur dan melibatkan instruktur berpengalaman.\r\n\r\nWidya Wisata Semester 1 memberikan manfaat signifikan bagi mahasiswa sebagai bentuk pembelajaran kontekstual yang komprehensif. Melalui kegiatan ini, mahasiswa diperkuat karakter, etika, dan kesiapan profesionalnya untuk memasuki industri pariwisata. Pengalaman lapangan tersebut membantu meningkatkan keterampilan komunikasi, kerja sama tim, dan pemahaman lintas sektor. Poltekpar Lombok berharap kegiatan ini menjadi fondasi bagi pengembangan kompetensi mahasiswa di masa mendatang. Dengan demikian, Widya Wisata tidak hanya menjadi pengalaman edukatif, tetapi juga motivasi untuk membangun masa depan pariwisata yang unggul dan berdaya saing', 'foto/r7G8yYS4VaFFZcmZ4kINV8bno0710Qhec7BjJ7VM.jpg', '2025-12-21 18:58:58', '2025-12-22 23:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$iTBxGwFgVM8npyftOtCuqu.ndmmedKk4zDiKz1n8GCVYjCYtZD4Me', NULL, '2025-12-21 20:09:02', '2025-12-21 20:09:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
