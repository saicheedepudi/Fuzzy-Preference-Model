CREATE DATABASE  IF NOT EXISTS `fuzzy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fuzzy`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: fuzzy
-- ------------------------------------------------------
-- Server version	5.0.17-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `si_no` int(11) NOT NULL auto_increment,
  `categorie` varchar(50) default NULL,
  PRIMARY KEY  (`si_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Whisky   '),(2,'Rum'),(3,'Bear'),(4,'Test');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL auto_increment,
  `p_name` text,
  `p_price` text,
  `p_desc` text,
  `p_image` longblob,
  `categorie` text,
  `rank` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'KnockOut','180','SXQgaXMgU3Ryb25nLGFuZCBnb29kIGZvciBoZWFsdGggYW5kIGFsY29ob2wgY29udGVudCBpcyBsZXNzLiA=','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383-7(-/+\n\n\n\r\Z-%\"-7.777-8//---.+5-++-7---/-+7--+---+--.-1+-.7--/+--ÿÀ\0\0²\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0B\0	\0\0\0\0\0!1AQ\"aq±2B‘¡#Rbrs²ÁÑ3C‚’¢Âá$4SðdñÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0/\0\0\0\0\0\0\0\01!QAð2ÑBaq‘¡Á\"RáÿÚ\0\0\0?\0Þ(ˆ€ˆˆˆ€ˆˆˆ€¾^ð$€d“`iUÝ°Û*zuÎô¤^8ë×}Ú´vÔm¥Uk­#Èo³\ršÖýJ\rÍŒôA-38pˆ/Úã’ªWtºÿ\0ÝÁ$¤ŸpÍk<#«ªví<Oz1f·íJl>!\\°Þ†*ßœÒÁ\rø\0é_ã ø•W…ßcæ˜~’t¹UÁôãº\'î_PtÅRXS<w9‡ßu-BQ{u’õahWOB·ÍÖ8¯\0?…á5ŸÃÇþÿ\0´¤0¾—âu½=;š8º7‰»%vÁ6ž’¨|ÄÌqúî¼	ÍiL[¡ìBºÀièÞZÿ\0å}¾*Qòši7&cÚö›Ùà²An ëãšuy\'ï^î´E£¶7¥Ic³*	š>$þÚ1ÎþØ[—	Å!©²Àðö#äGØ²RÌDDD@DDD@DDD@DDD@DDD@_„¬zº ÞõêëPNoø9¬8+[lÔUU}‰±AcU>vÉ˜|9YÓ¼BÞ\\7ÝØ>+ÖM¥l1¾IQ.<òà;N‹žö—–²¡õ³ÝhÛ¨cF€@|Q1\ZöxWWMQ)s‹¤šGfss·Ž£‹»8-«°½\06!™6siÁÈ}ó†§êtSìicmMCA¨x»AÏäì<×<O‚Ø«5Ýw\\cí]üý>¯*ZfFÖ²65Œh³ZÖ†µ£ ½QS6§n™1Ãg¼dçU§úGà–¼V5““ˆ¿M#Y÷ºæ‹FUí=LÆî‘ç³x€;€É)¶Ž¦‘ãøÍ¼F…kÿ\0Sì7éùã_Ãùÿ\0æ°1œ\Zž©žŽ¢&HÞÃ6žmv­=¡T¶k¤ÈDuä$ýaÃ¼+Ø*úÞ·ŽÎOÃeá¯¥ãO~\r·KM½QF],Më9Ÿ½„sõÚ9ŒÇnª¹±»[=¡ì:‘é~¤íäy;‘]:µIûÆï×SÇÔÍÕ´ZÃŒÑ¡\Z‘ãÍNš1êŒ­¿½Û\'g±È«!lðœŽNiõ£»µI®vØ}¦~R7½÷}-´’z²´}!Çü®††V¹¡Í µÀ9¤hAÌ²PûDDD@DDD@DDD@DDD@_Ž6õ|È2=È+x•MÜ{Ôcç^ø!ÅEHô.¬#ŠŽª®<×Ä²(š¹sA	·Ø¹ôM„\\ÝßdiñòN‡¶`UU™ämá¦ €t|Ú´vØõpU}«©Þ¨w&5¾:!Â„dYÓ^wó%þ­ÿ\0„5D³¬éÝsDE,¿ÆÍ5=šlù.Öž-hõˆ÷â´]eY%l.—ê§c86 Gy&ÿ\0’Õuf´sN¶zÎYHÅ‚4Þ{¥h«Cu^•µÁÃ%¿K•Z:\'Iste™¢0<ÝÑ‹°Lz[Àù­•ç£\nÂÚØG0ö‚ÓùÙYŠzm\rN>‘›¢};ÇäÞkñÂùG´/Ô%o¼sŸúFÙ’NæFßšxuE àÑûúî´rWž†vƒÓSº•æî†Îˆý(§¸ù…ùÒhùE;Ë}xO¦‹˜,õ€ïmÂÖÝ\Zbþ‚¾h×?Ð»ìKêû‰ø(o\ZÄYÒ(‹ð•*Ÿ¨¿_¨ˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ‚¢ö‚ªTÇe±žÀEŠ¤í=1‰×àtA_˜(ÙcÎë5õ^%à ÔØÛ¯,Ýä|lºÇ§ÁcFDÆ€¹7iÎ;]ú®³Âæ†\';‹AD²‘ÕÝ/Ðø¥¶Nao‹Mÿ\0¸-CXÛÓ;OƒŠ¨µëFy8~º.|Ú,5Ð¹Í{H Ø‚4!jå®–Õè¹~x¾(¯¬ ÁBåæ×…êÁuSY{B¯QÖÂm“7¤w`\r |HTÚX.@ztq³†š$‚ÒÊÇF4ç_rËu³[ÏðÎ»ÏoÕp^UFÌwÙ>KÕ|½·s[¯.ÖÕófoÜ{–™¨ŒÁS+îä»…×oÁÁn|r˜²GÍj\r©­¨îoácê¿ìL:^\\Lc“‹Ø×æ£iqa¼K³X2µß!£wþ¼wïÜj9¬”.ëÜiÉJÉ^ÐÐãÇ@©r³ñyËwÉ·÷ ³¶²íÞË¹zÓÕ5Â÷Ó^ÅFŠ¼Ú×R”56ŽG7O¿‡ÅœT7ŸŠôSãÅÝ»»ÁgS×Ú\"] smâtAcE_‹ëÜ…ôYUžã¬r	Y²/ˆ¤Ãˆºû@DDD@DQØ½nãwF§à}ÕâMnC3ð\n½ˆ´M›ÞîÁÀ,if¹XòJ‚/ÃZ=RTWÉJœ¨zÅj\rS¶Û•.¸ÉÀxÍoÎ‰1OO…ÓgwD\r<Ÿj,‡½»§Åjž‘0íæ6P3oT÷,Î‚¶ˆCS%#Í™SgE}Kc½Ì·òíªér¶ŠFn0ïÔØ.7x‡‘*S¥\rª04SDl÷ÊF¡§FŽÿ\0ÓšÔÏ¯ÝÓ_h­lÙ~Ì;¼·€í¯3#êuƒ=ÇY}@Ò8)\ZªÇ;ŠÆiZýNÄâEç£)èÙQ¿T@u‡ .ý˜ãÀékä·£\\AÌ¡‹—`rÛí±¤‘×ÔÓÜé•ÜÁÙ‘#ÅlaÉþ.G2àíhø±;z}ßse¢/™\Z	:r¶\\^9ƒ‰…Åƒ¼×7mKo_RÑŸÎˆÇið­ùŒí\'£ŽY‰³#cŸn{¢àw“aâ¹çÄcmTsÏw7§•£Wíë\\ÿ\0ÜÔz¬ïÑÔ”ÔMñÄá“bkfë@T\nÌ\"q#‹CK.wN÷˜Î’èª\ZÇº7˜x¶]„d²_\\n×ÓêØÜX)VÈÙº1½ó‚Ç†yÊêSiðàøËš:Í¥Ø±°ÇæN9[ºøÛÂÛÄsåä‚›IE5úÑ>ÓOæ­5ØWú^¡7b>—bÂ†k¸çóïR¸^ìQƒí?>áÿ\0B\n…4¥À<gÉJí<‘¶64ßX–‚nîÕ‘÷“.ûr¾cà²ñZ‹>Çþ6‘Ù­üDáÑ½¬tÎkŽæa»¦î<<ž³Ib$’Ii¥MRH=ÉÒÀÿ\0P_¸<·—/ûp‚~ÃZ\Z8/´DD@DDQÅç»Ü­®ÑRq=\\‚\"L@	Y‰.¹îš÷z„€Þ®ü™æÂœziBÆ²ÌxXÎjzêa#ÇhánãÀ­G_M%4ö±ìxs5kÚn×âÜ%@í^\0*#/hùÆŒ¾°åÞƒftwµìÄiƒòÇfTÇô_lœÑôbAï©rnTPT¶hNëÛÕsM÷%g<ríàº+eöâ–¶óFà×ÆÂùáqðØsÍ¹dá‘DÄkÙ¥6Ã3UÍ%õ‘Öû Ù¿\0’gŸ­c®û¬\nƒ×hä<×?y{)žŠÄGàÉ%}°¯5ôÅYQ5†bG3M‹$cÇmŽcÄ\\(X—¦ ë1¿kò(‰ÒcIu25®\Z8â..ÕÕ–FÖh›÷þ¬Í›“z’™Üéâ?Ð7¥m«‚™¥¯©Ì²;Ü1§Û–Ú6ãMM—Cxx¹Ž›ÌxPzGÆ:¤7ZYþ¬cöm=¤çn@-yU†d½˜6Ôv+>Ë`ÒWTÈ\\[½¿<‡W“Ã¼è\0¶¾3³tóÓ–9€z6h±n€ÙØˆ™ÕÏMy\Z)|/h§„‚Ç¸xåîS[°u4fîa1œÚð:½Ç‘ìU\'ÄF¡KÙÙ®“@ NÀ~³r>íÂ|Z*·1ð¼8\0EìA¹9Î­$,úVHÈ-qv è\Z×wÚ>jGhÜ„Yß—èµ^Ît‚ZG¦Ã‰Ñßå_qv\Z¨c08nÒ:Íå’ºüç»È,œl7ÓX“D;½­V.H!Ç2\ZIð·ÁyâŒ/Ÿ|Ÿe™põB	(ÜK#Ž–hÖÚ¸q_{:y#KðX•Bðp°$s;ãôY&NhúÍh-ˆ€ˆˆˆƒæS`{•+ö»J·â\r%Ž¶ª‘[.dº?÷Nû-üÔû‚„‰Ÿê‰æÑæTáAàà¼^ÕõâôîÒ ¾\\¤½‡2\0ñ(šî¢b8*\\Ì¤i#íùªdðÍO!k·ãx»N­uŽ­=‡‘]!ƒìKbuß&ûC·ƒw-~=lÊ‘Úm“¥®m§­k6FØ=¾<GaCmœ¾ÊËž·¼~‰¼—‹ÖÀÚ^‡ª¢%ÔÎ³PV@>É×À­[†O‹e‰ìpàæ–•M°Äìèâæy+ï»%}±E‰Ü8Ÿ5ö*ÝÏúUS‚Î…y¾;ÄûüÓQ/ÜPõ˜ÉÙÜð±P¿*ñ>\0%ƒìÍe[¾fÍÖ6î9”`ó*²szé¥+ú­\réFª:¨àŽcKPsvåÎè§B†ñ¾š*öMW!s‹·K¯,®¹.<s>³–ÅÙÞ‡„m2ÖÈCK„LÒà{OãÜ=ë2–ÓºÐ\0\0@v-ˆ;8Ö´ä´Ú}Y¸pEºÆÙŒis¹›’yœ•Ÿf¤;ÖÊ×\0ü}Ÿ²›îŸñS[ x}U*å#µbôî‰Tb»Ãz;Fþ^Ãöù-¯´ß²µUb4ž3³sSºÒ0ŽFÙ8sB¡Ÿ\Z®šI##‘¡Ìs\ZÒ.gõP[QÑ+]wÒ;·Ñ¼þþ¨4cI\nFƒ’2\\A«3ÙÉ©ÞY,naäE¯Üx¨wÄF¨6fÎmýº³Üïˆ¸µûVÄÃC*­$Æî«AmÈsl\0Ì[±s{I\Z)|#–1Îi\Zlƒ¥ið|­!nØ}opn²éðÈØnÖâääB×›#Òƒ_»Vº	÷Ì-—O;^Ðö89§0A¸(=GÖàñI›…0l¤7Ác‰÷`>®¤Ü¨÷«NÐ³CØ«Ž1\\~%XÈ€sïbàÑa{¸©W…ZÛÔ‡ïÛääm7\0óY4^¼xÏÄ<^¨îY4¯Þ7Ì(–UÝ²QKiN™dskkˆù¦è{ÖëZW¦þ©¿tß2©Íòº\\®5Í1>>{ò—C]ß|ì“LeÁ‘Þà›JñJ³ó_ÆßÍkEíåÝ¿\rŠbg¢?Fu\rS·…¬;˜ÑäNaÃæ¢û¶þ¹jÝf÷®¤ÃcÝ³ð…v	™™ÕÌæØëJS¦\"7þµçæßöJ×eb¶aXRa08ÜÄË÷[Él¸‘:)la1Ê\0$–X\0.u\nkeapvmpº–§é¨c61 ó5ˆyÍ^,àäVþ¡ýNýT‚ òŠ°\rÙ³÷¯TD¸†í,š6½§ƒ…íÝÉk­¤è»©_c¯£~ŸÂþ+g¢_Ç6VzgnË™Êã\'w;B¡\Z…ÖÕì‘¥¯k\\Ó¨p©XïF4³]Ð“¹[yžã˜ð(9þ\'¢¹ìvÚÏHáØOY„õOè{Vf3Ñ\\W!ž‘¼ã;ßÓ¯ÁUåÂäŒØ´‚5}ÅGlþ?\r\\añ;?m„õ˜{{;TªæJ,ZjRœ×‚7lu7\ZŽK|l6Ó|º÷7uìpd–õI\"àÑFãêõWxVÜY·Œ÷ª¤£4ïU½°H~ý¾NVWªö×0–CoùÛää´þ¨îYØczìûmóXtÃª;”–	t\ræ	ì¨˜ÝDD@©[y°†¹Í’9„o\rÝ!ÌÞk€$\rÁÏµ]QcjÅ£I[‡5ñ[ª“¤´¨èv®ÿ\0î)íÝ\'••£fz,‚ãTæÔ,c´l9g©$öå©[	1Š±Ý³“˜ñ¯LÙI±Ø|Ne$ÀÜ$czöS¨‹8ˆšv½­óN¢\")b\"\"\" \"\"\" \"\"ðª¢ŽAi#cÇ\'45îˆ*¸‡GÔ›ú2ÃÍ®òöS8\r$^ŠÙ·.q&î{Ž¥ÇÀ{”Š \"\"\" \"\"zèË˜@ÕVf¡–ÿ\0³wò«r §3™ÞÁ® •1C€FÖ‘(l„ð-£ºü{TÊ ÁnN?tÏå.(šÑf´4r\0ð_h€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ?ÿÙ','Bear','0'),(2,'JhonyWalker','2500','SXQgaXMgdmVyeSBzcGVjaWFsIGFuZCBvbGRlc3Qgd2hpc2t5IGFuZCB2ZXJ5IHN0cm9uZyB0by4=','ÿØÿà\0JFIF\0\0\0d\0d\0\0ÿì\0Ducky\0\0\0\0\0<\0\0ÿî\0Adobe\0dÀ\0\0\0ÿÛ\0„\0		\n\n\n\n\r\r\Z\ZÿÀ\0\0:\0:\0ÿÄ\0Œ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1Aa\"23Qq¡±ÁBRr‘ÑbC$5ñ‚¢c4\0\0\0\0\0\0\0\0\0\01!Q±Ñ¡2ÿÚ\0\0\0?\0å›VÛ-ýÁ]aŠ52ÜÜÉ_.(—ÄíLùÐ™4<QagVë5­­“šGºîàK4ÔâÐÛ÷ÕGåCùŽxY]Þ«[Ã6×ºNêt[Kiò’ŸL&£—{5´öÓ<ÆÑMÓ\"8¡r#\0\"G¿ƒií0ÀcLþ˜1ÉÌ1ƒ·[ÿ\0_zuÌ \Zb€ŸÂd~¸`*ÖæÛªÙm­«zp‰}¸E–e–O\r•’œ£XÇt•¥HbHQ€Ý½‡ªlâ™·«›Ø­H{ËÝ28JæG\"´št’*U\\Žc+1 u~ÙöÁô€<:Ãç1«Ëˆ#%)ß]ZN* Y?ÛØ0+Û\\\0Ý9Œ@:Qkúe,5ºÛ2‡{‹=J„¨C*I\"Ðñî)À0Ûn¥éþª¸¸2¥Žsye<ž›‰®–4ûË!äAÀXÛõ=ýÄÐÈâöùLQÛDÂJ	(³-V”Uœc±h‘:eÚ_§›l²•`V™#gÍ”|ªVV‡tÔ{0›DFR)Ý8‡!Ýv÷±¹0;}*ÄŽP­>Ç=£e{£†¾Æ‰ÕnÙç£GÊ.Bª–cÀ(©?Žî!2h}Ç\0?]1Žçp´Üà»ÛŽ›ÛreŠ”Ï@©<j9sÅ2mË¤·½´…’Ý.”«ü¥Éxà©\nXC:÷Ðwˆ¡áÃ1€em´Å·À‰ý>×sp=»]Íß”FT™òPæ\04çŒZÑ\rÖ“%ýIºÇ5˜R#Æªj¨Œ¼Ì@ó[Ù7ìm–øéÏ¤xû=O­¦5×ä¿³áï.G>ã}s{4Žú‹±‘ƒ{Ià1èk¤R±XâvÛÍí6žeYÐ;•Œ^ÝM	3Å‡\Z–¬hsÆåˆ‚þ 	<ß=\ZhYN—QÃP~8°–‚M?]qYSB¡Ö­¬jî\Z}‡ØÃ[úu³®ëÔ\nÒöö15Üñ¯Ñ@Š¥u9ìÆmœtj˜ÏSýã¬|ãw,‘{”%V)~ñ¯ ÐcàþKO7Ÿ(ˆ÷z_×Hýis3øè—¿¸šê˜ÙœŽèa@£€™céÕ¦ºãŒ>MÛí²siÊfêóNP‚IÇW²†[»q Œ”.(às¡È\0ôÔ‚D!ŒˆÁÛßL°„’L¾Ÿ£\Zeì·SÜ2Ÿ[\"„S@;«Àd»ô³u{©D]\'æá’\0Œt†jkE©ÈËÏVº®ÓrÛækÍÊÊ6y¤V’>bª†¦Q‘›t’wÜ¡½•`\n Ã³’à’G¸í®’‹s©ju§:Ë\"ºd”#Œ›%o³Ckhovùmå\Z#*t·ñqR=Ø	í»—àþg•ñü_—)†vi!h§aÉAÃ±ÄlÌ Ù\n\01Q›ÛÞÙÌ+Å,l¤0â¬T:æ853§ëî­ß÷»vÉ£±lÝ¿)¦@öå\\¸âa®â¡rlm\nA ¸šä,%C\0„WOxI¸ç˜øaƒ-ïRGJ¡Ò|Z†X˜2Û‹qÚîÔ!|ÃÀŒ€=¸»Mâ˜Ì)\ZrÀny	ü>*à9àá2¥éÏSlõ?È7‹Òô—þf\0³ÿ\0…³õ};KÅã¸ðÿ\0Ùø{0²q~<yñÿ\0\\\0$çÇ\0;oý?w—‡ííÆZWÙÿ\0+Ü=ø!¯íáˆ¯ÿÙ','Whisky','3'),(3,'BlackDog','2100','SXQgaXMgdmVyeSBzdHJvbmcgcnVtIGFuZCBhbGNvaG9sIGNvbnRlbnQgaXMgbW9yZSA=','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r\Z-%----//---------------------------+--+-------------ÿÀ\0\0·\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0?\0	\0\0\0\0\0!1AQ\"aq2‘¡#BRb±ÁÑ‚$Cr’¢²4ScáðÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\'\0\0\0\0\0\0\0\0!1AQ\"aq2R‘BÿÚ\0\0\0?\0¬1ªvÃ^¡à¶KEÄ ¨¨ÂáI›;„]<…ã/³ÖÉ„H¸kcMi‚—C€.=7+0ìM¬“ÀÌ§ÏK¬®ÂyŽi±MDQ†Ž`ñtËº›Eá¢Íq6yy.>[+´2ÕyF€Þ(ìOß~é£ñ:ªAÌ‘ÁàìÝ~J54Íhô°WIF‰s¢l„Ült)4(94Í¢eˆIk\ZÝÊYYÄnÆè¨lêÍ(z\\‡šµÝÃâ©UÜPã±²CUŒ½ÝU§Ó·äË~µ/ò·‰ÝÕv»‰œíÁUŸTOU‘hœŒwê®†U“Ý¹AºRz¡ÃÖ*¤‘¶ü“æ[Í¥¦Uµ`uDàYß‘öQWÔŽè|A²LàÒMúç	à™d³¥%£·UÎ’ò4cuà¬>W8å`.>BéÎÁóÎAx,¸7²ôŒ„¢ŠÙX	îwVºL47¢ÍyþØ½9OÀ8\Z¬KsçUv£¡lbÀ\0ˆk\0BÖbLs¯e•Ó£j‰…¶KY6F’ô^{ŒÖÉ#îô\nñ*Çèt¿uÕNƒVzÙ6:àûD³ãy—âÏ3©¢«sv*Ó_Â£vr¯VàòÇ»JÕ74y·‡&0Ú>!‘»›§´|LÓí*+è°Hº°Ë\Z=MÁéñâ±‘|Ãâ¶¼ÍµNJÅ/ã—þ{ú)\"XÔ4HÈÖ£&Œ\"Q…;\0\'ˆ\"¢CÆ®8.\\lqt§dÀ$c¦9¦xH©9o¶p\r¶º­¿ª\n£=ÒðÙE—EÑØ«#¶¯‰{*dØ‘=P©%<à_\"W¨Ž¯sº¥sW“Õ,2,/UP‘tÂ1\\‰¼Å£*`h7˜¹æ ¹êk@J2C#5Ó×†õARÇ=AË	óÖÃÔ«VÀ!Õ¿änƒÞRU¤Zq6VbšYŽX˜]è£à‰gLë~Qü«Æ„G\rc\ZÐ;\0ŽúüQœ®\"ý”k3~\r‚Wt†ðë#\05 \'tøp®©±Ýì”[efª§äÙŽ1¯ÙÑ -fULf²s&Kãüm¹$~Éf]2—‘B,ßXa»C…ýPÁ#q.7$ët‚¢Xcg€¹ÏèEï2˜`ØíØ\Zë¹Ýl/dü\Z[’~äÓÕ]G”‹:Ú…F6ö·l½\0;§Qbq¸å:ÇEªÌ)’ãÓP¹Wû#ž7æ”5÷`2	)ùÑ¿K‚‘O@æÊ\\à\\Þƒ²Š—<Œ¹Z>öÖ]Á>ÑÞã]1¥fšo0«µü(æêÍSGcÁ¤FË¿¡=J\\K6„Y2¬’%cÃ“û<êl*Pm”üÖ/Rt-:Ø|&þKú%ü	û>s€¢Ø—Bä|ºÛ£ÏØlEÄ4lê´úœ0k—\\ðIqÈI+‰ê»‰Å‚LDØ‘))šýV¹‰” mŒ$«\'ªãœPyÖ¹‰ Îj×1eZ3.ÙÜBÌ‹“*	õI«ú62†ü\r]P„š¼Þ€ÕTêÖäoã}Ú=ÝÕïàXb³¤ûW~od ¦ò$Uaû)nSR~Í‡/â:7â®ø/1¶tÇ˜¡£ùW**\r2±€µ…€MbÂÏRÍBó\ZcÒÑÑ20\ZÖ†ŽÀYg#c’WˆÖrA¸!I>^\n9à¶Íc8ˆ…Ÿ˜èÑûªW=ÅÙ‰¹&ë+«+Ëœ}`¡TGyù²»¡¥5aSš<eÃ}UT9Kö]P™Ñ•ÉèØ³OTkgk·±^}\rWšgM‰8uP¬F¸õe¦¶‰¯cš,	\\tIðêyiÛ“–ù>·SRâÀõLâ«\'k¢Éª{E?\Z­x‘®„ƒv±»ŸRœà8ÍÝ–GŒÄhÑ°	Œøt2;;š	îU~¯‡dç™ZàÖÛ@7°M¹¥§Ð«”Ö×e®LN ì„‚WRÅ­-×²£ŠY^H`,hö¤w´ïE®Å[1Ïy 8†‚nMöºÚe}½R,Ñ`™\r›b/×tÚš‘­ pLIóâÌ­û·Ü„ÚêTß†ZùGK7ZI¢œ˜iåL ‘Vèªn›A*õüöxW^™b†O	Iê$ÕI&„y%•Ô …9/\\—¨œõÁz;HG1reC™n•/!”W&Têl¢ç¹ÆÍ“°\0’}É]¢‹cT€†’· ÷\'8?TOgIö-üÞÙô=êù‚p¥==‹Y™Ý^û9ÞîÉ±¸ÊóÙCÂxZª¢Ä·’Ã÷Ÿ¹MÝ^ð^\n§„‡ó^>óõø\r•®Ž…Îö[§s ø§4ØtlÕÇ1í÷T«!I‡^:Bº,=ÎÑ­Ó¾Á9§ÃÝ\\sÛ9Ÿ Ðy(Ý\"‹¦ËÌLþÂCÀÐ.L¨|Ë.—E9‰W3ÂÉW´8v(wÊ¤æHªáµ±ÿ\0ÜgùÛü®ÑÛâü» ?ÐãúPª…ñ;+ÚZ{«Ç7¿ÓUuU\rË#C»ˆô*ÑÏùveËé&ûž™äüÅ°å`Ç86Xîø	•¿‡ûÁüª«žZlàA‚,B×4©tyÙ1Ö7ªA­‘IJÛ*‘²\"ÐŠ‡qTŽèúzçª²ÙQqTÙMÁiÉ¢áMŠé¤U€õTxªFÁZæõºc4ÆràðÒÝ®,la¼!r’_­À;»¤ÅÜ¦pÕƒÕ\'å>ªšÄE†‹¼è&Îº3)h· ¬ëhT…‹¸ƒ™òyŽMi*n¦ÅðíÊC¹JÞßú3­gü—*Ð•/Ô è+BÊŠ‘rŸfu§£oz‰Ò¡e©Z‚	%9X×8ö\0•:²ó‹ìîJ…3Èr±¥Äì\Z	*×ƒð3gNëÀÝýå]ðÌ\"(FXØúŸR“¶’\'Çeàid³¦<¡øEœóû|Áøz\nqöl\0õyÕçÞ™±¨È#}PðIÝQªzbvþ‰¥5+©ñÝzÅ[M•à,FîqØy$¦<J,Yè4òœ÷Töq\rH`ÔdÄFk²@éÎËdû\nÄã¨`’7fÄÓÙÃ¡I¢ý—AÊ\0Wm(2[¤8þ:cw&!y\r®w-.öZWíQ1™M5x•à–€ïvä\ru¼Â!å?:OD®$îÀoo\"ãûC¸V˜ô®stÚšö‡´‡4‹µÍ7¡HJàì¬OÃ³Cã¤àyoµå}¾!OÃœTey¦¼©µ¶#qnŽòêŸæ^cÅõAøœm€æxtMqf¿j{iØoè¸)ìõ¨æKñŒž¨x›•ý$nŽÊ“2í² ¶žÐMj–ÑæØç\nÏMwÌgãoAæ:$l›ºöÆTt);ÁÐT]ñÚ·Ã˜þ˜õaËè¾qÿ\0ÃÎ™\"•²-b¸<ô®Ë#uãV;Ð Ù2Ô´ûFœ½1‹fEEWd­¯]‡ ÐUÙP[\"¡­szÝVÄÄ)ÙWe7g!i‹î¥“h\Z•T5@„­7°J±&SÞe¦¯ŠüFÛ-¯<}IºÅOjAîÐIxp³•\'‡—&›¬?X¾Ë¼G5\\{@éæe¡ý5ð¾üjyo²cIC,¦Ìi? ÷¦œ=Â®iÍ.¿—¢½QR5€\0\0ôR™zìÓ—<§øöW0Ž\Z:W_ò·oyW\n:8†V1­ô\0)£†t‘–®¯ÉÓ\ZºšPÑpÊ‘ŒJjª3I¦ÍÐyž¥r[ô†T²u(ö9+§7FÄä)»ˆjj¢s\'„sbeùð4Îï¹²]q]E#Ø$ûG³ˆµÜÆÊ\rÚÕ®\'(ê`\0:FBÉ$\r%€†´¹Àh3[E61k®ˆ¸9Ò\n8¹À´†3èDwð}´²ÜIiè È\\K¹MËqÝÎwU_Ã¦“ðVNiòúƒž÷\'Úù§Q`•42‡Ñ}´/pÓHàßÌ×žßýt…ô“ìwÃüJÉÜa‘¦\n†èø_¥ÏRÃÔ+rO_ƒAPæI,`¹„9®µÍ#[\rÂÊî%¤„å’¢&ºþÈps‡¨Àóàt\nÃb¨g.VÜnÒ4svžŠhek€sHp\"ísH ƒ±)n—AÙJÿ\0—kéI4s‰{ò¤9~GÃ1d#ÇÔÎÔSD×qrEÅíqbBô;¯8úc§ðÓÎ:9ñ8ÿ\0ˆ7ý¥pòöû ¤ÇñIÎ‚Å\0\r»Ë	a&ÞÖ®>åhánŽó^îtÇûÂ,Ö_|€ë3ªóO£ŒK—ˆD	°:#ýBãæÐ½¾èo]-g\\’¸.]¢{&Î»eE…ëœë´CG½’7$páp©ø÷ƒy)Mºòœtþ“ÓÐ§¢U4uVêŒº‡ø‚ÔäZ¤yì|N,{K\\7k´!m“/WÄðØ*Û–Vø­áhöûÿ\0eæAƒIHü®Õ¤ø6pý’Ù*¾¾O;6µÚ!2-sm‘wÌTÑ$Iq5LƒÒLAú ŠÈ#¤X†sõZ]²¼KEÖêíOÉ6Ž\04¦)š‘²fã‰TlS±(Iã¸šƒc‘\r”ºF28Äªùl6Üè?”†.qZÜï67\rÐ~êdU™ÒžÇt²Ù7ŠÎªÜ¦´sÚÉiXÚ2‰iPÆÜÂát\r”Y¡ñ®‚©Ì{óG#-šrå°7Ê\\:~ˆ\nÜOsÝ=$q5¦Âz‰ZüàlàëïVV•3R´Zhó:gÔÎê|N²¢žFŸ\r8\"dm¯|ÍÐõõPÑ`ðWÔòhâåRÄAž¤ÜË7qïÐ{û\'HxUEdôôÑÀ2\\ê²îÒz\05·R¤Ÿ‰)°øÛA@ÃW0Ð2;¼g;¾G\rÍú’SB®º.Ž–žŠw6chknl\0@;•¼§«g2žA \Z8j×°ösN¡y8x}m±×IÊ×ÀÃfR€zÝ†ããr¦âŒF–\n¸gÂ×Nçeš*Sž	¦V4¹Ôiê¸dº«}&Qópéˆ\ZÇ–aßÀí~WVF8Ø,l.;jU°	c|Gg±Ì>Žiž™ó]5iŠFJÝã‘¯î×û/¥éjDŒlÔ={}.?UòÜí-s˜wkœÃêÒAý»ýâ\\ì: MÝt.ïfúHD¶eÖË*2V]Fç.36t\\£.\\—(œäR²BõÃ¦P:EåLŽ†Õ[ªAÅXƒe«šüC(µÕ^¶§1VÇ½Ë—­\nd%¤…¶È Ä¤µî(xêê´™Ô¿#6¿D—“TwÖ·Hk§Ìl7¢ø§lIµ[SC@HºÅ?È×Ë\Z=	ŽS° XäLn\\biR‡ ÃÖ:eÇÍSdø‰±ÕsPë¥sÒ£Ä1ñ¸ýâB{Ê—‹Fc—8ë¯½7Âëóm´ËäÇø«^m‚DÊžU]§¨L©åE¢¢‚¯)òN\n§O2u‡Õ[E\Z’Ñ`E+\\´æƒ¨\\…2Þ	d`p-v ‹8wBœ‡i(Zãašùâ“(¹¶c®QÙ5i]](é³Ì0!ÿ\0Å$«{C©©ÁŽ6¸6A¨h èorãîO8ƒÃ°“hi¡5. cZðÅÎí[žÊÙCC!Í†6Æó#ƒ‘Û¸5åŸF¶\\JªJ¡š¡„˜ÚýÃó¸=Àw\04À ]5[GYÄ#šÖRÑ°êÖJ{t¸Ôþ‹¯ùÊ¶†F³‚7›6®–å€þaïò*ù™‹QEQÌí!÷6°üWèGuÚšùG‘q—Tº¡õ4ŒúÌ3¸ÌÃmÛÌñm4¹:ŽêëôU€ÔQÓÊ*É({#$0Ø—[b{y%¬ãfG,XvMõ–Çf¸‡Ì€Øåqÿ\0yÑz}5ÓMEïo%ÈkºÖ™Ûœ¢s–‹”nzdŒí›s”=rù,‡’DÉÙ¹–bá¢ÁGˆW UÚª›«L«$«©%/’EËåCK*±lŽ­ÁÀŽáWL¹Ihêê‹$Õõ@¼:^ÝÀIW£fM Ã3Ž—CÏR ÕÅ-}…›ñM8K†æ¬—ÂÓn®#E*Éðs‡ŠÛað’À]¹Z^—AôrCi5ëaÿ\0µ‰ýèû1<[ÞŠÃ¦¥üÕÐ‘q îjÎb	¯RgDâw¹PÕ8rŽDPx­&v‘×p|ÕzšGFë,lUÂf$x½ßh×ïá-Ïþ—“F‰~áŒ(jÁ	Õ5B¡ÑU›+-UìšiR6\'µÓÌšSÎªôÕ	­4ëš Zè+:ÒÀ‹…R‚tæ†·¡P©/ðÆ+°åš;UÅÒ$U8«‚ÙTñS†’¥º‰ãÓ?löß×õV‹­Ý\r\r4ÓÚ+Ôøœ”4¦LN¢\'¸¢iixF€}· \"¢¯ÇK™öJFÜ<¸	M¶yÙÓa ó^‹Ž`Tõkj#»3\rË\\ÓÔ:¡Ochc\ZÖ‹5­\05£°he‘.õÙç<‹G‡?þWi&\'ÃRÙÔøKž~GoEfã3‚…–?i+…ã…§ýN?u¿¯ESúJâJzõ\"såh¿%ûÂ7wËº#ƒ8CjšËK6…‘¸ælV\Zf?yß »ú¸ë•Ï²ÕÂØ¬õ4íš¢CÎÍ¾m´xVß±LŸ\"æI²Ì\0ÕQ#%VßD’ËmJKˆb;€¡Ä1É\rMMÕ¢>ÈUÔÔ’€’eÒ¡%•TMI2\n¢¢Ê9§²I]Y}Kµ(¾,.™¼B³t²š™ò;+A$©Y¤ph^©ôÁåÖ9Äâgùvü‡%‰)žØ¯ƒ¾¤>]|ºì˜N\r+XÐ4è.\nf@Ü­y%º—ù@uÇËÛ5em´OÜg	mz2í¯[:]‡ Úõ+^¸aË¤;\\¥a\\qÌAÊÄÅÁ\r3&\rLZ‡)ÎÝºùëœ:²ÆÅX¦ŒAÕVkénÓn‡öR©âù#n‹$ûwçà³ÒÔuM©ê/¬¶…?¦U=£6Ln^™i§1‚uZ¦3‚d\Z$Zèk-¡M4p¸UgMèªímTjKEü1™6[Ì°œÂáDâ©&eTM{Çj×4µÀ	ißQ¨]Ozíb.á*Z\"çDÒç’~ÖK9íiû=ê=ë‰%@UÖ€7L¤[¶ûdµA©\r~!uemú¥Ír¯1£=VÎê*.€–E©dBK*p$d² æ™s4Ém]W@’­#V,.™Íug@ ¡¤t‡k©h(]+¯m¨pOßŸ/U<¿*ðhÉ•cü#¶\rÀ¼é\\[¥îIì½’\ZhéØ#`Ã_^êjzhé£ÈÀ/mORRÊ‰îTj¹¿ÑÉ{}¾èÔòÜ¡ÉZs—“$I²K¬QæXˆ6xže°åÖÁW$×)˜ô#\\¥DVƒ\Zå+„Œ¢\ZåÂ°–•ËÚ´Â¥²ã€db®˜<”ÝìB=‰“‚Q£u»mæ>³¡Lq\n!#{±ì«ic»u\nmp£tÒÍ:~Km<É­<ê§AW}šy•<˜î\Zz,´ó&N«´Ó&PJƒBš\n½…Ó‹‹…U‚TæŽªú]F¤¬_Ã;‘Ú¡ß%”µo	=mU‚)lôw[[`UU’¸©¨$¥òÈ­3¢MìÉæBÉ\".ý\"ímÜðèt7è…‘ Ø†ƒài5³n½5C™U…€Ë*\ni“K5¯a\0óä.ÿ\0ÈE­~À  ›ÌÀgÏ´F\'ÿ\0[´iîIYR4ãôí‰êªz,Ãh3¯Òú”Þ<=“¾ùG„€lãi?³´þm4WLÁ¬év€	7Ê	hï­Ô¥ò|«Ál·í®1ä“„8XÈZzŽŸ2½zŽ•”±†¶×°¹J0ø[r\r|NppÌÆÄ>>7ÛúPU/w)£(¹ŒæÊÓ{òÆþi2dyèž,^ÚÛÿ\0&4©¨$ ÞäÕ/»¬vÍqoe ‹8z‹®ÎµÉ$e\'L¤ûV#M	 9l5ÆëöT»këÐZù¾ÒÝ»)i\\F†ö!ÇQ±æ¾ˆªfXµu‰‰ž#u«¬X®\r¥iX±p¬…LÇ-¬DFÂ¦Œ­¬\\B¡™‹K@{¬Z‡0Ì71ÙbÄÚÚÓ:iÍ&„¿.©å\rMÖ–)cfÿ\0S+[SÊ™ÓJ±b¡Œ¡‘2¦–Ë$`FëªJÉ–,FAB™žƒ•ë*€å‘4‹K³D!]eGEÎLéNKøs¸~kÌ¬X²¥Ï/àßoÛÂê|ž‰Ã8 $\0\0—±`˜ki¢\"î#à±bSOi|=\"Þéù!ª¨.7(\'¹bÅ4Z™õ+L\0\r?žë\"&Í^ýmkù,X±pX±b\'ÿÙ','Rum','6'),(4,'KingFisher','250','R29vZCBmb3IgaGVhbHRoIGFuZCBpdCBoYXMgbGVzcyBhbGNvaG9sIGNvbnRlbnQ=','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z\Z&!1!1)+...383,7(-.+\n\n\n\r\Z,$ $,,,,,,,,,-,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,ÿÀ\0\0à\0á\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0C\0	\0\0\0\0\0!1AQa\"2q‘¡R±3Bbr‚’ÁÑá#C¢²ÂðSñ4c“ÒâÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\03\0\0\0\0\0\0!1A2Qq‘\"a¡±ÑðÁáñ3B#R4ÿÚ\0\0\0?\0÷\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@\0@clÌ$´9¥ÃhŽð¡I7„Ë8I,µ±‘IP€ \0€ \0€ \0€ \0€Ô¯ÒtðSÍCŒ’²1æâ²ëþˆnÚêO	šïéºø5ïD¿³]Göªßê!;OSƒocÛÅ®a•\0@Þ•×:h\\æ\0ùÓc€  ¸Ÿ…ÖuõÁáe¿éQÙw[\'„Ÿ?Cœ­×ùÝòLƒ‰»ÝøEŽ}£cî¤¾g¥WcÓûoå÷ «4õL¿)4„pÂßºÛŽw[>ôŸç‘èÕ¥¢¾ä×æÍP©ÃW½…Ü	Ø0–›ß–Åm#Pº/—ôS´cÇ¦šçýž‡W¬Ô±üügƒ/æÙê½[;KOO>[üù|Ï™¯A|úcÏó$-^º8ü”`sy¹û¢ß‚Þ×›ÿ\0qç¿É}ÍõöTÞ^„Ö¬iGTDKí‰®ÂHXmãè·ö~¦WÖÜù§ƒ»O\ZlJ<š&ó«Q¤bgiâügÈ,Wv†š¥5Ÿ»ù¡E“äˆä\0´ÜpyªŒâ¥”÷G)EÅá—+\0@\0@F·ûJ¤¢&(Á¨¨ãpaÿ\0»&a½Âç’†ÒæJY<×Hk~–®vLøšíR1Ä}qyÏ0N)Kº‰Â\\Í¨²¸â4ÌÄMËê‰Äñ âuÕ”VG\ZèŽ†\rQ˜Õ;y6\"G­•½š#Ú2éuZR34ÏäørüTû4G´d\\š¥Ñl€Æà>VŠwBð9†þªZêJ’}\rí­ÚBa••±oŽ`\"©èÈÑ…ûöŒøª©m’Î-<uðg«Z×K\\‰Å²··ƒÌïnñÌ\\+2ëf“ýž™ïÏwîÙõ¿À\\ø,ºË}M®oeùðæmÐQí®Iò[¿ÓïÈñÙ&x\n\'Ö6Y’Ch˜÷ýV’yØXÕ)rG+/„;Ï„ZfÙÓákoØÅwYdŠ‹ëuG/›8ÃY¶¡êl—°AaæKmó1: <$d¾•æGafgÐ\'€U’áYaÍEef„¬}4nkp¸¹Ø®oa~ÅÒŽÑ²ˆ8Ö–ï9cÍÔ×ä¤úTé)_Ûy·ò5Ú«îÿ\0$›^—¢ØˆSrF\0õ›S²Ðß\"ÎïÄ¯´ìßþZüSþY«qÀ \0€ „™Ùµã¾Ñ½¡É#5‹Y±ò´ÙÏðŸšÎ{O!¶’–6\\Ë(çvhê‡³wÈ•X£a±Ò8xö…ù\rªc¯™}ê\Z/BANÜ0FÆ\rögssŽn=åt(o~Î`µÔÉ‘‚IéªHn#\\áóY×>™³ÏWT:çËs]Zìå/±Çék|H[€;+ö¤7Ü-³ÂçšÇf²v{±Xúž…]\nýé¼µèjè]Yïkæid`Üµ×,;Z9›.ºjfž^Èã­ÔÕ(¸­ßÓõ2iý	Ñ–ÊÇ¼9‡©+M¦Üœ;mÛqÃŠÚÒG™ÙVâ5Ó«jd‰Ÿ;¦f÷F÷Ûn|mçOBœ²äñëóg¯_j8AF0Yøl½Õ\r£)ö†½Ãß=+®>d\0­ì©¬£Ôêmëé±©]§7DÀâã`>ÈÍg³]\\vŽåëÑÍï\"ÕRÊp€éÁŒ&×ä/—2¼ë%=Dò‘º…Ý›PêÝ[ó~‡Ò8äÜ¼È]ëìù¾öÇ5õ®îæÐÕúhºÓ8¿ë»~è·©+JÒ×\rÞæYjìžËcj:˜ðheÍ°·6Ë`ç%åvªRUÇ’úÿ\0_S¥1}és5æ«hÚ@^z‰ØÍMIQ/b2ùÏêÚ>\0­µvuÖtÇŸæN3ÔB=IºM\0ýãË‹4wï>‹|;¾óò_Ÿª8KXß$NPÎÆ5‘Þö ñ+ÕÓÊ4Â5xld±9ÉÈÛeK°‡4»€+¤5TÎ~Î2MøuÍ.&¶2­\0€ \0€ó¿kZÑû<=g¯\'VÜxƒô@±=ào*²–hÇ,‰öw©‚0*j†)]×k\\;7Ì9ÃÞà7wìB8Ý‘9gdz•Æ/#ØÑÅÎ\rø«NqŽòx®SxŠoÈ‰¬×*8û.t‡ƒ—Þu‡Ådžº¨òËòþMÕöeòç…çü¾Ð%qÃlmò¼=ÀX_À¬²×Y- ±ófèv]QY²Yù#Aði:¿”/\r?î»£oþ0/üªžÃQw{ç·Ëø:ÉÒiû‰gá»õþI\n-LŒg<®wÑ`ÀÞâs\'Ñh†‚+¼óò2[Ú³—qcÏrf&ÑRŽ£caÙq›Ï{³qñ+TUuòØÃ9[wy·ôûzCX‡ðÛâì‡Ú¸Ù­„vÉxh¥.g/¤kÜówºü¶%ŽzÉO‘®\ZXÃ™¯.„žHÌ®fÒ1Æáà‹ÝÍpì¿y-ÚU>MmÓ&-K‚ž`÷\'5SGM]~8£Àã‚ÅÎm¯Ô7¸»—Ÿ>Í²Sy–Ý:üñíFß©ÖSê¥C¥Ò¾GYŸtX[¿Ó\rî÷óüÁšzë§²ÛÈÍ.™¦Œ`… ÛæÆÀ\Z=,;ì¯=E5.‰zUVMå‘šbgolc—YÞ{™wj®PYüüèi†—ÄŽ‚‰Ó²9&>ó³`ïs¬Õ–/W©~êÛó«û[®¾l›¦Õinš@ÑîF3ûî•¶žÇëd½>ÿ\0ÁžzÎ‘D¥6Š¦ƒ6µ¡Þñ»ŸænGò¯N½54÷R_S4­œù²É´»Ä`¸ï\0_Ïpñ%RíeU-ØR‘¥5T®ÚCG™óØ<Šñµ=®ùAzý•é|LCü$Üù¯Ûì·¾þÆ¸×ò$4/(>è.ô·â·ö5|Z¤ü·îpÖKcÄé—ØH@\0@QÇ$ŒèÚ_õ-)-CúÔôîÀËì{8{înóÞÐ¨—¾éž|Y-¬\Zb¢IÌåâÄ¶Ì6sœÝŸŸ’Á¨¶Ë,uÃ§‡SÕÒiê®¥m¸ß}úxñêÕSÍäs}¥Î2?Ó/æTŽ†rÞ[|ßçêtŸiÕ ›ù/ÏÐ§ÕˆœŽ|‡™Âß&ÿ\0ìµCEZç¹ŠÎÓ¶]ÝöTÓ@,Á94žûmñ]—6[_µ·y6üÍyµ€üÆø»!ä³Y®®=Mè¥.dmV—öž@àÞ¨X,í	¾êüüø›kÑB<ÌTðO.qFë{çªß;o‚ç\ZµxãÑ•´UçêÉ5eÇ9¤û,ÜïÉl«³Rï¿O¹’ÎÐÏqz’QSA›ZÐ}çfï¼ìü¬·Âªª[,~x˜gm–sf8ô£\\â¬.rËÅL¯Š(ªg=EW-cº2Ê–Ø€Ì¹ió#í,¶ê¿é”á»‰Ú®4ŸR\\Ìé]aÒJþî·€Ø;×„õ:›Þ ½7ùÿ\0Fþ\në[’´š»PþÙdMà,÷\0p5¢®È¶oŠ×›9OWí’f“W©£ÍÍÆ}épð7Ð¯ZžÎ¢­ñŸ‹ßø2OSdºãÈÙªÒ‘F3#€Ýå¿ÊËD­„Nj\r‘séy]ØnÅÙzvŠòïízã´wòûša¥“4ÜÂîÛ‹¹loÝ×whÝg-¾¾¦¸iãfFd2AbÝ¼³¶1Èµç5Ió,Š*NjÜY=ÜHo–gâÒv\r^ììø¥é¿îyÚén¢M/¡0\0@V´ÕôT“< ðsú>n\nG-©š+öjV0Ž»¯3þ´™ú7~Ê´±æ^[¦šy§Ò·t­Ù“µýNÌ’àÔgãõ=¨?k¤ÇÃŸÑÕVi0Ö\\¯FráY<záÄðršGN8ß3Ü¼ë5yÚ;žÅ=Ÿå·ÔÁ¢å2Xå‰ïeÏm»³>‹\r³²É(gŸîh•uÔ²—#¢‹V¶Y-Éƒûù-uögþß§ßø0YÚ?ø^¦ü\Z>žÃqóÖwuÈðm†žª÷Kõ1OQmœÙmNšcwÜòÿ\0.¦WE\Z›5&¯™Ü<Ýþy/2ÞÔŠÚ;ù}þÆ˜i|HéœÛõ‹žã¸›ß¹£õXe¬ºÇ…÷gog¢_FÐË‚å¸1ƒ²ÈlêŒø­ú}­f\\ß‰šË¢ž¬º7[%ñH×[\r…¯ß} -õé<çfpväíb«Ž6Ù¸ZÝ¸Z¼…›ñ]—kb¾ôžL/Ó×Ê0\\GíöŽAe¿]]KwÏ¤)”Yj&mÖäÜÏÞ?’ñoí‡- ½~ÆÈi1Ì²8Ú3>;]æs^U·Ùo}çéèjq$^<.\nÉ\\ˆ1¸2á@:­[ÌbûÙK/µìº½ž–ýwú6¦\\V¿Cuz\0€ \0€æ½ ÒµŸîOyÊ²ä^ÍŠˆ÷Ùxn]QÅž{í6›8¤ÚèÉæÓvÿ\0S¼—Ÿ¬¼¤zÝ<ÂQðß×ú5ëªñ@×ûÍk¼HýUõRÍ9ñÁÏEj\Z}2s5/^jG¶Ù–‚¨¶0FÖ<ŸC‡ÅRK†Ìù3=»¦Fv”³I¾VôÏô^ìž#“ç¢²ðsµÚD¤÷o3ø/\Zí[oõ=jt‹‘ƒDTÝïqµš\0\0quó¾Ó>kÏÔÊrI7ÌÑ(ÆGSE¢Y#\Z÷½ÇÂ: _q9“áeèi;2¹ANo9YÇ/Ï‘æÛª’n1Fõ5\ZlÆ†äs=£æ½zê…kIå9K›3ÕNÖŽÈ+ñ¤F\r\'(‘¥¶Ûo›–D¾\nªÔåÂ8q¹³ °ÆKÍ¾qê²2óºù\rOh]94žz}þØ=zôñI6mðnÏ{¼³BIr*„•\npAp\nÉ^ºD”ä«cÂÀ‰‰q.]1Ò@óÉL ç%Õ¥êC|)³µk@\0\r€Y~…¨¤—CÁo/%T\0@Zã(\Z}ÊŠYÕ°8øO‚¬¾ÅáÏôC#ºNcÚŽ/¤sš	ÀæÉa™²ï:þ6ª9†|·A>qâ¿“ˆ£~*/¨K|qèBá?{Oå÷5V¸u~oàƒ¨+\Z=6Ë4{ò‘½Îøƒø%‹“8Lëà›\'ÜmûÀõzÉÿ\0ÇoàyÇþü|Hª©W‰žÎLz|äC]äHþà¢èì™ÆÆvš³;ßw\\¸Yæ×ð^Þæ˜žEËßgA}ÃÄï%E÷pmÔB5fkFìøœÊó§låÍÔR5£f\"o°ãà§MîØæÿ\0Õ7ò\"Å˜ãÅ¤eæ9ó=B¡H.\np€VH‚ðÒ#%Á_Mwºåf“ËÉÕ,U$ßÐ‘b™¿FîòÙêBô{*®=T~~ŸËFmT¸jŽ©}™ã„\0@­¤©ÑIÈ=ŽeÆÑˆZã˜ÚgbSÃÉE9sAp³¶8p{NdòŠIa›ŒLpâÒ<m’‰¬¦ZLã[¢\"’9šË1Îëd2$‹\\·ì…—…:äÜn6ÆLãôŽ¯T³c1Ž,7þ]¾‹²’=|MÙ%ž×·\\Þ³Kvu·ýU[ºO‘Ôhwb§°Ï	{rï.þà´§Å¦~Lód¸uô0¦O\'b7÷‘„yºÁyÐ®O’7ÊÈ®l‘Ðz¬[&)Þ3inxÝöU¡éóxÍeÙ[ŽcXÂÖ\0Ð	Ès±[ôé(a,ÝäÎ×u|Êóõ/þÆw¯º*™båÍ\"mûS:ã”qØ“ââÑö”j\'ì´’}g²òüÏÈš×«àùóÐ.\npApWH€¬‘À+¤TÇ3÷.vËýQh®¦%Àè.€Õ˜»nîhøŸí_CØ5ï;<—îÿ\0cÏ×K”Ru}ç\0@\0@@i:9‡fB/Éû<œ\0ãé)L†²„oV*sÃ,äöù’QºÍø_‘oJ¨Ž¬£&³‡xV|Š2V†Lœ9ƒçÿ\0\nÐÞ,ã>ò5äzÎŽÆ§Mg7¼<Š³äÈ6©åÍÃ¸üGä¯§|ÑžÃ\'KÕóø¯?UþVw¯º‹) 8—ØØÞòl\ZÑ™ÏÁsª¿i,t\\ßÀ´¥Â¾=9•ÆRZàX\"o`¸›—¬ååö†§ÛÛ·ulZzø#¿6f	Ü¸+$Ap\né^ºDd¤²[½Vsá_b²k]f:º1 :Ý	d\"âÄÝÇŽ{=\0_cÙTº´éIa¼·úÿ\0<mTø¬x$¤g\0€ \0€ÃUNÒÓlÅµmWìäôØ°â\0]n@3[aßmðçÃÏ‘e_wŸ‡Øå ®¨.nÇŸ	YàòÛó6YE/ *UÑ¢×Ô+¢Œ— ªëm¿ÃóJº£…½†i×ÎÄmUJº ÜŠ¯÷€ûÍøÙÃà£Nñ,-[4º[ÚÁ­¹sÝ“Z6’Jç¨ÓÎË}ÞO¯5Ø”w1KWGî ÿ\0¦aÄäéß‘n!´3a±Û’ó»Bÿ\0caZÇ‹ñøštõñ¾9axx7\0¥\"ÀWH‚à®‘$–Ýê\'>cš¥Ë3ÜèZ\\€ÆfÎÍÌð¦%—n¶^/ósœíŒ9’º;G:áÏï·ëS§ªžîïÅþÞIÙ)óäuQœ—­]©†Ks +TdPª¸\0€ \0€ÓÒ4Q·­`ë\\w8o¾\nÁiMÑ8ák\"y¸ÜÄëûŽ“Ê×ä¹Ê9^îÇx[ºãËG;UÑ|£¼&ùŒ—Gš6)Â]Öi\ZÑÅJed™+£k:Ñóyù)­ûç—ºV¦¦Ä÷•Ÿ8;`ÖŠšyÍ ŽGó\rêø¸ä<×Hf\\‘I4¹²rŸCÇZkdÛ²]‰æÝ÷|ÞTû5fOôGK‹‘³\\d¨nz†lc\0pk”Ýˆ/°¬±íZÝü—,ôÏçS£ÒËƒ+™¡<à÷aŠ¦,,ty–J×¨iæ7fæ>Ý\\ÁØZvk4‘ÔÃ…óèü4Úë–Q)G[¸„ok‹k€7-$\\\rÙ/’²‹*xšÁëFq’ÌY¶ªD—tˆ1É75ÎvcdYGÄ×.\\šõ5L`ë»ÒO\0euª™Úñ’²’ŠË.¤¤šlÈ1³ùÏëS¡®­ì÷Ÿ‡OäË;å-£±ÑPhÖF2S“‘Ç$£b$RLÞdLåÁh‹*UvL‚ªà \0€ \nVS´C€ äA¼Í–Gé=)=-Tñv²S„l³Ö`,OUeriî{CUµ©­›H×~³S»å Œž&&Ÿ]¾‹²ÕB\\ÑžZaÝ—ìg¥Ö*­‰—`¿eâÃfBÜÔ»é‹ÏÜæô×µ‡õFôºÁ\rÛ ñèñ2¹½]{-ü‰Z[¤·2\'Jk½Ii p¾÷[kùªKXç²-\Z6aÑ5¯y…î9»¤ÙõÀËÀ,ôY/ù8oóè%\rŽò!îÀš÷Ÿ›5®GíR²¦\Zf¾¤X(±10ßª=ÐâF{2­ô“ªrN©½×/#®¤½ä¼Ï\'Õ`šŠa,&ûžÂz²7{]ÏÜW¥©ÓBøpËô~jìpyGÐ:NÁUf„Ý®ÚÓÚc†Ö¼n#õòzŠÝpŸ3Õ®JÅ”lÉ)+$¦ävK	e\r¸€d“`<TF.O–ñÌÔŠYf6¶oû®}–ïï9w¯RžÎÇ½sÇÃ©–zŽ&ô^€c\']ï;\\ìÏè9-êJ+†Ï»ydìq\0«€Ù­VH£fV5tŠÜæÙ°´ŽEÁuD]P*®ˆ\n@@\0@Pª°Y \\Ùty´ê<}%²–&’~”d´ú/3T±<žö‚\\TãÁþ~ç\'†šLìÏ}ù²6Ÿ‡4®¹2ÖÝìdDÏ- Èãa—X†´dW}Ï5{ •~FhZå=ùë±¤íÀÏ<!yÿ\0ìüÍ=X»Àå\"C@Ëû¶ýíààÏþ‘{ºˆ³5»Áž Â\0Áx³k‰’x,¨Àö¹Žhs\\\\×µÍ9Fðª®áy4Ovg…kæ¨ºŠLqiÞz§ia÷~xæ¾«³õëS>òçñø£ËÔPëy\\-PÖi(eÆÛº7XIûCˆàñ»Ëzé­ÑÇS>k“üèV›rÏCÚitË\'k]J¸À ŒšÛûçqÆÕó•öm®MYî¥ù±éKS{»’”:¾^Cê23\rØÆ÷7ñ7+Ò®Ò±Zýz™¥)O¼t´ôÁ¢À#mŽFËX‰lÊÖ«¤Q³#Z¬‘VÌŒ¬å2­)*º$AUt\n«¢\0@*,{•\Z,ŽXcd€]­%¦í% –ž\"ë‘O\r£US”SIó8Êê™%S\\Õ4Uœs‹FX’dKÍ˜/¹ y/\"+Š[„¶[‘SD÷öF\\Jß]8ÞF+.ÿ\0Éµ£©ÌqË¶ýGýÜ_˜\\õ))A®íö9Å¶žOOiÈw/š—6m@•‘ºc ’7C3zA Âcî#ˆáß•¬¶hê¹ÍN­±×§çÀål¡Ã‰%­š±=ƒ]ÑÉsŽwæ’2Æ7ù¯±®Å5ñêxÒ$ýœë›´|Ö’î¦Ž‘£2Ó³¤`â7ã—;éö‹ne«Ÿ>’¢–9Ù\"s\\Ç´=®i¸sN`‚¼§ž§ˆÚkT¤CfFµY\"—µªÉl¼tŠ¶dh]k[•eËBEJ«¤ºUˆ\0€ „¨`Ö˜ª3¢\"ëÙqâ©#¬Y<\n˜/“Bz0w(Á9\"ªu}„âÿ\0…ÅB1î¢ò²RæÍI´U¶8+’.²“_–ÖKÁgÕ/q?¾Åë{”“5Äaþ+æa\\§.¬³kj+,Å3ÍØ6{ÄuÏpÜ½j{>0ÞÝßšz†ö‰7£4ql\'2ã™\'™+k–Ø[#>:³.žÕØ+ißí»\\2#´ÇËØw8~‡\"¦¹ÊâDI&°Ï™õ»VgÑÕ†qqÚd€udfç7ñŠõë±Me$°Î³Ù>¿šŠz—I#²\'>çç OhnÚ7ßôqî¹–„ñ±ôTv A7„¹2\0¬‘\\—€­‚¹.Y\"‚íZ!—.é’U‘H\0€ ×*’Œ25T¹§WJdÈé#T/“Yð(,u:®	É‚J+¨ÀÉ‡ý?oÁVÊÔ¢ÓäšyD.®°N8Äîî–XÕ\Z×JnO,•Ž”WÄf§	EáŠÜ$d‚×MRƒIS˜eê¸]ÑJÝ÷m;Þ9ØŽµIÁå–çËº{BÏE;à©n°÷´ƒ±Ì;Úv‚½(ÉIeKö;í sh«]û’pÃ+È¸ìcÉþÜ~iäz¹î§>ò,™ï ,Ø-’ë+$APãTÞ1ÁUÒUˆ\n@@\0@Fc‚‚ÈÖ¨eÁUeÑ¤èÕKÝŒT@£d§D#‰RD›Œ“C%à*à®JáN’¸S„Œ•Â˜9i\Z“‚Ãj#Ã!õcø°úøƒÖ¹¸²¯såúú)`‘ñNÇ2F8±ÌvÖ‘¸ñðVÔòPö¿c^Òqà ®w[&SÌãÚáÏ½îû6Úùì¯ª%3Ú\0TŒ2Irì‘[\0ª±H\0€ \0€ \n«€c•¹²{šÆ<‚©Ð°±\0Âª\n`PIs\ZªÁ­ThŒ—\0£²`‚¶LU0œyïµg­Ò1tÔà\n¸ÛÕØÌÃq÷½Óàr7k–6!ž=«\Z‡Pöºz¸§Ž&5Îc:9D“9·zs£ ¥¹îÞF‚£õN¢gÒÄj>T4›a. 8·q\"ÆÜÕ0I.§R\0@\0@G(aHÉS¡Ó©ˆµAbàÕÂªIVµC@4T­”`‚ (ÁS\0)À\nÊ9 ¹uQÀ5¥¡cóíÂv÷…bñD\Z,à©\0@\0@\0@\0@QÁCD¦cªa–âªJYTœ”@É’ÈÊ‹(À	€U0•Ô2A[.‰UN\0R\0€ \0€ \0€ \0€ \0€(À,-\\ÚÜ¶F\r`dª4@Q€\0­—E\n«`  \0€ \0€ \0€ \0€ \0€ Œ„*ÉeT²IUÑ,€€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ \0€ ÿÙ','Bear','5'),(5,'Kentucky bourbon','3456','Qm91cmJvbiB3aGlza2V5IGlzIGEgdHlwZSBvZiBBbWVyaWNhbiB3aGlza2V5LGEgYmFycmVsIGFnZWQgZGlzdGlsbGVkIHNwaXJpdCBtYWRlIHByaW1hcmlseSBmcm9tIGNvcm4uVGhlIG5hbWUgaXMgdWx0aW1hdGVseSBkZXJpdmVkIGZyb20gdGhlIEZyZW5jaCBCb3VyYm9uIGR5bmFzdHksIGFsdGhvdWdoIGl0IGlzIGRpc3B1dGVkIHdoZXRoZXIgQm91cmJvbiBDb3VudHkgaW4gS2VudHVja3kgb3IgQm91cmJvbiBTdHJlZXQgaW4gTmV3IE9ybGVhbnMgaW5zcGlyZWQgdGhlIHdoaXNrZXkncyBuYW1lLg==','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n !%0)!#-$*9*-13666 (;?:4>0563ÿÛ\0C			3\"\"33333333333333333333333333333333333333333333333333ÿÀ\0\0b\0Õ\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0åUdR)Ç ÅBF×ú×ž§s½Óh˜ÈOJ‰Õ$fÜH|€8¦£~óïŒtÇ½9TI0vm¡HçÕZä^ÌÒµmA\'_jÚ°:\ZÙKw©ÝÜÆªÛ‚-Àg¶{Ú¹Ë»¦B¤Ï¡©ïÄ‘xfR@\nò<ˆ\0èB(ÇèkjQ³2©.cgÂš®yãY Ñ\rä†î»î(mì9ÆšôkÏ²iL¶–Ð£Í3*I+™Éa¹@œ˜ó€ c8òƒ¨áaFáw4vÒ²}¿þºöclöö3MzB1‘ÉŠœg$ãï½ú•ž#D]ÊZž{®Oöä’Ëhü—Q&Ý…DKµIf§ÌÄv?)Æpq¯ðì[MYXî‘ \\œ–\\Ë·>þ§¹¬Ÿ¼³klÀWqÏ#v·!€ÿ\0t‚Zð<Æ;íJ`|ÛhÆ”f÷Ø¬p÷‡V&-S0þ ÞK&™2ƒŒ°ÏÒ¼¾Ûî\nôº^Ûj‘» (A\\zŒœ×%¢ZÙ\\c5…ÕÅë¶#H«ÆTœçØ7=9Ï½tVÔÓùv\'Óâ\n‘:ƒ—¶zf¯ëŽ°íóÁûBãõ£Ok;—‰líjeˆ–^r9Ï@1ž§¸ëRêÑ#é¶d])cž€^UH¥^Ì÷\\ÛÂLïuÛU´³¶¹ºlíDI·qÞq´v‘\\úkºdöò%½ù}ƒ,Ëì;ãŒšßøˆ·:†„#·+&Ø‘ïq­yW‡tû·–k`ª\ZedQæ˜žƒŒ÷½OcÔùo¬T;_Ê·~4µ•Æt¦Ó´ƒŠôÛëý:aäÜHðynÌK0Uc,	î1’G 5äÚ4Òéž=³·\r§Ì“yN„…n‡ë]¶¹mo5µÑvñM2LvJÌ¡u:¾¯o1IöS\\ð´gUI_T;Y––X’@îŸyå‡\0ÿ\0QùŠòÿ\0ÞÇ3Ú„u;cPÀÇºíJæ95k‰å¸¶‰÷IµDÁ‰,©_ûê#øþœÇí~Ï4Ho$›\0\r²:^§=}k¢…¢ÙÇ‰¼’Â×-“¨ºJ¤jªFFã¸øg?Jï“MCøNP¬— ÎÛº¶ïºO§ÊãÔšó	G’‘œ¶×Èpx	 #ŽœµzÇŽ/ã“Ã‰8?»þ”äõ‘­{°~gFÿ\06OzÑÒ®þÅv³y…T|²T=Çð¬x‰/ŠµælŠL.I}+‚/–g½VŠ©M¦wN<°\0SŒ’HsëUË)þ€œ*{I%]*ÉÛ$˜SŸø¥‘TDNG<ŒŠ$µ<ªe.ÒF23Ç4Tr“¼ƒ´cÞŠ.Ê´J#Tr€¸½uOà‹ñ—7VŠ d’Íÿ\0ŽÓ_Àš‹í?j´#ýæÿ\0âkog$dêÅœ€\0°\0ã=êÄP°åqŽyÅtMðûRÆEÕ¨÷ÜßüMøYóBEsjò1ùT3r*Ú1‘Ï9G¡†–ÎgY˜íÉ7dz[š†•¨\\øN)c³y ‘ÜFËŒ2}99§Üü=ñ*E™/,ã@Jü’7v8¢x¡,šÏûu~Î!q.ÔÃ­¹wDª<û2?…:DúwŠ­õ[™­¢·™&‹Ë3 >ê:Î3×ã>‰ã_·Í¤”³rï1ÜÂªNQŽ7™§ð5æñü?Õœß[NHgs“ë÷zÖÎŸáÿ\0ÀèÐë±|×`yéÈý+ž¥IK[TðñŸ1ã\\Z[Èf.¸6èÇ¤¤œ‘ÈüsÇJ¯¿©G,ö°Ü™5I^5”»ÿ\0Ç´c$®î¹cØp8œÑ¿…/µ‚[¸|ÖL9,ÌP+màpp	óâ§—Ã2hðÇ<6ú|·¤£K5Á2Ç;p:dä“Ôç)aéÊüÌXšÑøO1ñ<×ñÞN— ·’6™Žáµ¤i	½zÒµü/£^i×v3\"À~Õ=Äßh*…¬j»³Ô+1Ç`:)\'CÄZ6©®<§\ZeŒlŠ¬°³…À$äåIÏ8àŽúVf‡àMOHÕâ½k‹IaþPî3¹JõÛþÕtTƒ¶‚ÃT…Þ¥K{[mI²·œ­Ü·Weòü€*/Ë¸u*\\ôà“žp3‰-¬bÊ’È ÷8Èþ•«aàírÄyV÷Ö>VD€2—Úàcrå~SŽãú\n³yàMNöÒu¸µÝ“Œ}8÷®\n´¦êGN§¬±ÖK›s{E½ÓÓÀQÜGJ–Ë¼?º¤{ô\"¹(Ö6ûQ·¶+c“0L*ŒŒývÿ\0ðˆ\\Xø`XI{	¸ØB<²2¡v÷\0oæj®‰ Ëckuawö²``Fx=†x$WS¥+îy\n¤-±çú3øM4Ÿ›h\r‚qê¯DÖ4{­FÝ^Ökgo\"â5ÉFo0lÉ6äœûc¹®~ÏÀ·°ø¦Êæ«i-ã“å[$dðxÆq]úèsÄ!C$d*J˜Ì	ÏzÖoI$½ÉFíœÖy÷úTa‘–(ƒçer¬ÃØ2sêñÔñíÖ•{¨Æ|Ë61¸ 1L‘Â¬êÞ¼¹Öà›îXœŸÏ#Ú°õkW^JßÜZ1„aö–Æ~•Rr¶ÄC“›s;ÅKký‡m4[´cpÄR)Ú°<~U±q¡jÚž‘þ¬G4îsÓÿ\0JÐðï‚®[Qw-¥Üp†“É$•n˜ãÞÛùWXÚmìÊÏ=ÒË$™ªìéŽ}0x9ç\'­(¹;¶9£$Ö‡/Ãmv&ó„ú{\"Ä,¯Ó×•Åeë\Z¥£^ÛVá]Hd9÷öë^á†-cŠcPÆÒ£FÌ®ü©Æx9ëY·~‘íÅºM–Î¥d…Øàƒ×tÿ\0<aJkC¢8–”—1ÈZ[çHÓ‰$ƒnœgý‘U\'wË*ç×Ö¯…ïÒt¸¼ˆÕ1l=*	<!zA&k|ŸvÒ³9_cš‚[œtÑù­–QEtoà›òÄý¢ûé¿ÂŠžIö/žŸs¯”~æLuÚqùUem¦1¹ÊíÃ’äm9úw§_5ÏØ.>Å³í^Sy;þîü|¹öÎ+Ì ñ·Šî5¦E%ŸÚ|ã\n†„	ŸNµé7cÏ¥JU.×CÔ™íÁ‘Â…“#y\\á—ýjM7RÛ÷Ïåùg\ræ½Ž§×šóx¿^±ñ<Únžö³|ê¨‘C½‹\r§ÔîÈÇÒ»Í{Ý6ÒÖóÄó[ZÎ7ºªF¤| œàh‹Ô*Q”b›êM©O,¦]ó1ÁV+“·¨¿¥Då(™‹\0H.NFáùu5NOøz[Í±êöÄ’@ÜÅWþú#­M©k\Zv™2Ã¨^AŽ¢EI[¯cYÍÝâÔR±27îÂ–q‡Ã\rìHî9ëÜS­÷®®\\G“´’À““×ôÆ>¦¨¿ˆ4(\"¶±bªêdLI¸¿QÐszÔZ‰í,¼=6¯iwo2€R[*ò\0HCŽ‡Ú¡šE;ìn[Ïu‚QÙH,äÙÉ\0®?<wÛZÙÐ½“‹‹‰Qn§ÌóXnmÒdóÏaúWx[ÇËªÏ5¾®¶0*-ÔŒÄärOû?z—Œ|5wkgeg«ÚI;áR0ç%n•¤4FŠmJÖ3/¬máK‰ÿ\0å‰Ûó½¿\Z¢’ÐHûÒrÌ½žGAÂT·~.Ð$‘á\Z½©|ìÚœôÅ2òî-.=ÝÒZÆOÊÒÉ´1ëëÅW7s5º!ÊášN01“×Üõ«b8!\nò<’J:*ª¿ø~uÍCâÍ\ZIB&«ÈøT^G\'ŒŠãõ\Zx“F×¥±‘­\n¬Ãh1gä$mç=pEKSUJs÷R=Vy–X”¾yaÏúÕ6ÈrÅ²O©æª_xŸ@´¹š	5+tž&(è[AÁªIâÍ	d	&¥n¤ªŸ½Ø€GèAüi0„èn¤\n,é ;[”=ëjDK\ZHÅvœî$}Ò+Ž>$Ñ\"·ŽWÔíÖ)Á1±n8©ô»ëmkÉŽÒåeæØì‡¡ÏãƒI{â¨=m£5.õ!,«åµ7»`æ›~ÿ\0Úe®|·ôS‘Zºµ•¥¥¢­½ºÆGMb«b6ôªã¢2¥=Xë	Ú&Û2ÿ\0«$ð}AúÖ½­Ð}‰†G^7Q\\âÞäsZsNû¢fÆñÆGqW$¤ˆ‹q•‹÷óËN\0êÀÕHn¦sÀà~T—+$HU€Á9ÔVî°Î\'\0ägÒ³HèoBÓJƒ\nßž3OØÝjªoB+dd¡ùpÝúÕR]Ná‹mÚ»ºcµv¹ÌÝ&R	Ýïš+Þ]³¾}Ž(£Ù‡´%sŠðóÝ×Œf†ÊCÌ—²Ü6Ý¤±ïÚ½WŽÒ/VîFŠØÀâWQ’«ƒ’µy Ò|xÿ\0„ŠüqŽ!?ün¦zÚÇfJ<Þaá­J_‡Þ9+©Z£*çËÊÿ\0-#8ÏNxê	Nƒã5ïÚo´u¶;ì%·3$«÷fb{zàm#ýïz½ucàÿ\0]@ï¯È³Ã‰a„y\0Éèë’yí[1xEmËD—íZùòH’Èê$BÊ3‚£‡Ž9	ßÝ5•H©ª’Z­Ï,}U»Ð¬çþÉÓ-í‹ÕciÇúÆi1ŸbÜŠÔñžaøk¢]^—PûO·\'˜\0HUC)*@ãò­ù>éQÎWí×Ì¡°”óŽNÚ¿«øÇR·°¦šÞ(|˜’6Sòäžr	ÎI£•”ñVw8Äðöšß\nf×\r¬‡PI•DþaÇ2í?.q÷O¥MáëH.¾\Zkí<bCÏ,dŸºâ1†úÚº%øe§ý­N£xc2ùœ2@ ¹­Ïü9Ólf½YežæÚh2Ç1\00>˜ÔdËWêqŸ	ü3eâ+½M®„~e …áf\\•b_‘Èþèõ¬m£Òþ$‹D	Vú›D0pªÈžÕêü(Ñ4]N\rJßQÔ[J&Ž7hÈ%H ·‘œzW	má\r{[i¢Õ®\"¸»—˜ãF\nÎÇ¯Ì¼dÕ84¬(×ŒªI«´×Ücx†Ú_\Z¼6ª‰–2lHÉ\nOêMXñÔ­7g‚æm¶ÑùH·!ª³0ROáŽÕÒŸ‡:D²¨Ž{¸S :œñ×•ÿ\0ëV½÷ƒ4½GO¶µ¹¬¶±’á(=xÁü©û9	b©^6è¬&µàßiw\Z|‘\\CùLdO°HA}âw~}ë€ñÓã[–ÆH`c©Ø+­µøw¥ZÝ$ïsw/–Àª–P8ägéÞ´ÛáF“~Zîkëõ{™]¶¦ÜÉ?ÂOcùT4:U!yI³ÒþÁ¨xí‡Šâ{džf _,,¤ð¸_Sî2qšé~#ø.-2Î-WM…–(ÊÅ2Ž¡xT\'è\0r+°Ô~èÚ£ÛÉ6§v´Vê\"xþq\Z•êBóÛéLñ|wþðµ–…¤èójðÍnöîÅL›\0°Aß$Œ÷h³·Œ§þG’=À×lô-ÆÈ-ÜA‘äÃnlçé€Xûæ½{Ãú]§‡ç¶µ´\0\"I–byv ÇÜñÒ¼ïÂGHðÅÕÌúíÇÙõ5…Ù¢d’@Æã‘ÇaŸS^‡¥üDðŒ-uöU@vR¤ÛJ}sü?J ìÇ‹Rš´V‡_©$×± Š&$ôÿ\0>•–Úeê¡S-èÏó­-Äº&½iq.‰{çÅ3ùL¸\'§Þ=úS¦wLH	q·õ«~ñÃéèrøhå(ÊUÁèFåW’™Š)ñÔzWIþºÕetˆôªû~GÇ\\So¡)­Ì¶Hä™·deW×ÿ\0­U%bÅ˜ã“øT:×‹t=T‚ÃSî€°³*p8ü3JŸVñ_‡tÿ\0±êwÐÛÝµ-]¾Véó*Ÿz›ØÙÆOdW›;p=¨qJ·¶Ú„wi0–ÞPo‚2:#zÒÅjŽYn\'S[­È/Ïn“DñÈŠèÀ†V Šð¥’ÚÃÅÒ¼ÖbâÖÉ·e@PïZ‘šÞÆækX\rÄñÄÏ#øÈ…üzWÙi\'³ñ*k+áÛÓ\"Ü4â/,€KqŸNk»ž®ró-Í¦³ãHd²ò´›I\'ŒÇ½°±c\0àŽä‚@õ=«½ñ§Ž/´í~=@Ún¢eS1MÄÈøÚªd{œ`cœß\nx¯Æ~ kÛÝ-tèæÚ$„(E‚wüý«_ÇÕí¼Gˆ48pí‚,‚é$ayÆ~`vƒÇ¿µJZÜÖRƒiK±›¬kÞ3ð­ô#X»¶¼IÁ ]§Ü7*©‘ê9iž!ñ^·jÖWÚmð†Æú-Ñ\'–ŒÊWÊúŸZnºž\'ñÆ¡l$Ðä°H7s:²(fÆXî#ÀýjÏŒü-sƒ¢[i½ÜvÈ’ùHKÅNí¹\'’Ò©¶(ÆÑsµÈuÄx{JÕ¢ÔcžYKãœÆ0+¡·Ö|Mÿ\0\nŽ=~ÃS‰\'†éÍË<I–MÅ\0Q´Ž¥}:kŽ¼ƒÄú…l´çÐÙm­aY›†\0•ÎqÉí]\r‚x™~Üø}<1våç\n²m;Š³3³mÇ8*_âîîg*pQKKßËc?MñGÄOÙOœâçËu2L±D¬¹è¼€;Ó>õÍê¶ÒÙxÔÛÚC\\Eq\0Ž  &ü!¶êô…¶^ Ð5›+íæÞÞë×3£\0¥Aã§|Ög‰<7â9¾\']jÖ:4÷Ås\rÄnØHäòÕÇÝH¤äí©¤\\cQ¥kXÇ¿ñ‹4\rR?·Ë‚7¤[£.{2:q[~\'ñôÖQÚÃ¥Ä©4öé;É2ç`a•\0t\'9ätü*ø†ÓÅž?×í÷è3iÉ~P3¡€’Y‹0¾€v«þ6øs(´ºÑ—ík\r¤vòÅ®v\0œ€2=G~Ç;#’“qæJæN©¨øÛÃPÛ]êw0ÍçˆÊ!Øq­´=85­â/ë‰ hÚî‹¨Ekg(1µ¾Õ‘Òu/»ï/Lc3ÁÇ5“®ÍâÏ[ÚØÍ Mj!`ò;£F®ø#v_\0O=MO®xW_\ni~Óô©¯¼‰\Zâk˜2ÀHÛ²¸ÇLÏ>´µÜ´¡uÍk„ž,ñôž‹YŽæl Dn8¼Æ;ˆ©ÏsŽ\0®Ûáž·}â=-§Ô%åµœB$Û·rˆØŒàc?7·óâÛÅ#áûøoþ‹¢žvñ&Ã»%ƒgíŒzüß…u	lµÍ!®týGJ¹²µf7tÊWyÀ]˜ü›>ÔÌª¨û7d¯}=\nú÷ƒ¾7Ô5‰å‚[S–û;GœŸ,{uæ¸†Úe®¯âÅ²»†)c’ÖQ‰T0o\rÏpNs^Ÿâ[Û˜ìï.,íMÔÌÿ\0$KÕ²qüé^cáK?øÄv·‘è÷e‡Èr„`0ÆzƒœRkb©Mºr»:«Ÿx“á×…/î4ífØ“*5Á‚Yq°(–Ïn+7Hñ/Ä?ÙË“$S˜ä§Ùl¤ýÕçÐžO5Ôxýµ»¯Éeme-ñº“k˜†v`ÙÀ Æ°þmh³ÚË£\\Cøo>D#a\0àcóO[‰I:nR³f¯Š5\ZéúëiÐjún“b‘Fb–òXÌù~7eÎXp¸â¹Ýâˆ‡ˆaÓõØu%¸–DLœV@22GáYÚæ…®§Œnoot‹­M&¸wù7˜¤ð	_»ŒƒÀÀ+=´moKñqè3ÆÑL³E9t\\B—ÇãF·4„iòYÛbçŽ¯uh<\\[Qk[‰¢o2ß÷\n@ˆ’Q*7cý¬õ®ƒã*£O£\\xâšE™^E@Àòð	ÇA“©¬ÙkÚçˆg»þÈºØŸ¹FT$2© 6qÞ¯ø¼ø—ÅƒMß¢Ýn·ÎÔRÛK\nž÷çIì8ÙJ›:¯\n(ÿ\0„GMãþYìÆµ[T|\r§ê@K]SOšÌÚ±Á\r\"õÝì9Çá]zÚÄcÛä.ÞÙ¢¨’<Ú”Û›9¼Ñ[çJ¶ë±†Ú¢«Ú#/dÎ)ï¯™‹Fè!ãýcMÕô²mÓ¤]ØÈÜþµQ”±\"§ˆ)*ã?ìãùW¦Ï§•(ö6à™à\nêiG÷ÚWÎ<\n§â†ÔbÑÅÝµìÿ\0èò!d €xíÔÎ®Z›r1.uÍõ´²´&h±»†¯QýkhË©Ã:vz#ÊßXÖ§¹%5Áœç°þµf/øH¥Râ÷Se9ŠGb>¿ã[ÃÃqMxÈ.ªŒà7sèyñßÿ\0­W…ï`UŠKÇ–\08HŽä‚¿¦?\ZÊN£–ŒÕr¥kd“êé“ý­¨ÆCœS]¿„|xºF“™¬ÝOXÅpù|†$Ýúž¢‹)Wrd\0Ûƒ\0WõéY¾*ð¹°ÒÖö#¼FrÅ•·c¹Î0pqùš¸¶›1šŒ–ÇlÚ´¸k=E›v9·»9åIãéŠkÉu¹u+¼ðToÎ1éü«È#pŸ(9qži·nÉó#õïëX9ËšÇtp4Ý>tÏWûEØmÆòü€9BþgŠÅÔ¼G\0ÕX:ŒÞÞ½ŸÊ¼¦{§Â³±úœUdÆJ©Ç<WL`ú³‘Â=^ñ}íË¤vw÷ª¥ù9”‘ƒÛ>õ?†|a©iÚžo5Émf$-+¹Ná€Ïcúf¹//Ì‘²©À ã>µy\Z3…iŽ¹\\V®>í‘‚—#wG¹Á{su4p_Ë,n6HÌ®\'?)œ÷ÏÝ¬O\ZxÕôÝ5´Û™ä ¬Œþ©{ò:7AŽÜûWÚ™âš`Œy\n×8?ÒpîÞÝÔUŒl?!Ÿ­b¹—™npkS.ãÄZÂ¸+«_ûxñ§Câ\rn£¸\ZÅâym^geúšmä(Ÿ¿xÑáQƒÎîp+6â¤‚!,L¢@	qØ×Zm¥Ðæ÷o}ÎÚÓÅzÐ+ÍÄóeüÂÑ]0;C) =r¿©âªêÚöµ}u¾ÚãR|¿/oœÿ\0{ž‡°?•ÏY‹ËdåksG%OåÅNÚ X#c¸§žÇ§JkÔ¦ã.‡DÞ6¸>|?jÔOšó®ã9\\$ŽHÇ9Î1ÛÓÒª[êz†¡­°:µêG.ã´]¾WŽƒ¹c{9O)X\'\'jœœžzö©RgvUb[ícð÷ÅLã%ªaBJÍÕ½µâ¶Û­~ýãÉÀK‰#Üæ·,µc§¢ˆ¯.v÷/pÌÄýI?ä×˜Ãq¨ÈÄÇ!+ÐzUÈ¦¾8ÀÀ«žq“ê\\y#Ðô†ñÉs‹Ùp<Ö«k—E·‹Ž}$l:â­­¥ùYäÉö­X¯<€ªr[Ôšæ•ÑÑ=luÃRºeæòe>žaÿ\0\Z+Ÿû\\ÎèÆ}H¢¢ò/NÆ“u5t¢Š´w=;oõ/þíR~\"sÜ.\Z(ª[œõ6f¤hlœ”RDdƒŽ‡o­af\0ýMU=Îhì\"\"e…Q¾FÝ÷°xÏ­gxÑ™õ+vbÐ¹“tdå[	ÆGN(¢“ÜÏ©åGï§û¢Ÿªÿ\0Vsþ\"=*?Á‘ÏËQNRCâ¢Ší8£¹vÑGÚ×ÊóùÖÅ¿É;mùpÄqÆzQER3©¹,ðÅö¤>RgŽvZŸK¶¤]ÐFx^¨=Rè`Éî¬í¢‚C¼)™HùPZ¡âØ!Ž8Y\"X…ÉU\0ôQ@GbæŠ«ÿ\0âp9‘óÇ½rú´Q‚ÄF™Ï\\QE>¨Ùm\"¶žŠeQùSdP/8ïQEi/„æ_4m@àZ6Ñ¡9(¹úQEsô7{—m	õíV§û¨{æŠ+–FÑØœ³\\ÓÖŠ(©(ÿÙ','Whisky','2');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendations`
--

DROP TABLE IF EXISTS `recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommendations` (
  `id` int(11) NOT NULL auto_increment,
  `rec_by` text,
  `rec_details` text,
  `p_name` text,
  `categorie` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendations`
--

LOCK TABLES `recommendations` WRITE;
/*!40000 ALTER TABLE `recommendations` DISABLE KEYS */;
INSERT INTO `recommendations` VALUES (1,'sidda','yes it is good for health','KnockOut','Bear','26/12/2015   10:44:30'),(2,'sidda','It is good for health','KingFisher','Bear','26/12/2015   11:37:43'),(3,'sagar','It gives great taste   ','BlackDog','Rum','26/12/2015   11:39:54'),(4,'sagar','It is very good','BlackDog','Rum','26/12/2015   11:52:10'),(5,'varun','yes,great taste.','BlackDog','Rum','26/12/2015   11:53:15'),(6,'varun','It is very special,and very strong taste','JhonyWalker','Whisky','26/12/2015   11:54:06'),(7,'varun','Alcohol content is less and good for health','KingFisher','Bear','26/12/2015   11:55:21'),(8,'sagar','Ya it is good for Health','KnockOut','Bear','31/12/2015   15:54:43'),(9,'sagar','This is good for Health and gives more energy','Kentucky bourbon','Whisky','31/12/2015   16:11:13');
/*!40000 ALTER TABLE `recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `p_name` text,
  `categorie` text,
  `keyword` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES (1,'sidda','KnockOut','Bear','less','26/12/2015   10:44:13'),(2,'sidda','KingFisher','Bear','Good','26/12/2015   11:37:18'),(3,'sidda','KingFisher','Bear','Good','26/12/2015   11:37:53'),(4,'sagar','BlackDog','Rum','strong','26/12/2015   11:38:39'),(5,'sagar','BlackDog','Rum','very','26/12/2015   11:51:20'),(6,'varun','BlackDog','Rum','rum','26/12/2015   11:52:48'),(7,'varun','JhonyWalker','Whisky','oldest','26/12/2015   11:53:42'),(8,'varun','KingFisher','Bear','less alcohol','26/12/2015   11:54:54'),(9,'sagar','KnockOut','Bear','alcohol','31/12/2015   15:54:25'),(10,'Manjunath','BlackDog','Rum','alco','31/12/2015   16:08:08'),(11,'Manjunath','KingFisher','Bear','alco','31/12/2015   16:08:13'),(12,'Manjunath','KnockOut','Bear','alco','31/12/2015   16:08:16'),(13,'sagar','Kentucky bourbon','Whisky','whiskey','31/12/2015   16:10:45'),(14,'Manjunath','Kentucky bourbon','Whisky','key','31/12/2015   16:12:50');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `address` text,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `pincode` varchar(45) default NULL,
  `status` varchar(45) default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sagar','sagar','tmksmanju14@gmail.com','9535866270','Swastic Nagar Near Kharge petrol Bunk Ring-road Kalaburagi','11-01-1992','MALE','585104','Authorized','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!\')+/..383,7(..+\n\n\n\r\Z1&$7,,,,,/,,,,,,,,,7,,,,,,,,,,,,-,,,,,,,,,,,,,,7,,,,-ÿÀ\0\0Ì\0Ì\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0B\0\r\0\0\0\0\0!1AQTaq‘“Ñ2R¡\"#Br¢±Á3S’ÂáCbÒ$D‚ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0.\0\0\0\0\0\0\0\01!2#3ABQ\"a‘¡ÑRq±ÿÚ\0\0\0?\0î \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Î3kOeJôb×\Zu#šîÏ2«gÇ^ö„ãç´,Þêðõÿ\0³Oó?Ø¯ñx?Êõ>‰(î–ÆO(ÜÑï—õ;¬3:‹A8rGÁ“¥V3\\(J3‹âqjI÷¢ø˜˜Ü+˜˜î¬ë€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r¥î‹wté7NÕF´ÖÇQ¿³‹êËÞ#ÌäzF´ü¸ügøkÅÅ›xÛÁ¢bxÝÕÃzÕg$þâ|JØyYy2y§úm¦*S´1Ù,zt	¬îêÑ—\n”çN\\ð“Ž}¼äé{RwYÓ–¬Z5-×sû¿’jâR´M~8ò®´z|INúrþìyx‘ÞŸ³ Ð­Æ3„”£$œešiò¦{´Z73©VuÀ\0\0\0\0\0\0\0\0\0\0\0\0\09Ýþê¥+JÊeyÅûÏùk«ŸÀñ¹ü¹™œTûÿ\0Mül?<ýš1å6€\0\0\0\0\rŸq[¥•­EJ«ÿ\0Ç¨öçþ”Ÿß]\\þ&î*q[¦ÞYþ¹zãqÝÕÓ>æ=\0\0\0\0\0\0\0\0\0\0\0\0\0Ãî³ú-¥Z«ßkƒKñËb}Ü}Åœ¾«Ûâ·\r:ïâœ&ÞmæÞÖß|çÍKÕWÛImo‰.6EÖÙ‚î[<§sšåT—÷?Øº˜¾2äË3‹`”ëRÓŒc	Cøm,’|Ï©–Z‘1§\"\\þâŒ¡)BiÆQy4Ì³\Zð”Ñ€\0\0«½î,ë[iMç;|£·Ãî¿“]Ç¿èüÞ³L÷‡™ÊÇÓ}ÇÅµÙ€\0\0\0\0\0\0\0\0\0\0\09ßb÷ë[ÐO’U$¿,¸ò}%->í¼J÷³@Qå6·ÝÌ`*”UZ«:¯jOî/RêS^2äËb,pG`a÷I€«ˆðéä«EwMs291uFã»‘m4+‹yÓ“HÊ\\jK#ÄÄêVí\0Ï½Ýã§{çõkBP}«ëEü²ï7ú:ý9µõfåWx÷ôuƒè`\0\0\0\0\0\0\0\0\0\0\0\0ä[æÕÎý¯‚(¯Í/î<?HNòýžÈ‡qxZ©QÖšÎŸÕÏ‰Ëüi]ÎÚék€Äì9) ‹a	QuaJ²àÕ„fºÖÕØÉÍ+hÔÂS˜+Ä[Éç	Ô§Õš’^;~eâV{JqšTZî&ŒdIÎ¢_w%ûNG±Þ]õ³(·_‚ÃGV”eK,ÔVYÇüÏŽ5¸J–k;š©Á¼¶|Õ¡óyqgY«?«¹£t—m>ã€\0\0\0\0\0\0\0\0\0\0\0=¾T_ýÆî§I¯¿cÃçÇ¶Ÿ³Ñã{¶Õ€Yª6ôáË—\n]¯iMcP½‘:\0UUrSÀºªå4QlB¹W‘-#µDf…µÍ%(Ê/ŠI§ÞShÚÊË`ÖN8\ZOŽ7Á<óð1ñéíë_ÕfYös.Ê}3È\0\0\0\0\0\0\0\0\0\0\0\0\Zø8ª\\ZÜÅ7áJ¶\\‹„ÜeâÚð<Î~)^?Ô¶qoò³†J=†;F¢\Z¢|eI€+:£)à]UržµW)2,ÒG4BÉB”Ùl1ØVÂÄ%rÖQ¥M$þ*’ÙŸtsñDø˜w–r}?ê¾FMS§êÛU„\0\0\0\0\0\0\0\0\0\0\0\0XcoìŸ\\¢¾fn\\û)_Ç÷ÆÔ÷Qæ[Ë\rÕîˆ©0\nàN¨ÊxU\\§uUJdYðAÊìœ ™M–Bï÷gøÙ»‰äfäy™S8\0\0\0\0\0\0\0\0\0\0\0\0ÇãŸÂìœ?S7/ÝJþ?¼†=û½Ç™>Vß™	RÀ\nàJ®JhUT§‹.…r“2{CJ&ÈJP†eV[ÌømóÔŸêoâ{¶NG~iP\0\0\0\0\0\0\0\0\0\0\0\0,q¨çB§ROÁ¢ŽLo­Á:Ém7œQåWÊß=Ð•,\0ª¡ÉM[Urš,¶%\\«Ì–ÑÒ™3“)B2©Nø*û¾w\'óg£Æeyüò¾4)\0\0\0\0\0\0\0\0\0\0\0\0ÝÓáSœ~(Ix¢7Öa*N­ÀYO8G°ñ)ÙéÛ¹.2Ý(xq×±;X²ÈW)bË\"P•y“ÛšS&FeØ„¥’o™2»JpËáqÊ%þÄüvþç­†5Ž~YÝåtZ¬\0\0\0\0\0\0\0\0\0\0\0\0\0ÖhÇƒ*°øjK.Çµ~§‰xéÉhz•Ò%TÑ]¡(RE 	\"ÉÄ£),‰BaVd¶æž6reÝ-¯ÔiqË$»ÞD\'ÇÁ(ðl”£”RæIxÜF£O.gr¨ë€\0\0\0\0\0\0\0\0\0\0\0\0\'Ã$äêÑ]åÂ„½ÙåÌù‘Åëžª÷iÃŸ¦:mÙŽ§_6ã$á5Ç	läó§q:·vØÔÆáSD&xq×±gaÉH™8”t«2[sH«×Œ”žI™Ó±¬;”ÜjÖYEm§Oô”ºúÜ~7Ï´2æÏòÕš7²\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0kû¤Š•J0â’S“’Ù$¸–ÞßÐó¹ó–x‘:™cõ§â}hüq[WâGŸ¶½.!5%œZkP&J%Ä5®Ò|®þÉÚùQ¤¶rRu\nN/%÷c³“ÔŒø¤Ùpz¼;z2åàE>Õ±üÑî`·V:ËÊË\Z¼ÂðµX\0\0\0\0\0\0\0\0\0\0\0\0\0É4–ob\\mò«Î®­Z•yÕ§øcËÞóg‰Ÿ\'¬É2õ1S¢‘\nÊV-§h³Î\rÓ—<xŸjâ\Zwo>Ý.}{bü‰àiU—¿5ÍOþL	¨ÑŒVQYsó¾ÖHCsrû)Cùu&—cy¯Ôõ¸VÞ=}9QùöË\ZÙ€\0\0\0\0\0\0\0\0\0eˆbö¶éÊ½z4TxÝZ†^,\rSß_¥š…j—r_vÎ”êçÙ7”?0\Zýæüe²×šæ•ÝhS_ÓØÝßcu¸®-í#Ÿµ9eÍÃ«ŸÉ…úEyT[‹«Ë™BJIW¯QÃcÏ.|º²#jõVaÚÎ§n³€â0¯F2†[Msé4·L½ZÚ-†H‚@\0$¡K„ú‹1ÓªP½º`¯–y.A“[Ô;MëÅei9~ìoç+§+{‹›w—\nÚ´égÚ¢ö÷ž¯\n“Zn~,›nÚú ²Ý–5G.\rò¯¶Bî…9øÎx¶lfg,÷Ù¿†_H²¡]/zVÕ9>ÈÍ~àfì·â±m+‹{ëWË)RZk¾œœ¿(»Ü\"ã-+Ûw\'Å\n’ÒŸôÏ\'ò`£^YÂQšç„”—Š@\0\0\0\0¯»­ÚPÃ)EÉ:×5sVöðiJm}é?»ÊÀâØ¶èñ+ÉJw7•éÆ\\Vö•\'BŒWÃ”^síyˆVTsÍÁN_VêKÆYu¥Å’ìÝP\Z€5\0É`xíKZŠQyÅûÑäeðFXýVâË4ŸÑÔ0lz…ÌS„’—,Æ\'&+cZ…/[Æá•+LHÕÉd‹\"úB]Îåo^¼`œ§%ÊÛÈ‡tÚFé÷i¥JÙæÞÇ>EØlÁÄ›xß³6^DG…{´IVm¶Þmímòž¤F˜j\0ÔªUiÓŸ¿KñE?Ô\nma*2Sµ«ZÖ¤^q•\n“‚O®9ä×V[@ìÛï„ï%ô+Õ^F-Ó©•;¨®7÷f¹cÞ€è€\0\0ËÄéZÛÖ¹¬ò§Bœ§<¸ÚK‰u¾%ÚÌø†-Zòâ­íÇñk½‘ÍµFš÷iG>D¼^`EªT¨\rP\Z 5\0j]+©A©BN-q8¶™É¬Lj]‰˜ìØ,7q{I$æª%ñí~&[pñÏoõäÞ;²qß&¿-(>÷èWøÿ\0$ÿ\0?EµÎøwrÙu­¬•x4øË“Ê·Â\Zýþ5qYçV¬åÕ›ËÀÓL4§–[%­ÞVZ…ˆ\Z€5\0j\0Ô¨T\ngViÆ¥)ºu©INHìpšâ`}¸]ÒG²¥r’L¸à¿Ó«“f{WS@l\0\0È·üÆÚ®²³uî:éÓyB©Ë7ÿ\0ÇXŸT5@j€ÕªT¨\rP\Z 5@j€ÕªT \r@\Z€5\0j\0Ô¨ñ¼Æ=ô|FVÒcˆGbmå\ZôÖi®ns]y.`;ð\0\0|¿¾>1ô¬Zò¢yÆ”þO²–É~n\Zî \r@\Z€5\0j\0Ô¨P \r@\Z 5@j€ÕªT¨\rP\Z yªP¹œjÒn5hÎ5)IqÆpy§òë-Ïb°¼µ·º‡»^”\'—ÂÚÛçšî\"?t8’µ´¹¹–YP£R{x›Œ[K½ä€øúW–m¶ÞnM¼Ûokmó^¨j€Ô¨P \r@\Z€5\0j\0Ô¨P \r@\Z€5\0j\0ÕªT¨ËþžñíK{‹	?­m5R]:™æ—á’üèº¿z¹xEhÛBSNpúC‹Û\n1ÎR–\\«5ú›|€|ÇªP \r@\Z€5\0j\0Ô¨P \r@\Z€5\0j\0Ô¨P \r@\Z€5\0j¹oAˆW¥‹Û:çWQºu£Mg•)qÍó(¼ž}@}RÅwÆÞcRr¹Â¸rÍÔ´yB-óÒ|Kð½œÏS=Ââé´ì.óM§•5â¶0<öèžLý\0{‹tÏ&~€=‡Åºç“?@ÃâÝóÉŸ añnyäÏÐ°ø·@¼ògèØ|[ ^y3ôì>-Ð/<™ú\0öèžLý\0{‹tÏ&~€=‡Åºç“?@ÃâÝóÉŸ añnyäÏÐ°ø·@¼ògèØ|[ ^y3ôì>-Ð/<™ú\0öèžLý\0{‹tÏ&~€=‡Åºç“?@ÃâÝóÉŸ ½ÍïO‹]Í)Ñv”³úÕnW%ËÁ‡½\'áÚÐ»‹Üu¦GJÚ9ÎIkW’Z•Zåo‘qä¸\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÙ'),(2,'varun','varun','tmksmanju14@gmail.com','9535866270','Tarakaspet Tq:Chittapur Dist:Kalaburagi','27-07-1995','MALE','585218','Authorized','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0‰\0h\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýü¨å•Q€\'“Ú‰%*™ãÔWåÿ\0ü¿þ\nÏãßƒõ/†>Ón<-ö8Sí:äÑÿ\0¤ÞoØ•#í¿’N@Æ+ÇÎóªfâkÝ­’[¶uà°U1U=#ô/ãí!àO€ú;ÝøÃÅz‡ã*—wh’Éì©Ì~‚¾9øÏÿ\0ü&ð+Moá\'Ä~.¹PBºF¶–Å¹êîwã=ÂWão‹ü¬øÏT–÷VÔnõ;ÉŽ^k©ŒÒ7®Y²May’dž99Ç¥~Kñ+UÛ	ç«ýà}–…°ðÖ³rr?H> ÿ\0ÁÆ¿u3*xkÁ>Ò#Ë’ùæ¼du\nÑƒŸÂ¸áÿ\0\n|xÏÍaðñ‡ý‚.?ù&¾%‰ÍD÷XŽÕóu8»9œ¹½¼—¡êG%À¥of¾gé\'Âø8›â›®+xËÂ¾Õ´ç`i±Kg4Kßii$~ WèÏì}ÿ\0øsûeè¾o…õU·Õbé\ZEë,wñÔ.Nõ÷\\ŠþpÅèQ‚H­ï†¿õŸ„>4Ó|CáíFãKÕt©Öâˆ\\«#)Ïn ÷ÎkÙÉ¸ï1ÃÕK/i½÷ù3‡Ã¸jnŠå—á÷Ô”3,ÀííO¯\rÿ\0‚þØZgí£û;i>+´xcÕE®¯h¼}’éTnþéûÀú\Z÷b@\'Œ×î¸\\M<E×¤ï+£óú´¥NnVhZ(¢º\n(¢€\ZW=«ÈkïÙÓáÏÇO†—±øóÃ:n±¬\'Èã	unÄñåÊ>t$ã¡ÁÇ5ìã¶?‰™ám2Åd\no.…{ƒùdÊ¸3/gõiûDš¶ÏTtà¡)WŠŽ÷?4<Wÿ\0xð6§;I¤kž&Ò‘˜’IÌj;Uÿ\065†ÿ\0ðF}tñ¦°íÂ?þ*¾ÌV ;±íNþÒ¿­~[W\"Ëåï:hûØâª­™ù‘ûgþÅ~ý“<e:ø‹WÕõ­ZR–vÍh©ÕÇ˜îÀœ\0ÀîM|Éqe;ÙµÁ†U·YfR„&óÑwtÎ9Ç§5ûâ]>ÓÄ¶f¼Š+ˆ‰ÎÙT:ç ô#‡jùþ\n	û;x×ã•ß†ô\rYèö¾\Z±“íwRÜ„&r¥1å¨¥‡wöÀ¯Ìø~½J:.Èï¡ˆrIKsó’ëtmÏ¾j·öƒ)ÇCŠî?hß…±|ø¥áˆ/ßU—J†ÜÝ\\Ø<×\\ŒÉàÒ¼Òæsžšùõ†q—,·GK‘úÿ\0Üüu“ÃßüUà›‹†û\'‰4ÁwocsgÐ¶}vJýŸ…·\"ž™üÙÿ\0Áþ#Üøþ\nðÒH˜”¾Ö\"Ó¤]ØÜ³Ÿ\'ô.=«úMAÀ¯Úø\n³–_ì¥ö[üu>‰)(â¹×ÚCè¢ŠûƒÀ\n(¢€\nùoöôÖš×ÆzEÎÑÜ.zø\'ò¾£nŸJøçþ\n3¨›OŠšŒéÄÿ\0äFÿ\0\nñó×l½Wæz¹2¾)|Ï5ƒ\\úœf¬\r_wCŠâ!ÖŠ®Kt÷«QkÄ¯S_ç¡öŠ’:ÆÕsÁoÖ£šæ;†RÜ•;†zçUÞÉçÞŸ¥†äŸÎ°œ“ZšÅXù‹þ\nû;Y§ÂßkZ&›5ßˆ<[¬éÏ+…$’)ŽãOEŸ©$ô¯´ÿ\0‚b©ø_+Ïâ	äñ«ÂÒÁm\n!³ÞDEº±<ß/$q_ ÷~^£hÑJw!èë\\v¿gk£:H<¸\"´i%=#U‹è\05äVÁBSæ±×Mé©ùÕÿ\0§ðí÷ˆà¢_lc‰’æÛÄ¶sL§ª\'YdÏ¡3ùWôß;F}+ð«þ\râø+ÅßÛGÄ?6åôýí7–ìË•G•Ùg×Æ¿u£9QÆ+ô\rÂ:8IIý¦|URÄ(®ˆuQ_`xAEP\0FE|eÿ\0IÒÚÃÅ~ÔÓ?é6Ó[6ze]Hÿ\0ÐÍ}›_=ÿ\0ÁI>IãÙþ]JÚ–ëÃ³¥çË×Ê$$˜ú\rÿ\0¯/:¤ê`æ–ûýÚžŽSUSÅA½¶ûÏ…¡Õ‰Ï=jå¾­€9ë\\¾¢S‚y\Z»o©–¿3æ}ÏÐy,uqê¿7^Y†ÿ\0~:æ¹˜5jäÃŽi64OxòÃÀÔõ½Rso§iÏws\"©sj¥™°98\0œWÆ¿·Wíã¡øŸÁào†zÕ§‰õïÆ¶ÒÜØIº;y8e<}÷nÑÊ‚Iæ¾µ×ôè|a¢^h—	°j–ò[HŒ2]Jœþ¼Óþ_ÿ\0H¼²ñä¿~&i2ÚØéòÅ¡YÜ®\ZûÊ‘”M°ò#ã ž¿JìË°WÙÇtrc±kKŸ|ÿ\0Áÿ\0aõýŒ?d=2ÏPB<Iâ 5\rH•ÚévFyì§?V5õ×@)°(EÀ\0À\0t§×éØj£J4£²?;«VU&êKvQEnfQE\0GÄz¿‰tk­>ñ¶—´2Æz:° Ä\Z½Mr¹ÁÆM&“VcNÚ£ò\'ã·Â»ß¿5Ýï)i1kiƒ4\rÌmï‘Œã¸\"¹»[Ý¸æ¿M?kÙ{Âÿ\0´?„LšµìZ&¡¥åàÕ~P`ÕÉÆPäpO«ó›ãÂ‹ÿ\0‚ö2^ÝÜ[ßéæëì±Ín3žpv‘Ðë_œf¹5\\<¥R\nðïØûÌ³5¥ˆŠ„Ý§Û¹NÚø–ÀïV$Ö¾Hy\\í\n9®)<W=Ú…‚-@’S‚?ýkkÃª±H³12Èã™®z\nð\\’=ØÒmêzôö‚bÌ—nB€¼àö¿Dÿ\0eÝYnþiÖ.Yo4ÈDS£c9?0?NqøWÆß³/Ã\'ÖÐx‚ù,íÎ-¯6>÷ÐW³h~3¾ðˆ£¼²‘‘ó¶HòvÌ?ºFyêkí¸_/8¼MM¶^]Ï’â<\\*Éaéý_©õjŒ\nZòÿ\0„¶ÃÏŒ>\'¹ðþâ½ãÄÖ*\ZïI[µ7Vç¹çñœf½9fVÆæ¾ÊQ”t’±ñð«	«Á§è:Š3EIaEPHÛŸJðoÛóþ\nà?ø\'×Á[xÊížâlÁ¥i6ì¦óW¸#Iè29áG\'œÛþÔÿ\0´—†d¿€ž$øâÛÅ´Ñ|;h×sóÜ¾>HcÅ#¶Grkù`ýºmïþßŸµ/øÆîCç1‹KÓ÷[èÖ¹ÊÁéÀÁfêÍ’{W±”eo;ËH-ÿ\0à{ÇNÑÖoeú³îïÙ·ö¾ø³ÿ\0«ý½¬_Å7ré?üq¼9§»Gaû§ÍªMÎg™¥db_ŒFJ´¿hÍÁÿ\0¼I©|°Öc—â%®?Š\"ÓíÀ‘–;pÉHûŒèäª’}ÏæìáûréðM/ØVK›-gã‡ÅIN¥4¸Áá}<of˜ì’AF<Ð[\0\0Þyÿ\0£øõ«x7þ\nkàë\ZÅþ¡â]ì5KË—2MqöÄhYœž¿3)ÇO”•ß˜äK\n±JÔã—ž›ýç“–q\'ÔeE7ÍVrNO²oo¸ûÃ+y¯êöÖ6PIu}w\"Å¿4ŽÄ\0¸õ$×Øÿ\0ÿ\0à7ÂMCÆ·ÑÛÁ·ömŒ™“±Û$˜ÀîÌãÖ²ì¾ø+ö`ø§ãOŒ>/ÔáÓ|\'á»¹5\r:\"~HÌŸ1\'x«±¹ÇãôßÀ¿ÚÃ¿µ?Á\rÇ¾žY´_[ùÐ‰€Ya`J¼n;:ºG¨¯ÊrŽJ.¾*7IÙvùÿ\0‘úögÄ©ÔX|4’m]÷ù™®ZØø?Ã»#[{-;OˆáAÛ(É$ö\0¦¿&noø)¾³ñ¯ÄZ‡†|us¢x>x$»ŒîµRnäˆààHÁ=q_GÁs¿løMðÖÃá¾‡vcÖüh’>¤ÑIm`„¤ö2±+îªã½~Zhrƒ\0cŒp1_±ðÎGE‹©ð¯×üÁxëŠ*F«ËðÒµ¾7úŸÜkèWzµm¨X]]Y^YH²ÛÏ¦)bu ‡¸!ç#÷¯ìmÿ\0ÙøƒðY­4‰çÇþ„ª‹±ˆõku}þn?¿†\'ø«á+hÁŽjôÞaÇ­}f#/¡‰%hßóûÏÌðYÞ/SÚafâÿ\0êéötý©<ûTü?ƒÄžÕbÔ¬%ùfˆ—R`ÑõGäÃ#šôXÈeÈï_Íçì×ûIxÃöKø“oâjRZ\\FBÝZ9&ÛQ‡ ´R¯B¯Þ~î~ÅŸ¶_‡lÿ\0ƒöþ\'ÐÛÏýŸRÓ¤`fÓ®;£àõV0#¡ÈžçYðOÚGX>¿æ~ÍÂœeG5^Â§»U-º5Ý~¨öŠ)äQ^	öçàŸüóûvIñKã^›ðCD¸\r¢xãÔµ¦ŽÛFHŽÈÏ¨Š\'Ï¦éqÇåls]oÇŸŒ¿´Æ¿øãPB—ž)Õn5š1,…•sþÊ+šŠ=Ä`Wê™v\raèFšùúŸ†g8ùbq2ªöéè@«œ¸ž[×Úºÿ\0‚Úãx;â¯†µhßË}3Tµ»VÎ0c™XsÛ‘\\å¥¹f+FÞØ!È\\žœ× ©).Nç„ñNRêµ>Éÿ\0‚±~ß“þÓ¾>ÿ\0„/Ã×Î|á™<¢Ñ&§t§\r!ÇÞTÁ	‘ýãÜcèOø7oö³¿ñ·ÂÝzù¡Òd¶“ÄúOšÄ¥³Ä]¢ŽÀ¦ÇÇû{šüÀ†Ç$d“É­Ï\rë7Þ¦Óîî,¦h¤€É˜äRŽ¹8e$PMrTÉ)KõHh¿^çm.+ÄRÌ¿´\'«ê¼»¥ûlþÑ7?µ\'íOâïËpòØßß4ztm’°ZFvD ÆUCRÄ×áýDÂ@5mjX=«JÐ2A^Í\Z¥N4ã²V>3˜NµiV›ÖM¿¼ï´{±p-ÍnZFçÒ¸]üÀ@&»RŽj¹,yßZÒÆª[TñÅ{‡üßö¯Ô?coÚ3J×MÍÇü#Z‹‹-vÕd;%·cþ³oBñ“¹I÷ëÆ­X2cÞ§k`ýáX×¡\nÔÝ)ìÇ…ÇÕÂâ!Š í(»¯ëÌþ–4]fÛ^Óm®í%Yío\"Yá‘yY€!ô ƒE|ÿ\0[ý¤›ãGì«‡õ	üÍgÀ\r\"PÎä¶Ú\r»úãnSþÙÑ_c0ÒÃ×•n™ýi”f4ñø:xÊ[M\'þkäÏæÆßµÏ…Þ-¾ðÿ\0ˆ´»½YÓe0ÜÚ\\¦ÉapNA‡^†ª[ÙäôéÖ¿«ÿ\0Ž?³‚~2Zy^\'ðo†¼F ïRÓ!¹ÚØÆàYr	ç9ç­|—ñWþ™ðÆk6ß\0Á£I \0>•u5©\\Ë¸®\nû\ZWGþ^Á¯Càqœ	ˆ»t*\'ët~Û[•aÓ ã­^†ÛÍ~·üCÿ\0ƒw¼\ru,“xsÅ¾,Ñrr\"»ÞÄ«Ž\0;Qú÷,~•á^;ÿ\0‚|Gð÷˜Ú‰¼5®\"Œ¢Î³Z;ã¬½=ëØÃñzsÛÕ+àÜÞž±§ÍèÓ>µ·kFÒÛµ{¿Œÿ\0à˜ÿ\0\Z><¾ƒ.õâ\'çÓeK­ÀU;°{qŸjóáG‰<pÑëÖ´¹†vrCûéE{”1˜z¿Ãš3ã3·AÚµ)GÕ3ÞqŸz½mmÓ­:ÞÐ7<`‘ÜõêÜ0ç·Ò»¢Ó>j½F…¶q[zUÑ„ŒöéYð[ãUÛxñÞ´QOSË«Q­Ž«HÕÆ\0\'šè,¦¦r9ÂØÊPŽqŠÚ±ÖŒ*úÔ:]‰†*ú3ôWþ\'âöÑ¿h/èßvKD[Ž:†e^	\r§ÿ\0øC©Ïâ?xþî`ÓÍ²é.è@¹bâI\nžáv¨Èîh¯È¸žP–a>_+úØþªðÒ•Xd½ªµÜšôoCõ>ëNKž sßáç\'(Ÿ—Zèj)þøúWÏŸ|r7b™Øœût¬M[áZLÈ¤ö;rkÑ_îš†o»@-«üØÇ\\ð•Ìë_Öú\"“[,ÑçîÉåü{ÕïV¬{þ‡ëþ4\'m„âš³>HñÏüËáçŽca«xA»fÜ­˜†UÏR0Ã>ÄWøÇþ¿ðÃZf:~Ÿ­èL[9¶¾wP=–]ü}Nkïëß¼+\"ûýY®Ú9–.—ðêI|Ï\'e¸›ûz—ýºË¯ÿ\0Án­ËI øÌíˆ¯ôüdûº7÷Íy_‹¿à’ß|2ò;MYDÉÚ÷a`?Ùp9>•úû}Ñ«\nçýoâkÙ£Å¹=åÍê’Æø]b57ýÙ?ÉÝúwüããíù‚?\0jèC\0L Ï}ÅðGÐœWÓ¿²Çü3W×õ»]Gâ6¥¦‰•`Yåœ÷Q€£ýÜ“ê+ï­7ýr× x/ý\\ç½iŠâüuXrFÑôÜäË|&ÉpµUZœÕ-ÒOOš[›¿¾iÿ\0</e¤iV6úv›§Ä°[[B˜X‘@\0óÏ\\“Euº7Ü¢¾Y¶ÝÙúl!EF*ÉÿÙ'),(3,'sidda','sidda','tmksmanju14@gmail.com','9535866270','Near BeediBasavanna temple gazipur Kalaburagi','23-11-1999','MALE','585102','Authorized','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0\0j\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0÷ú(¬ýgX¶Ðôé/n›¼Xö”¤¢®ö\ZM»\"kíB×Nµ{‹¹–(—«1Çå^{«üO;š=\"Õp8ÏßÜ(®;^ñ\rïˆ/×.DCý\\*~TãïY5àbs9ÉòÒÑ•,R¼õfíßŒuûÂwê2¨=£ÂÒ³%Ôïæ9’öå¼¤ÿ\0Z«Ey²­R_›:Ô\"¶Dë}vŸvêqôŠ½mâmjÐƒ§r1ÙŸpýk*ŠJ¬ã³½ÑÜi¿u;wWQ÷*6?éÅz…â]7_‹u¤Ø•GÏðëøwâ¼\Z¬Y^Ï§ÞEum!ŽhÎU‡ò>Õß‡ÌªÓv›º9êá!%îèÏ¢ÁÍŸ¡ê+«hÖ·À`Ê€°›¸üëB¾Ž2RI£ÊjÎÌ(¢Šbô¯ñÖ¼uqáÉµµ&8Àè[¹üÿ\0Jõ_jÙ~¾»y\"!?Þ<Ô×1,Ä“’NI¯6¬ÒT—]Nü;·6%äG‘ÕK3p\0k~ËÁÚÒ”¥¸=ò!^ÐôNzŠé®¼¨B…¡–)¸ÎÊZç®-§´”ÅqÄã³\n7È¨¢Šª¬ìAf\'\0œÒÇÊá#BîÜQ’k­Ñt3e¶æà<r«ýÏþ½+Ø¨ÅÉÙÃ,¶çDœ–,´\'ûËÜ}A¯B+Äõpú\'ˆmµ[A´HD£Óp?0ü­{-Ôw–pÜÄr’ u>ÄWÒe˜iO‘î¿#ÈÅÒäŸ2êOEW¦rŸÄg+àù€8Ý*Ö¼eÂ(%˜àÜ×°üIÏü\"mÇó¯=ðŠÝj\\8ÊÀ»€ÿ\0hô¯œÍ_ïþG«‚þÌèô\r-2–E\rrÃ–#;}…tpjª5L­^;w;%vª·Zu­ôF;˜VEìHä}=*È~(/EÙž§%wàhæÚíãød]Øüj²x%U‡›{‘ßbvLÕš|Ì¸£2ÏI³Ó—÷\rÝÝ¹cøÔ¯S9¨“Ksª\nÆg‰`xwÍÇÍÀçØŒ…v?®Ç„­UŽZhÿ\0\0xý\rrúØÇ…¯t,¸üÅmü1Ïü#rç§Ú¯_)mV·‘åãÒå~§mEWÒI•âKÔ|;}lT34,Pï‘ú×™x\ZE\r{nÃç`­üÿ\0Æ½…†W¼cS·>ñ³‘lì]G¬mþÒ¼\\Ú•Ôj/C¿=àu\\£jEj\'Q\",ñò¤g#¸¨×Ïµc×^ò¹l=ê¾ú7Ô‹”½DÍM/Q³ÐT`ÕZ\\æ¬ÚAæ¾öû«ÐzÓJæ¨«³ÅÓ}›@Šßø¥}9?Òºÿ\0\0Ú›OÚi‹KøÇéŠóÝU¤ñ/‹ Óí¾hÕ¼°W9ù›üúW²Û@–Ö±AÄq U°½ì¦“æu>G‹žŠ=õ%¢Š+Ý<à#5ÌøÏÃƒ^Òÿ\0r\0¼‡æ‰½}Wñ®”ô®Å>\"žîøèZ[ín—÷Guù×&6­*t[«±•\\RÃ%>½vs~×|Ÿø•Þ¶Ò¤¬lÝ÷Mt³Ûï§q\\ö¡á;w´O²6Û”³ëèjžŸâK½!þÅªC#¢ðýåÔWÈB¤*ì{x<Z«%£êŽŒ±\Z7TöºŽŸ©¦a™$=vž~;YÄy7z*´z¢cMêk@YEÜ¶~´Éç²ÓÓ|òÅ¦ãÏåG+­°ÈmˆgùW==k\'Äºôv6íafßé0Yå˜ÿ\0\Z§¨x®k×z<2s´>ß™¾ƒúÔ–^’ÂT¹Õk—ÄYÎÜÿ\0x÷5rNs¶ˆáÅb£N<óû‡x:x|9xnuKWí\n.:ˆÁõ³Åz¼S$Ñ¬‘ºº0Èe9WŸI¶Ue‘C!*GTZN¯/†oŸJ™°90ojíÊ³U¨ÕV]òÒÇOÚ9Uw‹ü?à~G¥QLÖD§r°È#¸§×Ôç?âýwûC’Hÿ\0ãâ_ÝÅìOÂ¸/\rB#†iß™]°Iüÿ\0­Iãëó{âXìÃf+e´y?Ò«è·“É;‡¿jøüëêÕp[#çª×ö¸ÆÞÑÑzõ:%Wº··¼eÄK\"ûõCÚ™æ{Òyžõá­5GRªâî™‹7…ayC[Ý4\\ÿ\0ÝÇ­^Oøª$Si±‘É9Æ?VüÏzÔÑõ£c ŽbM»G]¾õéàkÒsäÄlúö=>iV/–nèçåð§Œ\Z\'2\\çj“´OÉö¯<mIVô­Ì2å[8oÖ¾•FY#¤aEy7Ä[}(x¿LEµ®[÷—Jo˜¹àsƒ_C[.¥N*püOªÉ«R¯YÓ¯mVéc­ø{kkÿ\0äW‘ZžFp$eÃ:ç‚j?ÍY×ûŠùüë¨Ón-nl\"’Ïh‡n@ÆÜvÇlt®V¸ê×NaðãúW>wjxHSÉ1›U¼›µ®öíä3Ìª÷ˆ.me‰¹¤…0ÉïM’_óÚ¾Uhô<9I4Ó7¾ë¯=´šEËf[q˜‰îžŸ‡õ®ïp¯²»mÄ¶—ªp¥†ÿ\0u<7é^ØHA¯¶Êñ>ÖžèëÊë¹Òtå¼tùt<:þswâ+ùÏñJøüñý)QÚ\'‡:\Z®¦­wu0ÿ\0ÇªÎ+å±\rº³À¤Û»ëvkA|³(\nþ•6ÿ\0zÄU5b9¤Q‚r+•Ã±Û\ZÏ©¤_Þ›æUQ.h.}3Sb¹Î£Ãú÷Ù%[K–ÿ\0Gcò1þþæefñÝá,HUŒ\'°Ø?Æº=íýÚäµè%¾×åKHÖÁ“\'®ÑÓòíàq“?«Ë[mþGÚðV2Ø×NÊí÷£­øqâ¶“TM>rÁ¥‰÷1èÌ ?\\?SÍ?™+¹?y‰ýkÌt»×Óµ(.£l4náÐ×¥GåXFF*3:²”aÒÿ\0¡\\o„TqçMi$þõÿ\0Â†\'¥;inµ*ÅŽÕ\"ÇÍyÅ(³[jÂÃŽH¯HÓ|D—h[%¼”Ï×h¯>ñËÜ±­k9ßO¶`NJGä+ÜÊªÊ	ò˜Q©*X‰òyž(³:gŒ.”Œ$Ž$R}ÿ\0¯šAzî<áöÔôå½¶M×6À’\0å“¸ü:×¦\\¬Éå9ýâú÷Ži†t«7Ñê¨ûL©½¥ª,éâ*œGRëË¹¢ÇOÔëµH#©¹jqr2ZßXÝÄÌµ€aÆÿ\0õšî„~Õî›o¨Ú=½Ì{ãoÌQ[aë*U™ëäØÅ€ÆC%t®Ÿ£V<šòê¦IR†B?zî“êo¥zO‡.æ‡m&rÁv7ÔqþÈÉà»äÖ£´L½³üÞ~8ïï^‹c§Åag´¶4úû×f>½9År»³ë8«ƒÄáiS¢ùî¼—Ÿùy\nž#©Äxê++ZÕ£°‰¡Œî¸aÆ?‡Ü×—äì‚¨ãJ.SØÄÖ]¯õtµƒæ ˆÔìOÿ\0ª½ŠÓK‚ÞÎ\ngËS?AŠá|á©$¹þÚ¼BgÈ>ñþõzNßjû,§	ìésIni•aÛR¯Qk-½Æ+ÎüUày<öÔtUÃýçxçÕÂ½Œ×£ˆÃÂ¼yfC…§ˆ‡,ÿ\0á´ÕU\\Áz†)”à’1Ï¿¥lÆÐ:0e=Á®ïVðÖ—­)û]º™;JŸ+Æ¹¯‡7–²ÒuM òPGê?Â¾k’U‹½=QäË‰£¥¹×–ä:xŽªK¤ø®ÀñA:Žá×ÿ\0­U^ÿ\0Y‡‰4ø³ÿ\0]ø×—<\"HuãŽ-|<EXñßk³åiÑßÅÿ\0\Z·Ÿâë®+xï¹úôGˆžÑ.8ˆËáŒŸÈÑóUîu;!™îO÷s“ùR\'üAyÅî¯KÜ&[ôâµl~i0÷RÍtÝÁ;WòþµÙK$ÄMûÊÆ‰bg¤)ÛÍ¿Ñ|úõÞ£\'Ù4‹i›Àe¿.ÕÐxáó™–÷\\mïÂç\'ý£ßé]Í–›i§EåYÛÇ\nz\"ã5n½Ü&QJŽ²Õ›RËo%<D¹šéÑŽ5\"…P0\0è)h¯\\õÿÙ'),(4,'Manjunath','Manjunath','tmksmanju14@gmail.com','9535866270','43343/34,Rajaji Nagar,bnagalore','05/06/1987','MALE','560021','Authorized','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!\')+/..383,7(..+\n\n\n\r\Z1&$7,,,,,/,,,,,,,,,7,,,,,,,,,,,,-,,,,,,,,,,,,,,7,,,,-ÿÀ\0\0Ì\0Ì\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0B\0\r\0\0\0\0\0!1AQTaq‘“Ñ2R¡\"#Br¢±Á3S’ÂáCbÒ$D‚ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0.\0\0\0\0\0\0\0\01!2#3ABQ\"a‘¡ÑRq±ÿÚ\0\0\0?\0î \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Î3kOeJôb×\Zu#šîÏ2«gÇ^ö„ãç´,Þêðõÿ\0³Oó?Ø¯ñx?Êõ>‰(î–ÆO(ÜÑï—õ;¬3:‹A8rGÁ“¥V3\\(J3‹âqjI÷¢ø˜˜Ü+˜˜î¬ë€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r¥î‹wté7NÕF´ÖÇQ¿³‹êËÞ#ÌäzF´ü¸ügøkÅÅ›xÛÁ¢bxÝÕÃzÕg$þâ|JØyYy2y§úm¦*S´1Ù,zt	¬îêÑ—\n”çN\\ð“Ž}¼äé{RwYÓ–¬Z5-×sû¿’jâR´M~8ò®´z|INúrþìyx‘ÞŸ³ Ð­Æ3„”£$œešiò¦{´Z73©VuÀ\0\0\0\0\0\0\0\0\0\0\0\0\09Ýþê¥+JÊeyÅûÏùk«ŸÀñ¹ü¹™œTûÿ\0Mül?<ýš1å6€\0\0\0\0\rŸq[¥•­EJ«ÿ\0Ç¨öçþ”Ÿß]\\þ&î*q[¦ÞYþ¹zãqÝÕÓ>æ=\0\0\0\0\0\0\0\0\0\0\0\0\0Ãî³ú-¥Z«ßkƒKñËb}Ü}Åœ¾«Ûâ·\r:ïâœ&ÞmæÞÖß|çÍKÕWÛImo‰.6EÖÙ‚î[<§sšåT—÷?Øº˜¾2äË3‹`”ëRÓŒc	Cøm,’|Ï©–Z‘1§\"\\þâŒ¡)BiÆQy4Ì³\Zð”Ñ€\0\0«½î,ë[iMç;|£·Ãî¿“]Ç¿èüÞ³L÷‡™ÊÇÓ}ÇÅµÙ€\0\0\0\0\0\0\0\0\0\0\09ßb÷ë[ÐO’U$¿,¸ò}%->í¼J÷³@Qå6·ÝÌ`*”UZ«:¯jOî/RêS^2äËb,pG`a÷I€«ˆðéä«EwMs291uFã»‘m4+‹yÓ“HÊ\\jK#ÄÄêVí\0Ï½Ýã§{çõkBP}«ëEü²ï7ú:ý9µõfåWx÷ôuƒè`\0\0\0\0\0\0\0\0\0\0\0\0ä[æÕÎý¯‚(¯Í/î<?HNòýžÈ‡qxZ©QÖšÎŸÕÏ‰Ëüi]ÎÚék€Äì9) ‹a	QuaJ²àÕ„fºÖÕØÉÍ+hÔÂS˜+Ä[Éç	Ô§Õš’^;~eâV{JqšTZî&ŒdIÎ¢_w%ûNG±Þ]õ³(·_‚ÃGV”eK,ÔVYÇüÏŽ5¸J–k;š©Á¼¶|Õ¡óyqgY«?«¹£t—m>ã€\0\0\0\0\0\0\0\0\0\0\0=¾T_ýÆî§I¯¿cÃçÇ¶Ÿ³Ñã{¶Õ€Yª6ôáË—\n]¯iMcP½‘:\0UUrSÀºªå4QlB¹W‘-#µDf…µÍ%(Ê/ŠI§ÞShÚÊË`ÖN8\ZOŽ7Á<óð1ñéíë_ÕfYös.Ê}3È\0\0\0\0\0\0\0\0\0\0\0\0\Zø8ª\\ZÜÅ7áJ¶\\‹„ÜeâÚð<Î~)^?Ô¶qoò³†J=†;F¢\Z¢|eI€+:£)à]UržµW)2,ÒG4BÉB”Ùl1ØVÂÄ%rÖQ¥M$þ*’ÙŸtsñDø˜w–r}?ê¾FMS§êÛU„\0\0\0\0\0\0\0\0\0\0\0\0XcoìŸ\\¢¾fn\\û)_Ç÷ÆÔ÷Qæ[Ë\rÕîˆ©0\nàN¨ÊxU\\§uUJdYðAÊìœ ™M–Bï÷gøÙ»‰äfäy™S8\0\0\0\0\0\0\0\0\0\0\0\0ÇãŸÂìœ?S7/ÝJþ?¼†=û½Ç™>Vß™	RÀ\nàJ®JhUT§‹.…r“2{CJ&ÈJP†eV[ÌømóÔŸêoâ{¶NG~iP\0\0\0\0\0\0\0\0\0\0\0\0,q¨çB§ROÁ¢ŽLo­Á:Ém7œQåWÊß=Ð•,\0ª¡ÉM[Urš,¶%\\«Ì–ÑÒ™3“)B2©Nø*û¾w\'óg£Æeyüò¾4)\0\0\0\0\0\0\0\0\0\0\0\0ÝÓáSœ~(Ix¢7Öa*N­ÀYO8G°ñ)ÙéÛ¹.2Ý(xq×±;X²ÈW)bË\"P•y“ÛšS&FeØ„¥’o™2»JpËáqÊ%þÄüvþç­†5Ž~YÝåtZ¬\0\0\0\0\0\0\0\0\0\0\0\0\0ÖhÇƒ*°øjK.Çµ~§‰xéÉhz•Ò%TÑ]¡(RE 	\"ÉÄ£),‰BaVd¶æž6reÝ-¯ÔiqË$»ÞD\'ÇÁ(ðl”£”RæIxÜF£O.gr¨ë€\0\0\0\0\0\0\0\0\0\0\0\0\'Ã$äêÑ]åÂ„½ÙåÌù‘Åëžª÷iÃŸ¦:mÙŽ§_6ã$á5Ç	läó§q:·vØÔÆáSD&xq×±gaÉH™8”t«2[sH«×Œ”žI™Ó±¬;”ÜjÖYEm§Oô”ºúÜ~7Ï´2æÏòÕš7²\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0kû¤Š•J0â’S“’Ù$¸–ÞßÐó¹ó–x‘:™cõ§â}hüq[WâGŸ¶½.!5%œZkP&J%Ä5®Ò|®þÉÚùQ¤¶rRu\nN/%÷c³“ÔŒø¤Ùpz¼;z2åàE>Õ±üÑî`·V:ËÊË\Z¼ÂðµX\0\0\0\0\0\0\0\0\0\0\0\0\0É4–ob\\mò«Î®­Z•yÕ§øcËÞóg‰Ÿ\'¬É2õ1S¢‘\nÊV-§h³Î\rÓ—<xŸjâ\Zwo>Ý.}{bü‰àiU—¿5ÍOþL	¨ÑŒVQYsó¾ÖHCsrû)Cùu&—cy¯Ôõ¸VÞ=}9QùöË\ZÙ€\0\0\0\0\0\0\0\0\0eˆbö¶éÊ½z4TxÝZ†^,\rSß_¥š…j—r_vÎ”êçÙ7”?0\Zýæüe²×šæ•ÝhS_ÓØÝßcu¸®-í#Ÿµ9eÍÃ«ŸÉ…úEyT[‹«Ë™BJIW¯QÃcÏ.|º²#jõVaÚÎ§n³€â0¯F2†[Msé4·L½ZÚ-†H‚@\0$¡K„ú‹1ÓªP½º`¯–y.A“[Ô;MëÅei9~ìoç+§+{‹›w—\nÚ´égÚ¢ö÷ž¯\n“Zn~,›nÚú ²Ý–5G.\rò¯¶Bî…9øÎx¶lfg,÷Ù¿†_H²¡]/zVÕ9>ÈÍ~àfì·â±m+‹{ëWË)RZk¾œœ¿(»Ü\"ã-+Ûw\'Å\n’ÒŸôÏ\'ò`£^YÂQšç„”—Š@\0\0\0\0¯»­ÚPÃ)EÉ:×5sVöðiJm}é?»ÊÀâØ¶èñ+ÉJw7•éÆ\\Vö•\'BŒWÃ”^síyˆVTsÍÁN_VêKÆYu¥Å’ìÝP\Z€5\0É`xíKZŠQyÅûÑäeðFXýVâË4ŸÑÔ0lz…ÌS„’—,Æ\'&+cZ…/[Æá•+LHÕÉd‹\"úB]Îåo^¼`œ§%ÊÛÈ‡tÚFé÷i¥JÙæÞÇ>EØlÁÄ›xß³6^DG…{´IVm¶Þmímòž¤F˜j\0ÔªUiÓŸ¿KñE?Ô\nma*2Sµ«ZÖ¤^q•\n“‚O®9ä×V[@ìÛï„ï%ô+Õ^F-Ó©•;¨®7÷f¹cÞ€è€\0\0ËÄéZÛÖ¹¬ò§Bœ§<¸ÚK‰u¾%ÚÌø†-Zòâ­íÇñk½‘ÍµFš÷iG>D¼^`EªT¨\rP\Z 5\0j]+©A©BN-q8¶™É¬Lj]‰˜ìØ,7q{I$æª%ñí~&[pñÏoõäÞ;²qß&¿-(>÷èWøÿ\0$ÿ\0?EµÎøwrÙu­¬•x4øË“Ê·Â\Zýþ5qYçV¬åÕ›ËÀÓL4§–[%­ÞVZ…ˆ\Z€5\0j\0Ô¨T\ngViÆ¥)ºu©INHìpšâ`}¸]ÒG²¥r’L¸à¿Ó«“f{WS@l\0\0È·üÆÚ®²³uî:éÓyB©Ë7ÿ\0ÇXŸT5@j€ÕªT¨\rP\Z 5@j€ÕªT \r@\Z€5\0j\0Ô¨ñ¼Æ=ô|FVÒcˆGbmå\ZôÖi®ns]y.`;ð\0\0|¿¾>1ô¬Zò¢yÆ”þO²–É~n\Zî \r@\Z€5\0j\0Ô¨P \r@\Z 5@j€ÕªT¨\rP\Z yªP¹œjÒn5hÎ5)IqÆpy§òë-Ïb°¼µ·º‡»^”\'—ÂÚÛçšî\"?t8’µ´¹¹–YP£R{x›Œ[K½ä€øúW–m¶ÞnM¼Ûokmó^¨j€Ô¨P \r@\Z€5\0j\0Ô¨P \r@\Z€5\0j\0ÕªT¨ËþžñíK{‹	?­m5R]:™æ—á’üèº¿z¹xEhÛBSNpúC‹Û\n1ÎR–\\«5ú›|€|ÇªP \r@\Z€5\0j\0Ô¨P \r@\Z€5\0j\0Ô¨P \r@\Z€5\0j¹oAˆW¥‹Û:çWQºu£Mg•)qÍó(¼ž}@}RÅwÆÞcRr¹Â¸rÍÔ´yB-óÒ|Kð½œÏS=Ââé´ì.óM§•5â¶0<öèžLý\0{‹tÏ&~€=‡Åºç“?@ÃâÝóÉŸ añnyäÏÐ°ø·@¼ògèØ|[ ^y3ôì>-Ð/<™ú\0öèžLý\0{‹tÏ&~€=‡Åºç“?@ÃâÝóÉŸ añnyäÏÐ°ø·@¼ògèØ|[ ^y3ôì>-Ð/<™ú\0öèžLý\0{‹tÏ&~€=‡Åºç“?@ÃâÝóÉŸ ½ÍïO‹]Í)Ñv”³úÕnW%ËÁ‡½\'áÚÐ»‹Üu¦GJÚ9ÎIkW’Z•Zåo‘qä¸\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÙ');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-31 16:18:04
