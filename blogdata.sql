-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 03 feb 2020 om 09:53
-- Serverversie: 10.4.8-MariaDB
-- PHP-versie: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogdata`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, 'Operatie Rus', 'operatie-rus', 0, 'rusgangster.jpg', '<h1>Informatie</h1>\r\n\r\n<table border=\"1\" cellspacing=\"0\" style=\"width:100.0%\" summary=\"Project snapshot\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"height:23.1pt; vertical-align:bottom; width:13.26%\">\r\n			<p><strong>STATUS</strong></p>\r\n			</td>\r\n			<td style=\"height:23.1pt; vertical-align:bottom; width:86.74%\">\r\n			<p><strong>AFGEROND</strong></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:13.26%\">\r\n			<p>Opdracht</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:86.74%\">\r\n			<p>Liquideren van [Wok-Ni-Pan-Hao, Kip-Babi-Sate-Pangang en Beef-Chai-Shanghai] want zij dirigeren wapenhandel van Triads in [Locatie].</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:13.26%\">\r\n			<p>Beloning</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:86.74%\">\r\n			<p>160.000NEU.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:13.26%\">\r\n			<p>Extra Opdracht</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:86.74%\">\r\n			<p>Liquidaties uitvoeren op klaarlichte dag.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:13.26%\">\r\n			<p>Extra Beloning</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:86.74%\">\r\n			<p>Een Availability 26F item naar keuze.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h1>Budgetoverzicht</h1>\r\n\r\n<table cellspacing=\"0\" style=\"width:100.0%\" summary=\"Budget overview\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"vertical-align:bottom; width:26.9%\">\r\n			<p><strong>Item</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:13.34%\">\r\n			<p><strong>Prijs</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:13.58%\">\r\n			<p><strong>Datum</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:46.18%\">\r\n			<p><strong>Opmerkingen</strong></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:26.9%\">\r\n			<p>Novacoke</p>\r\n			</td>\r\n			<td style=\"width:13.34%\">\r\n			<p>3000</p>\r\n			</td>\r\n			<td style=\"width:13.58%\">\r\n			<p>02-08</p>\r\n			</td>\r\n			<td style=\"width:46.18%\">\r\n			<p>Tijdens rel op straat gegooid</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:26.9%\">\r\n			<p>Reparatie Raam</p>\r\n			</td>\r\n			<td style=\"width:13.34%\">\r\n			<p>50</p>\r\n			</td>\r\n			<td style=\"width:13.58%\">\r\n			<p>02-08</p>\r\n			</td>\r\n			<td style=\"width:46.18%\">\r\n			<p>Raam waar Beef-Chai doorheen viel</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Statusoverzicht week 1</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>INFO:</strong></p>\r\n\r\n<p>-Doelwitten zijn fan van hoertjes, blijven in het Hilton Hotel en komen vaak op de Dam en CS.</p>\r\n\r\n<p><strong>ZA:</strong></p>\r\n\r\n<p>-Sjonnie heeft &ldquo;Waar rook is, is Worst&rdquo; opgenomen voor Peter Porno in ruil voor informatie over locatie doelwitten:</p>\r\n\r\n<p>-Beef-Chai-Shanghai vaste klant bij Boulimia Bo elke Donderdagavond.</p>\r\n\r\n<p>-Andere 2 zijn sporadische klanten.</p>\r\n\r\n<p><strong>Statusoverzicht week 2</strong></p>\r\n\r\n<p><strong>DO:</strong></p>\r\n\r\n<p>-Beef-Chai-Shanghai gevonden bij Boulimia Bo.</p>\r\n\r\n<p>-Boris, EZ en Ronnie ter plaatse.</p>\r\n\r\n<p>-Beef-Chai-Shanghai aan het OD&rsquo;en. Meteen ge&euml;xtraheerd met Blyatmobiel. Tegemoet gereden door Sjonnie en Dolff in SAAB.</p>\r\n\r\n<p>-Aanval door auto bij autowissel pati&euml;nt. Aanvaller crashed in Vondelkerk, inzittende dood en zwaargewond. Het zijn Chinezen.</p>\r\n\r\n<p>-Politieachtervolging Blyatmobiel. [Incompleet verslag]. Blyatmobiel in beslag genomen.</p>\r\n\r\n<p>-Bij thuiskomst is Beef-Chai stabiel.</p>\r\n\r\n<p><strong>VR:</strong></p>\r\n\r\n<p>-Beef-Chai is wakker en pissig. EZ start ondervraging. Ontploffing van Cranialbomb, Beef-Chai is dood. Rel gestart door Banenpuree als afleiding voor schoonmaak.</p>\r\n\r\n<p>-Piet Politie omgekocht met belofte dat hij mee mag doen in film van Peter Porno. Politie weggestuurd van rel.</p>\r\n\r\n<p>-EZ en Ronnie gaan Hilton hotel onderzoeken. Wok-Ni-Pan-Hao in zwarte BMW naar Hilton aan het rijden.</p>\r\n\r\n<p>-De twee doelwitten staan in garage Hilton te wachten op nieuwe auto&rsquo;s.</p>\r\n\r\n<p>-Gevlucht naar Radison Blu hotel kamers 133 en 136. Sjonnie heeft kamer 134 en 135 gehuurd voor feestje en vakantie. Gang glipt mee naar binnen.</p>\r\n\r\n<p>-Gekke fissa van 2 dagen voor Jonathan met Barrie en Frans. Commlink staat uit.</p>\r\n\r\n<p><strong>ZA:</strong></p>\r\n\r\n<p>-Vroege ochtend begon de aanval op de Chinezen. EZ is zwaar gewond geraakt en alle Chinezen zijn dood [Beef-Chai-Shanghai en Kip-Babi-Sate-Pangang]. Twee zijn ontploft en de rest is uit het raam gegooid.</p>\r\n\r\n<p>-De feestgangers zijn gegijzeld en Jonathan heeft delen van de liquidatie en explosies op zijn mobieltje opgenomen. Iedereen onderweg naar Amsterdamse Bos.</p>\r\n\r\n<p>-Laurentz e.d. zijn uit busje gestapt en gaan verder feesten.</p>\r\n', 1, '2020-01-29 12:56:02', '2020-01-29 12:55:18'),
(5, 1, 'Operatie Olio Spaghettio', 'operatie-olio-spaghettio', 0, 'yakuzayen.jpg', '<h1>Informatie</h1>\r\n\r\n<table border=\"1\" cellspacing=\"0\" style=\"width:100.0%\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"height:23.1pt; vertical-align:bottom; width:67.8pt\">\r\n			<p><strong>STATUS</strong></p>\r\n			</td>\r\n			<td style=\"height:23.1pt; vertical-align:bottom; width:341.9pt\">\r\n			<p><strong>Voltooid</strong></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:67.8pt\">\r\n			<p>Opdracht</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:341.9pt\">\r\n			<p>Olio Spaghettio redden van de russen (binnen 24 uur)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:67.8pt\">\r\n			<p>Beloning</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:341.9pt\">\r\n			<p>Een favor van Don Don.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:67.8pt\">\r\n			<p>Extra Opdracht</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:341.9pt\">\r\n			<p>Voor elk hoertje dat mee genomen wordt en gefixt wordt 2000 neuro bonus.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:67.8pt\">\r\n			<p>Extra Beloning</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:341.9pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h1>Budgetoverzicht</h1>\r\n\r\n<table cellspacing=\"0\" style=\"width:100.0%\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"vertical-align:bottom; width:110.2pt\">\r\n			<p><strong>Item</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:54.65pt\">\r\n			<p><strong>Koper</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:55.65pt\">\r\n			<p><strong>Datum</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:189.2pt\">\r\n			<p><strong>Opmerkingen</strong></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:110.2pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:54.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:55.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:189.2pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Statusoverzicht week 1</strong></p>\r\n\r\n<p>Er zijn 20 Albert Heijn karretjes gestolen aan elkaar gemaakt onder de helicopter gehangen.<br />\r\nGeert is ontdekt, shit is aan.<br />\r\n12 hoertjes zijn mee genomen en Olio is gered.<br />\r\nOnderweg is Olio gerepareerd.<br />\r\nDon Don is super blij en heeft ons hartelijk bedankt.</p>\r\n', 1, '2020-01-29 13:10:22', '2020-01-29 13:09:43'),
(6, 1, 'Operatie Red De Worst', 'operatie-red-de-worst', 0, 'rookworst.jpg', '<h1>Informatie</h1>\r\n\r\n<table border=\"1\" cellspacing=\"0\" style=\"width:100.0%\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"height:23.1pt; vertical-align:bottom; width:67.8pt\">\r\n			<p><strong>STATUS</strong></p>\r\n			</td>\r\n			<td style=\"height:23.1pt; vertical-align:bottom; width:341.9pt\">\r\n			<p><strong>In Progress</strong></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:67.8pt\">\r\n			<p>Opdracht</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:341.9pt\">\r\n			<p>Operatie: #RedDeWorst</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:67.8pt\">\r\n			<p>Beloning</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:341.9pt\">\r\n			<p>Boerenkool met worst</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:67.8pt\">\r\n			<p>Extra Opdracht</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:341.9pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:23.1pt; width:67.8pt\">\r\n			<p>Extra Beloning</p>\r\n			</td>\r\n			<td style=\"height:23.1pt; width:341.9pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h1>Budgetoverzicht</h1>\r\n\r\n<table cellspacing=\"0\" style=\"width:100.0%\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"vertical-align:bottom; width:110.2pt\">\r\n			<p><strong>Item</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:54.65pt\">\r\n			<p><strong>Koper</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:55.65pt\">\r\n			<p><strong>Datum</strong></p>\r\n			</td>\r\n			<td style=\"vertical-align:bottom; width:189.2pt\">\r\n			<p><strong>Opmerkingen</strong></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:110.2pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:54.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:55.65pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:189.2pt\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Statusoverzicht week 1</strong><br />\r\nT-Shirts en online campagne voor #RedDeWorst.<br />\r\nDe bedoeling is om niet worst te verbieden maar Saeder Krupp over te halen dat kaas beter werkt.<br />\r\nEr zijn russiche hackers ingeschakeld om campagne te voeren en er is een team van experts ingehuurd om de pitch bij Saeder Krupp te schrijven.</p>\r\n\r\n<p><strong>Statusoverzicht week 2</strong><br />\r\nDe campagne begint te werken. #RedDeWorst.<br />\r\nIn samenwerking met Unilever is er een 5Kg gouden rookworst gemaakt.<br />\r\nSjonnie gaat naar Berlijn voor zijn pitch.</p>\r\n\r\n<p>Na een denderend succes wordt goudse kaas verboden en de worst is gered.</p>\r\n', 1, '2020-01-29 13:16:00', '2020-01-29 13:15:26'),
(7, 1, 'Operatie Banaan', 'operatie-banaan', 0, 'banaan.jpg', '&lt;h1&gt;Informatie&lt;/h1&gt;\r\n\r\n&lt;table border=&quot;1&quot; cellspacing=&quot;0&quot; style=&quot;width:100.0%&quot; summary=&quot;Project snapshot&quot;&gt;\r\n	&lt;thead&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;height:23.1pt; vertical-align:bottom; width:13.26%&quot;&gt;\r\n			&lt;p&gt;&lt;strong&gt;STATUS&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;height:23.1pt; vertical-align:bottom; width:86.74%&quot;&gt;\r\n			&lt;p&gt;&lt;strong&gt;BEZIG&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;height:23.1pt; width:13.26%&quot;&gt;\r\n			&lt;p&gt;Opdracht&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;height:23.1pt; width:86.74%&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;height:23.1pt; width:13.26%&quot;&gt;\r\n			&lt;p&gt;Beloning&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;height:23.1pt; width:86.74%&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;height:23.1pt; width:13.26%&quot;&gt;\r\n			&lt;p&gt;Extra Opdracht&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;height:23.1pt; width:86.74%&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;height:23.1pt; width:13.26%&quot;&gt;\r\n			&lt;p&gt;Extra Beloning&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;height:23.1pt; width:86.74%&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;h1&gt;Budgetoverzicht&lt;/h1&gt;\r\n\r\n&lt;table cellspacing=&quot;0&quot; style=&quot;width:100.0%&quot; summary=&quot;Budget overview&quot;&gt;\r\n	&lt;thead&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;vertical-align:bottom; width:26.9%&quot;&gt;\r\n			&lt;p&gt;&lt;strong&gt;Item&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;vertical-align:bottom; width:13.34%&quot;&gt;\r\n			&lt;p&gt;&lt;strong&gt;Koper&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;vertical-align:bottom; width:13.58%&quot;&gt;\r\n			&lt;p&gt;&lt;strong&gt;Datum&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;vertical-align:bottom; width:46.18%&quot;&gt;\r\n			&lt;p&gt;&lt;strong&gt;Opmerkingen&lt;/strong&gt;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;width:26.9%&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;width:13.34%&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;width:13.58%&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n			&lt;td style=&quot;width:46.18%&quot;&gt;\r\n			&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Statusoverzicht week 1&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;INFO:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;-Gerucht is dat Yakuza Yen en de Triad een aanval voorbereiden.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;ZA:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;-[Italiaanse Contact] van EZ heeft misschien meer info.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Ze bereiden een overname voor om ons uit &amp;lsquo;hun terrein&amp;rsquo; te weren.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Statusoverzicht week 2&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;DO:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;-EZ nog een telefoontje gekregen.&lt;/p&gt;\r\n', 1, '2020-01-29 13:30:03', '2020-01-29 13:30:03'),
(8, 1, 'Banaantest', 'banaantest', 0, 'rutte.png', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.google.com/url?sa=i&amp;amp;source=images&amp;amp;cd=&amp;amp;ved=2ahUKEwjTy-Ce9arnAhUOuqQKHVMXAqYQjRx6BAgBEAQ&amp;amp;url=https%3A%2F%2Fwww.voedingscentrum.nl%2Fencyclopedie%2Fbanaan.aspx&amp;amp;psig=AOvVaw2fqz_ibuE348fsAeHSar7D&amp;amp;ust=1580459676538750&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.voedingscentrum.nl/Assets/Uploads/voedingscentrum/Images/Consumenten/Encyclopedie/A-F/Banaan%20is%20een%20fruitsoort.%20Fruit%20staat%20in%20de%20Schijf%20van%20Vijf%20en%20geeft%20veel%20voordelen%20voor%20de%20gezondheid.%20Eet%20dagelijks%202%20porties%20fruit..jpg&quot; /&gt;test&lt;/p&gt;\r\n', 1, '2020-01-30 08:36:44', '2020-01-30 08:36:44');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(0, 1, 1),
(1, 5, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Operaties', 'operaties');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Daan', 'daan.smets1@gmail.com', 'Admin', '113ae9455a1b7c2a3fa25b49eb0f4828', '2020-01-13 10:52:58', '2020-01-13 10:52:58'),
(7, 'kat2', 'kat2@miauw.nl', NULL, '7f9c2a9774a10bf3d222f0c9c85ea4d7', '2020-01-15 08:39:59', '2020-01-15 08:39:59'),
(8, 'wejow', 'jonguh@jemoeder.nl', NULL, 'c4ca4238a0b923820dcc509a6f75849b', '2020-01-15 17:20:29', '2020-01-15 17:20:29'),
(9, 'kat3', 'kat3@miauw.nl', NULL, '091215286d9a5dd66837e0bea979fd29', '2020-01-28 13:37:01', '2020-01-28 13:37:01');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `post_topic`
--
ALTER TABLE `post_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `post_topic_ibfk_2` (`topic_id`);

--
-- Indexen voor tabel `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
