-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: sql34.your-server.de
-- Erstellungszeit: 26. Mrz 2020 um 15:04
-- Server-Version: 5.7.29-1
-- PHP-Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `jewmap_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_collections`
--

CREATE TABLE `omeka_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_collections`
--

INSERT INTO `omeka_collections` (`id`, `public`, `featured`, `added`, `modified`, `owner_id`) VALUES
(3, 1, 0, '2020-01-13 12:24:12', '2020-01-13 12:27:25', 1),
(4, 1, 0, '2020-01-13 17:46:39', '2020-01-13 17:46:39', 1),
(5, 1, 0, '2020-01-14 06:48:48', '2020-01-14 06:48:48', 1),
(6, 1, 0, '2020-01-14 11:20:16', '2020-01-14 11:20:16', 1),
(7, 1, 0, '2020-02-12 12:54:04', '2020-02-12 12:54:04', 1),
(8, 1, 0, '2020-02-26 14:36:39', '2020-02-26 14:37:13', 1),
(9, 1, 0, '2020-02-27 13:23:38', '2020-02-27 13:23:38', 1),
(10, 1, 0, '2020-02-27 13:43:31', '2020-02-27 13:43:31', 1),
(11, 1, 0, '2020-03-15 16:40:14', '2020-03-15 16:40:19', 1),
(12, 1, 0, '2020-03-21 12:36:36', '2020-03-21 12:38:56', 1),
(13, 1, 0, '2020-03-21 12:51:00', '2020-03-21 12:51:00', 1),
(14, 1, 0, '2020-03-21 13:27:21', '2020-03-21 13:27:21', 1),
(16, 1, 0, '2020-03-21 18:28:24', '2020-03-21 18:29:21', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_collection_trees`
--

CREATE TABLE `omeka_collection_trees` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_collection_id` int(10) UNSIGNED NOT NULL,
  `collection_id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_collection_trees`
--

INSERT INTO `omeka_collection_trees` (`id`, `parent_collection_id`, `collection_id`, `name`) VALUES
(3, 0, 3, 'Familie Benedik'),
(4, 0, 4, 'Familie Kempler'),
(5, 0, 5, 'Ereignisse Judenverfolgung'),
(6, 0, 6, 'Familie Frankenstein'),
(7, 0, 7, 'Familie Berger'),
(8, 0, 8, 'Familie Englard'),
(9, 0, 9, 'Familie Herz'),
(10, 0, 10, 'Familie Salmony'),
(11, 0, 11, 'Familie Proter'),
(12, 0, 12, 'Familie Wolff'),
(13, 0, 13, 'Familie Markuse'),
(14, 0, 14, 'Familie Lilienfeld'),
(16, 0, 16, 'Familie Landesberg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_elements`
--

CREATE TABLE `omeka_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `element_set_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_elements`
--

INSERT INTO `omeka_elements` (`id`, `element_set_id`, `order`, `name`, `description`, `comment`) VALUES
(1, 3, NULL, 'Text', 'Any textual data included in the document', NULL),
(2, 3, NULL, 'Interviewer', 'The person(s) performing the interview', NULL),
(3, 3, NULL, 'Interviewee', 'The person(s) being interviewed', NULL),
(4, 3, NULL, 'Location', 'The location of the interview', NULL),
(5, 3, NULL, 'Transcription', 'Any written text transcribed from a sound', NULL),
(6, 3, NULL, 'Local URL', 'The URL of the local directory containing all assets of the website', NULL),
(7, 3, NULL, 'Original Format', 'The type of object, such as painting, sculpture, paper, photo, and additional data', NULL),
(10, 3, NULL, 'Physical Dimensions', 'The actual physical size of the original image', NULL),
(11, 3, NULL, 'Duration', 'Length of time involved (seconds, minutes, hours, days, class periods, etc.)', NULL),
(12, 3, NULL, 'Compression', 'Type/rate of compression for moving image file (i.e. MPEG-4)', NULL),
(13, 3, NULL, 'Producer', 'Name (or names) of the person who produced the video', NULL),
(14, 3, NULL, 'Director', 'Name (or names) of the person who produced the video', NULL),
(15, 3, NULL, 'Bit Rate/Frequency', 'Rate at which bits are transferred (i.e. 96 kbit/s would be FM quality audio)', NULL),
(16, 3, NULL, 'Time Summary', 'A summary of an interview given for different time stamps throughout the interview', NULL),
(17, 3, NULL, 'Email Body', 'The main body of the email, including all replied and forwarded text and headers', NULL),
(18, 3, NULL, 'Subject Line', 'The content of the subject line of the email', NULL),
(19, 3, NULL, 'From', 'The name and email address of the person sending the email', NULL),
(20, 3, NULL, 'To', 'The name(s) and email address(es) of the person to whom the email was sent', NULL),
(21, 3, NULL, 'CC', 'The name(s) and email address(es) of the person to whom the email was carbon copied', NULL),
(22, 3, NULL, 'BCC', 'The name(s) and email address(es) of the person to whom the email was blind carbon copied', NULL),
(23, 3, NULL, 'Number of Attachments', 'The number of attachments to the email', NULL),
(24, 3, NULL, 'Standards', '', NULL),
(25, 3, NULL, 'Objectives', '', NULL),
(26, 3, NULL, 'Materials', '', NULL),
(27, 3, NULL, 'Lesson Plan Text', '', NULL),
(28, 3, NULL, 'URL', '', NULL),
(29, 3, NULL, 'Event Type', '', NULL),
(30, 3, NULL, 'Participants', 'Names of individuals or groups participating in the event', NULL),
(31, 3, NULL, 'Birth Date', '', NULL),
(32, 3, NULL, 'Birthplace', '', NULL),
(33, 3, NULL, 'Death Date', '', NULL),
(34, 3, NULL, 'Occupation', '', NULL),
(35, 3, NULL, 'Biographical Text', '', NULL),
(36, 3, NULL, 'Bibliography', '', NULL),
(37, 1, 8, 'Contributor', 'An entity responsible for making contributions to the resource', NULL),
(38, 1, 15, 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant', NULL),
(39, 1, 4, 'Creator', 'An entity primarily responsible for making the resource', NULL),
(40, 1, 7, 'Date', 'A point or period of time associated with an event in the lifecycle of the resource', NULL),
(41, 1, 3, 'Description', 'An account of the resource', NULL),
(42, 1, 11, 'Format', 'The file format, physical medium, or dimensions of the resource', NULL),
(43, 1, 14, 'Identifier', 'An unambiguous reference to the resource within a given context', NULL),
(44, 1, 12, 'Language', 'A language of the resource', NULL),
(45, 1, 6, 'Publisher', 'An entity responsible for making the resource available', NULL),
(46, 1, 10, 'Relation', 'A related resource', NULL),
(47, 1, 9, 'Rights', 'Information about rights held in and over the resource', NULL),
(48, 1, 5, 'Source', 'A related resource from which the described resource is derived', NULL),
(49, 1, 2, 'Subject', 'The topic of the resource', NULL),
(50, 1, 1, 'Title', 'A name given to the resource', NULL),
(51, 1, 13, 'Type', 'The nature or genre of the resource', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_element_sets`
--

CREATE TABLE `omeka_element_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_element_sets`
--

INSERT INTO `omeka_element_sets` (`id`, `record_type`, `name`, `description`) VALUES
(1, NULL, 'Dublin Core', 'The Dublin Core metadata element set is common to all Omeka records, including items, files, and collections. For more information see, http://dublincore.org/documents/dces/.'),
(3, 'Item', 'Item Type Metadata', 'The item type metadata element set, consisting of all item type elements bundled with Omeka and all item type elements created by an administrator.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_element_texts`
--

CREATE TABLE `omeka_element_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `html` tinyint(4) NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_element_texts`
--

INSERT INTO `omeka_element_texts` (`id`, `record_id`, `record_type`, `element_id`, `html`, `text`) VALUES
(16, 3, 'Collection', 50, 0, 'Familie Benedik'),
(17, 3, 'Item', 50, 0, 'Salomon Benedik'),
(18, 3, 'Item', 41, 0, 'Salomon Benedik siedelte 1904 mit seiner Familie aus Polen nach Köln-Mülheim über.\r\n1935 emigrierte er gemeinsam mit seiner Frau Rosa nach Palästina.'),
(21, 4, 'Item', 50, 0, 'Rosa Benedik'),
(22, 4, 'Item', 41, 0, 'Rosa Benedik siedelte 1904 mit ihrer Familie aus Polen nach Köln-Mülheim über.\r\n1935 emigrierte sie gemeinsam mit ihrem Mann Benedik nach Palästina.'),
(23, 5, 'Item', 50, 0, 'Fajga Fanny Michel (geb. Benedik)'),
(24, 5, 'Item', 41, 0, 'Fajga Fanny Michel war die Tochter von Salomon und Rosa Benedik. Kurz nach ihrer Geburt übersiedelte die Familie aus Polen nach Köln-Mülheim.\r\nFajga Benedik emigrierte 1938 in die Niederlande und heiratete dort Berthold Michel. Seit August 1938 lebten sie in Amsterdam. Am 20. Juli 1943 wurden Fajga und Berthold Michel in das Vernichtungslager Sobibor deportiert. Dort starben sie am 23. Juli 1943.'),
(25, 4, 'Collection', 50, 0, 'Familie Kempler'),
(26, 6, 'Item', 50, 0, 'Frieda Kempler'),
(27, 6, 'Item', 41, 0, 'Frieda Kempler war das ältestes Kind des Glasers Josef Kempler und seiner Ehefrau Johanna. Während ihre Familie aus dem Deutschen Reich ausgewiesen wurde, emigrierte Frieda Kempler 1939 nach Antwerpen. Nach der Besetzung Belgiens durch die Wehrmacht flüchtete sie 1940 nach Frankreich und lebte versteckt. Im August 1944 wurde sie entdeckt, verhaftet und zur Zwangsarbeit verpflichtet. Im Januar 1945 wurde sie ins Ghetto Theresienstadt verschleppt, wo sie 8. Mai 1945 von der Roten Armee befreit wurde. Nach dem Ende des Zweiten Weltkrieges verließ sie Deutschland und ging in die Vereinigten Staaten.'),
(28, 5, 'Collection', 50, 0, 'Ereignisse Judenverfolgung'),
(29, 5, 'Collection', 41, 0, 'Die bedeutendsten Ereignisse im Rahmen der Judenverfolgung von 1933 - 1945'),
(30, 7, 'Item', 50, 0, 'Machtergreifung der Nationalsozialisten'),
(31, 7, 'Item', 40, 0, '30. Januar 1933'),
(32, 8, 'Item', 50, 0, 'Erste Verordnung zum Reichsbürgergesetz'),
(33, 8, 'Item', 41, 0, 'In der Ersten Verordnung zum Reichsbürgergesetz (Text siehe Weblink) wird allen deutschblütigen Staatsangehörigen bis zu einer angekündigten endgültigen Regelung – zu der es niemals kam – eine vorläufige Reichsbürgerschaft zuerkannt. Auch „jüdischen Mischlingen“ wurden vorerst die politischen Rechte als Reichsbürger eingeräumt.'),
(34, 9, 'Item', 50, 0, 'Zweite Verordnung zum Reichsbürgergesetz'),
(35, 9, 'Item', 41, 0, 'Die Zweite Verordnung stellt in erster Linie eine Konkretisierung des § 4 der Ersten Verordnung dar. Neu ist, dass § 4 Abs. 1 der Ersten Verordnung auch für die Stellung als leitender Arzt an öffentlichen sowie freien gemeinnützigen Krankenanstalten und als Vertrauensarzt galt. Sie traten zum 31. Dezember 1936 in den Ruhestand.'),
(36, 9, 'Item', 40, 0, '21. Dezember 1935'),
(37, 8, 'Item', 40, 0, '14. November 1935'),
(38, 10, 'Item', 50, 0, 'Dritte Verordnung zum Reichsbürgergesetz'),
(39, 10, 'Item', 41, 0, 'In einer „Dritten Verordnung zum Reichsbürgergesetz“ wurde definiert, welche Gewerbebetriebe als „jüdisch“ zu gelten hatten. Diese sollten in ein gesondertes Verzeichnis eingetragen werden, das der Öffentlichkeit zugänglich war. Der Reichswirtschaftsminister wurde zu einer Regelung im Einvernehmen mit dem Reichsminister des Innern und dem Stellvertreter des Führers ermächtigt, dass Betriebe von „einem noch zu bestimmenden Zeitpunkt ab“ ein besonderes Kennzeichen führen mussten.'),
(40, 10, 'Item', 40, 0, '14. Juni 1938'),
(41, 6, 'Collection', 50, 0, 'Familie Frankenstein'),
(42, 11, 'Item', 50, 0, 'Joachim Frankenstein'),
(43, 11, 'Item', 41, 0, 'Joachim Kurt Frankenstein wurde am 26. September 1914 in Köln als ältester Sohn des Arztes Kurt Frankenstein und seiner Frau Susanne (geb. Edel) geboren.\r\n\r\nEr studierte Anfang der 1930er Jahre Ingenieurswesen. Im Juli 1938 heiratete er in München Susi Helene Hedwig Ehrenberg. Mitte März 1939 flüchtete das Ehepaar zunächst nach England und kurze Zeit später nach Edinburgh. Am 22. Februar 1940 reisten sie mit dem Passagierschiff RMS Scythia von Liverpool nach New York.'),
(44, 12, 'Item', 50, 0, 'Kurt Frankenstein'),
(45, 12, 'Item', 41, 0, 'Kurt Frankenstein wurde am 17. Oktober 1877 als jüngstes von drei Kindern des aus Landeshut stammenden Louis Frankenstein und seiner Frau Hulda geboren. Nach dem Studium der Medizin promovierte er 1900 über ein gynäkologisches Thema. 1907 erhielt er eine Anstellung als Leiter der Gynäkologischen Klinik in Köln-Kalk. Im Ersten Weltkrieg wurde Kurt Frankenstein zum Militärdienst eingezogen.\r\n\r\nZwei Monate nach der Machtergreifung der Nationalsozialisten wurde Kurt Frankenstein von der Klinikleitung aufgefordert, seine Entlassung einzureichen. Trotz der Erwiderung Frankensteins, dass er evangelisch getauft ist, militärische Auszeichnungen im Ersten Weltkrieg erhalten hat und in einer Einrichtung der evangelischen Kirche beschäftigt ist, so dass die Bestimmungen des am 7. April 1933 erlassenen Gesetzes zur Wiederherstellung des Berufsbeamtentums nicht auf ihn angewendet werden können, wurde er entlassen. Bis zu seinem Tod praktizierte er in seinem Wohnhaus, im Kaiser-Wilhelm-Ring 24, weiter. Seit 1912 war Kurt Frankenstein aktives Mitglied der Schlaraffia. 1933 wurde der Oberschlaraffe Kurt Frankenstein wie alle nicht arischen Mitglieder aus der Schlaraffia ausgeschlossen. Am 16. Mai 1937 starb Kurt Frankenstein in Bonn und wurde auf dem Kölner Westfriedhof bestattet.'),
(46, 13, 'Item', 50, 0, 'Maria Frankenstein'),
(47, 13, 'Item', 41, 0, 'Johanna Maria Susanne Frankenstein wurde am 15. März 1919 als jüngste Tochter des Gynäkologen Kurt Frankenstein und seiner Frau Susanne in Köln geboren. Nach dem Tod ihres Vaters 1937 musste die Familie in eine kleinere Wohnung in die Machabäerstraße umziehen. Kurz vor dem Ausbruch des Zweiten Weltkrieges gelang ihr die Flucht nach Großbritannien, während ihre Mutter in Köln zurückblieb und 1942 ins Ghetto Theresienstadt deportiert wurde.'),
(48, 14, 'Item', 50, 0, 'Susanne Frankenstein'),
(49, 14, 'Item', 41, 0, 'Susanne (Susanna) Margarete Edel wurde am 16. Februar 1884 in Berlin als ältestes Kind des Arztes Alexander Edel und seiner Frau Anna (geb. Straßmann). Anna Straßmann stammte ebenfalls aus einer bekannten Berliner Arztfamilie. Zu Susanne Edels Onkel zählten der Rechtsmediziner Fritz Straßmann und der Internist Albert Fraenkel.\r\n\r\nIm Oktober 1913 heiratete sie den Chefarzt der Gynäkologischen Klinik in Köln-Kalk, Kurt Frankenstein. 1914 wurde Sohn Joachim Kurt, 1919 Tochter Johanna Maria Susanne geboren. Zwei Monate nach der Machtergreifung der Nationalsozialisten verlor ihr Mann die Anstellung als Chefarzt des evangelischen Krankenhauses in Kalk. Im Wohnhaus der Familie führte er bis zu seinem Tod 1937 eine Privatpraxis. Kurz vor dem Ausbruch des Zweiten Weltkrieges flüchteten ihre Kinder nach Amerika bzw. England. Susanne Frankenstein blieb in Köln zurück und musste nach dem Tod ihres Mannes in eine kleinere Wohnung in der Machabäerstraße umziehen, wo ihr Freunde bis zu ihrer Einweisung in das Sammellager der Kölner Juden im Fort V in Müngersdorf halfen, zu überleben. Vom 30. September bis 5. Oktober 1939 wurde Susanne Frankenstein von der Gestapo inhaftiert. Am 15. Juni 1942 wurde sie mit dem III. Kölner Transport in das Ghetto Theresienstadt verschleppt, wo sie am 21. März 1943 verstarb.'),
(50, 15, 'Item', 50, 0, 'Arthur Berger'),
(51, 15, 'Item', 41, 0, 'Arthur Berger wurde als jüngste Kind der jüdischen Malers Julius Berger und seiner Ehefrau Josefine Eggener in Niederzissen geboren. Arthur Berger hatte zwei ältere Zwillingsschwestern, Sophia und Selma. Als Arthur Berger vier Jahre alt war fiel sein Vater im April 1918 als Angehöriger des 6. Rheinischen Infanterie-Regiment Nr. 68 in der Schlacht von Armentières.\r\n\r\nArthur Berger arbeite als Schlosser. Er war mit Cäcilie Zerline Oppenheimer verheiratet. Die am 23. Januar 1940 geborene Tochter Bela Judis Berger starb am 14. Februar 1940, seine Frau verstarb 5 Tage später im Jüdischen Krankenhaus in Köln-Ehrenfeld.\r\n\r\nArthur Berger wurde am 22. Oktober 1941, gemeinsam mit seiner Mutter Josefine von Köln in das Ghetto Litzmannstadt deportiert. Im gleichen Deportationszug befanden sich auch seine Schwester Selma Hellbrunn, geb. Berger sowie die gesamte Familie seiner Schwester Sophia.\r\n\r\nEntgegen den Angaben im Gedenkbuch für die Opfer der Verfolgung der Juden unter der nationalsozialistischen Gewaltherrschaft in Deutschland 1933–1945 wurde Arthur Berger 1942 nicht im Vernichtungslager Kulmhof ermordet.\r\n\r\nEr wurde am 26. August 1943 ins Konzentrationslager Auschwitz verschleppt. Nach der Räumung des Konzentrationslagers wurde er auf einen Todesmarsch in Richtung Oberösterreich geschickt. Hier war er ab am 25. Januar 1945 im Konzentrationslager Mauthausen inhaftiert und musste als Schlosser in den Sauererwerken Zwangsarbeit leisten. Hier verliert sich seine Spur. Erst nach Kriegsende konnte sein Schicksal geklärt werden. Er starb im Konzentrationslager Gusen und wurde auf dem dortigen Friedhof begraben.'),
(52, 7, 'Collection', 50, 0, 'Familie Berger'),
(53, 16, 'Item', 50, 0, 'Fanny Englard'),
(54, 16, 'Item', 41, 0, 'Fanny Englard wurde auf Initiative des jüdischen Jugendamts 1940 von Köln nach Hamburg geschickt, um von dort nach Palästina auszuwandern. Am 04.12.1941 wurde sie jedoch von Hamburg nach Riga deportiert. Weitere Stationen von ihr sind das KZ Kaiserwald und Stutthof bei Danzig. Zum Kriegsende befindet sie sich bei Lauenburg, nachdem sie durch die Flucht vor der roten Armee dorthin getrieben wurde. Nach dem Krieg ging Fanny Englard nach Israel, in die Nähe von Tel Aviv.'),
(55, 8, 'Collection', 50, 0, 'Familie Englard'),
(56, 17, 'Item', 50, 0, 'Leo Englard'),
(57, 17, 'Item', 41, 0, 'Leo Englard blieb mit seinem Bruder Isi in Köln, während seine Schwester Fanny Englard nach Hamburg ging, Am 24.07.1942 wurden Leo und Isi nach Minsk deportiert. Nur vier Tage später wurden beide im Wald von Blagowschtschina bei Trostenez erschossen.'),
(58, 18, 'Item', 50, 0, 'Isi Englard'),
(59, 18, 'Item', 41, 0, 'Isi Englard blieb mit seinem Bruder Leo in Köln, während seine Schwester Fanny Englard nach Hamburg ging, Am 24.07.1942 wurden Isi und Leo nach Minsk deportiert. Nur vier Tage später wurden beide im Wald von Blagowschtschina bei Trostenez erschossen.'),
(60, 19, 'Item', 50, 0, 'Lotte Blumgardt'),
(61, 19, 'Item', 41, 0, 'Lotte Blumgardt (geb. Wertheim) war mit Erich Blumgardt verheiratet, die beide in Köln geboren wurden. Zusammen mit Erichs Eltern wurden sie am 22.10.1941 ins Ghetto Łódź deportiert. Lotte kam im August 1944 nach Auschwitz und von dort ins KZ Stutthof. Dort ist sie am 26.11.1944 verstorben.'),
(62, 9, 'Collection', 50, 0, 'Familie Herz'),
(63, 20, 'Item', 50, 0, 'Martin Herz'),
(64, 20, 'Item', 41, 0, 'Martin Herz wurde am 30.10.1941 von Köln ins Ghetto Łódź deportiert. Ab 1942 wurde er am Bahnhof Radegast als Arbeiter eingesetzt, ehe er Ende Oktober 1944 ins KZ Buchenwald verlegt wurde. Hier leistete er Arbeit im Außenlager Meuselwitz, wo er 1945 schließlich befreit wurde. Sein weiterer Aufenthalt ist unbekannt.'),
(65, 21, 'Item', 50, 0, 'Julie Herz'),
(66, 21, 'Item', 41, 0, 'Julie Herz ist die Schwester von Martin Herz und wurde acht Tage vor ihrem Bruder in das Ghetto Łódź deportiert. Im Mai 1942 kam sie in das Vernichtungslager Kulmhof, in dem sie kurze Zeit später ermordet wurde. '),
(67, 22, 'Item', 50, 0, 'Erwin Moses'),
(68, 22, 'Item', 41, 0, 'Erwin Moses wurde am 30.10.1941 vom Bahnhof Deutz-Tief in Köln nach Łódź deportiert. Sein Vater Max Moses, der mit ihm deportiert wurde, verstarb am 21.05.1942 im Ghetto. Erwin selbst wurde am 10.Juli 1944 nach Kulmhof gebracht und dort kurze Zeit später ermordet.'),
(69, 10, 'Collection', 50, 0, 'Familie Salmony'),
(70, 23, 'Item', 50, 0, 'Thekla Salmony'),
(71, 23, 'Item', 41, 0, 'Thekla Salmony (geb. Rosenthal) hat mit ihrem Mann Alfred und ihrem Sohn Hansjörg in der Wichterichstraße 59  in Köln gewohnt. Während ihrem Sohn die Flucht gelang, wurden Thekla und Alfred am 30.10.1941 nach Łódź deportiert. Ihr Mann Alfred verstarb dort am 11. August 1942. Thekla erlag knapp zwei Jahre später ebenfalls im Ghetto am 27. April 1944. '),
(72, 24, 'Item', 50, 0, 'Alfred Salmony'),
(73, 24, 'Item', 41, 0, 'Alfred Salmony hat mit seiner Ehefrau Thekla und seinem Sohn Hansjörg in der Wichterichstraße 59  in Köln gewohnt. Thekla und Alfred wurden am 30.10.1941 nach Łódź deportiert. Alfred verstarb vor seiner Ehefrau im Ghetto 11. August 1942.'),
(74, 25, 'Item', 50, 0, 'Hansjörg Salmony'),
(75, 25, 'Item', 41, 0, 'Hansjörg Alfred Salmony (* 16. Februar 1920 in Köln; † 17. Februar 1991 in Basel) war ein deutscher Philosoph und Professor für Philosophie an der Universität Basel.\r\n\r\nHansjörg Salmony entstammte einer deutsch-jüdischen Familie und emigrierte 1938 zunächst nach Belgien, dann nach Frankreich, wo er im Lager von Saint-Cyprien interniert wurde, jedoch ausbrechen und in die Schweiz fliehen konnte. Dort immatrikulierte er sich 1942 an der Universität Basel, wurde 1948 von Herman Schmalenbach mit einer Arbeit zu Johann Gottfried Herder promoviert und habilitierte sich 1958 mit einer Arbeit zu Johann Georg Hamann. Von 1956 bis 1961 war er Assistent von Karl Jaspers in Basel und wurde 1961 als Nachfolger von Heinrich Barth dort Professor. Er lehrte bis 1988 und war akademischer Lehrer u. a. von Hans Saner, Anton Hügli und Andreas Cesana.\r\n\r\nSeine Hauptarbeitsgebiete waren klassische Autoren der Philosophie, insbesondere Immanuel Kant, sowie Fragen einer philosophischen Anthropologie mit pessimistischer Ausrichtung.'),
(76, 26, 'Item', 50, 0, 'Lilly Menczel'),
(77, 26, 'Item', 41, 0, 'Lilly Menczel ist am 09.07.1925 in Köln geboren und war mit ihrer Familie in der Formesstraße 56 in Köln-Mühlheim wohnhaft. \r\n1939 kam der Befehl von der SS, dass sich alle Juden im Stadtzentrum einfinden sollen und von dort wurden sie in kleine Wohnungen eingeteilt. Die Familie Menczel kam hierbei in die Rubensstraße.\r\n\r\nAm 07.12.1941 wurden die Familien aufgefordert sich am Bahnhof Deutz einzufinden, um von dort drei Tage später am Bahnhof Skirotawa einzutreffen. Von dort ging es im Anschluss weiter ins das Rigaer Ghetto.\r\n\r\nIhre Großeltern wurdem am 16.06.1942 ins Ghetto Theresienstadt deportiert, dort starben Adolf und Josefine Simons kurze Zeit später, da sie nichts nichtkoscheres Essen wollten.\r\n\r\nIm November 1943 wurde das Ghetto in Riga aufgelöst und sie kam mit ihrem Vater in das KZ Kaiserwald, das in einem Vorort Rigas gelegen war.\r\nAnfang August 1944 wurden die Gefangenen mit einem Schiff bei einer dreitägigen Reise in das KZ Stutthof gebracht, da die Russen nun immer näher kamen.\r\n\r\nIhr Vater wurde ebenfalls in das KZ Stutthof verschleppt, doch bereits kurze Zeit später ins KZ Buchenwald transportiert, wo er am 26.02.1945 schließlich verstarb.\r\n\r\nAm 21. Januar 1945 flohen die Deutschen vor den Russen und ließen die Juden hierbei zurück, obwohl sie ursprünglich den Befehl erhalten hatten, alle Juden vor Ort umzubringen. Dies war der Tag ab dem die Gefangenen endlich frei waren.\r\n\r\nNach Kriegsende für Lilly Menczel zunächst nach Berlin zurück, um zu sehen, wer von ihren Verwandten überlebt hatte. Zudem wollte sie wissen, was von ihrem Haus noch übrig ist und welcher Besitz zurückgeblieben ist.'),
(78, 11, 'Collection', 50, 0, 'Familie Proter'),
(79, 27, 'Item', 50, 0, 'Benno Hermann Proter'),
(80, 28, 'Item', 50, 0, 'Jakob Proter'),
(81, 29, 'Item', 50, 0, 'Joseph Proter'),
(82, 30, 'Item', 50, 0, 'Lejzor Lippa Proter'),
(83, 31, 'Item', 50, 0, 'Rosa Proter'),
(84, 32, 'Item', 50, 0, 'Selma Proter'),
(85, 12, 'Collection', 50, 0, 'Familie Wolff'),
(86, 33, 'Item', 50, 0, 'Dr. Kurt Wolff'),
(87, 33, 'Item', 41, 0, 'Nach Informationen, die zum Zeitpunkt der Verlegung nicht vorlagen, wurde Kurt Wolff im Sommer 1944 von Litzmannstadt nach Auschwitz verschleppt, wo er aller Wahrscheinlichkeit nach ermordet wurde.'),
(88, 13, 'Collection', 50, 0, 'Familie Markuse'),
(89, 34, 'Item', 50, 0, 'Frida Markuse'),
(90, 35, 'Item', 50, 0, 'Joseph Markuse'),
(91, 36, 'Item', 50, 0, 'Herbert Markuse'),
(92, 37, 'Item', 50, 0, 'Inge Markuse'),
(93, 14, 'Collection', 50, 0, 'Familie Lilienfeld'),
(94, 38, 'Item', 50, 0, 'Richard Lilienfeld'),
(96, 16, 'Collection', 50, 0, 'Familie Landesberg'),
(97, 39, 'Item', 50, 0, 'Klara Landesberg'),
(98, 40, 'Item', 50, 0, 'Martha Landesberg'),
(99, 41, 'Item', 50, 0, 'Zehnte Verordnung zum Reichsbürgergesetz'),
(100, 41, 'Item', 41, 0, 'Einschneidende Veränderung brachte die „Zehnte Verordnung zum Reichsbürgergesetz“. Sie begründete die Zwangsmitgliedschaft in der „Reichsvereinigung der Juden in Deutschland“, die als verlängerter Arm des Reichssicherheitshauptamtes (RSHA) wirkte und später bei der Durchführung der Deportationen eine unrühmliche Helferrolle spielte.\r\n\r\nDie Reichsvereinigung hatte die Auswanderung zu fördern und musste eine Vermögensabgabe erheben, um mittellosen Auswanderern ein Vorzeigegeld aushändigen zu können. Die Reichsvereinigung war des Weiteren verpflichtet, für die Beschulung der Juden zu sorgen. Als Träger der jüdischen Wohlfahrtspflege hatte sie hilfsbedürftige Juden so ausreichend zu unterstützen, dass die öffentliche Fürsorge nicht einzutreten brauchte. Dies war aus Beiträgen und Spenden der verarmten und überalterten jüdischen Gemeinde zu finanzieren; ab 1941 steuerte das RSHA Finanzmittel aus beschlagnahmtem Vermögen der deportierten Juden bei.'),
(101, 41, 'Item', 40, 0, '4. Juli 1939'),
(102, 42, 'Item', 50, 0, 'Überfall auf Polen '),
(103, 42, 'Item', 41, 0, 'Im September 1939 überfällt die deutsche Wehrmacht Polen und startet so den 2. Weltkrieg.'),
(104, 42, 'Item', 40, 0, 'September 1939'),
(105, 43, 'Item', 50, 0, 'Beginn der systematischen Morde an Juden'),
(106, 43, 'Item', 41, 0, 'Mit dem Krieg der Wehrmacht gegen die Sowjetunion, begann in ganzen Regionen die systematische Ermordung von Juden.'),
(107, 43, 'Item', 40, 0, '22. Juni 1941'),
(108, 44, 'Item', 50, 0, 'Reichspogromnacht'),
(109, 44, 'Item', 41, 0, 'Die Novemberpogrome 1938 – bezogen auf die Nacht vom 9. auf den 10. November 1938 auch Reichspogromnacht oder zynisch (Reichs-)Kristallnacht genannt – waren vom nationalsozialistischen Regime organisierte und gelenkte Gewaltmaßnahmen gegen Juden in Deutschland und Österreich.\r\n\r\nDabei wurden vom 7. bis 13. November etwa 800 Juden ermordet, 400 davon in der Nacht vom 9. auf den 10. November. Über 1.400 Synagogen, Betstuben und sonstige Versammlungsräume sowie tausende Geschäfte, Wohnungen und jüdische Friedhöfe wurden zerstört. Ab dem 10. November wurden ungefähr 30.000 Juden in Konzentrationslagern inhaftiert, wo mindestens weitere 400 ermordet wurden oder an Haftfolgen starben.'),
(110, 44, 'Item', 40, 0, '9. November 1938');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_files`
--

CREATE TABLE `omeka_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `has_derivative_image` tinyint(1) NOT NULL,
  `authentication` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_files`
--

INSERT INTO `omeka_files` (`id`, `item_id`, `order`, `size`, `has_derivative_image`, `authentication`, `mime_type`, `type_os`, `filename`, `original_filename`, `modified`, `added`, `stored`, `metadata`) VALUES
(1, 3, NULL, 21929, 1, 'a68fd824a0f571473592f75f22127007', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, big-endian, direntries=7, description=Stolpersteine K\\303\\266ln, Verlegestelle Berliner Stra\\303\\237e 104, xresolution=154, yresolution=162, resolutionunit=2], baseline, precision 8, 240x239, frames 3', 'b6eef8c18685bce41276c6d9d657d47c.jpg', '240px-Stolpersteine_Köln,_Salomon_Benedik_(Berliner_Straße_104).jpg', '2020-01-13 16:26:05', '2020-01-13 16:11:33', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":240,\"resolution_y\":239,\"compression_ratio\":0.1274349139934914},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"b6eef8c18685bce41276c6d9d657d47c.jpg\",\"FileDateTime\":1578931893,\"FileSize\":21929,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0\"},\"COMPUTED\":{\"html\":\"width=\\\"240\\\" height=\\\"239\\\"\",\"Height\":239,\"Width\":240,\"IsColor\":1,\"ByteOrderMotorola\":1,\"Copyright\":\"CC BY-SA 4.0\"},\"IFD0\":{\"ImageDescription\":\"Stolpersteine K\\u00f6ln, Verlegestelle Berliner Stra\\u00dfe 104\",\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"Artist\":\"\\u00a9 1971markus\",\"YCbCrPositioning\":1,\"Copyright\":\"CC BY-SA 4.0\"}}}}'),
(2, 4, NULL, 322803, 1, '979c4f6741a45ce2177392d7c5afb9e0', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, big-endian, direntries=7, description=Stolpersteine K\\303\\266ln, Verlegestelle Berliner Stra\\303\\237e 104, xresolution=154, yresolution=162, resolutionunit=2], baseline, precision 8, 1024x1029, frames 3', 'c943565b1570bd8a14b5daa0aaa27b2c.jpg', '1024px-Stolpersteine_Köln,_Rosa_Benedik_(Berliner_Straße_104).jpg', '2020-01-13 16:28:43', '2020-01-13 16:28:43', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1024,\"resolution_y\":1029,\"compression_ratio\":0.10211768859329447},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"c943565b1570bd8a14b5daa0aaa27b2c.jpg\",\"FileDateTime\":1578932923,\"FileSize\":322803,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0\"},\"COMPUTED\":{\"html\":\"width=\\\"1024\\\" height=\\\"1029\\\"\",\"Height\":1029,\"Width\":1024,\"IsColor\":1,\"ByteOrderMotorola\":1,\"Copyright\":\"CC BY-SA 4.0\"},\"IFD0\":{\"ImageDescription\":\"Stolpersteine K\\u00f6ln, Verlegestelle Berliner Stra\\u00dfe 104\",\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"Artist\":\"\\u00a9 1971markus\",\"YCbCrPositioning\":1,\"Copyright\":\"CC BY-SA 4.0\"}}}}'),
(3, 5, NULL, 25200, 1, 'ec69bdd9bba2c255bcc14d1acfe67da6', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, big-endian, direntries=7, description=Stolpersteine K\\303\\266ln, Verlegestelle Berliner Stra\\303\\237e 104, xresolution=154, yresolution=162, resolutionunit=2], baseline, precision 8, 240x238, frames 3', '52bb7692e4467c99366e672da83909b7.jpg', '240px-Stolpersteine_Köln,_Fajga_Fanny_Michel_(Berliner_Straße_104).jpg', '2020-01-13 17:24:33', '2020-01-13 16:42:17', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":240,\"resolution_y\":238,\"compression_ratio\":0.14705882352941177},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"52bb7692e4467c99366e672da83909b7.jpg\",\"FileDateTime\":1578933737,\"FileSize\":25200,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0\"},\"COMPUTED\":{\"html\":\"width=\\\"240\\\" height=\\\"238\\\"\",\"Height\":238,\"Width\":240,\"IsColor\":1,\"ByteOrderMotorola\":1,\"Copyright\":\"CC BY-SA 4.0\"},\"IFD0\":{\"ImageDescription\":\"Stolpersteine K\\u00f6ln, Verlegestelle Berliner Stra\\u00dfe 104\",\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"Artist\":\"\\u00a9 1971markus\",\"YCbCrPositioning\":1,\"Copyright\":\"CC BY-SA 4.0\"}}}}'),
(4, 6, NULL, 340604, 1, '1d0cc09d3d2f4d3ad4c484d3a5b8a191', 'image/jpeg', 'JPEG image data, baseline, precision 8, 1024x1036, frames 3', '0cf8d4447cdb03934f1d043a21c941f3.jpg', '1024px-Stolpersteine_Köln_Liebigstrasse_155_Stolperstein_Frieda_Kempler_3.jpg', '2020-01-13 17:50:24', '2020-01-13 17:50:24', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1024,\"resolution_y\":1036,\"compression_ratio\":0.10702094393500644}}'),
(5, 11, NULL, 344122, 1, '922ad723dbaa69a76dd629c12f1af0d0', 'image/jpeg', 'JPEG image data, baseline, precision 8, 1024x1046, frames 3', '475d6d39574ba50f40b535805e71ba71.jpg', '1024px-Stolpersteine_Köln_Verlegung_Kaiser_Wilhelm_Ring_24_17.jpg', '2020-01-14 11:21:49', '2020-01-14 11:21:49', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1024,\"resolution_y\":1046,\"compression_ratio\":0.10709261970203951}}'),
(6, 12, NULL, 247262, 1, '584bff80504f370079e12245efc5edfc', 'image/jpeg', 'JPEG image data, baseline, precision 8, 1024x1033, frames 3', 'de44850b9cddd4f4a94e9148cf423cfc.jpg', '1024px-Stolpersteine_Köln_Verlegung_Kaiser_Wilhelm_Ring_24_19.jpg', '2020-01-14 11:23:14', '2020-01-14 11:23:14', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1024,\"resolution_y\":1033,\"compression_ratio\":0.07791764984672475}}'),
(8, 13, NULL, 316069, 1, 'dca88e612f1e061cf5e48f4558bdc03d', 'image/jpeg', 'JPEG image data, baseline, precision 8, 1024x1044, frames 3', '849e356ecd233a2e77ded4b0650794b3.jpg', '1024px-Stolpersteine_Köln_Verlegung_Kaiser_Wilhelm_Ring_24_18.jpg', '2020-01-14 11:25:07', '2020-01-14 11:25:07', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1024,\"resolution_y\":1044,\"compression_ratio\":0.09855080868853767}}'),
(9, 14, NULL, 265326, 1, '8e11e2ec3468719c4423791dc604b56d', 'image/jpeg', 'JPEG image data, baseline, precision 8, 1024x1068, frames 3', 'f0f68adea94f36baaaf1f647f74bf703.jpg', '1024px-Stolpersteine_Köln_Verlegung_Kaiser_Wilhelm_Ring_24_20.jpg', '2020-01-14 11:26:08', '2020-01-14 11:26:08', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1024,\"resolution_y\":1068,\"compression_ratio\":0.08086998185861423}}'),
(10, 15, NULL, 115559, 1, '7429a3a229639d5eed5c44d02f707098', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 240x240, segment length 16, comment: \"File source: https://commons.wikimedia.org/wiki/File:Stolperstein_Arthur_Berger,_Luxemburger_S\", baseline, precision 8, 600x600, frames 3', '20bd4bc49f32c84b04f2e2f426f11d17.jpg', 'Stolperstein_Arthur_Berger,_Luxemburger_Straße_37,_Köln-6142.jpg', '2020-02-12 12:54:14', '2020-02-12 12:53:45', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":600,\"resolution_y\":600,\"compression_ratio\":0.10699907407407408}}'),
(11, 16, 2, 89532, 1, '7f11f7d593a7da90c5dbe4447245f5fe', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=8, orientation=upper-left, xresolution=110, yresolution=118, resolutionunit=2, software=Adobe Photoshop CS2 Windows, datetime=2013:01:08 11:15:55], baseline, precision 8, 540x308,', 'f5523bf57b2682695cc0c074c3f14144.jpg', 'Englard_Fanny_Leo.jpg', '2020-02-28 12:43:25', '2020-02-26 14:35:57', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":540,\"resolution_y\":308,\"compression_ratio\":0.17943722943722945},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"f5523bf57b2682695cc0c074c3f14144.jpg\",\"FileDateTime\":1582727756,\"FileSize\":89532,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"540\\\" height=\\\"308\\\"\",\"Height\":308,\"Width\":540,\"IsColor\":0,\"ByteOrderMotorola\":0,\"Thumbnail.FileType\":8,\"Thumbnail.MimeType\":\"image\\/tiff\",\"Thumbnail.Height\":88,\"Thumbnail.Width\":160},\"IFD0\":{\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop CS2 Windows\",\"DateTime\":\"2013:01:08 11:15:55\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":175},\"THUMBNAIL\":{\"ImageWidth\":160,\"ImageLength\":88,\"BitsPerSample\":[8,8,8],\"Compression\":1,\"PhotometricInterpretation\":2,\"StripOffsets\":437,\"SamplesPerPixel\":3,\"RowsPerStrip\":88,\"StripByteCounts\":42240,\"XResolution\":300,\"YResolution\":300,\"PlanarConfiguration\":1,\"ResolutionUnit\":2},\"EXIF\":{\"ExifVersion\":220,\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":65535,\"ExifImageWidth\":540,\"ExifImageLength\":308}}}}'),
(12, 17, 2, 89532, 1, '7f11f7d593a7da90c5dbe4447245f5fe', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=8, orientation=upper-left, xresolution=110, yresolution=118, resolutionunit=2, software=Adobe Photoshop CS2 Windows, datetime=2013:01:08 11:15:55], baseline, precision 8, 540x308,', '478af70c1c3b9ae40adbe63bc3ad646f.jpg', 'Englard_Fanny_Leo.jpg', '2020-02-28 12:44:21', '2020-02-26 14:50:26', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":540,\"resolution_y\":308,\"compression_ratio\":0.17943722943722945},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"478af70c1c3b9ae40adbe63bc3ad646f.jpg\",\"FileDateTime\":1582728626,\"FileSize\":89532,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"540\\\" height=\\\"308\\\"\",\"Height\":308,\"Width\":540,\"IsColor\":0,\"ByteOrderMotorola\":0,\"Thumbnail.FileType\":8,\"Thumbnail.MimeType\":\"image\\/tiff\",\"Thumbnail.Height\":88,\"Thumbnail.Width\":160},\"IFD0\":{\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop CS2 Windows\",\"DateTime\":\"2013:01:08 11:15:55\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":175},\"THUMBNAIL\":{\"ImageWidth\":160,\"ImageLength\":88,\"BitsPerSample\":[8,8,8],\"Compression\":1,\"PhotometricInterpretation\":2,\"StripOffsets\":437,\"SamplesPerPixel\":3,\"RowsPerStrip\":88,\"StripByteCounts\":42240,\"XResolution\":300,\"YResolution\":300,\"PlanarConfiguration\":1,\"ResolutionUnit\":2},\"EXIF\":{\"ExifVersion\":220,\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":65535,\"ExifImageWidth\":540,\"ExifImageLength\":308}}}}'),
(13, 19, NULL, 3132089, 1, 'b612a411c0cfb2bc5219948041b79338', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=21, height=3672, bps=266, PhotometricIntepretation=RGB, manufacturer=Panasonic, model=DMC-TZ41, orientation=upper-left, width=4896], baseline, precision 8, 2925x2925, frames 3', 'a061f6b0b20af46bb183d58c528f6de6.jpg', 'lotte_blumgardt.jpg', '2020-02-26 15:02:55', '2020-02-26 15:02:54', 1, '0'),
(14, 23, NULL, 3574370, 1, '524c802c7dde4daa932fb75125176ee4', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=21, height=3672, bps=266, PhotometricIntepretation=RGB, manufacturer=Panasonic, model=DMC-TZ41, orientation=upper-left, width=4896], baseline, precision 8, 3333x3376, frames 3', '2ce2ee214badfd87d54d103972d2f295.jpg', 'Thekla_salmony.jpg', '2020-02-27 14:15:10', '2020-02-27 13:48:32', 1, '0'),
(15, 24, NULL, 3127885, 1, '530e5a1a6e92633a9ac93d831047b3c5', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=21, height=3672, bps=266, PhotometricIntepretation=RGB, manufacturer=Panasonic, model=DMC-TZ41, orientation=upper-left, width=4896], baseline, precision 8, 3336x3282, frames 3', 'f61edcdc3fe177482366f96cb3a35638.jpg', 'Alfred_salmony.jpg', '2020-02-27 14:14:50', '2020-02-27 13:55:22', 1, '0'),
(16, 25, NULL, 134766, 1, 'da2c384c2b103bbfe5e1d12002305b35', 'image/png', 'PNG image data, 500 x 300, 8-bit/color RGBA, non-interlaced', 'e298fa8f95554dcc4f7bf0baa2895467.jpg', 'hj_salmony.jpg', '2020-02-27 14:14:19', '2020-02-27 14:14:19', 1, '{\"mime_type\":\"image\\/png\",\"video\":{\"dataformat\":\"png\",\"lossless\":false,\"resolution_x\":500,\"resolution_y\":300,\"bits_per_sample\":32,\"compression_ratio\":0.22461}}'),
(17, 16, 1, 60359, 1, 'fc6a0e8a9c0a60cd42e5fd2d25878e6d', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=10], baseline, precision 8, 281x307, frames 3', 'de9b6c894718e5a9315d7ead7f075cb1.jpg', 'Englard_Fanny.jpg', '2020-02-28 12:43:25', '2020-02-28 12:43:02', 1, '0'),
(18, 17, 1, 57707, 1, 'd8fdf64e4bcc82828e18b80b58ce8c7e', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=10], baseline, precision 8, 257x307, frames 3', '1d717e5f3c67bd69a7146485abe868c2.jpg', 'Englard_Leo.jpg', '2020-02-28 12:44:21', '2020-02-28 12:44:15', 1, '0'),
(19, 26, NULL, 37223, 1, 'febbce65209d42fb1a14477040bdfc28', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 400x400, segment length 16, comment: \"e\", baseline, precision 8, 240x395, frames 1', '231c9912534bd97438a66005674cee9a.jpg', 'Lilly_menczel.jpg', '2020-03-03 13:24:09', '2020-03-03 13:24:09', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":240,\"resolution_y\":395,\"compression_ratio\":0.13088255977496485}}'),
(20, 27, NULL, 215622, 1, '29fa81b8caa30f79ad3d033b9d51df75', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=16, compression=none, PhotometricIntepretation=RGB, manufacturer=FUJIFILM, model=X-T2, orientation=upper-le', '7382af4c4f75f7e9451a1b1433c7207b.jpg', 'abb_2400_17209.jpg', '2020-03-15 16:45:38', '2020-03-15 16:45:38', 1, '0'),
(21, 28, NULL, 186562, 1, '7f3cd62862a94208afc118c082cf15a1', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=16, compression=none, PhotometricIntepretation=RGB, manufacturer=FUJIFILM, model=X-T2, orientation=upper-le', '143faea19204bb38982f5073b43f4447.jpg', 'abb_2399_17205.jpg', '2020-03-15 16:46:36', '2020-03-15 16:46:36', 1, '0'),
(22, 29, NULL, 194499, 1, '5dba1d7b254ddfc43fe7104227a249da', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=16, compression=none, PhotometricIntepretation=RGB, manufacturer=FUJIFILM, model=X-T2, orientation=upper-le', 'cb7a7583e11e810273bccc762c9c20e8.jpg', 'abb_2401_17213.jpg', '2020-03-15 16:47:47', '2020-03-15 16:47:47', 1, '0'),
(23, 30, NULL, 197608, 1, '13959868aa2be6436fc505540e4518b6', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=16, compression=none, PhotometricIntepretation=RGB, manufacturer=FUJIFILM, model=X-T2, orientation=upper-le', 'e365c6ef839c5ad42702603ef541cb3c.jpg', 'abb_2397_17197.jpg', '2020-03-15 16:50:05', '2020-03-15 16:49:57', 1, '0'),
(24, 31, NULL, 208485, 1, '2902c9aa033b7ada7812829f8fba3d60', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=16, compression=none, PhotometricIntepretation=RGB, manufacturer=FUJIFILM, model=X-T2, orientation=upper-le', '59a44e01008f8237bb33040f91b2ebac.jpg', 'abb_2398_17201.jpg', '2020-03-15 16:50:56', '2020-03-15 16:50:56', 1, '0'),
(25, 32, NULL, 168581, 1, '6a95b3c9e706a821375be2ecc35868b2', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=16, compression=none, PhotometricIntepretation=RGB, manufacturer=FUJIFILM, model=X-T2, orientation=upper-le', '08b189336d2515908eebce496e0ecbad.jpg', 'abb_2402_17217.jpg', '2020-03-15 16:51:46', '2020-03-15 16:51:45', 1, '0'),
(26, 33, NULL, 64042, 1, 'e8b02821f6f9e749f75180000f243cc5', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 500x484, frames 3', '734e85b185fc442ae247c559c9575630.jpg', 'abb_1389_9633.jpg', '2020-03-21 12:38:48', '2020-03-21 12:38:48', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":500,\"resolution_y\":484,\"compression_ratio\":0.08821212121212121}}'),
(27, 34, NULL, 291594, 1, '7fe10b2e6a7737cbf2062c3c08c11c50', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=14, manufacturer=NIKON CORPORATION, model=NIKON D5100, orientation=lower-left, xresolution=216, yresolution=22', 'c245269f3943dcc28c03bbe9fe8cb99a.jpg', 'abb_2080_15782.jpg', '2020-03-21 12:52:03', '2020-03-21 12:52:03', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":491,\"resolution_y\":500,\"compression_ratio\":0.395918533604888},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"c245269f3943dcc28c03bbe9fe8cb99a.jpg\",\"FileDateTime\":1584795123,\"FileSize\":291594,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"491\\\" height=\\\"500\\\"\",\"Height\":500,\"Width\":491,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/8.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D5100\",\"Orientation\":8,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.00 \",\"DateTime\":\"2015:06:07 14:44:23\",\"WhitePoint\":[\"313\\/1000\",\"329\\/1000\"],\"PrimaryChromaticities\":[\"64\\/100\",\"33\\/100\",\"21\\/100\",\"71\\/100\",\"15\\/100\",\"6\\/100\"],\"YCbCrCoefficients\":[\"299\\/1000\",\"587\\/1000\",\"114\\/1000\"],\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":352,\"GPS_IFD_Pointer\":37648},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":37776,\"JPEGInterchangeFormatLength\":9009,\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.004,\"FNumber\":8,\"ExposureProgram\":2,\"ISOSpeedRatings\":100,\"UndefinedTag:0x8830\":2,\"ExifVersion\":230,\"DateTimeOriginal\":\"2015:06:07 14:44:23\",\"DateTimeDigitized\":\"2015:06:07 14:44:23\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":5,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":0,\"FocalLength\":55,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":40,\"SubSecTimeOriginal\":40,\"SubSecTimeDigitized\":40,\"FlashPixVersion\":100,\"ColorSpace\":65535,\"ExifImageWidth\":4928,\"ExifImageLength\":3264,\"InteroperabilityOffset\":37616,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0000\\u0001\\u0001\\u0002\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":82,\"SceneCaptureType\":0,\"GainControl\":0,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0,\"UndefinedTag:0xA500\":2.2},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0003\\u0000\\u0000\",\"computed\":{\"version\":\"v2.3.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R03\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(28, 35, NULL, 273365, 1, 'c6e8d0494c42ff3c29aa6ee7ddf24d73', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=14, manufacturer=NIKON CORPORATION, model=NIKON D5100, orientation=lower-left, xresolution=216, yresolution=22', '477c74261dfa27c6a8222ff3f039d6bc.jpg', 'abb_2082_15778.jpg', '2020-03-21 12:52:49', '2020-03-21 12:52:49', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":500,\"resolution_y\":497,\"compression_ratio\":0.36668678739101274},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"477c74261dfa27c6a8222ff3f039d6bc.jpg\",\"FileDateTime\":1584795169,\"FileSize\":273365,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"500\\\" height=\\\"497\\\"\",\"Height\":497,\"Width\":500,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/8.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D5100\",\"Orientation\":8,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.00 \",\"DateTime\":\"2015:06:07 14:44:21\",\"WhitePoint\":[\"313\\/1000\",\"329\\/1000\"],\"PrimaryChromaticities\":[\"64\\/100\",\"33\\/100\",\"21\\/100\",\"71\\/100\",\"15\\/100\",\"6\\/100\"],\"YCbCrCoefficients\":[\"299\\/1000\",\"587\\/1000\",\"114\\/1000\"],\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":352,\"GPS_IFD_Pointer\":37604},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":37732,\"JPEGInterchangeFormatLength\":8995,\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.004,\"FNumber\":8,\"ExposureProgram\":2,\"ISOSpeedRatings\":100,\"UndefinedTag:0x8830\":2,\"ExifVersion\":230,\"DateTimeOriginal\":\"2015:06:07 14:44:21\",\"DateTimeDigitized\":\"2015:06:07 14:44:21\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":5,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":0,\"FocalLength\":55,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":0,\"SubSecTimeOriginal\":0,\"SubSecTimeDigitized\":0,\"FlashPixVersion\":100,\"ColorSpace\":65535,\"ExifImageWidth\":4928,\"ExifImageLength\":3264,\"InteroperabilityOffset\":37572,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0000\\u0001\\u0001\\u0002\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":82,\"SceneCaptureType\":0,\"GainControl\":0,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0,\"UndefinedTag:0xA500\":2.2},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0003\\u0000\\u0000\",\"computed\":{\"version\":\"v2.3.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R03\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(29, 36, NULL, 298182, 1, 'a4471dd65fb2a6df54c6c4ac256f15d8', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=14, manufacturer=NIKON CORPORATION, model=NIKON D5100, orientation=upper-left, xresolution=216, yresolution=22', 'a27c5556a3a9f505b9837920e6e18de4.jpg', 'abb_2088_15791.jpg', '2020-03-21 12:54:04', '2020-03-21 12:54:04', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":496,\"resolution_y\":500,\"compression_ratio\":0.4007822580645161},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"a27c5556a3a9f505b9837920e6e18de4.jpg\",\"FileDateTime\":1584795244,\"FileSize\":298182,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"496\\\" height=\\\"500\\\"\",\"Height\":500,\"Width\":496,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/8.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D5100\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.00 \",\"DateTime\":\"2015:06:07 14:44:27\",\"WhitePoint\":[\"313\\/1000\",\"329\\/1000\"],\"PrimaryChromaticities\":[\"64\\/100\",\"33\\/100\",\"21\\/100\",\"71\\/100\",\"15\\/100\",\"6\\/100\"],\"YCbCrCoefficients\":[\"299\\/1000\",\"587\\/1000\",\"114\\/1000\"],\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":352,\"GPS_IFD_Pointer\":37696},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":37824,\"JPEGInterchangeFormatLength\":9388,\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.004,\"FNumber\":8,\"ExposureProgram\":2,\"ISOSpeedRatings\":100,\"UndefinedTag:0x8830\":2,\"ExifVersion\":230,\"DateTimeOriginal\":\"2015:06:07 14:44:27\",\"DateTimeDigitized\":\"2015:06:07 14:44:27\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":5,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":0,\"FocalLength\":55,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":50,\"SubSecTimeOriginal\":50,\"SubSecTimeDigitized\":50,\"FlashPixVersion\":100,\"ColorSpace\":65535,\"ExifImageWidth\":4928,\"ExifImageLength\":3264,\"InteroperabilityOffset\":37666,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0000\\u0001\\u0001\\u0002\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":82,\"SceneCaptureType\":0,\"GainControl\":0,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0,\"UndefinedTag:0xA500\":2.2},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0003\\u0000\\u0000\",\"computed\":{\"version\":\"v2.3.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R03\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(30, 37, NULL, 316609, 1, '0ceee00f660173b92a7ff606de29f0ac', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=14, manufacturer=NIKON CORPORATION, model=NIKON D5100, orientation=lower-left, xresolution=216, yresolution=22', '06c2b19faa6914f7caabdb3bcf1d29ee.jpg', 'abb_2086_15787-1.jpg', '2020-03-21 12:55:47', '2020-03-21 12:55:47', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":481,\"resolution_y\":500,\"compression_ratio\":0.4388205128205128},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"06c2b19faa6914f7caabdb3bcf1d29ee.jpg\",\"FileDateTime\":1584795347,\"FileSize\":316609,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"481\\\" height=\\\"500\\\"\",\"Height\":500,\"Width\":481,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/9.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D5100\",\"Orientation\":8,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.00 \",\"DateTime\":\"2015:06:07 14:44:25\",\"WhitePoint\":[\"313\\/1000\",\"329\\/1000\"],\"PrimaryChromaticities\":[\"64\\/100\",\"33\\/100\",\"21\\/100\",\"71\\/100\",\"15\\/100\",\"6\\/100\"],\"YCbCrCoefficients\":[\"299\\/1000\",\"587\\/1000\",\"114\\/1000\"],\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":352,\"GPS_IFD_Pointer\":37580},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":37708,\"JPEGInterchangeFormatLength\":9227,\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.003125,\"FNumber\":9,\"ExposureProgram\":2,\"ISOSpeedRatings\":100,\"UndefinedTag:0x8830\":2,\"ExifVersion\":230,\"DateTimeOriginal\":\"2015:06:07 14:44:25\",\"DateTimeDigitized\":\"2015:06:07 14:44:25\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":5,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":0,\"FocalLength\":55,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":50,\"SubSecTimeOriginal\":50,\"SubSecTimeDigitized\":50,\"FlashPixVersion\":100,\"ColorSpace\":65535,\"ExifImageWidth\":4928,\"ExifImageLength\":3264,\"InteroperabilityOffset\":37548,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0000\\u0001\\u0001\\u0002\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":82,\"SceneCaptureType\":0,\"GainControl\":0,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0,\"UndefinedTag:0xA500\":2.2},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0003\\u0000\\u0000\",\"computed\":{\"version\":\"v2.3.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R03\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(31, 38, NULL, 306666, 1, 'ac34cf62aa15d48e6cc3f70f656f6f63', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=11, manufacturer=NIKON CORPORATION, model=NIKON D5100, orientation=upper-right, xresolution=180, yresolution=1', '21b9e65708add3d6e3e951d5a70dc70a.jpg', 'abb_1931_15074.jpg', '2020-03-21 13:28:54', '2020-03-21 13:28:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":478,\"resolution_y\":500,\"compression_ratio\":0.4277071129707113},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"21b9e65708add3d6e3e951d5a70dc70a.jpg\",\"FileDateTime\":1584797334,\"FileSize\":306666,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"478\\\" height=\\\"500\\\"\",\"Height\":500,\"Width\":478,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/5.6\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D5100\",\"Orientation\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.00 \",\"DateTime\":\"2013:08:04 15:47:29\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":228,\"GPS_IFD_Pointer\":37548},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":37676,\"JPEGInterchangeFormatLength\":9059,\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.008,\"FNumber\":5.6,\"ExposureProgram\":0,\"ISOSpeedRatings\":320,\"UndefinedTag:0x8830\":2,\"ExifVersion\":230,\"DateTimeOriginal\":\"2013:08:04 15:47:29\",\"DateTimeDigitized\":\"2013:08:04 15:47:29\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":5,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":24,\"FocalLength\":55,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":70,\"SubSecTimeOriginal\":70,\"SubSecTimeDigitized\":70,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":4928,\"ExifImageLength\":3264,\"InteroperabilityOffset\":37518,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0000\\u0001\\u0001\\u0002\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":82,\"SceneCaptureType\":0,\"GainControl\":0,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0003\\u0000\\u0000\",\"computed\":{\"version\":\"v2.3.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_items`
--

CREATE TABLE `omeka_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_items`
--

INSERT INTO `omeka_items` (`id`, `item_type_id`, `collection_id`, `featured`, `public`, `modified`, `added`, `owner_id`) VALUES
(3, 12, 3, 0, 1, '2020-01-13 16:26:05', '2020-01-13 12:27:16', 1),
(4, 12, 3, 0, 1, '2020-01-13 16:28:43', '2020-01-13 16:28:43', 1),
(5, 12, 3, 0, 1, '2020-01-13 17:24:33', '2020-01-13 16:42:17', 1),
(6, 12, 4, 0, 1, '2020-01-13 17:50:24', '2020-01-13 17:50:24', 1),
(7, NULL, 5, 0, 1, '2020-01-14 06:50:39', '2020-01-14 06:50:33', 1),
(8, NULL, 5, 0, 1, '2020-01-14 06:58:24', '2020-01-14 06:56:06', 1),
(9, NULL, 5, 0, 1, '2020-01-14 06:58:06', '2020-01-14 06:58:06', 1),
(10, NULL, 5, 0, 1, '2020-01-14 06:59:15', '2020-01-14 06:59:06', 1),
(11, 12, 6, 0, 1, '2020-01-14 11:21:49', '2020-01-14 11:21:49', 1),
(12, 12, 6, 0, 1, '2020-01-14 11:23:14', '2020-01-14 11:23:14', 1),
(13, 12, 6, 0, 1, '2020-01-14 11:25:07', '2020-01-14 11:24:31', 1),
(14, 12, 6, 0, 1, '2020-01-14 11:26:08', '2020-01-14 11:26:08', 1),
(15, 12, 7, 0, 1, '2020-02-12 12:54:14', '2020-02-12 12:50:55', 1),
(16, 12, 8, 0, 1, '2020-02-28 12:43:25', '2020-02-26 14:35:57', 1),
(17, 12, 8, 0, 1, '2020-02-28 12:44:21', '2020-02-26 14:50:26', 1),
(18, 12, 8, 0, 1, '2020-02-26 14:56:54', '2020-02-26 14:56:54', 1),
(19, 12, NULL, 0, 1, '2020-02-26 15:02:54', '2020-02-26 15:02:54', 1),
(20, 12, 9, 0, 1, '2020-02-27 13:35:48', '2020-02-27 13:32:30', 1),
(21, 12, 9, 0, 1, '2020-02-27 13:35:36', '2020-02-27 13:35:36', 1),
(22, 12, NULL, 0, 1, '2020-02-27 13:42:44', '2020-02-27 13:42:44', 1),
(23, 12, 10, 0, 1, '2020-02-27 14:15:10', '2020-02-27 13:48:32', 1),
(24, 12, 10, 0, 1, '2020-02-27 14:14:50', '2020-02-27 13:55:22', 1),
(25, 12, 10, 0, 1, '2020-02-27 14:14:19', '2020-02-27 14:12:54', 1),
(26, 12, NULL, 0, 1, '2020-03-03 13:24:09', '2020-03-03 13:24:09', 1),
(27, 12, 11, 0, 1, '2020-03-15 16:45:38', '2020-03-15 16:45:23', 1),
(28, 12, 11, 0, 1, '2020-03-15 16:46:36', '2020-03-15 16:46:36', 1),
(29, 12, 11, 0, 1, '2020-03-15 16:47:47', '2020-03-15 16:47:47', 1),
(30, 12, 11, 0, 1, '2020-03-15 16:50:05', '2020-03-15 16:49:57', 1),
(31, 12, 11, 0, 1, '2020-03-15 16:50:56', '2020-03-15 16:50:56', 1),
(32, 12, 11, 0, 1, '2020-03-15 16:51:45', '2020-03-15 16:51:45', 1),
(33, 12, 12, 0, 1, '2020-03-21 12:38:48', '2020-03-21 12:38:48', 1),
(34, 12, 13, 0, 1, '2020-03-21 12:52:03', '2020-03-21 12:52:03', 1),
(35, 12, 13, 0, 1, '2020-03-21 12:52:49', '2020-03-21 12:52:49', 1),
(36, 12, 13, 0, 1, '2020-03-21 12:54:04', '2020-03-21 12:54:04', 1),
(37, 12, 13, 0, 1, '2020-03-21 12:55:47', '2020-03-21 12:55:47', 1),
(38, 12, 14, 0, 1, '2020-03-21 13:28:54', '2020-03-21 13:28:54', 1),
(39, NULL, 16, 0, 1, '2020-03-21 18:29:13', '2020-03-21 18:29:13', 1),
(40, NULL, 16, 0, 1, '2020-03-21 18:30:11', '2020-03-21 18:30:04', 1),
(41, NULL, 5, 0, 1, '2020-03-25 12:25:49', '2020-03-25 12:25:49', 1),
(42, NULL, NULL, 0, 1, '2020-03-25 12:27:37', '2020-03-25 12:27:37', 1),
(43, NULL, 5, 0, 1, '2020-03-25 12:29:35', '2020-03-25 12:29:35', 1),
(44, NULL, 5, 0, 1, '2020-03-25 23:27:27', '2020-03-25 13:02:28', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_item_types`
--

CREATE TABLE `omeka_item_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_item_types`
--

INSERT INTO `omeka_item_types` (`id`, `name`, `description`) VALUES
(1, 'Text', 'A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.'),
(3, 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession. Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation.'),
(4, 'Oral History', 'A resource containing historical information obtained in interviews with persons having firsthand knowledge.'),
(5, 'Sound', 'A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.'),
(6, 'Still Image', 'A static visual representation. Examples include paintings, drawings, graphic designs, plans and maps. Recommended best practice is to assign the type Text to images of textual materials.'),
(7, 'Website', 'A resource comprising of a web page or web pages and all related assets ( such as images, sound and video files, etc. ).'),
(8, 'Event', 'A non-persistent, time-based occurrence. Metadata for an event provides descriptive information that is the basis for discovery of the purpose, location, duration, and responsible agents associated with an event. Examples include an exhibition, webcast, conference, workshop, open day, performance, battle, trial, wedding, tea party, conflagration.'),
(9, 'Email', 'A resource containing textual messages and binary attachments sent electronically from one person to another or one person to many people.'),
(10, 'Lesson Plan', 'A resource that gives a detailed description of a course of instruction.'),
(11, 'Hyperlink', 'A link, or reference, to another resource on the Internet.'),
(12, 'Person', 'An individual.'),
(13, 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.'),
(14, 'Dataset', 'Data encoded in a defined structure. Examples include lists, tables, and databases. A dataset may be useful for direct machine processing.'),
(15, 'Physical Object', 'An inanimate, three-dimensional object or substance. Note that digital representations of, or surrogates for, these objects should use Moving Image, Still Image, Text or one of the other types.'),
(16, 'Service', 'A system that provides one or more functions. Examples include a photocopying service, a banking service, an authentication service, interlibrary loans, a Z39.50 or Web server.'),
(17, 'Software', 'A computer program in source or compiled form. Examples include a C source file, MS-Windows .exe executable, or Perl script.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_item_types_elements`
--

CREATE TABLE `omeka_item_types_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_item_types_elements`
--

INSERT INTO `omeka_item_types_elements` (`id`, `item_type_id`, `element_id`, `order`) VALUES
(1, 1, 7, NULL),
(2, 1, 1, NULL),
(3, 6, 7, NULL),
(6, 6, 10, NULL),
(7, 3, 7, NULL),
(8, 3, 11, NULL),
(9, 3, 12, NULL),
(10, 3, 13, NULL),
(11, 3, 14, NULL),
(12, 3, 5, NULL),
(13, 5, 7, NULL),
(14, 5, 11, NULL),
(15, 5, 15, NULL),
(16, 5, 5, NULL),
(17, 4, 7, NULL),
(18, 4, 11, NULL),
(19, 4, 15, NULL),
(20, 4, 5, NULL),
(21, 4, 2, NULL),
(22, 4, 3, NULL),
(23, 4, 4, NULL),
(24, 4, 16, NULL),
(25, 9, 17, NULL),
(26, 9, 18, NULL),
(27, 9, 20, NULL),
(28, 9, 19, NULL),
(29, 9, 21, NULL),
(30, 9, 22, NULL),
(31, 9, 23, NULL),
(32, 10, 24, NULL),
(33, 10, 25, NULL),
(34, 10, 26, NULL),
(35, 10, 11, NULL),
(36, 10, 27, NULL),
(37, 7, 6, NULL),
(38, 11, 28, NULL),
(39, 8, 29, NULL),
(40, 8, 30, NULL),
(41, 8, 11, NULL),
(42, 12, 31, NULL),
(43, 12, 32, NULL),
(44, 12, 33, NULL),
(45, 12, 34, NULL),
(46, 12, 35, NULL),
(47, 12, 36, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_keys`
--

CREATE TABLE `omeka_keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_locations`
--

CREATE TABLE `omeka_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `zoom_level` int(11) NOT NULL,
  `map_type` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `omeka_locations`
--

INSERT INTO `omeka_locations` (`id`, `item_id`, `latitude`, `longitude`, `zoom_level`, `map_type`, `address`) VALUES
(1, 1, 51.773057550000004, 19.478382219522512, 13, 'Leaflet', 'Stefana Jaracza 97/95, 90-252 Łódź, Polen'),
(2, 2, 50.93551984977864, 6.96258544921875, 11, 'Leaflet', ''),
(3, 3, 50.973005650000005, 7.012012190367994, 10, 'Leaflet', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_neatline_exhibits`
--

CREATE TABLE `omeka_neatline_exhibits` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  `published` timestamp NULL DEFAULT NULL,
  `item_query` text COLLATE utf8_unicode_ci,
  `spatial_layers` text COLLATE utf8_unicode_ci,
  `spatial_layer` text COLLATE utf8_unicode_ci,
  `image_layer` text COLLATE utf8_unicode_ci,
  `image_height` smallint(5) UNSIGNED DEFAULT NULL,
  `image_width` smallint(5) UNSIGNED DEFAULT NULL,
  `zoom_levels` smallint(5) UNSIGNED DEFAULT NULL,
  `wms_address` text COLLATE utf8_unicode_ci,
  `wms_layers` text COLLATE utf8_unicode_ci,
  `widgets` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `narrative` longtext COLLATE utf8_unicode_ci,
  `spatial_querying` tinyint(1) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `styles` text COLLATE utf8_unicode_ci,
  `map_focus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_zoom` int(10) UNSIGNED DEFAULT NULL,
  `accessible_url` text COLLATE utf8_unicode_ci,
  `map_restricted_extent` text COLLATE utf8_unicode_ci,
  `map_min_zoom` smallint(5) UNSIGNED DEFAULT NULL,
  `map_max_zoom` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_neatline_exhibits`
--

INSERT INTO `omeka_neatline_exhibits` (`id`, `owner_id`, `added`, `modified`, `published`, `item_query`, `spatial_layers`, `spatial_layer`, `image_layer`, `image_height`, `image_width`, `zoom_levels`, `wms_address`, `wms_layers`, `widgets`, `title`, `slug`, `narrative`, `spatial_querying`, `public`, `styles`, `map_focus`, `map_zoom`, `accessible_url`, `map_restricted_extent`, `map_min_zoom`, `map_max_zoom`) VALUES
(1, 1, '2019-12-15 14:37:49', '2020-03-26 10:46:37', '2019-12-15 02:37:49', 'a:5:{s:5:\"range\";s:0:\"\";s:10:\"collection\";s:2:\"16\";s:4:\"type\";s:0:\"\";s:4:\"tags\";s:0:\"\";s:13:\"submit_search\";s:12:\"Import Items\";}', 'GooglePhysical,GoogleStreets,GoogleHybrid,GoogleSatellite', 'GoogleStreets', NULL, NULL, NULL, 10, NULL, NULL, 'Waypoints,Simile', 'Verfolgung von Juden aus Köln während der NS-Zeit', 'neatline', NULL, 1, 1, '. {\n  max-width: 300px;\n  left: 10px;\n  top: 10px;\n  font-size: 11px !important;\n}', '1364400.9547002,4551289.9745508', 3, NULL, NULL, NULL, 18);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_neatline_records`
--

CREATE TABLE `omeka_neatline_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `exhibit_id` int(10) UNSIGNED DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  `is_coverage` tinyint(1) NOT NULL,
  `is_wms` tinyint(1) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `item_title` mediumtext COLLATE utf8_unicode_ci,
  `body` mediumtext COLLATE utf8_unicode_ci,
  `coverage` geometry NOT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `widgets` text COLLATE utf8_unicode_ci,
  `presenter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fill_color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fill_color_select` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stroke_color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stroke_color_select` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fill_opacity` decimal(3,2) DEFAULT NULL,
  `fill_opacity_select` decimal(3,2) DEFAULT NULL,
  `stroke_opacity` decimal(3,2) DEFAULT NULL,
  `stroke_opacity_select` decimal(3,2) DEFAULT NULL,
  `stroke_width` int(10) UNSIGNED DEFAULT NULL,
  `point_radius` int(10) UNSIGNED DEFAULT NULL,
  `zindex` int(10) UNSIGNED DEFAULT NULL,
  `weight` int(10) UNSIGNED DEFAULT NULL,
  `start_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `after_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `before_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wms_address` text COLLATE utf8_unicode_ci,
  `wms_layers` text COLLATE utf8_unicode_ci,
  `min_zoom` int(10) UNSIGNED DEFAULT NULL,
  `max_zoom` int(10) UNSIGNED DEFAULT NULL,
  `map_zoom` int(10) UNSIGNED DEFAULT NULL,
  `map_focus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_neatline_records`
--

INSERT INTO `omeka_neatline_records` (`id`, `owner_id`, `item_id`, `exhibit_id`, `added`, `modified`, `is_coverage`, `is_wms`, `slug`, `title`, `item_title`, `body`, `coverage`, `tags`, `widgets`, `presenter`, `fill_color`, `fill_color_select`, `stroke_color`, `stroke_color_select`, `fill_opacity`, `fill_opacity_select`, `stroke_opacity`, `stroke_opacity_select`, `stroke_width`, `point_radius`, `zindex`, `weight`, `start_date`, `end_date`, `after_date`, `before_date`, `point_image`, `wms_address`, `wms_layers`, `min_zoom`, `max_zoom`, `map_zoom`, `map_focus`) VALUES
(9, 1, 5, 1, '2020-01-13 16:47:07', '2020-03-25 10:15:42', 1, 0, NULL, 'Fajga Fanny Michel (geb. Benedik)', 'Fajga Fanny Michel (geb. Benedik)', NULL, 0x00000000010700000001000000010100000081b053320dd22741a32fce056d3d5941, NULL, 'Waypoints', 'StaticBubble', '#00aeff', '#00aeff', '#00aeff', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1943', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 12, '779313.72177279,6612032.2568321'),
(7, 1, 4, 1, '2020-01-13 16:31:31', '2020-03-25 10:15:02', 1, 0, NULL, 'Rosa Benedik', 'Rosa Benedik', NULL, 0x00000000010700000001000000010100000081b053320dd22741a32fce056d3d5941, NULL, 'Waypoints', 'StaticBubble', '#00aeff', '#00aeff', '#00aeff', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 12, '778702.22554679,6612108.6938605'),
(8, 1, 4, 1, '2020-01-13 16:34:18', '2020-03-25 10:39:33', 1, 0, NULL, 'Rosa Benedik #2', 'Rosa Benedik', NULL, 0x000000000107000000020000000101000000eb29282cffe54d41edbc8d4f8e9d4c41010200000002000000eb29282cffe54d41edbc8d4f8e9d4c4181b053320dd22741a32fce056d3d5941, NULL, 'Waypoints', 'StaticBubble', '#00aeff', '#00aeff', '#00aeff', '#000000', '0.40', '1.00', '0.60', '0.99', 2, 5, NULL, NULL, NULL, NULL, '1935', NULL, NULL, NULL, NULL, NULL, NULL, 6, '3553060.6037991,3818717.4955675'),
(5, 1, 3, 1, '2020-01-13 12:30:34', '2020-03-25 10:14:03', 1, 0, NULL, NULL, 'Salomon Benedik', NULL, 0x00000000010700000001000000010100000081b053320dd22741a32fce056d3d5941, NULL, 'Waypoints', 'StaticBubble', '#00aeff', '#00aeff', '#00aeff', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 12, '778702.22554679,6612108.6938605'),
(6, 1, 3, 1, '2020-01-13 12:56:58', '2020-03-25 10:39:27', 1, 0, NULL, 'Salomon Benedik #2', 'Salomon Benedik', NULL, 0x000000000107000000020000000101000000eb29282cffe54d41edbc8d4f8e9d4c41010200000002000000eb29282cffe54d41edbc8d4f8e9d4c4181b053320dd22741a32fce056d3d5941, NULL, 'Waypoints', 'StaticBubble', '#00aeff', '#00aeff', '#00aeff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1935', NULL, NULL, NULL, NULL, NULL, NULL, 6, '3553060.6037991,3818717.4955675'),
(11, 1, 5, 1, '2020-01-13 17:06:35', '2020-03-25 10:39:38', 1, 0, NULL, 'Fajga Fanny Michel (geb. Benedik) #2', 'Fajga Fanny Michel (geb. Benedik)', NULL, 0x0000000001070000000200000001010000002adcd9f477a42041c6c2102fc22e5a4101020000000200000081b053320dd22741a32fce056d3d59412adcd9f477a42041c6c2102fc22e5a41, NULL, 'Waypoints', 'StaticBubble', '#00aeff', '#00aeff', '#00aeff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, 9, '528753.14308887,6827661.1135946'),
(12, 1, 5, 1, '2020-01-13 17:23:12', '2020-03-26 10:45:21', 1, 0, NULL, 'Fajga Fanny Michel (geb. Benedik) #3', 'Fajga Fanny Michel (geb. Benedik)', NULL, 0x0000000001070000000200000001010000000f441671171444412bf37bcb6d9459410102000000020000002adcd9f477a42041c6c2102fc22e5a410f441671171444412bf37bcb6d945941, NULL, 'Waypoints', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1943', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2319214.0933916,6410620.6873288'),
(13, 1, 6, 1, '2020-01-13 17:52:53', '2020-03-25 10:16:22', 1, 0, NULL, 'Frieda Kempler', 'Frieda Kempler', NULL, 0x000000000107000000010000000101000000f55e21bea9862741fe702164703a5941, NULL, 'Waypoints', 'StaticBubble', '#ff2900', '#ff2900', '#ff2900', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 12, '768459.66375776,6608745.4646164'),
(14, 1, 6, 1, '2020-01-13 17:55:55', '2020-03-25 10:39:51', 1, 0, NULL, 'Frieda Kempler #2', 'Frieda Kempler', NULL, 0x0000000001070000000200000001010000000a3176c6a1ea1d41b57059e441685941010200000002000000f55e21bea9862741fe702164703a59410a3176c6a1ea1d41b57059e441685941, NULL, 'Waypoints', 'StaticBubble', '#ff2900', '#ff2900', '#ff2900', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, 8, '462138.27294756,6630835.7657877'),
(15, 1, 6, 1, '2020-01-13 18:00:13', '2020-03-25 10:16:30', 1, 0, NULL, 'Frieda Kempler #3', 'Frieda Kempler', NULL, 0x000000000107000000020000000101000000ad7e3297b40212414475a91b424158410102000000020000000a3176c6a1ea1d41b57059e441685941ad7e3297b40212414475a91b42415841, NULL, 'Waypoints', 'StaticBubble', '#ff2900', '#ff2900', '#ff2900', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1940', NULL, NULL, NULL, NULL, NULL, NULL, 7, '203781.11737964,6420022.4418066'),
(16, 1, 6, 1, '2020-01-13 18:03:51', '2020-03-25 10:40:02', 1, 0, NULL, 'Frieda Kempler #4', 'Frieda Kempler', NULL, 0x000000000107000000020000000101000000597f95679508384154417b1e29ee5841010200000002000000ad7e3297b40212414475a91b42415841597f95679508384154417b1e29ee5841, NULL, 'Waypoints', 'StaticBubble', '#ff2900', '#ff2900', '#ff2900', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1945', NULL, NULL, NULL, NULL, NULL, NULL, 7, '1423104.592415,6319737.0607105'),
(17, 1, 7, 1, '2020-01-14 06:54:14', '2020-03-25 11:01:06', 1, 0, NULL, 'Machtergreifung Nationalsozialisten', 'Machtergreifung der Nationalsozialisten', NULL, 0x000000000107000000010000000101000000ad9b9c4b5fb836417bb8098eda4c5a41, NULL, 'Simile', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '1.00', '1.00', '1.00', '1.00', 2, 3, NULL, NULL, '1933-01-30', NULL, '1933-01-30', NULL, NULL, NULL, NULL, NULL, NULL, 11, '1503256.0571779,6890919.4352676'),
(18, 1, 8, 1, '2020-01-14 07:01:37', '2020-03-25 10:58:25', 1, 0, NULL, 'Erste Verordnung zum Reichsbürgergesetz', 'Erste Verordnung zum Reichsbürgergesetz', NULL, 0x0000000001070000000100000001010000007b325a4465b836410c239849d84c5a41, NULL, 'Simile', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '1.00', '1.00', '1.00', '1.00', 2, 5, NULL, NULL, '1935-11-14', NULL, '1935-11-14', NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL),
(19, 1, 11, 1, '2020-01-14 11:31:21', '2020-03-25 10:16:58', 1, 0, NULL, 'Joachim Frankenstein', 'Joachim Frankenstein', NULL, 0x0000000001070000000100000001010000008acbafe05b9527413288347866385941, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 13, '773860.41753702,6608605.7281741'),
(20, 1, 11, 1, '2020-01-14 11:33:09', '2020-03-25 10:40:08', 1, 0, NULL, 'Joachim Frankenstein #2', 'Joachim Frankenstein', NULL, 0x000000000107000000020000000101000000dc1f395d09b73341ba4e7efb366057410102000000020000008acbafe05b9527413288347866385941dc1f395d09b73341ba4e7efb36605741, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, 7, '1340105.9229948,5992217.5321682'),
(21, 1, 11, 1, '2020-01-14 11:36:41', '2020-03-25 10:32:05', 1, 0, NULL, 'Joachim Frankenstein #3', 'Joachim Frankenstein', NULL, 0x000000000107000000020000000101000000857824ea229815c1d88ef3299fcc5c41010200000002000000dc1f395d09b73341ba4e7efb36605741857824ea229815c1d88ef3299fcc5c41, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, 9, '-350437.49941071,7477713.8489125'),
(22, 1, 11, 1, '2020-01-14 11:40:27', '2020-03-25 10:40:17', 1, 0, NULL, 'Joachim Frankenstein #4', 'Joachim Frankenstein', NULL, 0x000000000107000000020000000101000000c444de2827765fc1f8dbc3628ffa5241010200000002000000857824ea229815c1d88ef3299fcc5c41c444de2827765fc1f8dbc3628ffa5241, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1940', NULL, NULL, NULL, NULL, NULL, NULL, 5, '-8088463.6197551,4251154.011388'),
(23, 1, 12, 1, '2020-01-15 18:50:00', '2020-03-25 10:17:45', 1, 0, NULL, 'Kurt Frankenstein', 'Kurt Frankenstein', NULL, 0x0000000001070000000100000001010000008acbafe05b9527413288347866385941, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1937', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 13, '773860.41753702,6608605.7281741'),
(24, 1, 13, 1, '2020-01-15 18:54:27', '2020-03-25 10:17:53', 1, 0, NULL, 'Maria Frankenstein', 'Maria Frankenstein', NULL, 0x0000000001070000000100000001010000008acbafe05b9527413288347866385941, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 13, '773860.41753702,6608605.7281741'),
(25, 1, 13, 1, '2020-01-15 18:56:55', '2020-03-25 10:40:23', 1, 0, NULL, 'Maria Frankenstein #2', 'Maria Frankenstein', NULL, 0x000000000107000000020000000101000000e0faeae1fe8a06c15235303028765a410102000000020000008acbafe05b9527413288347866385941e0faeae1fe8a06c15235303028765a41, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, 7, '-190175.32634722,6826667.4322272'),
(26, 1, 14, 1, '2020-01-15 18:59:38', '2020-03-25 10:18:09', 1, 0, NULL, 'Susanne Frankenstein', 'Susanne Frankenstein', NULL, 0x0000000001070000000100000001010000008acbafe05b9527413288347866385941, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1943', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 13, '773860.41753702,6608605.7281741'),
(27, 1, 14, 1, '2020-01-15 19:05:51', '2020-03-26 10:45:55', 1, 0, NULL, 'Susanne Frankenstein #2', 'Susanne Frankenstein', NULL, 0x000000000107000000020000000101000000597f95679508384154417b1e29ee58410102000000020000008acbafe05b9527413288347866385941597f95679508384154417b1e29ee5841, NULL, 'Waypoints', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1942', NULL, NULL, NULL, NULL, NULL, NULL, 8, '1544792.3414281,6484229.5455574'),
(28, 1, 15, 1, '2020-02-12 12:59:31', '2020-03-25 10:18:25', 1, 0, NULL, 'Arthur Berger', 'Arthur Berger', NULL, 0x00000000010700000001000000010100000097881a6f179327412642d9b492355941, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 14, '773490.17568114,6607555.9133638'),
(29, 1, 15, 1, '2020-02-12 13:06:09', '2020-03-25 10:18:33', 1, 0, NULL, 'Arthur Berger #2', 'Arthur Berger', NULL, 0x00000000010700000002000000010100000050be4530fe8640416fd921d754bf594101020000000200000097881a6f179327412642d9b49235594150be4530fe8640416fd921d754bf5941, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 1, 15, 1, '2020-02-12 13:11:59', '2020-03-25 10:40:38', 1, 0, NULL, 'Arthur Berger #3', 'Arthur Berger', NULL, 0x000000000107000000020000000101000000d705722168514041100b90265e9c584101020000000200000050be4530fe8640416fd921d754bf5941d705722168514041100b90265e9c5841, NULL, 'Waypoints', 'StaticBubble', '#0fc200', '#0fc200', '#0fc200', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1943', NULL, NULL, NULL, NULL, NULL, NULL, 8, '2056929.9854962,6394860.3275621'),
(31, 1, 15, 1, '2020-02-12 13:15:17', '2020-03-26 10:45:46', 1, 0, NULL, 'Arthur Berger #4', 'Arthur Berger', NULL, 0x0000000001070000000200000001010000000a86ceb853a1384149360df28c755741010200000002000000d705722168514041100b90265e9c58410a86ceb853a1384149360df28c755741, NULL, 'Waypoints', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1945', NULL, NULL, NULL, NULL, NULL, NULL, 8, '1540917.9395575,6104906.0154305'),
(32, 1, 16, 1, '2020-02-28 12:46:33', '2020-03-25 10:18:54', 1, 0, NULL, NULL, 'Fanny Englard', NULL, 0x000000000107000000010000000101000000c9145ab317b52741996d826694375941, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945-05-08', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 16, '777191.8851056,6610529.9159028'),
(33, 1, 16, 1, '2020-02-28 13:44:04', '2020-03-25 10:40:46', 1, 0, NULL, 'Fanny Englard #2', 'Fanny Englard', NULL, 0x0000000001070000000200000001010000009a1540c545ff30414c184d95db075b410102000000020000007c0dc16143ff3041af496dfcda075b419b979a8116b527411fd1294094375941, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1940', NULL, NULL, NULL, NULL, NULL, NULL, 11, '1117432.2072125,7064840.8230162'),
(34, 1, 16, 1, '2020-02-28 13:53:41', '2020-03-25 10:40:50', 1, 0, NULL, 'Fanny Englard #3', 'Fanny Englard', NULL, 0x0000000001070000000200000001010000007d88571d597e4441b7fdbcbdcb995d410102000000020000007d88571d597e4441b320b94bd5995d41fb0b98e140ff30418ba3972adb075b41, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941-12-04', NULL, NULL, NULL, NULL, NULL, NULL, 11, '2690066.7361899,7750758.0508662'),
(35, 1, 16, 1, '2020-02-28 13:59:26', '2020-03-25 10:40:54', 1, 0, NULL, 'Fanny Englard #4', 'Fanny Englard', NULL, 0x000000000107000000020000000101000000641d335b1deb3141fcc2d097a4e75a410102000000020000006cd73a3f0aeb3141813d2600a3e75a4126625b8f4f7e4441b5586579cb995d41, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1945-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 9, '1201512.9383144,7059018.8693338'),
(36, 1, 17, 1, '2020-03-03 12:21:47', '2020-03-25 10:19:23', 1, 0, NULL, 'Leo Englard', 'Leo Englard', NULL, 0x000000000107000000010000000101000000c9145ab317b52741996d826694375941, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1942-07-28', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 16, '777043.97497703,6610176.7080015'),
(37, 1, 17, 1, '2020-03-03 12:25:23', '2020-03-25 10:40:59', 1, 0, NULL, 'Leo Englard #2', 'Leo Englard', NULL, 0x00000000010700000002000000010100000013affc266264474151d7ff5d82495b41010200000003000000d9cd8cda61644741b4e6c73782495b41e45d3f42252347413fd8731780465b41e57cd2a716b527412b2dc86894375941, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1942-07-24', NULL, NULL, NULL, NULL, NULL, NULL, 8, '2999850.0749645,7048797.2518587'),
(38, 1, 17, 1, '2020-03-03 12:40:10', '2020-03-25 10:41:04', 1, 0, NULL, 'Leo Englard #3', 'Leo Englard', NULL, 0x0000000001070000000200000001010000007d2e09ddcc864741f0366f02373b5b410102000000030000007d2e09ddcc864741f0366f02373b5b41c09c344d6264474146bc2b5582495b414dda54b46164474146bc2b5582495b41, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1942-07-28', NULL, NULL, NULL, NULL, NULL, NULL, 12, '3079382.8028845,7141249.9641712'),
(39, 1, 18, 1, '2020-03-03 12:44:58', '2020-03-25 10:19:52', 1, 0, NULL, 'Isi Englard', 'Isi Englard', NULL, 0x000000000107000000010000000101000000c9145ab317b52741996d826694375941, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1942-07-28', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 15, '776807.60988911,6610474.3943937'),
(40, 1, 18, 1, '2020-03-03 12:46:40', '2020-03-25 10:41:08', 1, 0, NULL, 'Isi Englard #2', 'Isi Englard', NULL, 0x00000000010700000002000000010100000013affc266264474151d7ff5d82495b41010200000003000000d9cd8cda61644741b4e6c73782495b41e45d3f42252347413fd8731780465b41e57cd2a716b527412b2dc86894375941, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1942-07-24', NULL, NULL, NULL, NULL, NULL, NULL, 8, '2999850.0749645,7048797.2518587'),
(41, 1, 18, 1, '2020-03-03 12:47:20', '2020-03-25 10:41:12', 1, 0, NULL, 'Isi Englard #3', 'Isi Englard', NULL, 0x0000000001070000000200000001010000007d2e09ddcc864741f0366f02373b5b410102000000030000007d2e09ddcc864741f0366f02373b5b41c09c344d6264474146bc2b5582495b414dda54b46164474146bc2b5582495b41, NULL, 'Waypoints', 'StaticBubble', '#bc00ff', '#bc00ff', '#bc00ff', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1942-07-28', NULL, NULL, NULL, NULL, NULL, NULL, 12, '3079382.8028845,7141249.9641712'),
(42, 1, 26, 1, '2020-03-03 13:30:56', '2020-03-25 10:20:16', 1, 0, NULL, NULL, 'Lilly Menczel', NULL, 0x0000000001070000000100000001010000007199891241c727412f698cbda23b5941, NULL, 'Waypoints', 'StaticBubble', '#ffb700', '#ffb700', '#ffb700', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945-05-08', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 16, '779588.7905705,6614440.7525442'),
(43, 1, 26, 1, '2020-03-03 13:34:14', '2020-03-25 10:41:16', 1, 0, NULL, 'Lilly Menczel #2', 'Lilly Menczel', NULL, 0x0000000001070000000200000001010000003130c00a32942741331f6b83ad3659410102000000030000003130c00a32942741331f6b83ad365941bab919c640c7274102ee9eada23b5941d77bf95e41c7274102ee9eada23b5941, NULL, 'Waypoints', 'StaticBubble', '#ffb700', '#ffb700', '#ffb700', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, 14, '777360.02417383,6610845.1599937'),
(44, 1, 26, 1, '2020-03-03 13:35:03', '2020-03-25 10:41:21', 1, 0, NULL, 'Lilly Menczel #3', 'Lilly Menczel', NULL, 0x000000000107000000020000000101000000a16af4de348544411ba2e50dec8b5d41010200000002000000a16af4de348544411ba2e50dec8b5d41e15a50be31942741dba09b8aad365941, NULL, 'Waypoints', 'StaticBubble', '#ffb700', '#ffb700', '#ffb700', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941-12-10', NULL, NULL, NULL, NULL, NULL, NULL, 10, '2647678.5597665,7708699.5799397'),
(45, 1, 26, 1, '2020-03-03 13:46:01', '2020-03-25 10:41:25', 1, 0, NULL, 'Lilly Menczel #4', 'Lilly Menczel', NULL, 0x00000000010700000002000000010100000038c53e89587e44417875b398cb995d41010200000002000000d4861e22597e4441eb379331cc995d417775d8cb34854441b0dc771cec8b5d41, NULL, 'Waypoints', 'StaticBubble', '#ffb700', '#ffb700', '#ffb700', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1943-11', NULL, NULL, NULL, NULL, NULL, NULL, 11, '2680938.2216944,7741854.1409174'),
(46, 1, 26, 1, '2020-03-03 13:49:40', '2020-03-25 10:41:29', 1, 0, NULL, 'Lilly Menczel #5', 'Lilly Menczel', NULL, 0x0000000001070000000200000001010000001b82e37f4c494041137c78c775975b41010200000002000000f282e37f4c494041137c78c775975b4159d30663587e4441b17a7629cb995d41, NULL, 'Waypoints', 'StaticBubble', '#ffb700', '#ffb700', '#ffb700', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1944-08-09', NULL, NULL, NULL, NULL, NULL, NULL, 7, '2621836.8725669,7422520.6690191'),
(47, 1, 26, 1, '2020-03-03 13:55:31', '2020-03-25 10:41:33', 1, 0, NULL, 'Lilly Menczel #6', 'Lilly Menczel', NULL, 0x0000000001070000000200000001010000009b7dd4e96fb536418e84c7be014e5a41010200000002000000b985534d72b536418e84c7be014e5a417fc003e74b494041c0313a8375975b41, NULL, 'Waypoints', 'StaticBubble', '#ffb700', '#ffb700', '#ffb700', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1945-05-08', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2018313.9838824,6902685.7064135'),
(48, 1, 19, 1, '2020-03-05 13:47:22', '2020-03-25 10:21:04', 1, 0, NULL, 'Lotte Blumgardt', 'Lotte Blumgardt', NULL, 0x00000000010700000001000000010100000085f97e501fb527412a0f1cae94375941, NULL, 'Waypoints', 'StaticBubble', '#ff00d3', '#ff00d3', '#ff00d3', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945-05-08', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 15, '777707.46181832,6610412.4896063'),
(49, 1, 19, 1, '2020-03-05 13:52:08', '2020-03-25 10:41:37', 1, 0, NULL, 'Lotte Blumgardt #2', 'Lotte Blumgardt', NULL, 0x00000000010700000002000000010100000010afebc40c8b40416f4bbf39f8cd5941010200000002000000adce7b780c8b4041d35a8713f8cd59410d793e8220b527417f36cdbe94375941, NULL, 'Waypoints', 'StaticBubble', '#ff00d3', '#ff00d3', '#ff00d3', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941-10-22', NULL, NULL, NULL, NULL, NULL, NULL, 7, '1956578.5431006,6648979.5237514'),
(50, 1, 19, 1, '2020-03-05 14:01:28', '2020-03-25 10:41:41', 1, 0, NULL, 'Lotte Blumgardt #3', 'Lotte Blumgardt', NULL, 0x0000000001070000000200000001010000004f1b7a50cc4e404117d68d8df39b58410102000000020000004097ba1ecb4e40411e986d26f49b584100cd7b780c8b40411ef8bd4ef8cd5941, NULL, 'Waypoints', 'StaticBubble', '#ff00d3', '#ff00d3', '#ff00d3', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1944-08', NULL, NULL, NULL, NULL, NULL, NULL, 9, '2189252.8571683,6509439.4827341'),
(51, 1, 19, 1, '2020-03-05 14:04:35', '2020-03-25 10:41:45', 1, 0, NULL, 'Lotte Blumgardt #4', 'Lotte Blumgardt', NULL, 0x000000000107000000020000000101000000edb8e1176c4940418801017b6b975b410102000000030000008ad871cb6b494041b61ef47a6b975b419641b5f5cb4e404113e59cacf39b58419641b5f5cb4e404113e59cacf39b5841, NULL, 'Waypoints', 'StaticBubble', '#ff00d3', '#ff00d3', '#ff00d3', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1944-10', NULL, NULL, NULL, NULL, NULL, NULL, 8, '2256838.0073017,7005711.3566898'),
(52, 1, 20, 1, '2020-03-05 14:09:52', '2020-03-25 10:21:35', 1, 0, NULL, 'Martin Herz', 'Martin Herz', NULL, 0x0000000001070000000100000001010000002485ec811bb52741d82148f792375941, NULL, 'Waypoints', 'StaticBubble', '#00f1e9', '#00f1e9', '#00f1e9', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945-05-08', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 15, '777465.90886592,6610263.9221679'),
(53, 1, 20, 1, '2020-03-05 14:13:58', '2020-03-25 10:21:42', 1, 0, NULL, 'Martin Herz #2', 'Martin Herz', NULL, 0x0000000001070000000200000001010000001a5d949b088b40411dc6491df5cd5941010200000002000000126c5c75088b404104ce2d0af5cd59417c5f5cce1bb5274106ea5efb92375941, NULL, 'Waypoints', 'StaticBubble', '#00f1e9', '#00f1e9', '#00f1e9', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941-10-30', NULL, NULL, NULL, NULL, NULL, NULL, 8, '2040432.9862619,6652100.7032965'),
(54, 1, 20, 1, '2020-03-05 14:31:05', '2020-03-25 10:38:54', 1, 0, NULL, 'Martin Herz #3', 'Martin Herz', NULL, 0x0000000001070000000200000001010000002e43d28d7d1b33410f12fd5be4455941010200000002000000f6bf125c7c1b334148f36ca8e4455941716ab183088b40411a0fdb11f5cd5941, NULL, 'Waypoints', 'StaticBubble', '#00f1e9', '#00f1e9', '#00f1e9', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1944-10', NULL, NULL, NULL, NULL, NULL, NULL, 7, '1910486.1939503,6717403.3242542'),
(55, 1, 21, 1, '2020-03-05 14:31:57', '2020-03-25 10:24:18', 1, 0, NULL, 'Julie Herz', 'Julie Herz', NULL, 0x000000000107000000010000000101000000bb51f97d19b52741e7d45ff792375941, NULL, 'Waypoints', 'StaticBubble', '#00f1e9', '#00f1e9', '#00f1e9', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945-05-08', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 14, '778566.96783607,6610632.8716085'),
(56, 1, 21, 1, '2020-03-05 14:35:36', '2020-03-25 10:38:47', 1, 0, NULL, 'Julie Herz #2', 'Julie Herz', NULL, 0x00000000010700000002000000010100000093c2619e078b40415c960a3cf6cd5941010200000002000000e5ca458b078b40415c960a3cf6cd59415b4bf97d19b52741c22591fb92375941, NULL, 'Waypoints', 'StaticBubble', '#00f1e9', '#00f1e9', '#00f1e9', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941-10-22', NULL, NULL, NULL, NULL, NULL, NULL, 7, '1896950.5697207,6615598.0927986'),
(57, 1, 21, 1, '2020-03-05 14:42:26', '2020-03-25 10:38:41', 1, 0, NULL, 'Julie Herz #3', 'Julie Herz', NULL, 0x000000000107000000020000000101000000e83baecef5cc3f41e76f424aba0b5a41010200000002000000da07b479e7cc3f4161f4017cbb0b5a4159c8b781078b40413a96f742f6cd5941, NULL, 'Waypoints', 'StaticBubble', '#00f1e9', '#00f1e9', '#00f1e9', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1942-05', NULL, NULL, NULL, NULL, NULL, NULL, 10, '2146726.3998898,6774192.0793906'),
(58, 1, 22, 1, '2020-03-06 10:19:50', '2020-03-25 10:24:45', 1, 0, NULL, 'Erwin Moses', 'Erwin Moses', NULL, 0x000000000107000000010000000101000000a1c1012618b52741e60a4a0696375941, NULL, 'Waypoints', 'StaticBubble', '#f8ff00', '#f8ff00', '#f8ff00', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945-05-08', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 14, '779060.15088784,6609589.7163158'),
(59, 1, 22, 1, '2020-03-06 10:22:08', '2020-03-25 10:38:23', 1, 0, NULL, 'Erwin Moses #2', 'Erwin Moses', NULL, 0x00000000010700000002000000010100000090fc1c7c098b404109fe37d1f6cd594101020000000200000090fc1c7c098b404121f653e4f6cd5941fac3012618b527417b0a4a0696375941, NULL, 'Waypoints', 'StaticBubble', '#f8ff00', '#f8ff00', '#f8ff00', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941-10-30', NULL, NULL, NULL, NULL, NULL, NULL, 7, '1917547.7362462,6591534.7527891'),
(60, 1, 22, 1, '2020-03-06 10:37:19', '2020-03-25 10:38:16', 1, 0, NULL, 'Erwin Moses #3', 'Erwin Moses', NULL, 0x000000000107000000020000000101000000887f7d79a8cc3f4130012e369a0b5a41010200000002000000887f7d79a8cc3f41aa85ed679b0b5a4135030169098b4041f4fbfed5f6cd5941, NULL, 'Waypoints', 'StaticBubble', '#f8ff00', '#f8ff00', '#f8ff00', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1944-07-10', NULL, NULL, NULL, NULL, NULL, NULL, 10, '2147959.3948444,6779694.276452'),
(61, 1, 23, 1, '2020-03-06 10:40:10', '2020-03-25 10:25:00', 1, 0, NULL, 'Thekla Salmony', 'Thekla Salmony', NULL, 0x000000000107000000010000000101000000274b3124bb842741223f511c29335941, NULL, 'Waypoints', 'StaticBubble', '#ff0062', '#ff0062', '#ff0062', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1944-04-27', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 13, '774863.57888651,6605520.2656608'),
(62, 1, 23, 1, '2020-03-06 10:42:41', '2020-03-25 10:38:10', 1, 0, NULL, 'Thekla Salmony #2', 'Thekla Salmony', NULL, 0x00000000010700000002000000010100000011efef180c8b404190fc9c5af4cd594101020000000200000011efef180c8b404190fc9c5af4cd59418629a170bb8427413746fc0d29335941, NULL, 'Waypoints', 'StaticBubble', '#ff0062', '#ff0062', '#ff0062', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941-10-30', NULL, NULL, NULL, NULL, NULL, NULL, 7, '1850760.8827915,6558040.1067159'),
(63, 1, 24, 1, '2020-03-06 10:45:51', '2020-03-25 10:25:14', 1, 0, NULL, 'Alfred Salmony', 'Alfred Salmony', NULL, 0x00000000010700000001000000010100000044a63a90cb842741420e251d27335941, NULL, 'Waypoints', 'StaticBubble', '#ff0062', '#ff0062', '#ff0062', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1942-08-11', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 13, '774863.57888651,6605520.2656608'),
(64, 1, 24, 1, '2020-03-06 10:48:07', '2020-03-25 10:38:04', 1, 0, NULL, 'Alfred Salmony #2', 'Alfred Salmony', NULL, 0x000000000107000000020000000101000000d184dcad0a8b404162d3efbef4cd5941010200000002000000d184dcad0a8b404162d3efbef4cd5941dfeb5af7ca842741420e251d27335941, NULL, 'Waypoints', 'StaticBubble', '#ff0062', '#ff0062', '#ff0062', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1941-10-30', NULL, NULL, NULL, NULL, NULL, NULL, 8, '2032439.4571324,6660626.6603777'),
(65, 1, 25, 1, '2020-03-06 10:50:59', '2020-03-25 10:25:26', 1, 0, NULL, NULL, 'Hansjörg Salmony', NULL, 0x0000000001070000000100000001010000002317d6e8d6842741793d182129335941, NULL, 'Waypoints', 'StaticBubble', '#ff0062', '#ff0062', '#ff0062', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1945-05-08', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 14, '774553.50133257,6606662.7155805'),
(66, 1, 25, 1, '2020-03-06 10:56:53', '2020-03-25 11:00:26', 1, 0, NULL, 'Hansjörg Salmony #2', 'Hansjörg Salmony', NULL, 0x000000000107000000020000000101000000dcc52c72df6a1441ab749ca8bb0a5441010200000002000000dcc52c72df6a1441ab749ca8bb0a54417e1ad6e8d6842741643bdf2529335941, NULL, 'Waypoints', 'StaticBubble', '#ff0062', '#ff0062', '#ff0062', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, 6, '875249.20893719,5740470.8466199'),
(67, 1, 25, 1, '2020-03-06 11:01:12', '2020-03-25 10:25:42', 1, 0, NULL, 'Hansjörg Salmony #3', 'Hansjörg Salmony', NULL, 0x0000000001070000000200000001010000000a3deebd74c22941a3ee5e709504574101020000000400000040346f5a72c22941a3ee5e709504574126700ccb21982941b7a6af8126fb564138c7908a539929416331a0b94cfb5641a59a1f94d86a144118f8c063ba0a5441, NULL, 'Waypoints', 'StaticBubble', '#ff0062', '#ff0062', '#ff0062', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, NULL, NULL, '1940', NULL, NULL, NULL, NULL, NULL, NULL, 7, '888576.72141407,5546547.7172301'),
(68, 1, 27, 1, '2020-03-15 16:58:24', '2020-03-25 10:05:05', 1, 0, 'Benno Hermann Proter', NULL, 'Benno Hermann Proter', NULL, 0x000000000107000000010000000101000000c89e352295a027417a2e783849355941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.00', '0.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 1, 27, 1, '2020-03-15 17:07:05', '2020-03-25 10:25:51', 1, 0, NULL, 'Benno Hermann Proter #2', 'Benno Hermann Proter', NULL, 0x00000000010700000001000000010100000015e467e930083b4173f8ff7a631c5a41, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 1, 27, 1, '2020-03-15 17:16:57', '2020-03-25 10:36:33', 1, 0, NULL, 'Benno Hermann Proter #3', 'Benno Hermann Proter', NULL, 0x000000000107000000010000000102000000020000007616623e3f083b419e24dde7711c5a417086133fe2921d41bc57ad4e21285941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 1, 27, 1, '2020-03-15 17:22:07', '2020-03-25 10:36:27', 1, 0, NULL, 'Benno Hermann Proter #4', 'Benno Hermann Proter', NULL, 0x00000000010700000001000000010200000003000000d0c5f04254891d419f98509e0629594121f6f81e02e64d41c6580124709d4c4121f6f81e02e64d41f66ee293bc9d4c41, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1940', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 1, 28, 1, '2020-03-15 17:28:21', '2020-03-25 10:26:11', 1, 0, NULL, NULL, 'Jakob Proter', NULL, 0x000000000107000000010000000101000000244b417878a02741202fdab34b355941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 1, 28, 1, '2020-03-15 17:30:02', '2020-03-25 10:36:21', 0, 0, NULL, 'Jakob Proter #2', 'Jakob Proter', NULL, 0x00000000010100000000000000000000000000000000000000, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1936', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 1, 29, 1, '2020-03-15 17:39:53', '2020-03-25 10:26:22', 1, 0, NULL, NULL, 'Joseph Proter', NULL, 0x000000000107000000010000000101000000e6945fa67ca0274128a897804c355941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 1, 29, 1, '2020-03-15 17:41:04', '2020-03-25 10:36:14', 1, 0, NULL, 'Joseph Proter #2', 'Joseph Proter', NULL, 0x00000000010700000001000000010200000003000000e6945fa67ca0274128a897804c3559416f541b126a4a2941950b3a520ca25641ab0c3e0ef85329410be0777273a15641, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 1, 29, 1, '2020-03-15 17:43:37', '2020-03-25 10:36:08', 1, 0, NULL, 'Joseph Proter #3', 'Joseph Proter', NULL, 0x00000000010700000001000000010200000002000000ab0c3e0ef8532941950b3a520ca25641ffdab0bb8be54d41b5a272a0899d4c41, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1942', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 1, 30, 1, '2020-03-15 17:46:41', '2020-03-25 10:26:40', 1, 0, NULL, NULL, 'Lejzor Lippa Proter', NULL, 0x0000000001070000000100000001010000003f975fa67ca02741e1a0181d4a355941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 1, 30, 1, '2020-03-15 17:48:34', '2020-03-25 10:36:01', 1, 0, NULL, 'Lejzor Lippa Proter #2', 'Lejzor Lippa Proter', NULL, 0x000000000107000000010000000102000000020000003f975fa67ca02741d5a997804c355941d87e329a63063b41040a2b194a1c5a41, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 1, 30, 1, '2020-03-15 17:51:34', '2020-03-25 10:35:55', 1, 0, NULL, 'Lejzor Lippa Proter #3', 'Lejzor Lippa Proter', NULL, 0x000000000107000000010000000102000000020000007a185aa97a083b41fc4f23355d1c5a41bd1ae2ec088f1d41b4b65f1401275941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 1, 31, 1, '2020-03-15 17:56:13', '2020-03-25 10:26:56', 1, 0, NULL, NULL, 'Rosa Proter', NULL, 0x000000000107000000010000000101000000454f678a69a02741ffa897804c355941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 1, 31, 1, '2020-03-15 17:57:34', '2020-03-25 10:35:49', 1, 0, NULL, 'Rosa Proter #2', 'Rosa Proter', NULL, 0x00000000010700000001000000010200000002000000454f678a69a02741819799b9473559413379da14547b1d41530d56f718275941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 1, 31, 1, '2020-03-15 18:00:04', '2020-03-25 10:35:44', 0, 0, NULL, 'Rosa Proter #3', 'Rosa Proter', NULL, 0x00000000010100000000000000000000000000000000000000, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1940', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 1, 31, 1, '2020-03-15 18:02:17', '2020-03-26 10:46:26', 1, 0, NULL, 'Rosa Proter #4', 'Rosa Proter', NULL, 0x000000000107000000010000000102000000020000002fc4ea6b6c911d4146bf6c541d285941d472b123bf4e4041517d8c38599d5841, NULL, 'Waypoints', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1942', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 1, 32, 1, '2020-03-15 18:04:41', '2020-03-25 10:27:44', 1, 0, NULL, NULL, 'Selma Proter', NULL, 0x00000000010700000001000000010100000037925fa67ca0274151a797804c355941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 1, 32, 1, '2020-03-15 18:06:35', '2020-03-25 10:35:30', 1, 0, NULL, 'Selma Proter #2', 'Selma Proter', NULL, 0x0000000001070000000100000001020000000200000037925fa67ca0274151a797804c3559419f5015581f871d419e141c49a8275941, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 1, 32, 1, '2020-03-15 18:08:16', '2020-03-25 10:35:24', 1, 0, NULL, 'Selma Proter #3', 'Selma Proter', NULL, 0x00000000010700000001000000010200000002000000675e2fd5498e1d4121a00c81ce27594177de2141ede64d41b9e8bf88ca9c4c41, NULL, 'Waypoints', 'StaticBubble', '#ff00cf', '#ff00cf', '#ff00cf', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1940', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 1, 33, 1, '2020-03-21 12:40:29', '2020-03-25 10:28:24', 1, 0, NULL, NULL, 'Dr. Kurt Wolff', NULL, 0x0000000001070000000100000001010000006e9d66a471b72741b8d8a3eaa63b5941, NULL, 'Waypoints', 'StaticBubble', '#00ffb7', '#00ffb7', '#00ffb7', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 1, 33, 1, '2020-03-21 12:46:32', '2020-03-26 10:46:37', 1, 0, NULL, 'Dr. Kurt Wolff #2', 'Dr. Kurt Wolff', NULL, 0x000000000107000000020000000102000000020000006e9d66a471b72741b8d8a3eaa63b5941d427b93a0f8c4041cadc7c7140c559410101000000b079b0bbab894041cadc7c7140c55941, NULL, 'Waypoints', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1941', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 1, 34, 1, '2020-03-21 12:57:25', '2020-03-25 10:28:38', 1, 0, NULL, NULL, 'Frida Markuse', NULL, 0x0000000001070000000100000001010000009592cc25c0b22741513a478c0f375941, NULL, 'Waypoints', 'StaticBubble', '#7b3f00', '#7b3f00', '#7b3f00', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 1, 34, 1, '2020-03-21 13:00:44', '2020-03-25 10:35:12', 1, 0, NULL, 'Frida Markuse #2', 'Frida Markuse', NULL, 0x00000000010700000001000000010200000002000000cf168c57c1b22741513a478c0f375941bb4bdafb4a841d41a41ca7f338275941, NULL, 'Waypoints', 'StaticBubble', '#7b3f00', '#7b3f00', '#7b3f00', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 1, 35, 1, '2020-03-21 13:03:30', '2020-03-25 10:28:49', 1, 0, NULL, NULL, 'Joseph Markuse', NULL, 0x000000000107000000010000000101000000cc894dc2bdb22741832a7fb20f375941, NULL, 'Waypoints', 'StaticBubble', '#7b3f00', '#7b3f00', '#7b3f00', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 1, 35, 1, '2020-03-21 13:05:39', '2020-03-26 10:46:06', 1, 0, NULL, 'Joseph Markuse #2', 'Joseph Markuse', NULL, 0x00000000010700000001000000010200000002000000cc894dc2bdb22741832a7fb20f375941c3b9e9c324841d41a41ca7f338275941, NULL, 'Waypoints', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 1, 36, 1, '2020-03-21 13:08:50', '2020-03-25 10:28:58', 1, 0, NULL, NULL, 'Herbert Markuse', NULL, 0x000000000107000000010000000101000000c5854dc2bdb22741832a7fb20f375941, NULL, 'Waypoints', 'StaticBubble', '#7b3f00', '#7b3f00', '#7b3f00', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 1, 36, 1, '2020-03-21 13:10:06', '2020-03-25 10:34:57', 1, 0, NULL, 'Herbert Markuse #2', 'Herbert Markuse', NULL, 0x00000000010700000002000000010200000002000000c5854dc2bdb22741832a7fb20f37594187365babf2e54d417909a96f979d4c41010100000087365babf2e54d4159c4b053849d4c41, NULL, 'Waypoints', 'StaticBubble', '#7b3f00', '#7b3f00', '#7b3f00', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 1, 37, 1, '2020-03-21 13:14:47', '2020-03-25 10:29:08', 1, 0, NULL, NULL, 'Inge Markuse', NULL, 0x000000000107000000010000000101000000c1834dc2bdb22741d022004f0d375941, NULL, 'Waypoints', 'StaticBubble', '#7b3f00', '#7b3f00', '#7b3f00', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 1, 37, 1, '2020-03-21 13:15:50', '2020-03-25 10:34:49', 1, 0, NULL, 'Inge Markuse #2', 'Inge Markuse', NULL, 0x00000000010700000001000000010200000002000000c1834dc2bdb22741592b7fb20f3759419d033611ef801d417553efa524275941, NULL, 'Waypoints', 'StaticBubble', '#7b3f00', '#7b3f00', '#7b3f00', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 1, 37, 1, '2020-03-21 13:17:45', '2020-03-26 10:46:17', 1, 0, NULL, 'Inge Markuse #3', 'Inge Markuse', NULL, 0x00000000010700000001000000010200000002000000e65f470fb6851d4122dedfdd4a2759415938a4e8dd554041a390e4a3c99c5841, NULL, 'Waypoints', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '1.00', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1942', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 1, 38, 1, '2020-03-21 13:29:59', '2020-03-25 10:29:25', 1, 0, NULL, NULL, 'Richard Lilienfeld', NULL, 0x0000000001070000000100000001010000006c91f6ab1c8f2741eb3bbfbc49365941, NULL, 'Waypoints', 'StaticBubble', '#808080', '#808080', '#808080', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 1, 38, 1, '2020-03-21 13:33:44', '2020-03-25 10:34:23', 1, 0, NULL, 'Richard Lilienfeld #2', 'Richard Lilienfeld', NULL, 0x00000000010700000001000000010200000002000000369a750f1f8f27417879df2349365941a2c841446fd1244128ea71fc43555841, NULL, 'Waypoints', 'StaticBubble', '#808080', '#808080', '#808080', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 1, 38, 1, '2020-03-21 13:36:30', '2020-03-25 10:34:01', 1, 0, NULL, 'Richard Lilienfeld #3', 'Richard Lilienfeld', NULL, 0x000000000107000000010000000102000000020000003953327c95d12441bde971fc435558418808a452a02c43416b15580ae86c5941, NULL, 'Waypoints', 'StaticBubble', '#808080', '#808080', '#808080', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 6, NULL, NULL, NULL, NULL, '1943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 1, 39, 1, '2020-03-21 18:42:17', '2020-03-26 08:48:21', 1, 0, NULL, 'Klara Landsberg #2', 'Klara Landesberg', NULL, 0x0000000001070000000200000001020000000200000009580642c0054e41c67883a2a58c4c4176c4002bb48e2741f2be60711e3659410101000000676b338779064e41b1304498058c4c41, NULL, 'Waypoints', 'StaticBubble', '#98af28', '#98af28', '#98af28', '#000000', '0.40', '1.00', '0.60', '1.00', 2, 5, NULL, NULL, '1934', '1938', '1934', NULL, NULL, NULL, NULL, NULL, NULL, 5, '3645723.4813994,4430228.0537068'),
(102, 1, 40, 1, '2020-03-21 18:30:22', '2020-03-25 10:29:43', 0, 0, NULL, NULL, 'Martha Landesberg', NULL, 0x00000000010100000000000000000000000000000000000000, NULL, NULL, 'StaticBubble', '#00aeff', '#00aeff', '#00aeff', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 1, 39, 1, '2020-03-21 18:41:17', '2020-03-25 10:29:51', 1, 0, NULL, NULL, 'Klara Landesberg', NULL, 0x00000000010700000001000000010100000094a6de8ab98e27411d1c118c1d365941, NULL, 'Waypoints', 'StaticBubble', '#98af28', '#98af28', '#98af28', '#000000', '0.40', '1.00', '0.00', '1.00', 2, 5, NULL, NULL, '1933', '1934', '1933', NULL, NULL, NULL, NULL, NULL, NULL, 16, '772283.60524645,6608808.7640308'),
(105, 1, 41, 1, '2020-03-25 12:40:04', '2020-03-25 00:52:12', 0, 0, NULL, NULL, 'Zehnte Verordnung zum Reichsbürgergesetz', NULL, 0x00000000010100000000000000000000000000000000000000, NULL, 'Simile', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '0.30', '0.40', '0.90', '1.00', 2, 10, NULL, NULL, '1939-07-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 1, 42, 1, '2020-03-25 12:53:15', '2020-03-25 01:01:10', 0, 0, NULL, 'Überfall der Wehrmacht auf Polen ', 'Überfall auf Polen ', NULL, 0x00000000010100000000000000000000000000000000000000, NULL, 'Simile', 'StaticBubble', '#181818', '#000000', '#000000', '#000000', '0.30', '0.40', '0.90', '1.00', 2, 10, NULL, NULL, '1939-09', NULL, '1939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 1, 43, 1, '2020-03-25 12:54:28', '2020-03-25 00:54:28', 0, 0, NULL, NULL, 'Beginn der systematischen Morde an Juden', NULL, 0x00000000010100000000000000000000000000000000000000, NULL, 'Simile', 'StaticBubble', '#030303', '#000000', '#000000', '#000000', '0.30', '0.40', '0.90', '1.00', 2, 10, NULL, NULL, '1941-06-22', NULL, '1941', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 1, 44, 1, '2020-03-25 13:03:06', '2020-03-26 11:27:27', 0, 0, NULL, 'Reichspogromnacht', 'Reichspogromnacht', NULL, 0x00000000010100000000000000000000000000000000000000, NULL, 'Simile', 'StaticBubble', '#000000', '#000000', '#000000', '#000000', '0.30', '0.40', '0.90', '1.00', 2, 10, NULL, NULL, '1938-11-09', NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 1, NULL, 1, '2020-03-26 08:46:05', '2020-03-26 09:20:16', 1, 0, NULL, 'Klara Landsberg #3', NULL, NULL, 0x00000000010700000004000000010200000002000000c9eab1d741064e415f90999dfa8d4c41021056ebb43a1141ea7b0d3f097756410101000000aa0e56ebb43a1141a77a0d3f0977564101020000000200000021bf864dbf851041001de65c818b56413b3aaeb78e4065c11afe2e00d47e524101010000002238aeb78e4065c11afe2e00d47e5241, NULL, NULL, 'StaticBubble', '#98af28', '#98af28', '#000000', '#000000', '0.30', '0.40', '0.90', '1.00', 2, 5, NULL, NULL, '1938', NULL, '1938', NULL, NULL, NULL, NULL, NULL, NULL, 5, '3821625.3870446,4986492.5553322');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_neatline_simile_exhibit_expansions`
--

CREATE TABLE `omeka_neatline_simile_exhibit_expansions` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `simile_default_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simile_interval_unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simile_interval_pixels` int(10) UNSIGNED DEFAULT NULL,
  `simile_tape_height` int(10) UNSIGNED DEFAULT NULL,
  `simile_track_height` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_neatline_simile_exhibit_expansions`
--

INSERT INTO `omeka_neatline_simile_exhibit_expansions` (`id`, `parent_id`, `simile_default_date`, `simile_interval_unit`, `simile_interval_pixels`, `simile_tape_height`, `simile_track_height`) VALUES
(1, 1, '1933', 'YEAR', 200, 5, 30);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_options`
--

CREATE TABLE `omeka_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_options`
--

INSERT INTO `omeka_options` (`id`, `name`, `value`) VALUES
(1, 'omeka_version', '2.7'),
(7, 'thumbnail_constraint', '200'),
(8, 'square_thumbnail_constraint', '200'),
(9, 'fullsize_constraint', '800'),
(10, 'per_page_admin', '10'),
(11, 'per_page_public', '10'),
(12, 'show_empty_elements', '0'),
(14, 'admin_theme', 'default'),
(16, 'file_extension_whitelist', 'aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,m4v,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg,opus,pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt,wav,wax,webm,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip'),
(17, 'file_mime_type_whitelist', 'application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-m4a,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/webm,video/x-m4v,video/x-ms-wmv,video/x-msvideo'),
(18, 'disable_default_file_validation', ''),
(20, 'display_system_info', '1'),
(21, 'html_purifier_is_enabled', '1'),
(22, 'html_purifier_allowed_html_elements', 'p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),
(23, 'html_purifier_allowed_html_attributes', '*.style,*.class,a.href,a.title,a.target'),
(26, 'search_record_types', 'a:3:{s:4:\"Item\";s:4:\"Item\";s:4:\"File\";s:4:\"File\";s:10:\"Collection\";s:10:\"Collection\";}'),
(27, 'api_enable', ''),
(28, 'api_per_page', '50'),
(29, 'show_element_set_headings', '1'),
(30, 'use_square_thumbnail', '1'),
(73, 'geolocation_default_latitude', '50.941357'),
(74, 'geolocation_default_longitude', '6.958307'),
(75, 'geolocation_default_zoom_level', '10'),
(76, 'geolocation_item_map_width', ''),
(77, 'geolocation_item_map_height', ''),
(78, 'geolocation_per_page', '10'),
(79, 'geolocation_add_map_to_contribution_form', '0'),
(80, 'geolocation_link_to_nav', '0'),
(81, 'geolocation_default_radius', '10'),
(82, 'geolocation_use_metric_distances', '1'),
(83, 'geolocation_basemap', 'OpenStreetMap'),
(84, 'geolocation_auto_fit_browse', '0'),
(85, 'geolocation_mapbox_access_token', ''),
(86, 'geolocation_mapbox_map_id', ''),
(87, 'geolocation_cluster', '1'),
(88, 'neatline_googlemaps_apikey', 'AIzaSyCv8E3xArbjyHzDf7fUD3vCGPQ2hq5le1Q'),
(90, 'public_theme', 'maps'),
(91, 'theme_maps_options', 'a:18:{s:10:\"text_color\";s:7:\"#444444\";s:16:\"background_color\";s:7:\"#FFFFFF\";s:10:\"link_color\";s:7:\"#888888\";s:12:\"button_color\";s:7:\"#000000\";s:17:\"button_text_color\";s:7:\"#FFFFFF\";s:18:\"header_title_color\";s:7:\"#000000\";s:4:\"logo\";N;s:17:\"header_background\";N;s:11:\"footer_text\";N;s:24:\"display_footer_copyright\";s:1:\"0\";s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:21:\"homepage_recent_items\";N;s:13:\"homepage_text\";N;s:17:\"item_file_gallery\";s:1:\"1\";s:19:\"use_advanced_search\";s:1:\"1\";s:17:\"theme_config_csrf\";N;}'),
(96, 'collection_tree_alpha_order', '1'),
(97, 'collection_tree_browse_only_root', '0'),
(98, 'collection_tree_show_subcollections', '0'),
(99, 'collection_tree_search_descendant', '0'),
(103, 'public_navigation_main', '[{\"uid\":\"\\/map\\/map\\/items\\/browse\",\"can_delete\":false,\"label\":\"Browse Items\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/map\\/map\\/items\\/browse\"},{\"uid\":\"\\/map\\/map\\/collections\\/browse\",\"can_delete\":false,\"label\":\"Browse Collections\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/map\\/map\\/collections\\/browse\"},{\"uid\":\"\\/map\\/map\\/start\",\"can_delete\":false,\"label\":\"Start\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":3,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/map\\/map\\/start\"},{\"uid\":\"\\/map\\/map\\/neatline\",\"can_delete\":false,\"label\":\"Neatline\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":4,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/map\\/map\\/neatline\"},{\"uid\":\"\\/map\\/map\\/geolocation\\/map\\/browse\",\"can_delete\":false,\"label\":\"Map\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":5,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/map\\/map\\/geolocation\\/map\\/browse\"},{\"uid\":\"\\/map\\/map\\/collection-tree\",\"can_delete\":false,\"label\":\"Collection Tree\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":6,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/map\\/map\\/collection-tree\"},{\"uid\":\"http:\\/\\/lennartkappes.de\\/map\\/map\\/neatline\\/show\\/neatline\",\"can_delete\":true,\"label\":\"Karte\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":7,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"http:\\/\\/lennartkappes.de\\/map\\/map\\/neatline\\/show\\/neatline\"}]'),
(104, 'homepage_uri', 'http://lennartkappes.de/map/map/neatline/show/neatline'),
(115, 'site_title', 'Auseinanderbrechen'),
(116, 'description', 'Eine Karte über die Flucht- und Deportierungswege jüdischer Familien aus Köln.'),
(117, 'administrator_email', 'lennartkappes@gmail.com'),
(118, 'copyright', ''),
(119, 'author', ''),
(120, 'tag_delimiter', ','),
(121, 'path_to_convert', '/usr/bin'),
(124, 'omeka_update', 'a:2:{s:14:\"latest_version\";s:6:\"2.7.1\n\";s:12:\"last_updated\";i:1585178850;}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_plugins`
--

CREATE TABLE `omeka_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_plugins`
--

INSERT INTO `omeka_plugins` (`id`, `name`, `active`, `version`) VALUES
(1, 'SimplePages', 1, '3.1.2'),
(2, 'Neatline', 1, '2.6.3'),
(3, 'Geolocation', 1, '3.0.1'),
(4, 'NeatlineWaypoints', 1, '2.0.2'),
(5, 'NeatlineSimile', 1, '2.0.4'),
(6, 'NeatlineText', 1, '1.1.0'),
(7, 'CollectionTree', 1, '2.1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_processes`
--

CREATE TABLE `omeka_processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('starting','in progress','completed','paused','error','stopped') COLLATE utf8_unicode_ci NOT NULL,
  `args` text COLLATE utf8_unicode_ci NOT NULL,
  `started` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `stopped` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_processes`
--

INSERT INTO `omeka_processes` (`id`, `class`, `user_id`, `pid`, `status`, `args`, `started`, `stopped`) VALUES
(1, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:209:\"{\"className\":\"Neatline_Job_ImportItems\",\"options\":{\"exhibit_id\":1,\"query\":{\"range\":\"\",\"collection\":\"\",\"type\":\"\",\"tags\":\"\",\"submit_search\":\"Import Items\"}},\"createdAt\":\"2019-12-15T16:39:45+01:00\",\"createdBy\":1}\";}', '2019-12-15 15:39:45', '2019-12-15 15:39:45'),
(2, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:209:\"{\"className\":\"Neatline_Job_ImportItems\",\"options\":{\"exhibit_id\":1,\"query\":{\"range\":\"\",\"collection\":\"\",\"type\":\"\",\"tags\":\"\",\"submit_search\":\"Import Items\"}},\"createdAt\":\"2019-12-15T16:40:05+01:00\",\"createdBy\":1}\";}', '2019-12-15 15:40:05', '2019-12-15 15:40:05'),
(3, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:224:\"{\"className\":\"Neatline_Job_ImportItems\",\"options\":{\"exhibit_id\":1,\"query\":{\"range\":\"\",\"collection\":\"\",\"type\":\"12\",\"tags\":\"Litzmannstadt\",\"submit_search\":\"Import Items\"}},\"createdAt\":\"2019-12-15T16:42:55+01:00\",\"createdBy\":1}\";}', '2019-12-15 15:42:55', '2019-12-15 15:42:55'),
(4, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:210:\"{\"className\":\"Neatline_Job_ImportItems\",\"options\":{\"exhibit_id\":1,\"query\":{\"range\":\"\",\"collection\":\"1\",\"type\":\"\",\"tags\":\"\",\"submit_search\":\"Import Items\"}},\"createdAt\":\"2019-12-18T11:01:29+01:00\",\"createdBy\":1}\";}', '2019-12-18 10:01:29', '2019-12-18 10:01:29'),
(5, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:211:\"{\"className\":\"Neatline_Job_ImportItems\",\"options\":{\"exhibit_id\":1,\"query\":{\"range\":\"\",\"collection\":\"16\",\"type\":\"\",\"tags\":\"\",\"submit_search\":\"Import Items\"}},\"createdAt\":\"2020-03-21T19:30:21+01:00\",\"createdBy\":1}\";}', '2020-03-21 18:30:21', '2020-03-21 18:30:22');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_records_tags`
--

CREATE TABLE `omeka_records_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_id` int(10) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_schema_migrations`
--

CREATE TABLE `omeka_schema_migrations` (
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_schema_migrations`
--

INSERT INTO `omeka_schema_migrations` (`version`) VALUES
('20100401000000'),
('20100810120000'),
('20110113000000'),
('20110124000001'),
('20110301103900'),
('20110328192100'),
('20110426181300'),
('20110601112200'),
('20110627223000'),
('20110824110000'),
('20120112100000'),
('20120220000000'),
('20120221000000'),
('20120224000000'),
('20120224000001'),
('20120402000000'),
('20120516000000'),
('20120612112000'),
('20120623095000'),
('20120710000000'),
('20120723000000'),
('20120808000000'),
('20120808000001'),
('20120813000000'),
('20120914000000'),
('20121007000000'),
('20121015000000'),
('20121015000001'),
('20121018000001'),
('20121110000000'),
('20121218000000'),
('20130422000000'),
('20130426000000'),
('20130429000000'),
('20130701000000'),
('20130809000000'),
('20140304131700'),
('20150211000000'),
('20150310141100'),
('20150814155100'),
('20151118214800'),
('20151209103299'),
('20151209103300'),
('20161209171900'),
('20170331084000'),
('20170405125800');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_search_texts`
--

CREATE TABLE `omeka_search_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_search_texts`
--

INSERT INTO `omeka_search_texts` (`id`, `record_type`, `record_id`, `public`, `title`, `text`) VALUES
(1, 'SimplePagesPage', 1, 1, 'Projekt', 'Projekt <h2>Rahmen</h2>\n<p>Das Projekt <em>Ausbrechen</em> zeigt Flucht- und Deportierungswege jüdischer Familien aus Köln während der NS-Zeit und entstand im Rahmen des Seminars Modellierung und digitale Karten bei <em>Prof. Dr. Øyvind Eide</em> an der Universität zu Köln.</p>\n<h2>Datenerhebung</h2>\n<p>Die Daten entstammen aus</p>\n<ul><li>der Stolperstein-Datenbank des NS-Dokumentationszentrum in Köln</li>\n<li>dem Buch <em>Deportiert ins Ghetto</em> von <em>Karola Frings</em> und <em>Hildegard Jakobs </em></li>\n<li>dem Buch <em>Vom Rhein nach Riga</em> von<em> Lilly Menczel</em></li>\n</ul><p>Das Projekt zeig nur eine Auswahl der möglichen Daten, die natürlich keinerlei Wertung beinhaltet.</p>\n<h2>Team</h2>\n<ul><li>Jens Lennart Kappes</li>\n<li>Patrick Dangel</li>\n<li>Jonas Lindemann</li>\n<li>Julian Wagner</li>\n</ul> '),
(2, 'NeatlineExhibit', 1, 1, 'Verfolgung von Juden aus Köln während der NS-Zeit', 'Verfolgung von Juden aus Köln während der NS-Zeit  '),
(15, 'NeatlineRecord', 7, 1, 'Rosa Benedik', 'Rosa Benedik  '),
(11, 'Item', 3, 1, 'Salomon Benedik', 'Salomon Benedik Salomon Benedik siedelte 1904 mit seiner Familie aus Polen nach Köln-Mülheim über.\r\n1935 emigrierte er gemeinsam mit seiner Frau Rosa nach Palästina. '),
(14, 'Item', 4, 1, 'Rosa Benedik', 'Rosa Benedik Rosa Benedik siedelte 1904 mit ihrer Familie aus Polen nach Köln-Mülheim über.\r\n1935 emigrierte sie gemeinsam mit ihrem Mann Benedik nach Palästina. '),
(10, 'Collection', 3, 1, 'Familie Benedik', 'Familie Benedik '),
(17, 'Item', 5, 1, 'Fajga Fanny Michel (geb. Benedik)', 'Fajga Fanny Michel (geb. Benedik) Fajga Fanny Michel war die Tochter von Salomon und Rosa Benedik. Kurz nach ihrer Geburt übersiedelte die Familie aus Polen nach Köln-Mülheim.\r\nFajga Benedik emigrierte 1938 in die Niederlande und heiratete dort Berthold Michel. Seit August 1938 lebten sie in Amsterdam. Am 20. Juli 1943 wurden Fajga und Berthold Michel in das Vernichtungslager Sobibor deportiert. Dort starben sie am 23. Juli 1943. '),
(12, 'NeatlineRecord', 6, 1, 'Salomon Benedik #2', 'Salomon Benedik #2  '),
(16, 'NeatlineRecord', 8, 1, 'Rosa Benedik #2', 'Rosa Benedik #2  '),
(22, 'Collection', 4, 1, 'Familie Kempler', 'Familie Kempler '),
(21, 'NeatlineRecord', 12, 1, 'Fajga Fanny Michel (geb. Benedik) #3', 'Fajga Fanny Michel (geb. Benedik) #3  '),
(18, 'NeatlineRecord', 9, 1, 'Fajga Fanny Michel (geb. Benedik)', 'Fajga Fanny Michel (geb. Benedik)  '),
(20, 'NeatlineRecord', 11, 1, 'Fajga Fanny Michel (geb. Benedik) #2', 'Fajga Fanny Michel (geb. Benedik) #2  '),
(23, 'Item', 6, 1, 'Frieda Kempler', 'Frieda Kempler Frieda Kempler war das ältestes Kind des Glasers Josef Kempler und seiner Ehefrau Johanna. Während ihre Familie aus dem Deutschen Reich ausgewiesen wurde, emigrierte Frieda Kempler 1939 nach Antwerpen. Nach der Besetzung Belgiens durch die Wehrmacht flüchtete sie 1940 nach Frankreich und lebte versteckt. Im August 1944 wurde sie entdeckt, verhaftet und zur Zwangsarbeit verpflichtet. Im Januar 1945 wurde sie ins Ghetto Theresienstadt verschleppt, wo sie 8. Mai 1945 von der Roten Armee befreit wurde. Nach dem Ende des Zweiten Weltkrieges verließ sie Deutschland und ging in die Vereinigten Staaten. '),
(24, 'NeatlineRecord', 13, 1, 'Frieda Kempler', 'Frieda Kempler  '),
(25, 'NeatlineRecord', 14, 1, 'Frieda Kempler #2', 'Frieda Kempler #2  '),
(26, 'NeatlineRecord', 15, 1, 'Frieda Kempler #3', 'Frieda Kempler #3  '),
(27, 'NeatlineRecord', 16, 1, 'Frieda Kempler #4', 'Frieda Kempler #4  '),
(28, 'Collection', 5, 1, 'Ereignisse Judenverfolgung', 'Ereignisse Judenverfolgung Die bedeutendsten Ereignisse im Rahmen der Judenverfolgung von 1933 - 1945 '),
(29, 'Item', 7, 1, 'Machtergreifung der Nationalsozialisten', 'Machtergreifung der Nationalsozialisten 30. Januar 1933 '),
(30, 'NeatlineRecord', 17, 1, 'Machtergreifung Nationalsozialisten', 'Machtergreifung Nationalsozialisten  '),
(31, 'Item', 8, 1, 'Erste Verordnung zum Reichsbürgergesetz', 'Erste Verordnung zum Reichsbürgergesetz In der Ersten Verordnung zum Reichsbürgergesetz (Text siehe Weblink) wird allen deutschblütigen Staatsangehörigen bis zu einer angekündigten endgültigen Regelung – zu der es niemals kam – eine vorläufige Reichsbürgerschaft zuerkannt. Auch „jüdischen Mischlingen“ wurden vorerst die politischen Rechte als Reichsbürger eingeräumt. 14. November 1935 '),
(32, 'Item', 9, 1, 'Zweite Verordnung zum Reichsbürgergesetz', 'Zweite Verordnung zum Reichsbürgergesetz Die Zweite Verordnung stellt in erster Linie eine Konkretisierung des § 4 der Ersten Verordnung dar. Neu ist, dass § 4 Abs. 1 der Ersten Verordnung auch für die Stellung als leitender Arzt an öffentlichen sowie freien gemeinnützigen Krankenanstalten und als Vertrauensarzt galt. Sie traten zum 31. Dezember 1936 in den Ruhestand. 21. Dezember 1935 '),
(33, 'Item', 10, 1, 'Dritte Verordnung zum Reichsbürgergesetz', 'Dritte Verordnung zum Reichsbürgergesetz In einer „Dritten Verordnung zum Reichsbürgergesetz“ wurde definiert, welche Gewerbebetriebe als „jüdisch“ zu gelten hatten. Diese sollten in ein gesondertes Verzeichnis eingetragen werden, das der Öffentlichkeit zugänglich war. Der Reichswirtschaftsminister wurde zu einer Regelung im Einvernehmen mit dem Reichsminister des Innern und dem Stellvertreter des Führers ermächtigt, dass Betriebe von „einem noch zu bestimmenden Zeitpunkt ab“ ein besonderes Kennzeichen führen mussten. 14. Juni 1938 '),
(34, 'NeatlineRecord', 18, 1, 'Erste Verordnung zum Reichsbürgergesetz', 'Erste Verordnung zum Reichsbürgergesetz  '),
(35, 'Collection', 6, 1, 'Familie Frankenstein', 'Familie Frankenstein '),
(36, 'Item', 11, 1, 'Joachim Frankenstein', 'Joachim Frankenstein Joachim Kurt Frankenstein wurde am 26. September 1914 in Köln als ältester Sohn des Arztes Kurt Frankenstein und seiner Frau Susanne (geb. Edel) geboren.\r\n\r\nEr studierte Anfang der 1930er Jahre Ingenieurswesen. Im Juli 1938 heiratete er in München Susi Helene Hedwig Ehrenberg. Mitte März 1939 flüchtete das Ehepaar zunächst nach England und kurze Zeit später nach Edinburgh. Am 22. Februar 1940 reisten sie mit dem Passagierschiff RMS Scythia von Liverpool nach New York. '),
(37, 'Item', 12, 1, 'Kurt Frankenstein', 'Kurt Frankenstein Kurt Frankenstein wurde am 17. Oktober 1877 als jüngstes von drei Kindern des aus Landeshut stammenden Louis Frankenstein und seiner Frau Hulda geboren. Nach dem Studium der Medizin promovierte er 1900 über ein gynäkologisches Thema. 1907 erhielt er eine Anstellung als Leiter der Gynäkologischen Klinik in Köln-Kalk. Im Ersten Weltkrieg wurde Kurt Frankenstein zum Militärdienst eingezogen.\r\n\r\nZwei Monate nach der Machtergreifung der Nationalsozialisten wurde Kurt Frankenstein von der Klinikleitung aufgefordert, seine Entlassung einzureichen. Trotz der Erwiderung Frankensteins, dass er evangelisch getauft ist, militärische Auszeichnungen im Ersten Weltkrieg erhalten hat und in einer Einrichtung der evangelischen Kirche beschäftigt ist, so dass die Bestimmungen des am 7. April 1933 erlassenen Gesetzes zur Wiederherstellung des Berufsbeamtentums nicht auf ihn angewendet werden können, wurde er entlassen. Bis zu seinem Tod praktizierte er in seinem Wohnhaus, im Kaiser-Wilhelm-Ring 24, weiter. Seit 1912 war Kurt Frankenstein aktives Mitglied der Schlaraffia. 1933 wurde der Oberschlaraffe Kurt Frankenstein wie alle nicht arischen Mitglieder aus der Schlaraffia ausgeschlossen. Am 16. Mai 1937 starb Kurt Frankenstein in Bonn und wurde auf dem Kölner Westfriedhof bestattet. '),
(38, 'Item', 13, 1, 'Maria Frankenstein', 'Maria Frankenstein Johanna Maria Susanne Frankenstein wurde am 15. März 1919 als jüngste Tochter des Gynäkologen Kurt Frankenstein und seiner Frau Susanne in Köln geboren. Nach dem Tod ihres Vaters 1937 musste die Familie in eine kleinere Wohnung in die Machabäerstraße umziehen. Kurz vor dem Ausbruch des Zweiten Weltkrieges gelang ihr die Flucht nach Großbritannien, während ihre Mutter in Köln zurückblieb und 1942 ins Ghetto Theresienstadt deportiert wurde. '),
(39, 'Item', 14, 1, 'Susanne Frankenstein', 'Susanne Frankenstein Susanne (Susanna) Margarete Edel wurde am 16. Februar 1884 in Berlin als ältestes Kind des Arztes Alexander Edel und seiner Frau Anna (geb. Straßmann). Anna Straßmann stammte ebenfalls aus einer bekannten Berliner Arztfamilie. Zu Susanne Edels Onkel zählten der Rechtsmediziner Fritz Straßmann und der Internist Albert Fraenkel.\r\n\r\nIm Oktober 1913 heiratete sie den Chefarzt der Gynäkologischen Klinik in Köln-Kalk, Kurt Frankenstein. 1914 wurde Sohn Joachim Kurt, 1919 Tochter Johanna Maria Susanne geboren. Zwei Monate nach der Machtergreifung der Nationalsozialisten verlor ihr Mann die Anstellung als Chefarzt des evangelischen Krankenhauses in Kalk. Im Wohnhaus der Familie führte er bis zu seinem Tod 1937 eine Privatpraxis. Kurz vor dem Ausbruch des Zweiten Weltkrieges flüchteten ihre Kinder nach Amerika bzw. England. Susanne Frankenstein blieb in Köln zurück und musste nach dem Tod ihres Mannes in eine kleinere Wohnung in der Machabäerstraße umziehen, wo ihr Freunde bis zu ihrer Einweisung in das Sammellager der Kölner Juden im Fort V in Müngersdorf halfen, zu überleben. Vom 30. September bis 5. Oktober 1939 wurde Susanne Frankenstein von der Gestapo inhaftiert. Am 15. Juni 1942 wurde sie mit dem III. Kölner Transport in das Ghetto Theresienstadt verschleppt, wo sie am 21. März 1943 verstarb. '),
(40, 'NeatlineRecord', 19, 1, 'Joachim Frankenstein', 'Joachim Frankenstein  '),
(41, 'NeatlineRecord', 20, 1, 'Joachim Frankenstein #2', 'Joachim Frankenstein #2  '),
(42, 'NeatlineRecord', 21, 1, 'Joachim Frankenstein #3', 'Joachim Frankenstein #3  '),
(43, 'NeatlineRecord', 22, 1, 'Joachim Frankenstein #4', 'Joachim Frankenstein #4  '),
(44, 'NeatlineRecord', 23, 1, 'Kurt Frankenstein', 'Kurt Frankenstein  '),
(45, 'NeatlineRecord', 24, 1, 'Maria Frankenstein', 'Maria Frankenstein  '),
(46, 'NeatlineRecord', 25, 1, 'Maria Frankenstein #2', 'Maria Frankenstein #2  '),
(47, 'NeatlineRecord', 26, 1, 'Susanne Frankenstein', 'Susanne Frankenstein  '),
(48, 'NeatlineRecord', 27, 1, 'Susanne Frankenstein #2', 'Susanne Frankenstein #2  '),
(49, 'Item', 15, 1, 'Arthur Berger', 'Arthur Berger Arthur Berger wurde als jüngste Kind der jüdischen Malers Julius Berger und seiner Ehefrau Josefine Eggener in Niederzissen geboren. Arthur Berger hatte zwei ältere Zwillingsschwestern, Sophia und Selma. Als Arthur Berger vier Jahre alt war fiel sein Vater im April 1918 als Angehöriger des 6. Rheinischen Infanterie-Regiment Nr. 68 in der Schlacht von Armentières.\r\n\r\nArthur Berger arbeite als Schlosser. Er war mit Cäcilie Zerline Oppenheimer verheiratet. Die am 23. Januar 1940 geborene Tochter Bela Judis Berger starb am 14. Februar 1940, seine Frau verstarb 5 Tage später im Jüdischen Krankenhaus in Köln-Ehrenfeld.\r\n\r\nArthur Berger wurde am 22. Oktober 1941, gemeinsam mit seiner Mutter Josefine von Köln in das Ghetto Litzmannstadt deportiert. Im gleichen Deportationszug befanden sich auch seine Schwester Selma Hellbrunn, geb. Berger sowie die gesamte Familie seiner Schwester Sophia.\r\n\r\nEntgegen den Angaben im Gedenkbuch für die Opfer der Verfolgung der Juden unter der nationalsozialistischen Gewaltherrschaft in Deutschland 1933–1945 wurde Arthur Berger 1942 nicht im Vernichtungslager Kulmhof ermordet.\r\n\r\nEr wurde am 26. August 1943 ins Konzentrationslager Auschwitz verschleppt. Nach der Räumung des Konzentrationslagers wurde er auf einen Todesmarsch in Richtung Oberösterreich geschickt. Hier war er ab am 25. Januar 1945 im Konzentrationslager Mauthausen inhaftiert und musste als Schlosser in den Sauererwerken Zwangsarbeit leisten. Hier verliert sich seine Spur. Erst nach Kriegsende konnte sein Schicksal geklärt werden. Er starb im Konzentrationslager Gusen und wurde auf dem dortigen Friedhof begraben. '),
(50, 'Collection', 7, 1, 'Familie Berger', 'Familie Berger '),
(51, 'NeatlineRecord', 28, 1, 'Arthur Berger', 'Arthur Berger  '),
(52, 'NeatlineRecord', 29, 1, 'Arthur Berger #2', 'Arthur Berger #2  '),
(53, 'NeatlineRecord', 30, 1, 'Arthur Berger #3', 'Arthur Berger #3  '),
(54, 'NeatlineRecord', 31, 1, 'Arthur Berger #4', 'Arthur Berger #4  '),
(55, 'Item', 16, 1, 'Fanny Englard', 'Fanny Englard Fanny Englard wurde auf Initiative des jüdischen Jugendamts 1940 von Köln nach Hamburg geschickt, um von dort nach Palästina auszuwandern. Am 04.12.1941 wurde sie jedoch von Hamburg nach Riga deportiert. Weitere Stationen von ihr sind das KZ Kaiserwald und Stutthof bei Danzig. Zum Kriegsende befindet sie sich bei Lauenburg, nachdem sie durch die Flucht vor der roten Armee dorthin getrieben wurde. Nach dem Krieg ging Fanny Englard nach Israel, in die Nähe von Tel Aviv. '),
(56, 'Collection', 8, 1, 'Familie Englard', 'Familie Englard '),
(57, 'Item', 17, 1, 'Leo Englard', 'Leo Englard Leo Englard blieb mit seinem Bruder Isi in Köln, während seine Schwester Fanny Englard nach Hamburg ging, Am 24.07.1942 wurden Leo und Isi nach Minsk deportiert. Nur vier Tage später wurden beide im Wald von Blagowschtschina bei Trostenez erschossen. '),
(58, 'Item', 18, 1, 'Isi Englard', 'Isi Englard Isi Englard blieb mit seinem Bruder Leo in Köln, während seine Schwester Fanny Englard nach Hamburg ging, Am 24.07.1942 wurden Isi und Leo nach Minsk deportiert. Nur vier Tage später wurden beide im Wald von Blagowschtschina bei Trostenez erschossen. '),
(59, 'Item', 19, 1, 'Lotte Blumgardt', 'Lotte Blumgardt Lotte Blumgardt (geb. Wertheim) war mit Erich Blumgardt verheiratet, die beide in Köln geboren wurden. Zusammen mit Erichs Eltern wurden sie am 22.10.1941 ins Ghetto Łódź deportiert. Lotte kam im August 1944 nach Auschwitz und von dort ins KZ Stutthof. Dort ist sie am 26.11.1944 verstorben. '),
(60, 'Collection', 9, 1, 'Familie Herz', 'Familie Herz '),
(61, 'Item', 20, 1, 'Martin Herz', 'Martin Herz Martin Herz wurde am 30.10.1941 von Köln ins Ghetto Łódź deportiert. Ab 1942 wurde er am Bahnhof Radegast als Arbeiter eingesetzt, ehe er Ende Oktober 1944 ins KZ Buchenwald verlegt wurde. Hier leistete er Arbeit im Außenlager Meuselwitz, wo er 1945 schließlich befreit wurde. Sein weiterer Aufenthalt ist unbekannt. '),
(62, 'Item', 21, 1, 'Julie Herz', 'Julie Herz Julie Herz ist die Schwester von Martin Herz und wurde acht Tage vor ihrem Bruder in das Ghetto Łódź deportiert. Im Mai 1942 kam sie in das Vernichtungslager Kulmhof, in dem sie kurze Zeit später ermordet wurde.  '),
(63, 'Item', 22, 1, 'Erwin Moses', 'Erwin Moses Erwin Moses wurde am 30.10.1941 vom Bahnhof Deutz-Tief in Köln nach Łódź deportiert. Sein Vater Max Moses, der mit ihm deportiert wurde, verstarb am 21.05.1942 im Ghetto. Erwin selbst wurde am 10.Juli 1944 nach Kulmhof gebracht und dort kurze Zeit später ermordet. '),
(64, 'Collection', 10, 1, 'Familie Salmony', 'Familie Salmony '),
(65, 'Item', 23, 1, 'Thekla Salmony', 'Thekla Salmony Thekla Salmony (geb. Rosenthal) hat mit ihrem Mann Alfred und ihrem Sohn Hansjörg in der Wichterichstraße 59  in Köln gewohnt. Während ihrem Sohn die Flucht gelang, wurden Thekla und Alfred am 30.10.1941 nach Łódź deportiert. Ihr Mann Alfred verstarb dort am 11. August 1942. Thekla erlag knapp zwei Jahre später ebenfalls im Ghetto am 27. April 1944.  '),
(66, 'Item', 24, 1, 'Alfred Salmony', 'Alfred Salmony Alfred Salmony hat mit seiner Ehefrau Thekla und seinem Sohn Hansjörg in der Wichterichstraße 59  in Köln gewohnt. Thekla und Alfred wurden am 30.10.1941 nach Łódź deportiert. Alfred verstarb vor seiner Ehefrau im Ghetto 11. August 1942. '),
(67, 'Item', 25, 1, 'Hansjörg Salmony', 'Hansjörg Salmony Hansjörg Alfred Salmony (* 16. Februar 1920 in Köln; † 17. Februar 1991 in Basel) war ein deutscher Philosoph und Professor für Philosophie an der Universität Basel.\r\n\r\nHansjörg Salmony entstammte einer deutsch-jüdischen Familie und emigrierte 1938 zunächst nach Belgien, dann nach Frankreich, wo er im Lager von Saint-Cyprien interniert wurde, jedoch ausbrechen und in die Schweiz fliehen konnte. Dort immatrikulierte er sich 1942 an der Universität Basel, wurde 1948 von Herman Schmalenbach mit einer Arbeit zu Johann Gottfried Herder promoviert und habilitierte sich 1958 mit einer Arbeit zu Johann Georg Hamann. Von 1956 bis 1961 war er Assistent von Karl Jaspers in Basel und wurde 1961 als Nachfolger von Heinrich Barth dort Professor. Er lehrte bis 1988 und war akademischer Lehrer u. a. von Hans Saner, Anton Hügli und Andreas Cesana.\r\n\r\nSeine Hauptarbeitsgebiete waren klassische Autoren der Philosophie, insbesondere Immanuel Kant, sowie Fragen einer philosophischen Anthropologie mit pessimistischer Ausrichtung. '),
(68, 'NeatlineRecord', 33, 1, 'Fanny Englard #2', 'Fanny Englard #2  '),
(69, 'NeatlineRecord', 34, 1, 'Fanny Englard #3', 'Fanny Englard #3  '),
(70, 'NeatlineRecord', 35, 1, 'Fanny Englard #4', 'Fanny Englard #4  '),
(71, 'NeatlineRecord', 36, 1, 'Leo Englard', 'Leo Englard  '),
(72, 'NeatlineRecord', 37, 1, 'Leo Englard #2', 'Leo Englard #2  '),
(73, 'NeatlineRecord', 38, 1, 'Leo Englard #3', 'Leo Englard #3  '),
(74, 'NeatlineRecord', 39, 1, 'Isi Englard', 'Isi Englard  '),
(75, 'NeatlineRecord', 40, 1, 'Isi Englard #2', 'Isi Englard #2  '),
(76, 'NeatlineRecord', 41, 1, 'Isi Englard #3', 'Isi Englard #3  '),
(77, 'Item', 26, 1, 'Lilly Menczel', 'Lilly Menczel Lilly Menczel ist am 09.07.1925 in Köln geboren und war mit ihrer Familie in der Formesstraße 56 in Köln-Mühlheim wohnhaft. \r\n1939 kam der Befehl von der SS, dass sich alle Juden im Stadtzentrum einfinden sollen und von dort wurden sie in kleine Wohnungen eingeteilt. Die Familie Menczel kam hierbei in die Rubensstraße.\r\n\r\nAm 07.12.1941 wurden die Familien aufgefordert sich am Bahnhof Deutz einzufinden, um von dort drei Tage später am Bahnhof Skirotawa einzutreffen. Von dort ging es im Anschluss weiter ins das Rigaer Ghetto.\r\n\r\nIhre Großeltern wurdem am 16.06.1942 ins Ghetto Theresienstadt deportiert, dort starben Adolf und Josefine Simons kurze Zeit später, da sie nichts nichtkoscheres Essen wollten.\r\n\r\nIm November 1943 wurde das Ghetto in Riga aufgelöst und sie kam mit ihrem Vater in das KZ Kaiserwald, das in einem Vorort Rigas gelegen war.\r\nAnfang August 1944 wurden die Gefangenen mit einem Schiff bei einer dreitägigen Reise in das KZ Stutthof gebracht, da die Russen nun immer näher kamen.\r\n\r\nIhr Vater wurde ebenfalls in das KZ Stutthof verschleppt, doch bereits kurze Zeit später ins KZ Buchenwald transportiert, wo er am 26.02.1945 schließlich verstarb.\r\n\r\nAm 21. Januar 1945 flohen die Deutschen vor den Russen und ließen die Juden hierbei zurück, obwohl sie ursprünglich den Befehl erhalten hatten, alle Juden vor Ort umzubringen. Dies war der Tag ab dem die Gefangenen endlich frei waren.\r\n\r\nNach Kriegsende für Lilly Menczel zunächst nach Berlin zurück, um zu sehen, wer von ihren Verwandten überlebt hatte. Zudem wollte sie wissen, was von ihrem Haus noch übrig ist und welcher Besitz zurückgeblieben ist. '),
(78, 'NeatlineRecord', 43, 1, 'Lilly Menczel #2', 'Lilly Menczel #2  '),
(79, 'NeatlineRecord', 44, 1, 'Lilly Menczel #3', 'Lilly Menczel #3  '),
(80, 'NeatlineRecord', 45, 1, 'Lilly Menczel #4', 'Lilly Menczel #4  '),
(81, 'NeatlineRecord', 46, 1, 'Lilly Menczel #5', 'Lilly Menczel #5  '),
(82, 'NeatlineRecord', 47, 1, 'Lilly Menczel #6', 'Lilly Menczel #6  '),
(83, 'NeatlineRecord', 48, 1, 'Lotte Blumgardt', 'Lotte Blumgardt  '),
(84, 'NeatlineRecord', 49, 1, 'Lotte Blumgardt #2', 'Lotte Blumgardt #2  '),
(85, 'NeatlineRecord', 50, 1, 'Lotte Blumgardt #3', 'Lotte Blumgardt #3  '),
(86, 'NeatlineRecord', 51, 1, 'Lotte Blumgardt #4', 'Lotte Blumgardt #4  '),
(87, 'NeatlineRecord', 52, 1, 'Martin Herz', 'Martin Herz  '),
(88, 'NeatlineRecord', 53, 1, 'Martin Herz #2', 'Martin Herz #2  '),
(89, 'NeatlineRecord', 54, 1, 'Martin Herz #3', 'Martin Herz #3  '),
(90, 'NeatlineRecord', 55, 1, 'Julie Herz', 'Julie Herz  '),
(91, 'NeatlineRecord', 56, 1, 'Julie Herz #2', 'Julie Herz #2  '),
(92, 'NeatlineRecord', 57, 1, 'Julie Herz #3', 'Julie Herz #3  '),
(93, 'NeatlineRecord', 58, 1, 'Erwin Moses', 'Erwin Moses  '),
(94, 'NeatlineRecord', 59, 1, 'Erwin Moses #2', 'Erwin Moses #2  '),
(95, 'NeatlineRecord', 60, 1, 'Erwin Moses #3', 'Erwin Moses #3  '),
(96, 'NeatlineRecord', 61, 1, 'Thekla Salmony', 'Thekla Salmony  '),
(97, 'NeatlineRecord', 62, 1, 'Thekla Salmony #2', 'Thekla Salmony #2  '),
(98, 'NeatlineRecord', 63, 1, 'Alfred Salmony', 'Alfred Salmony  '),
(99, 'NeatlineRecord', 64, 1, 'Alfred Salmony #2', 'Alfred Salmony #2  '),
(100, 'NeatlineRecord', 66, 1, 'Hansjörg Salmony #2', 'Hansjörg Salmony #2  '),
(101, 'NeatlineRecord', 67, 1, 'Hansjörg Salmony #3', 'Hansjörg Salmony #3  '),
(102, 'Collection', 11, 1, 'Familie Proter', 'Familie Proter '),
(103, 'Item', 27, 1, 'Benno Hermann Proter', 'Benno Hermann Proter '),
(104, 'Item', 28, 1, 'Jakob Proter', 'Jakob Proter '),
(105, 'Item', 29, 1, 'Joseph Proter', 'Joseph Proter '),
(106, 'Item', 30, 1, 'Lejzor Lippa Proter', 'Lejzor Lippa Proter '),
(107, 'Item', 31, 1, 'Rosa Proter', 'Rosa Proter '),
(108, 'Item', 32, 1, 'Selma Proter', 'Selma Proter '),
(109, 'NeatlineRecord', 69, 1, 'Benno Hermann Proter #2', 'Benno Hermann Proter #2  '),
(110, 'NeatlineRecord', 70, 1, 'Benno Hermann Proter #3', 'Benno Hermann Proter #3  '),
(111, 'NeatlineRecord', 71, 1, 'Benno Hermann Proter #4', 'Benno Hermann Proter #4  '),
(112, 'NeatlineRecord', 73, 1, 'Jakob Proter #2', 'Jakob Proter #2  '),
(113, 'NeatlineRecord', 75, 1, 'Joseph Proter #2', 'Joseph Proter #2  '),
(114, 'NeatlineRecord', 76, 1, 'Joseph Proter #3', 'Joseph Proter #3  '),
(115, 'NeatlineRecord', 78, 1, 'Lejzor Lippa Proter #2', 'Lejzor Lippa Proter #2  '),
(116, 'NeatlineRecord', 79, 1, 'Lejzor Lippa Proter #3', 'Lejzor Lippa Proter #3  '),
(117, 'NeatlineRecord', 81, 1, 'Rosa Proter #2', 'Rosa Proter #2  '),
(118, 'NeatlineRecord', 82, 1, 'Rosa Proter #3', 'Rosa Proter #3  '),
(119, 'NeatlineRecord', 83, 1, 'Rosa Proter #4', 'Rosa Proter #4  '),
(120, 'NeatlineRecord', 85, 1, 'Selma Proter #2', 'Selma Proter #2  '),
(121, 'NeatlineRecord', 86, 1, 'Selma Proter #3', 'Selma Proter #3  '),
(122, 'Collection', 12, 1, 'Familie Wolff', 'Familie Wolff '),
(123, 'Item', 33, 1, 'Dr. Kurt Wolff', 'Dr. Kurt Wolff Nach Informationen, die zum Zeitpunkt der Verlegung nicht vorlagen, wurde Kurt Wolff im Sommer 1944 von Litzmannstadt nach Auschwitz verschleppt, wo er aller Wahrscheinlichkeit nach ermordet wurde. '),
(124, 'NeatlineRecord', 88, 1, 'Dr. Kurt Wolff #2', 'Dr. Kurt Wolff #2  '),
(125, 'Collection', 13, 1, 'Familie Markuse', 'Familie Markuse '),
(126, 'Item', 34, 1, 'Frida Markuse', 'Frida Markuse '),
(127, 'Item', 35, 1, 'Joseph Markuse', 'Joseph Markuse '),
(128, 'Item', 36, 1, 'Herbert Markuse', 'Herbert Markuse '),
(129, 'Item', 37, 1, 'Inge Markuse', 'Inge Markuse '),
(130, 'NeatlineRecord', 90, 1, 'Frida Markuse #2', 'Frida Markuse #2  '),
(131, 'NeatlineRecord', 92, 1, 'Joseph Markuse #2', 'Joseph Markuse #2  '),
(132, 'NeatlineRecord', 94, 1, 'Herbert Markuse #2', 'Herbert Markuse #2  '),
(133, 'NeatlineRecord', 96, 1, 'Inge Markuse #2', 'Inge Markuse #2  '),
(134, 'NeatlineRecord', 97, 1, 'Inge Markuse #3', 'Inge Markuse #3  '),
(135, 'Collection', 14, 1, 'Familie Lilienfeld', 'Familie Lilienfeld '),
(136, 'Item', 38, 1, 'Richard Lilienfeld', 'Richard Lilienfeld '),
(137, 'NeatlineRecord', 99, 1, 'Richard Lilienfeld #2', 'Richard Lilienfeld #2  '),
(138, 'NeatlineRecord', 100, 1, 'Richard Lilienfeld #3', 'Richard Lilienfeld #3  '),
(141, 'Item', 39, 1, 'Klara Landesberg', 'Klara Landesberg '),
(140, 'Collection', 16, 1, 'Familie Landesberg', 'Familie Landesberg '),
(142, 'Item', 40, 1, 'Martha Landesberg', 'Martha Landesberg '),
(145, 'Item', 41, 1, 'Zehnte Verordnung zum Reichsbürgergesetz', 'Zehnte Verordnung zum Reichsbürgergesetz Einschneidende Veränderung brachte die „Zehnte Verordnung zum Reichsbürgergesetz“. Sie begründete die Zwangsmitgliedschaft in der „Reichsvereinigung der Juden in Deutschland“, die als verlängerter Arm des Reichssicherheitshauptamtes (RSHA) wirkte und später bei der Durchführung der Deportationen eine unrühmliche Helferrolle spielte.\r\n\r\nDie Reichsvereinigung hatte die Auswanderung zu fördern und musste eine Vermögensabgabe erheben, um mittellosen Auswanderern ein Vorzeigegeld aushändigen zu können. Die Reichsvereinigung war des Weiteren verpflichtet, für die Beschulung der Juden zu sorgen. Als Träger der jüdischen Wohlfahrtspflege hatte sie hilfsbedürftige Juden so ausreichend zu unterstützen, dass die öffentliche Fürsorge nicht einzutreten brauchte. Dies war aus Beiträgen und Spenden der verarmten und überalterten jüdischen Gemeinde zu finanzieren; ab 1941 steuerte das RSHA Finanzmittel aus beschlagnahmtem Vermögen der deportierten Juden bei. 4. Juli 1939 '),
(144, 'NeatlineRecord', 104, 1, 'Klara Landsberg #2', 'Klara Landsberg #2  '),
(146, 'Item', 42, 1, 'Überfall auf Polen ', 'Überfall auf Polen  Im September 1939 überfällt die deutsche Wehrmacht Polen und startet so den 2. Weltkrieg. September 1939 '),
(147, 'Item', 43, 1, 'Beginn der systematischen Morde an Juden', 'Beginn der systematischen Morde an Juden Mit dem Krieg der Wehrmacht gegen die Sowjetunion, begann in ganzen Regionen die systematische Ermordung von Juden. 22. Juni 1941 '),
(148, 'NeatlineRecord', 106, 1, 'Überfall der Wehrmacht auf Polen ', 'Überfall der Wehrmacht auf Polen   '),
(149, 'Item', 44, 1, 'Reichspogromnacht', 'Reichspogromnacht Die Novemberpogrome 1938 – bezogen auf die Nacht vom 9. auf den 10. November 1938 auch Reichspogromnacht oder zynisch (Reichs-)Kristallnacht genannt – waren vom nationalsozialistischen Regime organisierte und gelenkte Gewaltmaßnahmen gegen Juden in Deutschland und Österreich.\r\n\r\nDabei wurden vom 7. bis 13. November etwa 800 Juden ermordet, 400 davon in der Nacht vom 9. auf den 10. November. Über 1.400 Synagogen, Betstuben und sonstige Versammlungsräume sowie tausende Geschäfte, Wohnungen und jüdische Friedhöfe wurden zerstört. Ab dem 10. November wurden ungefähr 30.000 Juden in Konzentrationslagern inhaftiert, wo mindestens weitere 400 ermordet wurden oder an Haftfolgen starben. 9. November 1938 '),
(150, 'NeatlineRecord', 108, 1, 'Reichspogromnacht', 'Reichspogromnacht  '),
(151, 'NeatlineRecord', 109, 1, 'Klara Landsberg #3', 'Klara Landsberg #3  ');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_sessions`
--

CREATE TABLE `omeka_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `modified` bigint(20) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_sessions`
--

INSERT INTO `omeka_sessions` (`id`, `modified`, `lifetime`, `data`) VALUES
('0996ba68e013adaa64ab9daab6292383', 1584814450, 1209600, ''),
('1335b2b8c9a1d23f1339ef2233d60ade', 1584977163, 1209600, ''),
('140ad1767f30ea761c8d8cb62d5e499a', 1584719501, 1209600, ''),
('1b12ba1720d8811639c905294f79bbcb', 1585092464, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226563663733373935613139653736353039326461333338363266616466346530223b7d),
('248587fbd4293769a02c365b0e41f097', 1585219647, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a393a222f6e6561746c696e65223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223530336331356262346139663464343039623736366464306331323930353530223b7d),
('2bde671383a4f0adafd08786c4945a61', 1584732682, 1209600, ''),
('403da5b85f39ed3cbcbc1fc7b81f62b5', 1585154925, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a31383a222f6e6561746c696e652f656469746f722f31223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223935386264373365663363326436313062623736306661646135623462376535223b7d),
('54545afc5b6a357ba213a3e86e3ffe17', 1584203166, 1209600, ''),
('5496c43507afb8256695ccbe20b033ef', 1584974440, 1209600, ''),
('55c0f9a74caee09db932cb35ae134287', 1584715022, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226466343262376638623430313863666636663834643136336334333664363133223b7d),
('5c8f99aec7f6462deeeb9494f264ee88', 1584824450, 1209600, ''),
('5d3151b9ad0ac69d786225cba65bb10e', 1584801166, 1209600, ''),
('66d972149fe44aee1cff6b9342b6e988', 1584286708, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223839663534323865663866623436653138663536373161653430356563366339223b7d),
('6990eaa78c17d0bb12c3a94ae3e1f91b', 1584884457, 1209600, ''),
('6fd1864075ca97ac21116256d5b55111', 1585223168, 1209600, ''),
('74cd0243ccf809f63a496bc60d6ed51b', 1585146109, 1209600, ''),
('760a90ff124bd21f6b4eb321c40531dc', 1584800958, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d5f5f5a467c613a323a7b733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538343830333637303b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538343830333638353b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f637372667c613a313a7b733a343a2268617368223b733a33323a223634666364353734306562623339356463633661623965393237303135333330223b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223838306534653939346439303333326631396336386464396562303564323733223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f637372667c613a313a7b733a343a2268617368223b733a33323a223333366134643664306233613131303563633062633833323730353565363438223b7d),
('76e8c18eca789b6286fe38c82c852c0c', 1584817230, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d),
('777aa5575cee7929befac2947d142aab', 1585154927, 1209600, ''),
('79cdbc409925ea281804f81a1e284a23', 1584622045, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226230333161363037346161656462313037653363666638316462376230343365223b7d),
('871e9dc6536090b908e52a2a18ef6ff6', 1584394091, 1209600, ''),
('8f9310a18f6685b19119e3d19d4bf319', 1585231419, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226535363561616437333665613633313837326664656633323739626437643633223b7d5f5f5a467c613a363a7b733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353233343233333b7d733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73656375726974795f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353233343233393b7d733a34353a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353233343337343b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353233343337393b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353233343338353b7d733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353233343339343b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f637372667c613a313a7b733a343a2268617368223b733a33323a226463323463663638303538336164343265363739386266613335313239663565223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73656375726974795f637372667c613a313a7b733a343a2268617368223b733a33323a223238386133633839663634663163666635376462353538333834396630356232223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f637372667c613a313a7b733a343a2268617368223b733a33323a223531303463643739656337383131303832663732643830396264646665363831223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f637372667c613a313a7b733a343a2268617368223b733a33323a223238656262646630313935363263653766333261366137616366303933616636223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f637372667c613a313a7b733a343a2268617368223b733a33323a223636303565613166623032646662353034356662313333353839663764613864223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a223434643033386566393632316562663238336438386336626436646437386234223b7d),
('90bcd22341b907e8c1f9760a0d6c0053', 1585179911, 1209600, ''),
('9928b9aa4d11a20840b9921c1f027c32', 1584718127, 1209600, ''),
('9dfe01957bb4f2ad576dbe83b6de9603', 1584732253, 1209600, ''),
('a3a53bec80ddbfec09856e92b25ba769', 1585093374, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d),
('a4bde6bb28d8aa8a538b3f2e043a6427', 1584815422, 1209600, ''),
('a978d2aea2c6fa32a23915b66715f457', 1584710658, 1209600, ''),
('abaa789cf54cf32eb3dcbb3ac6f770b5', 1585231238, 1209600, ''),
('ad8b02081aade79ef20b2c6e14de6d93', 1584295824, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226430623466653566323639383633656665616235636162326665636330333130223b7d),
('ae3d23cdc5bea34414193e303a886265', 1585136683, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226338343839396532353439363062616266353765303962343834343133653239223b7d5f5f5a467c613a353a7b733a34353a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353133373933343b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353133373934323b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353133373935323b7d733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353133373936333b7d733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313538353133373939353b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f637372667c613a313a7b733a343a2268617368223b733a33323a223434346463623038326537393632613032393836363666313061313837323163223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f637372667c613a313a7b733a343a2268617368223b733a33323a223466353931633830336664646463663031616634646338313330316161663331223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f637372667c613a313a7b733a343a2268617368223b733a33323a223432653765376236613333376462353966333132316137336565623762356532223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f637372667c613a313a7b733a343a2268617368223b733a33323a226231353161356664666431343163366661303866643630393163633465636362223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a223564663833373136346530623833353733393165336638623632393262396263223b7d),
('b7e162ae6ab6712bc41060a2c57b6c0e', 1584885474, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d),
('c1c82e5f78f0d8c8beee609de29c7cbf', 1584889266, 1209600, ''),
('e93f3aeaf2b32af4c9c491e1155124ac', 1584868685, 1209600, ''),
('f21e3495ec91487544b0c8ba15e2878c', 1585004646, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a393a222f6e6561746c696e65223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223533356361303763383264383838323934393830393132616666363564386435223b7d),
('f9749c0ed4c449585fc3d60e205118c7', 1584809068, 1209600, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_simple_pages_pages`
--

CREATE TABLE `omeka_simple_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `modified_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_by_user_id` int(10) UNSIGNED NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `order` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `template` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `use_tiny_mce` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_simple_pages_pages`
--

INSERT INTO `omeka_simple_pages_pages` (`id`, `modified_by_user_id`, `created_by_user_id`, `is_published`, `title`, `slug`, `text`, `updated`, `inserted`, `order`, `parent_id`, `template`, `use_tiny_mce`) VALUES
(1, 1, 1, 1, 'Projekt', 'project', '<h2>Rahmen</h2>\n<p>Das Projekt <em>Ausbrechen</em> zeigt Flucht- und Deportierungswege jüdischer Familien aus Köln während der NS-Zeit und entstand im Rahmen des Seminars Modellierung und digitale Karten bei <em>Prof. Dr. Øyvind Eide</em> an der Universität zu Köln.</p>\n<h2>Datenerhebung</h2>\n<p>Die Daten entstammen aus</p>\n<ul><li>der Stolperstein-Datenbank des NS-Dokumentationszentrum in Köln</li>\n<li>dem Buch <em>Deportiert ins Ghetto</em> von <em>Karola Frings</em> und <em>Hildegard Jakobs </em></li>\n<li>dem Buch <em>Vom Rhein nach Riga</em> von<em> Lilly Menczel</em></li>\n</ul><p>Das Projekt zeig nur eine Auswahl der möglichen Daten, die natürlich keinerlei Wertung beinhaltet.</p>\n<h2>Team</h2>\n<ul><li>Jens Lennart Kappes</li>\n<li>Patrick Dangel</li>\n<li>Jonas Lindemann</li>\n<li>Julian Wagner</li>\n</ul>', '2020-03-21 14:27:13', '2019-12-12 21:37:55', 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_tags`
--

CREATE TABLE `omeka_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_tags`
--

INSERT INTO `omeka_tags` (`id`, `name`) VALUES
(5, 'Köln'),
(3, 'Konzentrationslager'),
(4, 'KZ'),
(1, 'Litzmannstadt'),
(2, 'Łódź');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_users`
--

CREATE TABLE `omeka_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `omeka_users`
--

INSERT INTO `omeka_users` (`id`, `username`, `name`, `email`, `password`, `salt`, `active`, `role`) VALUES
(1, 'RioBeef', 'RioBeef', 'mail@lennartkappes.de', 'dadf14d5187c59637a12fd9c830de46215c1c083', '084870d764c98ac1', 1, 'super');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `omeka_users_activations`
--

CREATE TABLE `omeka_users_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `omeka_collections`
--
ALTER TABLE `omeka_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indizes für die Tabelle `omeka_collection_trees`
--
ALTER TABLE `omeka_collection_trees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collection_id` (`collection_id`);

--
-- Indizes für die Tabelle `omeka_elements`
--
ALTER TABLE `omeka_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_element_set_id` (`element_set_id`,`name`),
  ADD UNIQUE KEY `order_element_set_id` (`element_set_id`,`order`),
  ADD KEY `element_set_id` (`element_set_id`);

--
-- Indizes für die Tabelle `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `record_type` (`record_type`);

--
-- Indizes für die Tabelle `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_type_record_id` (`record_type`,`record_id`),
  ADD KEY `element_id` (`element_id`),
  ADD KEY `text` (`text`(20));

--
-- Indizes für die Tabelle `omeka_files`
--
ALTER TABLE `omeka_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indizes für die Tabelle `omeka_items`
--
ALTER TABLE `omeka_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indizes für die Tabelle `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_type_id_element_id` (`item_type_id`,`element_id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `element_id` (`element_id`);

--
-- Indizes für die Tabelle `omeka_keys`
--
ALTER TABLE `omeka_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indizes für die Tabelle `omeka_locations`
--
ALTER TABLE `omeka_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indizes für die Tabelle `omeka_neatline_exhibits`
--
ALTER TABLE `omeka_neatline_exhibits`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `omeka_neatline_records`
--
ALTER TABLE `omeka_neatline_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added` (`added`),
  ADD KEY `exhibit_id` (`exhibit_id`,`item_id`),
  ADD KEY `min_zoom` (`min_zoom`,`max_zoom`),
  ADD SPATIAL KEY `coverage` (`coverage`);
ALTER TABLE `omeka_neatline_records` ADD FULLTEXT KEY `title` (`title`,`body`,`slug`);
ALTER TABLE `omeka_neatline_records` ADD FULLTEXT KEY `tags` (`tags`);
ALTER TABLE `omeka_neatline_records` ADD FULLTEXT KEY `widgets` (`widgets`);

--
-- Indizes für die Tabelle `omeka_neatline_simile_exhibit_expansions`
--
ALTER TABLE `omeka_neatline_simile_exhibit_expansions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `omeka_options`
--
ALTER TABLE `omeka_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `active_idx` (`active`);

--
-- Indizes für die Tabelle `omeka_processes`
--
ALTER TABLE `omeka_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `started` (`started`),
  ADD KEY `stopped` (`stopped`);

--
-- Indizes für die Tabelle `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`record_type`,`record_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indizes für die Tabelle `omeka_schema_migrations`
--
ALTER TABLE `omeka_schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indizes für die Tabelle `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_name` (`record_type`,`record_id`);
ALTER TABLE `omeka_search_texts` ADD FULLTEXT KEY `text` (`text`);

--
-- Indizes für die Tabelle `omeka_sessions`
--
ALTER TABLE `omeka_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_published` (`is_published`),
  ADD KEY `inserted` (`inserted`),
  ADD KEY `updated` (`updated`),
  ADD KEY `created_by_user_id` (`created_by_user_id`),
  ADD KEY `modified_by_user_id` (`modified_by_user_id`),
  ADD KEY `order` (`order`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indizes für die Tabelle `omeka_tags`
--
ALTER TABLE `omeka_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `omeka_users`
--
ALTER TABLE `omeka_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `active_idx` (`active`);

--
-- Indizes für die Tabelle `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `omeka_collections`
--
ALTER TABLE `omeka_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `omeka_collection_trees`
--
ALTER TABLE `omeka_collection_trees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `omeka_elements`
--
ALTER TABLE `omeka_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT für Tabelle `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT für Tabelle `omeka_files`
--
ALTER TABLE `omeka_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT für Tabelle `omeka_items`
--
ALTER TABLE `omeka_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT für Tabelle `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT für Tabelle `omeka_keys`
--
ALTER TABLE `omeka_keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `omeka_locations`
--
ALTER TABLE `omeka_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `omeka_neatline_exhibits`
--
ALTER TABLE `omeka_neatline_exhibits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `omeka_neatline_records`
--
ALTER TABLE `omeka_neatline_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT für Tabelle `omeka_neatline_simile_exhibit_expansions`
--
ALTER TABLE `omeka_neatline_simile_exhibit_expansions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `omeka_options`
--
ALTER TABLE `omeka_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT für Tabelle `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `omeka_processes`
--
ALTER TABLE `omeka_processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT für Tabelle `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `omeka_tags`
--
ALTER TABLE `omeka_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `omeka_users`
--
ALTER TABLE `omeka_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
