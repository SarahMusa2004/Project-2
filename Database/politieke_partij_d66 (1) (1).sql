-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 jun 2023 om 09:55
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `politieke_partij_d66`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leden`
--

CREATE TABLE `leden` (
  `ledenid` int(50) NOT NULL,
  `naam` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `leden`
--

INSERT INTO `leden` (`ledenid`, `naam`, `email`) VALUES
(1, 'Sigrid Kaag', 'sigrid.kaag@tweedekamer.nl'),
(2, 'Robbert Dijkgraaf ', 'protocol@minocw.nl'),
(3, 'Rob Jetten', 'r.jetten@tweedekamer.nl'),
(4, 'Ernst Kuipers ', 'ministervws@minvws.nl'),
(5, 'Kajsa Ollongren', 'minbzk@minbzk.nl'),
(6, 'Franc Weerwind', 'jdoe@almere.nl'),
(7, 'Alexandra van Huffelen', 'alexandra@essent.nl'),
(8, 'Gunay Uslu', 'uslu@gmail.nl'),
(9, 'Hans Vijlbrief', 'h.vijlbrief@gmail.com'),
(34, 'Milad Ahmadi', 'miladfm513@gmail.com');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nieuws`
--

CREATE TABLE `nieuws` (
  `Artikelid` int(100) NOT NULL,
  `Titel` varchar(500) NOT NULL,
  `Tekst` text NOT NULL,
  `Tekst(kort)` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `nieuws`
--

INSERT INTO `nieuws` (`Artikelid`, `Titel`, `Tekst`, `Tekst(kort)`) VALUES
(1, 'Reactie Partijvoorzitter en Partijleider op vertrek Sophie in ‘t Veld', 'Partijvoorzitter Victor Everhardt:\r\n“Sinds haar eerste lijsttrekkerschap voor de Europese Verkiezingen in 2004 heeft Sophie zich ingezet voor D66 en Europa. Wij betreuren het dat Sophie de partij nu, na al die jaren inzet, verlaat”.\r\n\r\nPartijleider Sigrid Kaag:\r\n“Sophie was bijna 20 jaar een vaste kracht in het Europees Parlement. Ze zette zich in voor een sterker en veiliger Europa. Als rapporteur van de onderzoekscommissie voerde ze recentelijk nog een succesvolle strijd tegen spionagesoftware. Haar vertrek markeert het einde van een lange periode. Er is nog veel werk in Europa te doen: op het gebied van verdere democratisering, samenwerking en een radicale koers vóór Europa. Daar zal D66 vanuit Den Haag en Brussel aan blijven werken”.', 'Europarlementariër Sophie in ‘t Veld heeft besloten D66 te verlaten. Vanmorgen heeft ze het partijbestuur daarover geïnformeerd.'),
(2, 'Politiek en publieke organisaties vormen gezamenlijk front tegen agressie en geweld', 'Een kleine groep ontevreden onruststokers maakt het voor een steeds grotere groep mensen onmogelijk om hun werk te doen. Het gaat om politieagenten, journalisten, zorgpersoneel, boa’s, advocaten, ov-personeel, docenten, officieren van justitie, brandweermensen, wetenschappers, rechters en politici. Verschillende beroepsgroepen en politieke partijen luiden nu gezamenlijk de noodklok om een daadwerkelijke normverandering te creëren en die ook te handhaven.\r\n\r\nHanneke van der Werf (D66) nam het initiatief voor het manifest. “Ons land draait op mensen die bereid zijn zich dagelijks voor anderen in te zetten. Zij zorgen dat de tram rijdt, bieden eerste hulp bij een ongeval en zorgen voor onafhankelijke journalistiek. Als die mensen door agressie hun werk niet meer willen doen, loopt ons land vast. Het strafrecht alleen is niet genoeg. Dit vraagt om het keren van een fenomeen.”\r\n\r\nHet manifest:\r\nOndertekenaars van het manifest stellen dat het hoognodig is dat de stille meerderheid zich luid laat horen tegen de verharding in de samenleving. Ook roepen de ondertekenaars werkgevers op aangifte namens hun medewerkers te doen, als mensen die behoefte hebben. Zo is het geen individueel probleem, maar een gezamenlijke verantwoordelijkheid. Daarnaast willen ondertekenaars dat het kabinet een samenwerkingsverband opricht waar werknemers én werkgevers terecht kunnen voor advies, hulp bij aangiften en weerbaarheidstrainingen kunnen krijgen voor alle beroepen met een publieke taak.\r\n\r\nOndertekenaars:\r\nHet manifest is ondertekend door de volgende publieke organisaties: De Nederlandse Politiebond (NPB), De Nederlandse Vereniging van Journalisten (NVJ), De Vakvereniging Brandweer Vrijwilligers (VBV), De Nederlandse Vereniging voor Rechtspraak (NVvR), De Nederlandse BOA Bond, De Nederlandse orde van advocaten (NOvA), FNV Spoor, FNV Streekvervoer, FNV Stadsvervoer, De Algemene Onderwijsbond (AOB) en De vereniging Brancheorganisaties Zorg (BoZ). Ook ondertekenen de volgende politieke partijen:  VVD, D66, CDA, PvdA, SP, GroenLinks, ChristenUnie, JA21, DENK, SGP, BBB, GOUD en Lid Gündoğan.', 'Maatschappij en politiek slaan de handen ineen tegen agressie en geweld. In een maatschappelijk breed gedragen manifest laten 25 ondertekenaars zien dat de samenleving als één blok achter deze groep zou moeten staan. De deelnemers voelen samen verantwoordelijkheid om ons land veilig te houden en de trend te keren.'),
(3, 'Tata moet verplicht vergroenen', 'Naast grootste klimaatvervuiler, is Tata Steel ook kampioen in de uitstoot van stikstof en gevaarlijke stoffen. Omwonenden van Tata hebben tot wel 50% meer kans op kanker. Er is wat D66 alleen een toekomst voor Tata in Nederland als zij radicaal verduurzamen. Want Nederland is onderweg naar een klimaatneutrale toekomst. En industrie is daarin welkom, en nodig, mits groen.\r\n\r\nTot 2021 weigerde Tata Steel zich in te spannen voor echte verduurzaming. Onder grote druk van milieuorganisaties en FNV wijzigde Tata Steel de koers. Het plan is om op termijn “groen staal” te produceren. Dat is staal gemaakt met behulp van waterstof. Dit komt erop neer dat er in 2035 een hele nieuwe fabriek staat die “waterstof-ready” is. Er is dan niet direct voldoende waterstof beschikbaar. Daarom zal die nieuwe fabriek eerst nog draaien op aardgas. Dat is wel iets beter dan kolen, maar nog steeds niet groen. Klein detail: deze plannen vragen om zo’n €6,5 miljard steun met belastinggeld. Dat is veel, bijvoorbeeld meer dan er beschikbaar is voor de verduurzaming van alle woningen in Nederland (€4 miljard).\r\n\r\nVerantwoordelijk minister van Economische Zaken en Klimaat, Micky Adriaansens, predikt vaak: “liever groen hier, dan grijs elders”. Bij Tata Steel is het precies andersom. De ontwikkeling van groenstaalfabrieken gaat in andere landen veel sneller dan bij ons. Het lijkt erop dat we binnenkort kunnen zeggen “liever groen elders, dan grijs hier”. Zo heeft Zweden in 2020 al een groenstaalfabriek geopend en zal daar in 2030 een extra fabriek, die bijna net zo veel kan produceren als Tata Steel, bij komen. Ondertussen wacht de minister rustig af tot Tata overgaat tot uitvoering van de plannen.\r\n\r\nEr zijn geen garanties dat Tata Steel de plannen gaat uitvoeren, zeker omdat de benodigde staatssteun onrealistisch is. Er is een reële kans dat Tata Steel na lang praten en vertragen uiteindelijk toch besluit om Nederland te verlaten omdat de prijs voor het uitstoten of afvangen van CO2 te hoog wordt. Tot die tijd zullen omwonenden last hebben van dodelijke vervuiling en moet Nederland op andere vlakken harder werken om de klimaatdoelen te halen, bijvoorbeeld bij mensen thuis.\r\n\r\nVertrouwen is goed, naïviteit is dat niet. Daarom wil D66 wettelijk vastleggen dat Tata Steel zo snel als mogelijk overgaat op de productie van echt groen staal. Als stok achter de deur, zodat we er zeker van zijn dat Tata Steel groen wordt en in Nederland kan blijven. Als de minister “liever groen hier, dan grijs elders” serieus meent, dan gaat ze hier direct mee aan de slag.', 'Tata Steel is de grootse klimaatvervuiler van Nederland. De fabriek in IJmuiden stoot even veel CO2 uit als 1,4 miljoen huishoudens bij elkaar. Daarom wil D66 dat Tata Steel verplicht gaat vergroenen. Het voorstel hierover van Kamerlid Raoul Boucke is vandaag aangenomen. Lees er meer over in zijn opiniestuk.'),
(4, 'Informeer mensen over financiële risico’s bij dynamische energiecontracten', 'Voor elektriciteit verandert de prijs doorgaans elk uur en voor gas elke dag. Nu de verwarming uit staat en het lang licht is, zijn die prijzen laag. Maar in de winter kunnen ze flink oplopen en daar is niet elke consument zich van bewust. Daarom wil D66 dat er een waarschuwing komt bij reclames en op de sites waar dynamische energiecontracten worden aangeboden.\r\n\r\nGeïnformeerde keuze maken:\r\nRaoul Boucke: “Mensen mogen zelf kiezen wat voor een energiecontract ze afsluiten, maar het is dan wel goed dat ze zich bewust zijn van de risico’s. Er zitten voordelen aan een dynamisch energiecontract. Je kunt dan veel geld besparen door je auto op te laden of wasjes te draaien als energie goedkoop is. En door meer energie te verbruiken wanneer er zoveel aanbod is, ontlast je het energienet. Maar als de energieprijzen opeens hard stijgen, betaal je heel snel heel veel meer voor je energie. Door de oorlog in Oekraïne zijn de energieprijzen extra wisselvallig. Mensen die nu een dynamisch contract afsluiten, kunnen in de winter verrast worden door een hoge energierekening die ze misschien niet kunnen betalen. Het is goed als mensen van te voren weten waar ze nou precies voor kiezen.”\r\n\r\nEnergieprijzen zijn nu laag:\r\nDynamische energiecontracten zijn in korte tijd steeds populairder geworden. In december 2022 hadden 133.000 huishoudens zo’n contract afgesloten. Nu zijn dat er al 178.000 (+34%). Nu zijn de energieprijzen heel laag: het is al een lange tijd niet echt koud geweest, de zon schijnt volop en de wind waait ook stevig. Er is dus een lage energievraag en er is veel duurzame, dus goedkope, energie beschikbaar. Mensen met een dynamisch contract kunnen op sommige momenten zelfs geld toe krijgen als zij energie verbruiken. Maar deze prijzen kunnen ook snel stijgen.\r\n\r\nWisselvallige prijzen:\r\nAanbieders adverteren met de lage prijzen en het gebrek aan risicopremies, die wel van toepassing zijn op vaste en variabele contracten. Maar deze prijzen kunnen enorm fluctueren. Daarom wil D66 een vaste waarschuwing bij reclames voor dynamische energiecontracten. Ook moeten de energieaanbieders een waarschuwing tonen bij het afsluiten van een contract op de eigen website. Op die manier zijn consumenten beter geïnformeerd over de financiële risico’s en kunnen zij een goede afweging maken of een dynamisch energiecontract bij ze past.', 'D66-Kamerlid Raoul Boucke wil dat mensen beter worden geïnformeerd over de financiële risico’s bij het afsluiten van een dynamisch energiecontract. Bij zo’n contract betalen consumenten geen vaste prijs, maar de energieprijs die geldt op groothandelsmarkten.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `standpunten`
--

CREATE TABLE `standpunten` (
  `standpuntid` int(50) NOT NULL,
  `Thema` varchar(500) NOT NULL,
  `Standpunt` varchar(500) NOT NULL,
  `Uitleg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `standpunten`
--

INSERT INTO `standpunten` (`standpuntid`, `Thema`, `Standpunt`, `Uitleg`) VALUES
(1, 'Veiligheid en criminaliteit', 'Zonder veiligheid zijn we niet echt vrij', 'Veiligheid is een absolute voorwaarde voor een vrije samenleving. Om veiligheid na te kunnen streven in een snel veranderende wereld moeten alle middelen die de rechtsstaat ons biedt, slim worden ingezet. Middelen die door diezelfde rechtsstaat begrensd worden. Soms vraagt dat om repressie en de effectieve inzet van ons strafrecht. Vaak ook om preventie, om misdaad zoveel mogelijk te voorkomen. D66 wil investeren in onze politiemensen, inlichtingen- en veiligheidsdiensten en in terrorismebestrijding. We willen onze rechtsstaat bovendien uitrusten met middelen om nieuwe ontwikkelingen het hoofd te bieden, zoals cybercriminaliteit.'),
(2, 'Klimaat, natuur en milieu', 'Ruimte maken voor nieuwe natuur', 'Veel mensen genieten van natuur. De ideale plek om te ontspannen, sporten en even tot jezelf te komen. Maar helaas gaat het slecht met de Nederlandse natuur. Slechts vier procent van de natuurgebieden is in goede staat. Het aantal wilde dieren is gehalveerd sinds 1990. De stikstofcrisis maakt pijnlijk duidelijk dat de natuur, samenleving en economie niet altijd in harmonie met elkaar zijn. Wat D66 betreft gaan we veel nieuwe natuur aanleggen, de bestaande natuur beter beschermen en het stikstofprobleem oplossen.'),
(3, 'Wonen', 'We gaan een miljoen nieuwe huizen bouwen', 'Wij willen vóór 2030 meer dan een miljoen huizen bouwen. Dat is de enige manier om aan de groeiende vraag te voldoen. Vooral voor mensen met een middeninkomen is er een groot tekort aan betaalbare woningen. Nu bouwen we vooral binnen steden en de gemeenten daaromheen, waar al goede aansluitingen op het openbaar vervoer zijn. Maar dit lost niet alle vraag op. Daarom moeten we ook bouwen op nieuwe plekken, zonder schade toe te brengen aan de natuur. Daarom komt er één ministerie van wonen, ruimtelijke ordening en milieu.\r\n\r\nWe zorgen dat deze nieuwe wijken uitstekend bereikbaar zijn. Nieuwe huizen worden energiezuinig (nul op de meter of beter) en bieden ruimte aan een groeiende groep alleenstaanden. Daarnaast zet D66 vol in op een eerlijkere woningmarkt. We verkleinen de ongelijkheid tussen huiseigenaren en diegenen die geen betaalbaar huis kunnen vinden.'),
(4, 'Werk en inkomen', 'Sneller uit de schulden', 'Bijna een miljoen mensen in Nederland leeft in armoede. Een op de vijf huishoudens heeft problematische schulden. Dit geldgebrek zorgt voor onzekerheid en stress. Schulden leiden er vaak toe dat mensen met genoeg inkomen toch niet rond kunnen komen. D66 wil de onvrijheid die armoede en schulden veroorzaken hard bestrijden. We willen het aantal mensen in armoede de komende kabinetsperiode met tenminste de helft verminderen. We streven verder naar een fundamentele herziening van de manier waarop we met schulden omgaan. Niet gebaseerd op nodeloos wantrouwen, maar op het menswaardig en zo efficiënt mogelijk helpen van mensen in financiële nood.'),
(5, 'Zorg en gezondheid', 'Gezondheid is meer dan goede zorg', 'Je gezondheid heeft grote invloed op je kansen in het leven. Maar steeds meer Nederlanders kampen met een chronische ziekte. Vaak heeft die te maken met hun omgeving of leefstijl, zoals bij diabetes, de chronische longziekte COPD, obesitas en hartfalen. Slechte luchtkwaliteit en een sociaal-economische achterstand hebben daar grote invloed op. Ook roken, alcoholgebruik, te weinig beweging en ongezonde voeding spelen een rol. Met medicatie kunnen we de symptomen van deze ziekten aanpakken, maar is dat het slimste om te doen? Het is beter om de ziektes te voorkomen en ze waar mogelijk te behandelen met leefstijlverandering. Dat is wetenschappelijk bewezen.\r\n\r\nDe grote verschillen in (gezonde) levensjaren tussen Nederlanders per opleidingsniveau en inkomen zijn schokkend. Van gelijke kansen is geen sprake. Daarom wil D66 breed investeren in gezondheid: van maatregelen voor een schonere lucht tot gelijke kansen op fatsoenlijk betaald werk en een goede opleiding. Ook willen we een gezonde leefstijl laagdrempelig maken, met zoveel mogelijk oog voor ieders individuele vrijheid. We richten ons daarom in de eerste plaats op een gezonde start voor ieder kind.'),
(6, 'Integratie en immigratie', 'Je hoort erbij vanaf dag één', 'Mensen die naar Nederland komen en hier blijven, moeten zo snel mogelijk integreren. Dit vraagt inspanning van zowel de nieuwkomer als van de Nederlandse samenleving. De overheid dient hier een proactieve, stimulerende en faciliterende rol in te vervullen. Het leren van de taal en het opbouwen van een Nederlands sociaal netwerk zijn hierin belangrijke eerste stappen. Op deze manier kunnen mensen zo snel mogelijk meedoen. Onderdeel van integreren is het inburgeren. Ook dit kunnen nieuwkomers niet alleen. Met hulp van de overheid en van betrokken burgers gaan zij daarom vanaf het eerste moment aan de slag met een eigen inburgeringsplan. Samen werken we aan het vergroten van draagvlak en de succesvolle inburgering van nieuwkomers.\r\n\r\nBij alle keuzes die met of voor inburgeraars worden gemaakt is hun kans op werk of school leidend. D66 wil ook dat Nederland zich ervoor inzet dat dit wordt vastgelegd in EU-wetgeving, zodat overal in Europa nieuwkomers kunnen meedoen.');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `leden`
--
ALTER TABLE `leden`
  ADD PRIMARY KEY (`ledenid`);

--
-- Indexen voor tabel `nieuws`
--
ALTER TABLE `nieuws`
  ADD PRIMARY KEY (`Artikelid`);

--
-- Indexen voor tabel `standpunten`
--
ALTER TABLE `standpunten`
  ADD PRIMARY KEY (`standpuntid`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `leden`
--
ALTER TABLE `leden`
  MODIFY `ledenid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT voor een tabel `nieuws`
--
ALTER TABLE `nieuws`
  MODIFY `Artikelid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `standpunten`
--
ALTER TABLE `standpunten`
  MODIFY `standpuntid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
