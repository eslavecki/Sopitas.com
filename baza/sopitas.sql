-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 12:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sopitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `dozvola` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `korisnickoIme` varchar(50) NOT NULL,
  `lozinka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`dozvola`, `id`, `Ime`, `Prezime`, `korisnickoIme`, `lozinka`) VALUES
(1, 2, 'admin', 'admin', 'admin', '$2y$10$ZlXjl3uLW6HvOdyX.1/GN.j0b1Rj5Uu4mXwbV2NGR3wxAWJVGhemq'),
(1, 3, 'Emanuel', 'Slavečki', 'eslavecki', '$2y$10$wlgvWUc3lSZPN2fIgeMRzOjcmAfuYtzIsRLntD6rARF1/VUuEFshO');

-- --------------------------------------------------------

--
-- Table structure for table `novosti`
--

CREATE TABLE `novosti` (
  `arhiva` tinyint(4) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `datum` varchar(10) NOT NULL,
  `id` int(11) NOT NULL,
  `kategorija` varchar(30) NOT NULL,
  `naslov` varchar(255) NOT NULL,
  `sazetak` text NOT NULL,
  `slika` varchar(50) NOT NULL,
  `tekst` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `novosti`
--

INSERT INTO `novosti` (`arhiva`, `autor`, `datum`, `id`, `kategorija`, `naslov`, `sazetak`, `slika`, `tekst`) VALUES
(0, 'Emanuel Slavečki', '12.06.2021', 1, 'Sport', 'Svoju sedmu pobjedu Alen Babić namjerava ostvariti ne odstupajući od svog stila boksa', 'Došlo je vrijeme za novi meč Alena Babića, puno prije nego mu je itko nakon operacije ramena predviđao. U Newcastleu, na Matchroomovoj priredbi, svoju će novu pobjedu tražiti protiv Damiana Chambersa. Kao i uvijek, za sebe, ali i za svoj \"Savage Army\".', 'babic.png', 'Došlo je vrijeme za novi meč Alena Babića, puno prije nego mu je itko nakon operacije ramena predviđao. U Newcastleu, na Matchroomovoj priredbi, svoju će novu pobjedu tražiti protiv Damiana Chambersa. Kao i uvijek, za sebe, ali i za svoj \"Savage Army\".\r\n\r\n\"Uzbuđen sam što sam ovdje i što mogu ljudima pružiti show. Uvijek sam spreman staviti svoj život na kocku da bih zabavio ljude. Jer prvo sam zabavljač pa onda boksač i mislim da pripadam ovdje, da sam na pravom mjestu\", rekao je Babić u razgovoru za Matchroomovu YouTube stranicu. \r\n\r\nPreko dva mjeseca bio je izvan boksa, a ispričao je kako mu je prvi mjesec bio jedan od najgorih u životu. Nakon toga mu je zdravstveno stanje krenulo na bolje, a onda se polako krenuo vraćati. I to tako da je prvo rekapitulirao sve što je u posljednjih godinu dana napravio.\r\n\r\n\"Ovo mi je trebalo. Zapravo nisam niti shvatio koliko mi je život postao dobar. Onda sam gledao svoje snimke i intervjue. Na kraju sam ja posljednji shvatio da Savage postoji. Gledao sam to i vidio da to zapravo nisam ja, to je nešto ludo. Moj um je toliko jak, govore mi svi da sam malen, a nastavljam nokautirati ljude. Kažu da me neće biti deset mjeseci, ja se vratim za dva. Želim se boriti deset puta do kraja ove godine. Moje rame je bolje nego prije, zapravo sve je bolje. Ja sam nikad bolji\", rekao je, prije nego se okrenuo Damianu Chambersu, boksaču omjera 11-1 koji je prihvatio borbu protiv njega:\r\n\r\n\"Jako puno boksača me odbilo, neka velika imena koja neću ni spominjati. Onda su me nazvali, rekli kakav omjer ima boksač koji se želi boriti protiv mene. Rekao sam da može, nije mi bitno njegovo ime. Dobar je boksač, može udariti. Ne možeš nokautirati sedam ljudi ako nemaš to u sebi. Kasnije sam čuo da ima lošu bradu, što nije baš dobro kad se boriš protiv mene. Ali, drag mi je tip i drago mi je da je prihvatio ovaj meč. Ipak, neće izdržati dulje od dvije runde.\" \r\n\r\nUpitan je i hoće li nastaviti boksati kao sada ili će s dolaskom ozbiljnijih protivnika prestati biti onako agresivan, boksač koji ide samo naprijed i traži brzi nokaut, neovisno o tome koliko će ga to potrošiti.\r\n\r\n\"Radim ovo deset godina i svaki moj meč je isti. Ja znam boksati, ali nitko ne želi gledati mene gdje se krećem ringom i gdje radim eskivaže. Žele me vidjeti gdje razbijam, ljudi žele vidjeti krv i žele vidjeti ono što ću ja svaki put dati\", najavio je kako se neće mijenjati, kao što se nije mijenjao niti tijekom cijele amaterske karijere.\r\n\r\nZbog toga je i napravio ovakav uspjeh i došao do trenutne popularnost te do toga da mu je dovoljno nazvati Dilliana Whyte ili Eddieja Hearna te će dobiti meč na Matchroomovom programu. Ako savlada Chambersa, kao što je najavio, idući bi mogao vrlo brzo doći.'),
(0, 'Emanuel Slavečki', '04.06.2020', 2, 'Sport', '‘NADAM DA ENGLEZI MOGU IZGORITI, ONI SU NAJBAHATIJA NOGOMETNA NACIJA NA SVIJETU. U NAPADU? REBIĆ‘', 'Na dan utakmice Hrvatske i Engleske razgovaramo s nekadašnjim proslavljenim napadačem.', 'rebic.jpg', 'Treće izdanje Eurocasta u našem studiju gostovao je Zoran Zekić, nekadašnji proslavljeni HNL-napadač, a donedavno trener mađarskog Diosgyöra. Glavna tema bila je, dakako, dvoboj Engleske i Hrvatske na Wembleyju, na otvaranju Eura za naše Vatrene.\r\n\r\nU studiju Hanza Medije uz Zorana Zekića bili su glavni urednik SN Robert Šola i Patrik Mršnik.\r\n\r\n\r\nTreće izdanje Eurocasta u našem studiju gostovao je Zoran Zekić, nekadašnji proslavljeni HNL-napadač, a donedavno trener mađarskog Diosgyöra. Glavna tema bila je, dakako, dvoboj Engleske i Hrvatske na Wembleyju, na otvaranju Eura za naše Vatrene.\r\n\r\nU studiju Hanza Medije uz Zorana Zekića bili su glavni urednik SN Robert Šola i Patrik Mršnik.\r\n\r\n\r\nEriksen i šok koji je potresao sve?\r\n\r\n\"To je nažalost sudbina jednog čovjeka, ali najbitnije je da je on dobro i stabilno. Najbitnije je da je živ i zdrav\", rekao je Zekić.\r\n\r\nOkršaj protiv Engleske na Wembleyju, imate li osjećaj da kreće ludilo?\r\n\r\n\"Nisam imao taj osjećaj do sada, nije bila nogometna atmosfera kao prethodnih godina, ali danas će biti\", kaže Zekić.\r\n\r\nimage\r\nZoran Zekić, Patrik Mršnik i Robert Šola\r\n SN\r\nRomelu Lukaku obilježio je subotu.\r\n\r\n\"Ne zna se je li igra bolje leđima ili okrenut licem prema golu. Igra fantastično i u Interu i u reprezentaciji\", objašnjava hrvatski trener.\r\n\r\nPlan za Engleze?\r\n\r\n\"Svi naši igrači trebaju biti u 30, 35 metara. Treba respektirati njihove brze igrače, skratiti im maksimalno prostor. Zna se kako se igra protiv takvih momčadi\", rekao je Zekić.\r\n\r\n\"Englezi su išli mijenjati formaciju i čine mi se pomalo uplašeni. Engleska javnost želi da momčad pokaže silu i napadne, a oni su malo oprezni\", rekao je glavni urednik SN Robert Šola.\r\n\r\nProblem Hrvatske u prekidima u obrani?\r\n\r\nVEZANE VIJESTI\r\nStjepan Tomas, Emir Fulurija i Robert Šola\r\nEUROCAST #2\r\nKakvi će Vatreni izaći na Wembley? ‘Jedan igrač nam jako nedostaje! Sve ovisi o tom detalju...‘\r\nEUROCAST - SVAKO JUTRO U 9!\r\nVIDEO: ‘Da Dalić kaže da će igrati sa četiri stopera, ja potpisujem! A jedan igrač konačno će biti pravi‘\r\n\"Najbitnije je pokazati odgovornost i karakter. Da bi bilo što manje prekida trebamo ih odmaknuti od gola. Igrači tu trebaju pomoći vrataru. Izbornik je vjerojatno pratio njihove prekide i zna kako\", objašnjava Zekić.\r\n\r\nIgra li Gvardiol zboig obrane ili napadački?\r\n\r\n\"Mislim da je Gvardiol danas korisniji i obrambeno i napadački od Barišića\", kaže Šola.\r\n\r\nTko će zaigrati u napadu?\r\n\r\n\"Rebić. On može razbucati i suparnika, ali i svoju momčad\", kaže Šola, a s time se složio i Zekić.\r\n\r\n\"Meni je žao što Oršić igra isključivo po lijevoj strani, volio bih igrati i njega i Perišića po bokovima. Jer mi ćemo se često braniti sa šestoricom igrača. Oršić može sprintati 20 puta na utakmici\", objašnjava Šola.\r\n\r\n\"Siguran sam da ćemo se mi znati i braniti i ponašati na terenu. Ja se nadam da Englezi mogu izgoriti, oni su najbahatija nogometna nacija na svijetu. Ali mi se moramo fokusirati isključivo na sebe. Mi trebamo navijati i dati im tu pozitivnu energiju\", objašnjava Zekić.\r\n\r\nPrognoza?\r\n\r\n\"Rekao bih 1:1\", kaže Šola.\r\n\r\n\"3:2 za Hrvatsku, prognozirao je Zekić.\r\n\r\nU studiju Hanza Medije od 9 sati s vama su uz Zorana Zekića vaši voditelji, Robert Šola i Patrik Mršnik.'),
(0, 'Emanuel Slavečki', '12.06.2021', 3, 'Sport', 'FOTO: NEVJEROJATNA, POTRESNA SCENA! UPLAKANI SUIGRAČI ODVEZLI I TIJELIMA ZAŠTITILI ERIKSENA OD POGLEDA', 'Suigrač Marcela Borozovića i Ivana Perišića u Interu srušio se na staionu u Kopenhagenu', 'eriksen.jpg', '\r\nVeć drugog dana EURA dogodila se nezapamćena nogometna drama - usred utakmice Danske i Finske na travnjaku srušio se najbolji danski igrač Christian Eriksen.\r\n\r\nIgrala se 43. minuta kada je 29-godišnji veznjak pao na travnjaku, a onda su uslijedile scene kakve ne pamtimo, ne samo na ovako velikim natjecanjima, nego uopće u vrhunskom nogometu.\r\n\r\nErikssen je pao kao pokošen pored aut-linije i ostao bez svijesti. Nikome nije bilo jasno što se događa, uslijedila je potpuno panika na terenu i na tribinama. Oko Erikssena su se sjatili liječnici i odmah ga počeli oživljavati dok su se igrači obje momčad držali za glave sa i strahom i suzama u očima pratili kako će sve to završiti.\r\n\r\nNiti nakon par minuta Erikssen nije došao k svijesti, a ubrzo je prekinut i televizijski prijenos, nakon čega je stigla vijest da je utakmica prekinuta i nije jasno kada i hoće li uopće biti nastavljena.\r\n\r\nNakon desetak minuta vidjeli smo još potresniju scenu sa stadiona u Kopenhagenu. Erikssen je na kolicima odvezen s travnjaka, dok su njegovi uplakani suigrači s bijelim plahtama kao zaštitom oko njega polako uz kolica izlazili sa stadiona. \r\n\r\n\r\nVeć drugog dana EURA dogodila se nezapamćena nogometna drama - usred utakmice Danske i Finske na travnjaku srušio se najbolji danski igrač Christian Eriksen.\r\n\r\nIgrala se 43. minuta kada je 29-godišnji veznjak pao na travnjaku, a onda su uslijedile scene kakve ne pamtimo, ne samo na ovako velikim natjecanjima, nego uopće u vrhunskom nogometu.\r\n\r\nimage\r\n FRIEDEMANN VOGEL Afp\r\nErikssen je pao kao pokošen pored aut-linije i ostao bez svijesti. Nikome nije bilo jasno što se događa, uslijedila je potpuno panika na terenu i na tribinama. Oko Erikssena su se sjatili liječnici i odmah ga počeli oživljavati dok su se igrači obje momčad držali za glave sa i strahom i suzama u očima pratili kako će sve to završiti.\r\n\r\nimage\r\n FRIEDEMANN VOGEL Afp\r\nNiti nakon par minuta Erikssen nije došao k svijesti, a ubrzo je prekinut i televizijski prijenos, nakon čega je stigla vijest da je utakmica prekinuta i nije jasno kada i hoće li uopće biti nastavljena.\r\n\r\nimage\r\n JONATHAN NACKSTRAND Afp\r\nNakon desetak minuta vidjeli smo još potresniju scenu sa stadiona u Kopenhagenu. Erikssen je na kolicima odvezen s travnjaka, dok su njegovi uplakani suigrači s bijelim plahtama kao zaštitom oko njega polako uz kolica izlazili sa stadiona. \r\n\r\nVEZANE VIJESTI\r\n6787671\r\nŠOKANTAN POČETAK EURA\r\nZbog drame u Kopenhagenu dovedeno u pitanje i odigravanje utakmice Hrvatske, Englezi otkazali presicu!\r\nDRAŽEN ANTOLIĆ S WEMBLEYJA\r\nVIDEO: Zlatko Dalić prelomio! Naš reporter javio se s treninga Vatrenih i otkrio prvih 11 za Englesku\r\nimage\r\n FRIEDEMANN VOGEL Afp\r\nNevjerojatna, potresna scena. I Sabrina Kvist, Eriksenova supruga, plakala je u šoku uz teren i na kraju je ekspresno utrčala na travnjak.\r\n\r\nTračak nade u prvi je tren vratila scena s kolica na kojoj se vidjela boca s kisikom na Erikssonovom licu, činilo se po fotografijama da je došao svijesti, a sat vremena kasnije je došla najljepša vijest - Danski nogometni savez objavio da je Eriksen budan i stabilan i čini se da će s njime sve ipak biti u redu.'),
(0, 'Emanuel Slavečki', '10.06.2021', 4, 'Muzika', 'Ispod pulta je 6 novih stvari, poslušaj muzičke novitete!', 'Glasovanje za singl tjedna nalazi se ispod prijedloga, a otvoreno je do ponedjeljka u podne.', 'ispod pulta.jpg', 'Glasovanje za singl tjedna nalazi se ispod prijedloga, a otvoreno je do ponedjeljka u podne. Pobjedu posljednjeg glasanja odnijela je Patricia sa singlom “Uzbuna“. U nastavku poslušaj što nam je novo izašlo posljednjih dana, a svi Ispod pulta singlovi se dodaju na godišnju Spotify i Deezer playlistu.'),
(0, 'Emanuel Slavečki', '11.06.2021', 5, 'Muzika', '“Umro je trep i autotjun takođe”: Ajs Nigrutin i Smoke Mardeljano u singlu sahranili trap', 'Novi singl sugestivnog naziva “Umro je trep” najavljuje novi album i suradnju dvojice velikih regionalnih repera – Ajs Nigrutina i Smoke Mardeljana.', 'umro je trep.jpg', 'Novi singl sugestivnog naziva “Umro je trep” najavljuje novi album i suradnju dvojice velikih regionalnih repera – Ajs Nigrutina i Smoke Mardeljana.\r\n\r\nPjesma je naravno puna direktnih i eksplicitnih rima, a ni spot za singl nije ostao dužan: prikazuje sahranu jednog od najpopularnijih žanrova u posljednjih par godina, a osmišljen je da obuhvati duh buntovničkih spotova kultnih hip-hop imena kao što su Public Enemy i Terminator X. Pjesma i video sadrže prepoznatljivu dozu ironije karakterističnu za oba repera:\r\n\r\nKupio sam sveće i otišô na groblje\r\nUmro je trep i autotjun takođe\r\nDođite na sa’ranu gde neće biti tužno\r\nDoći će svi reperi i rakiju sam uzô\r\nAutotjun kremiramo za svaki slučaj\r\nUrnu u sefu bacamo u vulkan\r\n\r\n“Na snimanju video spota sam rukovao bagerom. Bilo je to super iskustvo. Moraću to da ponovim”, kratko je izjavio Smoke.\r\n'),
(0, 'Emanuel Slavečki', '09.06.2021', 6, 'Muzika', 'Šafl: “Alles gut” playlista – pjesme za dobro raspoloženje po izboru TBF-a', 'Serijal playlisti Šafl traži od muzičara izbor pjesama koje ih diraju, koje ih pogone, nadahnjuju. \r\n\r\n', 'TBF.jpg', 'Serijal playlisti Šafl traži od muzičara izbor pjesama koje ih diraju, koje ih pogone, nadahnjuju. Dosad smo imali jedinstvenu Natali Dizdar koja nam je otkrila 20 pjesama koje sluša kad sanjari i triljskog rappera Gršu koji nam je sredio tvrdu playlistu. Sljedeći su TBF koji su dobili zadatak da slože ultimativnu “alles gut” playlistu: ovo su pjesme za popravit’ raspoloženje po njihovom izboru. Poslušajte kako zvuči njihov izbor!\r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnickoIme` (`korisnickoIme`);

--
-- Indexes for table `novosti`
--
ALTER TABLE `novosti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
