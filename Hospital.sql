/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Hospital
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor` (
  `doctorID` varchar(4) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `specialization` varchar(20) NOT NULL,
  PRIMARY KEY (`doctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES
('1724','Boothe','Pavlov','Suite 67','bpavlovd@liveinternet.ru','Ophthalmology\r'),
('3326','Appolonia','Streatfeild','PO Box 77011','astreatfeild7@jugem.jp','Oncologists\r'),
('3527','Georgena','Harradence','11th Floor','gharradencef@yelp.com','general\r'),
('3573','Isaac','Karpushkin','Room 453','ikarpushkinj@bbb.org','Ophthalmology\r'),
('3802','Benedetta','Amoore','Apt 905','bamooreb@pbs.org','emergency\r'),
('4438','Killian','Pendell','Suite 41','kpendell8@shinystat.com','general\r'),
('4449','Romola','Thurber','Room 1380','rthurberg@disqus.com','general\r'),
('4516','Denny','Kohen','Apt 1449','dkohenc@bluehost.com','Oncologists\r'),
('5512','Che','Vale','PO Box 91297','cvale3@forbes.com','intensivecare\r'),
('5701','Paula','Rippen','Suite 54','prippeni@edublogs.org','emergency\r'),
('6689','Blancha','Pickworth','PO Box 92515','bpickworthh@adobe.com','Ophthalmology\r'),
('7697','Lottie','Deveral','12th Floor','ldeverale@wunderground.com','general\r'),
('7763','Zahara','Klimkiewich','Room 870','zklimkiewich1@marriott.com','Anaesthetists\r'),
('7781','Miguela','Greenhalgh','7th Floor','mgreenhalgh9@howstuffworks.com','Anaesthetists\r'),
('7842','Guillaume','Insley','5th Floor','ginsley6@blinklist.com','Oncologists\r'),
('7873','Therese','Giblin','Apt 192','tgiblin4@nymag.com','Ophthalmology\r'),
('9055','Vanessa','Philippon','Room 539','vphilippon2@ow.ly','intensivecare\r'),
('9116','Lars','Elwyn','Room 573','lelwyna@wikimedia.org','Oncologists\r'),
('9783','Lavena','Yellowley','Room 1101','lyellowley5@nytimes.com','intensivecare\r'),
('9947','Ole','Hadcock','Room 1193','ohadcock0@sakura.ne.jp','intensivecare\r');
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Drug`
--

DROP TABLE IF EXISTS `Drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Drug` (
  `drugID` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sideffects` varchar(100) NOT NULL,
  `benefits` varchar(200) NOT NULL,
  PRIMARY KEY (`drugID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drug`
--

LOCK TABLES `Drug` WRITE;
/*!40000 ALTER TABLE `Drug` DISABLE KEYS */;
INSERT INTO `Drug` VALUES
('14060','BARIUM CATION','Mid-inner ear ops NEC','Beam Radiation of Uterus using Photons 1 - 10 MeV\r'),
('15493','Acetaminophen','Neurolyt injec-symp nrv','Release Left Radius Open Approach\r'),
('19111','Isopropyl Alcohol','Bilat simple mastectomy','Drainage of Left Upper Arm Muscle Perc Endo Approach Diagn\r'),
('19124','ALCOHOL','Bilat part salpingec NOS','Occlusion of L Up Lobe Bronc with Intralum Dev Via Opening\r'),
('19798','SODIUM CHLORIDE','App ext fix dev-ring sys','Drainage of Right Upper Lobe Bronchus Perc Approach Diagn\r'),
('20115','OCTINOXATE','Rad pancreaticoduodenect','Bypass R Com Iliac Art to R Femor A w Nonaut Sub Open\r'),
('20819','Cetirizine HCl','Surg induct labor NEC','Dilate R Com Carotid w 4+ Intralum Dev Perc Endo\r'),
('2261','Guaifenesin','Comb alco drug reha deto','Supplement Tongue with Synthetic Substitute Open Approach\r'),
('23810','Aspen','Hearing examination NOS','Excision of Right Palatine Bone Open Approach Diagnostic\r'),
('2793','Sodium Fluoride','Oth exc fus repair toe','Supplement Colic Vein with Synth Sub Perc Approach\r'),
('27950','Cetirizine Hydrochloride','Replace bladder stimulat','Fusion >7 T Jt w Intbd Fus Dev Post Appr P Col Perc\r'),
('31512','OXYMETAZOLINE HYDROCHLORIDE','Cranial puncture NEC','Reposition Left Sternoclavicular Joint External Approach\r'),
('34154','risperidone','Suture of tongue lacerat','Traction of Left Hand\r'),
('43091','Methadone Hydrochloride','Retroperiton pneumogram','Extirpation of Matter from Left Testis Perc Approach\r'),
('44532','lorazepam','Arth pros rem wo re-shld','Restrict of R Fem Art with Extralum Dev Perc Endo Approach\r'),
('49226','Strawberry Fragaria chiloensis','Replace trac laryn stent','Removal of Ext Fix from Skull Extern Approach\r'),
('51049','acetaminophen','Periton pneumogram NEC','Insertion of Monopln Ext Fix into L Fibula Open Approach\r'),
('55269','Gabapentin','Sinus lavage thru ostium','Insertion of Radioact Elem into Chest Wall Perc Approach\r'),
('59999','HYDROCORTISONE','Tot face ostect w recons','Radiation Therapy Hepatobil Pancreas Beam Radiation\r'),
('60094','ergotamine tartrate','Osteoclasis-patella','Dilate R Peroneal Art w 2 Intralum Dev Perc Endo\r'),
('631','Meloxicam','Unilat thyroid lobectomy','Stereotactic Particulate Radiosurgery of Adrenal Glands\r'),
('64845','Duloxetine hydrochloride','Latiss dorsi myocut flap','Insertion of Monitor Dev into Small Intest Open Approach\r'),
('66834','Ipratropium Bromide','Urinary system op NEC','Drainage of Left Hand Tendon Open Approach Diagnostic\r'),
('69388','RIFAXIMIN','Salivary operation NEC','Removal of Synth Sub from L Knee Jt Tibial Perc Approach\r'),
('69790','Verapamil Hydrochloride','Remove int fix face bone','Removal of Bandage on Right Upper Leg\r'),
('69945','POVIONE IODINE','Fus refus 4-8 vertebrae','Extirpation of Matter from Pulmonary Trunk Perc Approach\r'),
('73065','Purified Water ','Carotid sinus stiumlat','Detachment at Right 5th Toe Low Open Approach\r'),
('76121','Minoxidil','Adrenal reimplantation','Restriction of Right Axillary Artery Perc Endo Approach\r'),
('79168','Fluoxetine Hydrochloride','Thermocaut cornea lesion','Destruction of Right Hip Tendon Perc Endo Approach\r'),
('8321','Candida albicans','Limited consultation','Introduce Nonaut Fertilized Ovum in Fem Reprod Via Opening\r'),
('83806','Menthol','D & C for preg terminat','Drainage of Glossopharyngeal Nerve Open Approach\r'),
('88506','ACTIVATED CHARCOAL','Fallop tube dx proc NEC','Excision of Head and Neck Bursa and Ligament Open Approach\r'),
('88947','Hydrocodone Bitartrate','Cisternal puncture','Extraction of Lumbar Nerve Percutaneous Endoscopic Approach\r'),
('89448','ondansetron','Partial patellectomy','Dilate L Peroneal Art w 4 Drug-elut Perc Endo\r'),
('95274','Diclofenac Potassium','Close gastric fistul NEC','Dilate L Great Saphenous w Intralum Dev Perc Endo\r'),
('9652','Ibuprofen','Repair of prostate','Replace of R Trunk Tendon with Synth Sub Perc Endo Approach\r'),
('99089','SODIUM BICARBONATE','Bile duct repair NEC','Replacement of R Hip Jt with Metal Cement Open Approach\r');
/*!40000 ALTER TABLE `Drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Insurance`
--

DROP TABLE IF EXISTS `Insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Insurance` (
  `insuranceID` varchar(7) NOT NULL,
  `company` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  PRIMARY KEY (`insuranceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Insurance`
--

LOCK TABLES `Insurance` WRITE;
/*!40000 ALTER TABLE `Insurance` DISABLE KEYS */;
INSERT INTO `Insurance` VALUES
('54ARPD9','Cantrell Drug Compan','17668 Nova Pass','964 658 4951'),
('9BFYJXV','Carilion Materials M','068 Hollow Ridge Parkway','478 698 2522'),
('BS03EM0','Bay State Medical','61735 Northfield Circle','212 489 0603'),
('MJ2JSHG','Mary Kay Inc','29 Service Plaza','391 841 0519'),
('YQDN28H','REMEDYREPACK INC','429 Tennessee Avenue','727 611 6373');
/*!40000 ALTER TABLE `Insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `patientID` varchar(8) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `postcode` varchar(7) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `insuranceID` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES
('01YB9G9E','Iain','Ferrant','EH3 9UJ','026 Larry Drive','747 852 2741','iferrantg@amazon.de','MJ2JSHG'),
('12B89XAT','Lisette','Ledgerton','FK2 9LQ','1221 Acker Crossing','182 236 1523','lledgertonj@zimbio.com','MJ2JSHG'),
('621HD7PN','Julietta','Twinberrow','EH1 3GB','6596 Darwin Pass','660 539 6310','jtwinberrowb@ibm.com','MJ2JSHG'),
('6TFR6XE6','Morgen','Siddaley','BT1 1BT','33 Namekagon Court','428 683 4237','msiddaley4@unicef.org',''),
('7X8D058W','Lorilyn','Fuxman','DD8 2SK','34378 Hudson Circle','641 238 2990','lfuxman9@sourceforge.net','YQDN28H'),
('9GM3J9FK','Aindrea','Bleue','IV1 8HN','07831 Crest Line Way','382 440 0254','ableuep@youtube.com',''),
('AFR2WRY7','Farah','Lanchbury','AB10 7T','9 Birchwood Pass','648 320 5941','flanchbury0@hc360.com',''),
('AW2DP3NZ','Stuart','Sparkwell','CB1 2LS','49988 Loeprich Court','218 979 2138','ssparkwell6@dyndns.org',''),
('CNWCCF76','Mufi','Prettyjohn','KA9 1ZA','87 Petterle Parkway','558 317 1675','mprettyjohns@surveymonkey.com','BS03EM0'),
('D42X803Q','Maureen','Ratnege','G14 0CH','2 Judy Way','968 884 3718','mratnegen@last.fm','9BFYJXV'),
('DX8G293R','Audi','Ballam','BT1 2FA','44 Lillian Street','430 400 8211','aballam5@cargocollective.com','9BFYJXV'),
('FVEJKSZQ','Lawton','Daniele','FK7 4EF','82214 Eggendart Hill','842 352 1899','ldanielek@aboutads.info','54ARPD9'),
('FZJXKBND','Skyler','Chichgar','EH4 8MN','5530 Independence Circle','107 609 4159','schichgarh@constantcontact.com','BS03EM0'),
('GRRVQAB6','Hersh','Larman','KA1 1AL','4070 Green Court','129 769 6303','hlarmanr@google.com.hk',''),
('H77VBDW3','Cointon','Lambdon','B1 7KK','1953 Lyons Trail','849 556 2084','clambdon2@flickr.com','YQDN28H'),
('J975MXD9','Brigida','Mullett','G30 2KM','8 Pine View Crossing','500 233 9097','bmulletto@google.com','BS03EM0'),
('JNKQ9FHQ','Garey','Tupp','EH1 0IS','8 Arizona Park','857 717 4980','gtuppa@zimbio.com','BS03EM0'),
('MMM4B1JV','Archer','Danilyak','KY12 5G','38059 Eastwood Crossing','169 847 7396','adanilyakt@dropbox.com',''),
('MW3MMZJ7','Hyacinthie','Mattschas','G10 7HB','49 Thackeray Hill','949 472 6707','hmattschasm@ftc.gov','MJ2JSHG'),
('N31KQAKM','Gracia','Boscher','B1 1AA','3 Novick Point','386 847 5390','gboscher1@pinterest.com',''),
('NKA6X97F','Nadiya','Lamberth','BL1 2BT','3322 Hallows Hill','527 356 3328','nlamberth3@edublogs.org','MJ2JSHG'),
('PHXNAQJ0','Janelle','Behnecken','EH2 8BC','26 Dunning Parkway','703 686 0183','jbehneckene@craigslist.org',''),
('Q70FPH47','Rose','Sandal','EX10 9M','45 3rd Point','664 709 8259','rsandali@timesonline.co.uk','YQDN28H'),
('R2SFDEX3','Tonye','Oldfield-Cherry','EH1 8LM','93157 Nobel Road','205 366 9275','toldfieldcherryd@fc2.com','BS03EM0'),
('R7SS268T','Barnett','Horsewood','EH2 9XC','2747 3rd Trail','757 685 2968','bhorsewoodf@jigsy.com','MJ2JSHG'),
('S8QNNAT9','Hillyer','Waye','CT16 8N','956 Fulton Way','582 497 2018','hwaye8@psu.edu',''),
('TKZRTRJ5','Yule','Calder','FK7 7XZ','616 Old Shore Trail','174 130 0245','ycalderl@joomla.org','9BFYJXV'),
('W5A59Z49','Clevie','Billsberry','IV1 9KA','00 Colorado Drive','217 861 1093','cbillsberryq@patch.com','9BFYJXV'),
('WMPX90N2','Aliza','Cruess','CB6 7WG','1 Kennedy Pass','117 661 5718','acruess7@theguardian.com',''),
('ZWTZK6TE','Abbey','Coombes','EH1 5ND','0 Thompson Circle','777 310 0950','acoombesc@ezinearticles.com','54ARPD9');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prescription`
--

DROP TABLE IF EXISTS `Prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prescription` (
  `prescriptionID` varchar(10) NOT NULL,
  `dateprescribed` date NOT NULL,
  `dosage` int(2) NOT NULL,
  `duration` int(2) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `drugID` varchar(5) NOT NULL,
  `doctorID` varchar(4) NOT NULL,
  `patientID` varchar(8) NOT NULL,
  PRIMARY KEY (`prescriptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prescription`
--

LOCK TABLES `Prescription` WRITE;
/*!40000 ALTER TABLE `Prescription` DISABLE KEYS */;
INSERT INTO `Prescription` VALUES
('1383892245','2023-04-08',16,98,'Animal-drawn vehicle accident injuring other specified person','34154','9947','FZJXKBND'),
('1634654226','2023-08-02',24,34,'Accidental poisoning by arsenic and its compounds and fumes','23810','4449','W5A59Z49'),
('1721487271','2023-03-09',22,42,'Tick-borne fever','19111','3326','AW2DP3NZ'),
('187972885','2023-05-04',9,94,'Bartter\'s syndrome','51049','9116','H77VBDW3'),
('2224949421','2023-02-11',27,86,'Primary exertional headache','23810','7781','R7SS268T'),
('2586366387','2023-09-08',2,67,'Conductive hearing loss bilateral','44532','7842','DX8G293R'),
('3017239403','2023-07-01',17,74,'Prickly heat','43091','4449','WMPX90N2'),
('3020794749','2023-09-06',8,69,'Leukocytosis unspecified','69945','5701','CNWCCF76'),
('3192597224','2023-08-11',8,74,'Deep necrosis of underlying tissues deep third degree with loss of a body part of ear any part','43091','5701','MMM4B1JV'),
('3353148299','2023-07-09',11,13,'Shoulder girdle dystocia unspecified as to episode of care or not applicable','2793','9947','FZJXKBND'),
('3502677913','2023-02-03',11,7,'Myelofibrosis','14060','3802','FVEJKSZQ'),
('3662171880','2023-05-06',1,74,'Scanty or infrequent menstruation','51049','6689','PHXNAQJ0'),
('4359321449','2023-06-05',21,7,'Other specified forms of chronic ischemic heart disease','19124','4516','W5A59Z49'),
('4708502419','2023-06-06',27,18,'Fetal malnutrition without mention of \"light-for-dates\" 2000-2499 grams','89448','6689','12B89XAT'),
('5025852498','2023-01-10',18,16,'Other closed skull fracture with subarachnoid subdural and extradural hemorrhage with moderate 1-24 hours loss of consciousness','49226','5701','D42X803Q'),
('512779201','2023-09-09',16,57,'Personal history of malignant neoplasm of tongue','69790','5701','ZWTZK6TE'),
('5227464707','2023-01-06',7,15,'Other motor vehicle traffic accident involving collision on the highway injuring pedestrian','49226','7697','N31KQAKM'),
('5244237101','2023-03-09',11,21,'Pneumonia due to other specified bacteria','2793','7873','12B89XAT'),
('5462093209','2023-03-06',4,53,'Acute miliary tuberculosis tubercle bacilli not found by bacteriological or histological examination but tuberculosis confirmed by other methods inoculation of animals','73065','3527','ZWTZK6TE'),
('5711059645','2023-01-02',7,1,'Open fractures involving skull or face with other bones with cerebral laceration and contusion with no loss of consciousness','34154','3527','ZWTZK6TE'),
('6255400034','2023-05-04',6,54,'Tuberculosis of other specified organs tubercle bacilli not found by bacteriological examination but tuberculosis confirmed histologically','69388','3802','N31KQAKM'),
('639298672','2023-04-03',11,89,'Cortex cerebral laceration with open intracranial wound with moderate 1-24 hours loss of consciousness','2261','7697','FVEJKSZQ'),
('6429870731','2023-06-08',18,95,'Open fracture of hamate unciform bone of wrist','99089','9783','GRRVQAB6'),
('6619433928','2023-08-02',2,75,'Panuveitis','20819','1724','JNKQ9FHQ'),
('6662431982','2023-07-07',16,42,'Liveborn unspecified whether single twin or multiple born outside hospital and not hospitalized','55269','7842','AW2DP3NZ'),
('6900552633','2023-05-04',8,16,'Low birth weight status 2000-2500 grams','66834','5512','7X8D058W'),
('8021044578','2023-09-03',18,4,'Other injury to small intestine without mention of open wound into cavity','99089','5512','01YB9G9E'),
('8076157641','2023-10-07',9,35,'Nephrotic syndrome in diseases classified elsewhere','95274','9783','ZWTZK6TE'),
('8418278153','2023-01-11',12,16,'Unspecified failed trial of labor unspecified as to episode of care or not applicable','51049','7873','N31KQAKM'),
('8514507559','2023-03-06',3,66,'Disorganized type schizophrenia subchronic','19798','5512','01YB9G9E'),
('8557855583','2023-06-03',15,4,'Stenosis of lacrimal sac','69790','3527','6TFR6XE6'),
('866920552','2023-07-03',17,32,'Primary tuberculous infection unspecified tubercle bacilli not found by bacteriological or histological examination but tuberculosis confirmed by other methods inoculation of animals','2261','3802','12B89XAT'),
('8687320965','2023-10-06',9,65,'Balanced autosomal translocation in normal individual','66834','5701','6TFR6XE6'),
('9118023975','2023-10-06',17,18,'Supernumerary teeth','99089','4516','Q70FPH47'),
('9213587716','2023-04-01',16,68,'Other specified diseases of pancreas','9652','3573','H77VBDW3'),
('9286518919','2023-03-05',7,59,'Hemarthrosis upper arm','49226','1724','AW2DP3NZ'),
('9550598101','2023-02-09',24,5,'Malignant neoplasm of thymus','19798','7697','W5A59Z49'),
('9578308388','2023-05-05',22,20,'Other syndromes affecting cervical region','83806','4438','9GM3J9FK'),
('9629846527','2023-06-04',24,22,'Circumpapillary dystrophy of choroid total','60094','7763','H77VBDW3'),
('9729515417','2023-01-04',28,83,'Poisoning by other antipsychotics neuroleptics and major tranquilizers','76121','3326','MMM4B1JV');
/*!40000 ALTER TABLE `Prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visit`
--

DROP TABLE IF EXISTS `Visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Visit` (
  `patientID` varchar(8) NOT NULL,
  `doctorID` varchar(4) NOT NULL,
  `dateofvisit` date NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `diagnosis` varchar(6) NOT NULL,
  PRIMARY KEY (`patientID`,`doctorID`,`dateofvisit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visit`
--

LOCK TABLES `Visit` WRITE;
/*!40000 ALTER TABLE `Visit` DISABLE KEYS */;
INSERT INTO `Visit` VALUES
('01YB9G9E','4516','2023-09-15','Open fracture of upper end of forearm unspecified','81310\r'),
('01YB9G9E','7842','2023-07-12','Open fracture of base of skull with cerebral laceration and contusion with prolonged more than 24 hours loss of consciousness without return to pre-existing conscious level','80165\r'),
('01YB9G9E','9116','2023-12-05','Limited duction associated with other conditions','37863\r'),
('12B89XAT','9055','2023-07-15','Nonspecific abnormal findings in amniotic fluid','7923\r'),
('12B89XAT','9055','2023-09-13','Accidental poisoning by primarily systemic agents','8581\r'),
('621HD7PN','5512','2023-01-05','Malignant neoplasm of brain stem','1917\r'),
('621HD7PN','7763','2023-04-25','Family history of other neurological diseases','172\r'),
('621HD7PN','7842','2023-02-19','Other injury to spleen with open wound into cavity','86519\r'),
('621HD7PN','9783','2023-07-07','Insertion of implantable subdermal contraceptive','255\r'),
('7X8D058W','9783','2023-03-25','Abnormal bowel sounds','7875\r'),
('AW2DP3NZ','3527','2023-08-26','Other noninfectious disorders of pinna','38039\r'),
('AW2DP3NZ','4516','2023-10-21','Talipes unspecified','75470\r'),
('D42X803Q','7842','2023-02-22','Crushing injury of multiple sites not elsewhere classified','9290\r'),
('DX8G293R','3802','2023-10-02','Unspecified polyarthropathy or polyarthritis pelvic region and thigh','71655\r'),
('FVEJKSZQ','1724','2023-05-02','Complications of transplanted bone marrow','99685\r'),
('FVEJKSZQ','5701','2023-02-12','Fracture of lateral malleolus closed','8242\r'),
('FVEJKSZQ','5701','2023-07-01','Closed fractures involving skull or face with other bones with other and unspecified intracranial hemorrhage with loss of consciousness of unspecified duration','80436\r'),
('FZJXKBND','7842','2023-02-06','Hemorrhage unspecified','4590\r'),
('GRRVQAB6','5701','2023-03-21','Open fracture of ilium','80851\r'),
('GRRVQAB6','7781','2023-01-17','Unspecified umbilical cord complication complicating labor and delivery delivered with or without mention of antepartum condition','66391\r'),
('H77VBDW3','1724','2023-05-08','Unspecified psychophysiological malfunction','3069\r'),
('H77VBDW3','5701','2023-06-06','Full-thickness skin loss third degree not otherwise specified of neck','94138\r'),
('H77VBDW3','9947','2023-04-24','Other frontotemporal dementia','33119\r'),
('J975MXD9','9116','2023-04-13','Other lymphoid leukemia without mention of having achieved remission','20480\r'),
('JNKQ9FHQ','7781','2023-05-19','Exostosis of jaw','52681\r'),
('JNKQ9FHQ','7781','2023-09-13','Legally induced abortion complicated by embolism incomplete','63561\r'),
('JNKQ9FHQ','7842','2023-04-04','Acid chemical burn of cornea and conjunctival sac','9403\r'),
('JNKQ9FHQ','9947','2023-01-06','Other Staphylococcus pneumonia','48249\r'),
('MMM4B1JV','3527','2023-09-30','History of physical abuse','1541\r'),
('MMM4B1JV','4516','2023-10-17','Epilepsy complicating pregnancy childbirth or the puerperium antepartum condition or complication','64943\r'),
('MMM4B1JV','9055','2023-01-21','Russian spring-summer taiga encephalitis','630\r'),
('MW3MMZJ7','3802','2023-02-21','Other venereal diseases due to chlamydia trachomatis pharynx','9951\r'),
('N31KQAKM','3802','2023-07-03','Other specified disorders of circulatory system','45989\r'),
('NKA6X97F','5512','2023-02-20','Accidental poisoning by chloral hydrate group','8520\r'),
('NKA6X97F','7842','2023-09-17','Foreign body magnetic in lens','36053\r'),
('PHXNAQJ0','7781','2023-02-19','Traumatic amputation of arm and hand complete partial bilateral any level complicated','8877\r'),
('PHXNAQJ0','9116','2023-08-08','Sprain of lumbar','8472\r'),
('PHXNAQJ0','9947','2023-05-06','Family history of other specified malignant neoplasm','168\r'),
('Q70FPH47','7763','2023-04-10','Unspecified anomaly of fallopian tubes and broad ligaments','75210\r'),
('R2SFDEX3','5701','2023-03-09','Burn any degree involving 90 percent or more of body surface with third degree burn 90 percent or more of body surface','94899\r'),
('R2SFDEX3','9116','2023-02-25','Neoplasm of uncertain behavior of other and unspecified digestive organs','2355\r'),
('R7SS268T','3326','2023-11-03','Better eye profound vision impairment lesser eye not further specified','36905\r'),
('R7SS268T','7763','2023-10-21','Bariatric surgery status complicating pregnancy childbirth or the puerperium delivered with or without mention of antepartum condition','64921\r'),
('R7SS268T','7781','2023-11-09','Fusion with defective stereopsis','36833\r'),
('S8QNNAT9','3802','2023-09-25','Boutonniere deformity','73621\r'),
('S8QNNAT9','9947','2023-01-05','Visual deprivation nystagmus','37953\r'),
('TKZRTRJ5','4516','2023-05-13','Sicca syndrome','7102\r'),
('W5A59Z49','7842','2023-08-04','Malignant neoplasm of heart','1641\r'),
('WMPX90N2','9116','2023-09-01','Anal fistula','5651\r'),
('WMPX90N2','9116','2023-10-25','Acute parametritis and pelvic cellulitis','6143\r');
/*!40000 ALTER TABLE `Visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28 14:58:24
