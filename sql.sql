/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.21-log : Database - activiti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`activiti` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `activiti`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2502',1,'leaveBill.png','2501','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0¤\0\0\0Í5†\0\0,áIDATxœíİlwıÇqkk©W1-ˆA\ræÁ³4›ÔüEİ\"\Z#³Ä´šıQ,Ml©&F„¸ ­ˆ­DF„ÆÔÁV,P¿Mi-íam‡)mú#MÛuóúcõÖóúk.MÚkâ$ŸïÅŞÏ>û~Äásw~>ôVuqî.wşØïÏ«gÇñ	\0\0\0ÔñÉ>\0\0\0\0\'\"$\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $ÁƒEÉd2k×®Åb‘÷E£Qõ–t:],e \0ÀIğ5©aÈï÷«ñHD›¶n{©RÏ=ÿÂC=Ç;::ºººR©”ìƒ\08\Z!	122‰DÔl¤†¡‰ÒdóÚ±s×ªUß	‡ÃÙlVö\0Š/èëëSÏÖm/Æ£êÚ»oxéÒ¥===Š¢È>\0€ã’ànj¾‰ÇãÉdÒR<ª®ß=ñD$)\n²O\0à,„$¸˜šºººÒé´í„¤½ú¦î\'ŸÏË>!\0€ƒ’àbñx|ö	I{éMÍI¼î\0Ğ’àV}}}³y•­¾6Åb1Ù§\0p\nB\\idd$·0!Uê¾ûî_¿~½ì“\08!	®¤&¤½û†[’N:}Ë-A^t\0BÜ(“ÉÄb±–\'¤J=øà÷ûûûeŸ\"\0@>BÜ\'‰XıH$K“€ìS\0ÈGH‚Ë‹Å9JH•Z²dÉĞĞì\0HFH‚Ë¤R©D\"1§!éÑuë’É¤ì\0HFH‚Ëôôô¬_¿~NCÒÖm/E\"Ù\'\n\0Œ—‰F£fş„ílêØñã·Ü”}¢\0\0ÉIp™9úåÿêº<:æ÷ûeŸ(\0@2B\\&œ<uzNC’Z>O\r\0hwÌp™P(ôÊáÃ„$\0À\\c&€ËÌé‡$ñ$\0€†—I$OoØ0§!iÇÎ]K–,‘}¢\0\0ÉIp™şşşüşœ†$5„­ZõÙ\'\n\0Œ—ÉçóÁ`pNCRww÷àà ì\0HFH‚ûÌé{·/utt(Š\"û,\0’’à>súŠÛ¯{Lİ¹ìS\0ÈGH‚û(ŠçâÓ’.İrK°P(È>E\0€|„$¸R:¾{åJ.#\0æ!	nõÍ;ïØÔÂ„ôÊáÃ—GÇdŸ\0ÀIp«b±¸dÉ’V½ƒûÜùjB:vü¸ìÓ\08!	.–ËåÔœ¤&›Ù\'¤oŞyçsÏ¿ û„\0\0BH‚»ŒŒtvvîØ¹k6¯²©I‹„\0¨AH‚ë‹Å¥K—>ôĞÃçÎ_°.ıú±Ç*¯ÙÉ>	\0€ã’àŠ¢¨!é¶ÛBjèQ£™„ôô†\rêú>ø}5ZÉ>|\0€’à…B¡···££ã›wŞ©f ½û†k‚‘zËÆÿw÷Ê•ê:«V}\'ŸÏË>d\0€s’à5Š¢d2™D\"ÑÙÙéû õ5!¥Óéb±(û0\0NGH‚÷©Iö!\0\0Ü‡ïóùxœ\0,cò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<àMétZÍF~¿?«@@ıwáÂ…¹\\Nö¡\0ÜoÚ¼y³¯Î²eË2™ŒìC\0¸!	Ş¤(Ê‚ªÒâÅ‹@±X”}h\0\0w $Á³Ö¬Y3oŞ<-$­^½:™LÊ>(\0€k’àe‹-ª$¤•+WƒAEQd\0À5Iğ²íÛ·ÏŸ?_\rIÑh”w#\0,!$Áã–/_^	I²\0à2„$x\\¡PPC¿ù\0°ŠïãÃ$\060y`®(Š’N§ãñx$	ƒõŸZÔ&ÔsWïX,–J¥ø\0\0pBæÄàà \ZÔ„´qãÆ­Û¶;~|¢TjÏRÏ]½V­Z¥Ş\'jT’=8\0\0SIh±b±˜H$º»»O:9Qš ªëÜùsjTRïœB¡ { \0\0Ih%5!…Ãá§7<5Q\Z§\ZÕsÏ?·dÉ’|>/{¸\0\0Í’ĞJ‰D¢œ®QÍkë¶-K—~Yöp\0š!$¡e»»W”&ÊLıèÇ?\\·îÙƒ\0hˆ„ÖP%:/M^¥ÌÔèØ»‹ù\0\'\0p,BZ#•J%‰Òä­–E¿nò—ä«·j«Z·îçüÍ]\0p,BZ#‹\rlúëÒŠî·…xsJ-‰WÇÅq±wt²ÓK/¾´{Bü[»±ãŠØrMüvÇ¡ûzî—W¤Ô¾á¡p8,{è\0\0úIhP(tøğşÒäX¥|>ß¨cÓâÒ¤¸8!®ñƒŸ<ì»îÃ]+b§Kâä¸8yMäqlR<óòòÅ¤±6¬Ñ±~¿_öĞ\0ô’Ğ\Zç/œ.MVJÍ=W¦ÄøÔÌ·&§gş}ö…¿òs_øé£¿âò¤¸TK¢(Ä–=Ë!i´=ËÇŸL\0§¢A£5ÊAç²Vê—c“âÂU11õŞ\nÅbñ7?ùÈ¯?yfæsKÓb¢ví;P³m[!	\0‹Ö(ÿh5’¦Ä¹+âQQbb|<tÛm>ßõ>Ÿÿ®o¯ªŞpïğşšmÛªI\0àX4h´F9è\\ÒªòrÛ…«âÌeqöšØ{øE‹]?ïC7Ütsü„¤=û†k¶m«\"$€cÑ Ñ\Zå SÔJıòê´¸¨Ì\\I:wMlÛ“ûbçí7ìã7u|äÉ?=sMˆÑqqe|fÃC{j¶m«\"$€cÑ Ñ\Zêd?9ù®V•¹_ÍI—Jâİ	qæri×¡|ç—îXöÕ¯ï(â¬\".Œ5&íØ½§fÛ¶*B\08\r\Z­Qt\"Ë–|íèŞC¹¡‘ÜÎáÜÎıGv<şİ¯¾|èÄöá#ÿ\Z~}çş×‡9tô­\'~¿áî•wK+„$\0@\r\Z4Z£’.V×Üoæã¶¿u×]5¶U’\0À±hĞhrHº@Y-B\08\r\Z­1’¦ÎSV‹\0EƒFk”CÒ9Êj’\0À±hĞhrH:KY-B\08\r\Z­QIïPV‹\0Eƒ†ét:ŸÏë~«’\n”Õj’šÜÕ\0€ÿ\rBÌ:räHå—öo¼ñÆšï’Z’ŠÅâ=÷ÜS¹Ÿ?ñ‰O“\0@\"BÌRåºë®«ÌßóçÏÿüç?_=…—CÒÛsQÚk>`©Éš&wØüÆ¹;£šŸ¢İ‡ë×¯÷ûı•³S@¡P0Ò\0€2B,P§íê˜rÃ\r7Ü{ï½jxå45uf.JÛsõhôãÌFóm}èåÜzïår¹Ï~ö³Õ?®««+Êp\0hk„¤¹’Ïç³UR©ÔÚ*‰D\"bš:Y6ûÈjÇ˜š:=¥íY÷Ç™<*‡=wgTóSÔ!¶}Ÿ»ú`ÖØ===ë×¯\Z\Z’ıd\0}„$ûFFFúûûc±˜n”©Tj*ªIjfÊšæœ7¦ÜtÓMÚ	ÆÊÔSËårâ½+I§Z[õSlõ·¬îÊpÙÌÏ‹såHı•¯|åÓŸş´öo¼ñÆp8,{À[¯ú?jBRsRWWW H&“Îyœ@!É²b±¨¦œuëííÍd2N‹2sD=ñÊü\n…¾ûİïªÿ¦Óií»å$qr.JÛs]pÑ_­f¹ùwkvŞh“¹+_Õ{’o¹å–O}êS•ƒY°`Aå¥LÏ+\n}}}êÿ+Ô¨Ô&§ÀIÖ¨‘HmåjHRƒìcù_{óÍ7ı~4\Z­Lf5÷@9R¼5efÏõëÔÜÒä šMWkùÙUßjDP]ŸùÌgÔ®ş;22ò¿dÉÔ¨ÔÕÕÕ†O.\0ÎDH²@½b±X;wp5#¦R)İkfs\Z#\ZÅ—špSwt3“ár}Àš£S«Iê=¬ŞÏê½=ç#ê<j.Ts×“\08!É¬d2ÙÛÛ+û(œ«œ$ŞlmU…¡ÜØdıF+Tßh¸¬—ÆZ|jÕ?TöĞ9Îàà`4\Z•}\0@H2\'›ÍF\"ÙGáh3Ib:?¥í¹²ğßàÒtåúÛ¾Öàî³Ug\'{èœ(‹µç…4\0Bƒ6¦(J(òüû²g©œ$NÌEi{®,4ùAMV¨¾ÑpY/HÍÉ©U~–ì¡s\"õé¦>éxÑ\r€\\4hc©T*‘HÈ>\n§+\'‰7æ¢´=WtĞûQFÿËF;l´“šæîÔ*;—=t‰D²Ù¬ì£\0ĞÖhĞÆÂáp»ı’‘\rå$q¼åõ~p9®ıûÁ<ÿ]¡É¶õ·7Z¿~…&ûoÕ	Ê:‡êëëK&“²@[£AÈår¡PHöQ¸@9I£¬!©õ&ü8M\0.Bƒ6N§ãñ¸ì£prH:JY-BR#ù|¿^@.\Z´ŞŞŞşş~ÙGá„$BRËqç\0‹d€wš¤ÎgÓÓG(«Eh‚;€\\ô ]]]ü•r3Ê!éuÊj‘šàÎ =È@0ä’Ì(‡¤eµÈMpç\0‹d £££ÿX›yåô\ZeµÈMpç\0‹d€6m’ßï¿zuÿôô«”¥âÖw\0¹èAhÓ&ƒÁ\'^œ>LY*`Mpç\0‹d€6mR4\ZıÛàúiñ\ne¾^Ë=ËG•6Á³€\\ô ´i“ÊDâ^é±Ã]õÇÔ£üYÀ&xö‹d€6mRùÏ¶ßzUÙ;-Q&+[Éddsñì =È\0mÚ¼µ3z¦ÅAÊLı%ıËx<*{Ğg\0¹èAhÓæ)Š‰Ü14ôg!PÍ«PØ\nİZ,î=hÆ³€\\ô ´iKr¹\\8|[.—b„jTjBRÓd6û”ìár:}\0ä¢ M[544¤æ¤¾¾ï	±Ÿª¯Læ±P(˜ÍşAö@¹\0Ï>\0rÑƒĞ¦mP%™LD\"·§R?+¶1L‹ÿL§wÇbuYö¹Ï>\0rÑƒĞ¦mËf³‰Ä7úàóutÜ¯Ps’ìaqÏ>\0RÑƒĞ¦=€Ï\"r)}\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zĞ\Zq}S¦M{\0ƒèR\0¹Ú®ùªTß(êÒR³À¹@®öíA5ı·Ñ—\\[ò\0†Ì¥8\0rµcÒ½n¤{‹ $¹V:VGÊï÷‡Ãau!¨ÿ.\\¸0—ËÉ>4˜Ås\r€\\íØƒj\"QólTÿ*Û6oŞ\\ÿ:é²eË2™ŒìCƒY<×\0ÈÕ=¨şºQ£uš/ÀÉEY°`AuBZ¼xq (‹²\rfñ\\ W;ö š‹C†W’\Z-ÀáÖ¬Y3oŞ<m¬W¯^L&e,à¹@®¶îA&C/·¹×¢E‹*c·råÊ`0¨(Šì#‚<×\0ÈÕ¦=H÷mI¼qÛ{¶oß>ş|uÈ¢Ñ(ïFrk\0äj»ÔèšàUË—/¯„$ÙËx®«­{Pó+IMÈ9\\ØR(Ô!ã7ÿİˆç\Z\0¹Ú´U¿kÛä·ë×[0d.ÅÀ‹d€6m›¢(ét:G\"‘`0Øüâœ‡©ç®Ş±X,•Jñ–øxöŠd€6mÏàà \ZÔ„´qãÆ­Û¶;~|¢TjÏRÏ]½V­Z¥Ş\'jT’=8®Á³€\\ô ´i«ŠÅb\"‘èîî>yêäDi‚ª®sçÏ©QI½s\n…‚ìr}\0ä¢ M[¢&¤p8üô†§&JãT£zîùç–,Y’Ïçe—Óñì =È\0mÚ’D\"QNH×¨æµuÛ–¥K¿,{¸œg\0¹èAhÓæ\rvw¯(M*”™úÑ¸nİ#²ÍÑxö‹d€6m’¢(Á`ğÔé|iò*e¦FÇŞíì\\Ì85Á³€\\ô ´i“R©T\"‘(M^ÑjYôë&I¾z«¶ªuë~ÎßÜm‚g\0¹èAhÓ&Åb±MıoBZÑı¶oN‰£%ñê¸80.öNöozéÅÓ—vOˆ+b·\"v\\[®‰ßî8t_ÏıÒóŠ”Ú7<‡esñì =È\0mÚ¤P(tøğşÒäX¥ÔûmTˆ±iqiR\\œW„øÁOö]÷á®±Ó%qr\\œ¼&òŠ86)yù@ùbÒXÖèØ¿ß/{èœ‹g\0¹èAhÓ&uttœ¿pº49Z)õ~»2%Æ§f¾59=óï³/üı“ŸûÂOıõ¤—\'Å¥’¸XE!¶ì9XI£íY<ÀšàÎ =È\0mÚ¤rĞ¹¬•úåØ¤¸pULL½·B±XüÍãO>ò«ÇO™ùÅÒ´˜(‡§]ûÔlÛVÅ¬	î\0rÑƒĞ¦M*ÿh5’¦Ä¹+âQQbb|<tÛm>ßõ>Ÿÿ®o¯ªŞpïğşšmÛªx€5Á@.zÚ´Iå sI«ÊËm®Š3—ÅÙkbïá7-Ztı¼İpÓÍñ{>’öì®Ù¶­ŠX#…B!È>\n\0mm€9Ì¤rĞ)j¥~yuZ\\Tf®$»&¶íÉ}±óö›?öñ›:>òäŸ¹&Äè¸¸2>³á¡=5Û¶Uñ\0k$ŸÏƒAÙG ­Ñ \r0‡™¤ŞQ““ïjU¹ßÔœt©$Şg.—vÊw~ée_ıÚÙqñ\"Î*âÂ¸PcÒİ{j¶m«âÖÈàà`4\Z•}\0Ú\Z\rÚ\0s˜I5A\'²léÁ×î=”\ZÉíÎíÜd×ÁãÿØıêË‡Nl>ò¯á×wî}èÀ‘CGßzâ÷î^y·ô°BHršµe²@[£A`3©’.V×Üoæã¶¿u×]5¶Uñ\0k$\ZÊ>\n\0mm€9Ì¤rHº@Y-`º\n…B0TEö\0hk4hÌa&Í„¤©ó”Õâ¦«¿¿¿··WöQ\0hw4hÌa&•CÒ9Êjñ\0«§(J0,\n²@»£A`3©’ÎRV‹X½D\"‘J¥d\0’Œ0‡™TIïPVËE°êC»Ãîïïïéé™£€%®iĞ²¸h“«’\n”Õrì¬ú7«oui©	K?QQ”D\"ABàmĞÎáØ9ÌiIIšš#lş¥ÉoÕ(‹ıııÁ`WÙ\08ŠÓ´tÎŸÃ¢’Ş¶QÍ7Ô¾«{¡ÂäNjvØd?†;¬>«?ºÑe]Cº×toi²yÙl¶¯¯/‹©ñ¨··—wjp\Zç6h‡pòæ(ê55uÆRÕ$•š[ªWk´yırı>«o¬Y³zA7<éîªÑ‚½ræLQ5Á¨Ç¦ı[½ÉdÔåÊ\'bW/h\"eÚB55U¯–L&Õ½‹EÙg\0:œØ Å™s˜•³ÂéY–¶3{k¾rÍõ+×,4ÿ‰†››<fİ=7¿cs¹\\¶±şşşµE£Ñú˜¢i’ı~¿–rê³N,Ó~„nZª	UÕòùüÿäñ\0-@0@H2©NYªêM*ËÚ-õ6×]³~«êÕô®5;¶êµõ-jó;AöĞ5T}‰¯²™Y\0\0—¢‹ Ñ›T\'­Ve+mÛš/k–mû~pÑßgÍ~š/4¢»ŸêïÚ;ıÊ†²‡Î˜ÉT¨Ï\0îG3@£7©œŞ2_ãÈ[Õ»j²[İÕ\ZİX¿ó&f–kvnéÜkÎBöĞ5Sš¤¥FÛ€{ÑÅĞèMšMPhAf³r£LSŸÌšä¶šÔ(ly,$5º&TsÀ„$\0F3@£7©œŞ´TuAäMm\'õº›×ìDwŸöÓüİåê}š9B“w‚ì¡3ækz%©	9‡\0-B3@£7i&+Lç-Uõ&•eí–ú…æ›~«z‡õš|«z«GhòN=tÍhY§&ôøL¼ñÈá§\0†èbhô&•³Â	KU½Ie¹*”è¬Ó|óæ[Õ¬ĞhóËÕlx¨ÍïÙC\0ĞGƒ6ÀfR9\"¼a©ê®Ö¼Q¿“&»Õ61ÜÊÌ:&¿«İ^Ì6îÊV²‡\0 m€9Ì¤rD8n©ª7©,×ïDw·U¹Jÿöf/ƒ\ZıˆF?W÷àíÇÌ {è\0\0úhĞ˜ÃL*G„c”Õâ\0Eƒ6ÀfR9$¥¬0\0p,\Z´æ0“I„$\0ğ\Z´æ0“Ô;jzúeµx€€cÑ \r0‡™TI¯SV‹\08\rÚ\0s˜Iå”£¬0\0p,\Z´æ0“Ê!é5Êjñ\0\0Ç¢A`3Éï÷_½ºzúUÊRñ\0\0Ç¢A`3)8ñâôôaÊRñ\0\0Ç¢A`3)\Zşmpı´x…2_¯å\r…B²‡\0 `€dR___2y¯ôØá®úcêÑD\"!{è\0\0úH\0I&åóùPèÖ«ÊŞiqˆ2Y±ØòL&#{è\0\0úH\0Iæ­Ñ3-Rfê/é_ÆãQÙƒ\0hˆ`€d¢(‘ÈCCâ\0Õ¼\n…m¡Ğ­ÅâÙƒ\0hˆ`€dI.—‡oËå2BŒPJMHjšÌfŸ’=\\\0€fH\0IV\r\r\r©9©¯ï{Bì§ê+“y,\nf³=P\0\0$\0„$EI&‘Èí©ÔÏ\n…-BSÅâ?Óé_Äãİ±XD]–=D\0\0c$\0„$Û²Ùl\"ñ@à£>ø|7Æã+Ôœ${X\0\0f‘\0øIîÇg\0l  $y\0ƒ\0°ÉÃ\0ó«¢¶BıB“õyl\0€·Ñå\r0zÀ…$3{\0¸-Ş\0³ Ì&$Õ_4Ò}_vë\Z\0 Íİ\0óŸ^Ò‚aZÒ]\0\0x]Ş\0¡Xº’¤›™ª×$$@› Ë`\"ô\0{/·é&$¡÷r[«\0àôwL`&$5z¹­ÉŞxl\0€·Ñå\r0z€™÷$Õ¬IH\0Ğå\r0z@«>€—Û\0 ­Ğß\r0z€ÕÔüÚW’\0 MĞå\r0z€Õßnz±Iwå–*\0À9èò˜=ÀÆ{’DÕËjºëóŠ\0xÍİ\0óŸ0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«K¥Óiuìü~8V€úïÂ…s¹œìC\0¸	À\0!É¥6oŞì«³lÙ²L&#ûĞ\0\0î@0@Hr)EQ,XP/^ŠÅ¢ìC\0¸	À\0!É½Ö¬Y3oŞ<-$­^½:™LÊ>(\0€k\0’\\mÑ¢E•„´råÊ`0¨(Šì#\0¸	À\0!ÉÕ¶oß>ş|u£Ñ(ïF\0XB0@Hr»åË—WB’ì\0¸	À\0!Éí\n…‚:ˆüæ?\0À*€B’0ˆ\0\0˜<0¿Ú¦(J:Çã‘H$ÖjQ›PÏ]½b±X*•â\0ÀEH\0|„$[Õp &¤7nİ¶íØñã¥R{–zîê=000°jÕ*õ>Q£’ìÁ\0˜B0@H²ªX,&‰îîî“§NN”&¨ê:wşœ\Z•Ô;§P(È(\0€€B’%jB\n‡ÃOoxj¢4N5ªçnÉ’%ù|^öp\0š! $Y’H$Ê	é\ZÕ¼¶nÛ²té—e\0 €B’yƒƒƒİİ+J“\ne¦~ôã®[÷ˆìA\04D0@H2IQ”`0xêt¾4y•2S£cïvv.æœ\0À±H\0I&¥R©D\"Qš¼¢Õ²è×Mş’|õVmUëÖıœ¿¹\0E0@H2)‹\rlúëÒŠî·…xsJ-‰WÇÅq±wt²ÓK/¾´{Bü[»±ãŠØrMüvÇ¡ûzî—W¤Ô¾á¡p8,{è\0\0úH\0I&…B¡Ã‡÷—&Ç*¥Şo£BŒM‹K“ââ„¸\"Ä~ò°ïºw­ˆ.‰“ãâä5‘WÄ±IñÌËÊ“ÆÚ°FÇ.øı~ÙC\0ĞG0@H2©££ãü…Ó¥ÉÑJ©÷Û•)1>5ó­Éé™Ÿ}áïŸüÜ~úè¯\'…¸<).•ÄÅ’(\n±eÏÁrH\ZmÏâ\0Eƒ6ÀfR9è\\ÖJırlR\\¸*&¦Ş[¡X,şæñ\'ùÕã\'ÏÌ|biZL”ÃÓ®}j¶m«â\0Eƒ6à÷ûE‘}.P:ÿÑj&$M‰sWÄ;£¢$ÄÄøxè¶Û|¾ë}>ÿ]ß^U½áŞáı5Û¶U’\0À±hĞ‚Á ŸŒlF9è\\ÒªòrÛ…«âÌeqöšØ{øE‹]?ïC7Ütsü„¤=û†k¶m«\"$€cÑ \r„Ãá‘‘ÙGáå SÔJıòê´¸¨Ì\\I:wMlÛ“ûbçí7ìã7u|äÉ?=sMˆÑqqe|fÃC{j¶m«\"$€cÑ \rD\"‘l6+û(\\@ì\'\'ßÕª2÷«9éRI¼;!Î\\.í:”ïüÒË¾úµ³ãâEœUÄ…q¡Æ¤»÷ÔlÛVEH\0Ç¢AH$©TJöQ¸@MĞ‰,[zğµ£{å†Fr;‡s;÷Ùuğø?v¿úò¡Û‡ükøõû_:päĞÑ·øı†»WŞ-=¬’\0\05hĞ*$-û(\\ ’.V×Üoæã¶¿u×]5¶U’\0À±hĞr¹\\(’}.PI(«EH\0Ç¢Aã½ÛfÌ„¤©ó”Õ\"$€cÑ õ÷÷÷ööÊ>\n§+‡¤s”Õ\"$€cÑ )Š…‚ìq´rH:KY-B\08\rÚ”l6‰Dd…£•CÒ;”Õ\"$€cÑ ÍZ»v-/º5QIÊj’\0À±hĞ$“Éh4Z,eˆ’I\0à14hkƒÁàÚµky‹RrHz{öU¿3·4Ù[=3?´æöú…V!	\0‹mY±XTC’\Z•¢Ñ¨ºÀ-©P\'û©©3-©ê]éîV»±&ıÔÜX³fõ‚áG\\ênÕèxfy²²‡\0 m“¢(ƒƒƒjHŠD\"†3n›˜š:=Ë2³sİTs£öe£…æGk¸¹á,²ìÇ2\0@\r\Z­Q\r§fYv¢İ^¿ »UõjzyËÔÏ­^¿ùÌò”e\0@\r\Z­Q\r\'gYv¢İ^\\>ğ­š\r«×o²ĞøªUÃŸ«ûãfyÊ²‡\0 Ö(ç†·fYvRs»öeõíÕ7¾ŸftÖl¾m“}Vï|ögZı#d\0@\r\Z­ÑªÔøêN³„Ô<ÓèîÊäÏj¶I\0ày4h´F9=¼9×õÁ(óæ³¯zµú\r›Ü¢»\\½Ïú…‘ì¡\0è£A£5fÒÃt¾…U½Ãæ;¯ÿ®v‹ş…¢Æßª^¡f?fÄŞiÊ:\0€>\Z4Z£œNÌ²*;ÑvU½ÏšåFßÒ]¡Ñ:æ—µÓ=¶Y²ì¡\0è£A£5Ê¡áYVe\'5»ª¾ñı˜¢³Uõ—†ë˜ü®v»¶Ïê[f¾•ıÈ:\0€>\Z4Z£\ZÏ¦ª÷P÷ú—şúz¯”¬ »·F7j·ëÛ,ÏWÛ›ì¡\0è£A£5Ê¡áeµI\0àX4h´F9$¥¬!	\0‹Ö $’\0ÀchĞh\ru²Ÿ>BY-B\08\r\Z­QI¯SV‹\0EƒFk”CR²Z„$\0p,\Z4Z£’^£¬!	\0‹ÖğûıW¯îŸ~•²T„$\0p,\Z4Z#8ñâôôaÊR’\0À±hĞhh4ú·ÁõÓâÊ|½–{6\nÉ:\0€>BZ£¯¯/™¼WzìpWı1õh\"‘=t\0\0}„$´F>Ÿ…n½ªì‡(“‹-Ïd2²‡\0 „–Y;£gZ¤ÌÔ_Ò¿ŒÇ£²\r\0Ğ!	-£(J$rÇĞĞŸ…8@5¯Ba[(tk±¸Cö \0\Z\"$¡•r¹\\8|[.—b„jTjBRÓd6û”ìá\04CHB‹\r\r\r©9©¯ï{Bì§ê+“y,\nf³=P\0\0„$´¢(Éd\"¹=•úY¡°EˆaªXüg:ı‹x¼;‹¨Ë²‡\0`Œ„¹’Íf‰oõÁçëè¸1_¡æ$ÙÃ\00‹ïã³ˆ\0\06’à}>şô\0À:&xŸaHÒV¨_h²>Ù\0¼.ï›£dfÏ\0\0÷¢ÅÃûf’ê/\Zé¾/»õ\r\0æï3¼,¤Ã´¤»\0\0ğ$º<¼ÏÒ•$İÌT½&!	\0Ú]Şgïå6İ„$ô^nkõñ\0şï3’\Z½ÜÖdoÄ#\0ğ6º<¼ÏÌ{’jÖ$$\0èòğ¾V}\0/·@[¡¿Ãû¬†¤æ×–¸’\0m‚.ï³úÛmB/6é®ÜòC\08]Şgã=I¢êe5İõyÅ\r\0<æï#Ä\0\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼)N«ÙÈï÷‡Ãau!¨ÿ.\\¸0—ËÉ>4\0€;’àM›7oöÕY¶lY&“‘}h\0\0w $Á›EY°`AuBZ¼xq (‹²\r\0à„$xÖš5kæÍ›§…¤Õ«W\'“IÙ\0p\rB¼lÑ¢E•„´råÊ`0¨(Šì#\0¸!	^¶}ûöùóç«!)\Zòn$\0€%„$xÜòåË+!Iö\0\0\\†+\njHâ7ÿ\0V’à}|˜$\0À&x¢(™LfíÚµ±X,ò¾h4ªŞ’J¥\n…‚ì\0¸\0!	¢f#5ÕŒdp8¼~ız~Ù\r\0Ğ!	‘Íf»ººãQµ`0È¯¼\0\Z!$ÁõEI$õ×Š~ô£lÚºí%­zèáîîîš5c±Ã\r\0¨GH‚»\n…šH>øıcÇO”&Õ¹ó~÷Ä•?y«]R\Z‘}*\0\0g!$ÁÅòù¼šo´¬F›Ç£š¨ôĞCkÛúış¡¡!Ù\'\0pBÜJQ”êkH®[g2U×Æÿ§Æ#íz¿ø\0Ğ’àVñx\\KH›l$¤Jíİ7ÜÑÑQÙO$‘}Z\0\0§ $Á•2™Ì,¯!U×sÏ¿ í­¿¿_öÉ\0W\n‡ÃÚûf™*¥½?)ğùI\0\0AH‚¥ÓiíİÖ\'OnIHº<:¦ı¾[oo¯ìS\0ÈGH‚ûD\"í·ı[’*õô†\r•İvttÈ>E\0€|„$¸L±XÔŞ?ÔªËHZİrË{(ÍfeŸ(\0@2B\\&•Ji¿‰ÖÚ„¤Ö}÷İ_Ùy2™”}¢\0\0ÉIp™VıR[}mİöReç]]]²O\0 !	.F+9æ¹ç_hyH:vü¸öÁ’²O\0 !	.£ıòÿŞ}Ã-Ijiox’}¢\0\0É˜	à2Ú/ê›ÿ3m–JÛ¿ì\0HÆL\0—	…B•óÊáÃs’´?å&ûD\0’1Àe´IÚºí¥–\'¤sç/ğQI\0€\nB\\&‘HTrÌïx¢å!é•Ã‡+;‡Ã²O\0 !	.Ó××WÉ1«V}§å!éÑuë*;Çã²O\0 !	.“Ëå´WÄ.µ6$-]º´²óT*%ûD\0’’à>Áà{<d``S’ö!Iªb±(û,\0’’à>Éd²e:;;[x1é›wŞYÙm,“}Š\0\0ùIpŸb±¨}šQ«ş8É»´ËH###²O\0 !	®Ôßß_	4~¿öŸpìøq-uõôôÈ>9\0€#’àV]]]•X£æ›Ù|úöåÑ±ÎÎNmW…BAö™\0·ÊçóZ¸±÷§ÜN:­%$¿ßŸÍfeŸ\0À)Ip15Óho$R#Õ—Ü±s—ö*›ª¿¿_ö	\0„wËd2Úõ¤Êï»=÷üf. İ½r¥¯\n		\0Pƒ×ËårÚ_½Õ¢ÒC=\\ÿpÕlô»\'èîî®^YÍX¼Ê\0¨GH‚‹Åµk×úı~Ÿ%K–4úV<çÚ\0\0]„$x‡\Zw´?k(‰\r\rÉ>d\0€s’à5Š¢¤Ói5-…Ãáš`c±Øúõë¹z\00DH\0\0ĞAH\0\0ĞAH\0\0ĞAH\0\0ĞAH\0\0Ğñÿ7p×”–>ñ\0\0\0\0IEND®B`‚',0),('2503',1,'leaveBill.bpmn','2501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"leaveBill\" name=\"leaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤ç”³è¯·\" activiti:assignee=\"${proposer}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"éƒ¨é—¨ç»ç†å®¡æ‰¹\" activiti:assignee=\"${departmentManager}\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"æ€»ç»ç†å®¡æ‰¹\" activiti:assignee=\"${generalManager}\"></userTask>\n    <sequenceFlow id=\"flow3\" name=\"æ‰¹å‡†\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ‰¹å‡†\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"æ‰¹å‡†\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ‰¹å‡†\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"é©³å›\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"é©³å›\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"leaveBill\" id=\"BPMNPlane_leaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"380.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"247.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"247.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"247.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"280.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"245.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"247.0\" y=\"335.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"380.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"335.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"300.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"216.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"153.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"300.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"350.0\" y=\"211.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"195.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"214.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"128.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"81.0\" y=\"177.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('5002',1,'leaveBill.png','5001','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0¤\0\0\0Í5†\0\0,áIDATxœíİlwıÇqkk©W1-ˆA\ræÁ³4›ÔüEİ\"\Z#³Ä´šıQ,Ml©&F„¸ ­ˆ­DF„ÆÔÁV,P¿Mi-íam‡)mú#MÛuóúcõÖóúk.MÚkâ$ŸïÅŞÏ>û~Äásw~>ôVuqî.wşØïÏ«gÇñ	\0\0\0ÔñÉ>\0\0\0\0\'\"$\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $ÁƒEÉd2k×®Åb‘÷E£Qõ–t:],e \0ÀIğ5©aÈï÷«ñHD›¶n{©RÏ=ÿÂC=Ç;::ºººR©”ìƒ\08\Z!	122‰DÔl¤†¡‰ÒdóÚ±s×ªUß	‡ÃÙlVö\0Š/èëëSÏÖm/Æ£êÚ»oxéÒ¥===Š¢È>\0€ã’ànj¾‰ÇãÉdÒR<ª®ß=ñD$)\n²O\0à,„$¸˜šºººÒé´í„¤½ú¦î\'ŸÏË>!\0€ƒ’àbñx|ö	I{éMÍI¼î\0Ğ’àV}}}³y•­¾6Åb1Ù§\0p\nB\\idd$·0!Uê¾ûî_¿~½ì“\08!	®¤&¤½û†[’N:}Ë-A^t\0BÜ(“ÉÄb±–\'¤J=øà÷ûûûeŸ\"\0@>BÜ\'‰XıH$K“€ìS\0ÈGH‚Ë‹Å9JH•Z²dÉĞĞì\0HFH‚Ë¤R©D\"1§!éÑuë’É¤ì\0HFH‚Ëôôô¬_¿~NCÒÖm/E\"Ù\'\n\0Œ—‰F£fş„ílêØñã·Ü”}¢\0\0ÉIp™9úåÿêº<:æ÷ûeŸ(\0@2B\\&œ<uzNC’Z>O\r\0hwÌp™P(ôÊáÃ„$\0À\\c&€ËÌé‡$ñ$\0€†—I$OoØ0§!iÇÎ]K–,‘}¢\0\0ÉIp™şşşüşœ†$5„­ZõÙ\'\n\0Œ—ÉçóÁ`pNCRww÷àà ì\0HFH‚ûÌé{·/utt(Š\"û,\0’’à>súŠÛ¯{Lİ¹ìS\0ÈGH‚û(ŠçâÓ’.İrK°P(È>E\0€|„$¸R:¾{åJ.#\0æ!	nõÍ;ïØÔÂ„ôÊáÃ—GÇdŸ\0ÀIp«b±¸dÉ’V½ƒûÜùjB:vü¸ìÓ\08!	.–ËåÔœ¤&›Ù\'¤oŞyçsÏ¿ û„\0\0BH‚»ŒŒtvvîØ¹k6¯²©I‹„\0¨AH‚ë‹Å¥K—>ôĞÃçÎ_°.ıú±Ç*¯ÙÉ>	\0€ã’àŠ¢¨!é¶ÛBjèQ£™„ôô†\rêú>ø}5ZÉ>|\0€’à…B¡···££ã›wŞ©f ½û†k‚‘zËÆÿw÷Ê•ê:«V}\'ŸÏË>d\0€s’à5Š¢d2™D\"ÑÙÙéû õ5!¥Óéb±(û0\0NGH‚÷©Iö!\0\0Ü‡ïóùxœ\0,cò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<àMétZÍF~¿?«@@ıwáÂ…¹\\Nö¡\0ÜoÚ¼y³¯Î²eË2™ŒìC\0¸!	Ş¤(Ê‚ªÒâÅ‹@±X”}h\0\0w $Á³Ö¬Y3oŞ<-$­^½:™LÊ>(\0€k’àe‹-ª$¤•+WƒAEQd\0À5Iğ²íÛ·ÏŸ?_\rIÑh”w#\0,!$Áã–/_^	I²\0à2„$x\\¡PPC¿ù\0°ŠïãÃ$\060y`®(Š’N§ãñx$	ƒõŸZÔ&ÔsWïX,–J¥ø\0\0pBæÄàà \ZÔ„´qãÆ­Û¶;~|¢TjÏRÏ]½V­Z¥Ş\'jT’=8\0\0SIh±b±˜H$º»»O:9Qš ªëÜùsjTRïœB¡ { \0\0Ih%5!…Ãá§7<5Q\Z§\ZÕsÏ?·dÉ’|>/{¸\0\0Í’ĞJ‰D¢œ®QÍkë¶-K—~Yöp\0š!$¡e»»W”&ÊLıèÇ?\\·îÙƒ\0hˆ„ÖP%:/M^¥ÌÔèØ»‹ù\0\'\0p,BZ#•J%‰Òä­–E¿nò—ä«·j«Z·îçüÍ]\0p,BZ#‹\rlúëÒŠî·…xsJ-‰WÇÅq±wt²ÓK/¾´{Bü[»±ãŠØrMüvÇ¡ûzî—W¤Ô¾á¡p8,{è\0\0úIhP(tøğşÒäX¥|>ß¨cÓâÒ¤¸8!®ñƒŸ<ì»îÃ]+b§Kâä¸8yMäqlR<óòòÅ¤±6¬Ñ±~¿_öĞ\0ô’Ğ\Zç/œ.MVJÍ=W¦ÄøÔÌ·&§gş}ö…¿òs_øé£¿âò¤¸TK¢(Ä–=Ë!i´=ËÇŸL\0§¢A£5ÊAç²Vê—c“âÂU11õŞ\nÅbñ7?ùÈ¯?yfæsKÓb¢ví;P³m[!	\0‹Ö(ÿh5’¦Ä¹+âQQbb|<tÛm>ßõ>Ÿÿ®o¯ªŞpïğşšmÛªI\0àX4h´F9è\\ÒªòrÛ…«âÌeqöšØ{øE‹]?ïC7Ütsü„¤=û†k¶m«\"$€cÑ Ñ\Zå SÔJıòê´¸¨Ì\\I:wMlÛ“ûbçí7ìã7u|äÉ?=sMˆÑqqe|fÃC{j¶m«\"$€cÑ Ñ\Zêd?9ù®V•¹_ÍI—Jâİ	qæri×¡|ç—îXöÕ¯ï(â¬\".Œ5&íØ½§fÛ¶*B\08\r\Z­Qt\"Ë–|íèŞC¹¡‘ÜÎáÜÎıGv<şİ¯¾|èÄöá#ÿ\Z~}çş×‡9tô­\'~¿áî•wK+„$\0@\r\Z4Z£’.V×Üoæã¶¿u×]5¶U’\0À±hĞhrHº@Y-B\08\r\Z­1’¦ÎSV‹\0EƒFk”CÒ9Êj’\0À±hĞhrH:KY-B\08\r\Z­QIïPV‹\0Eƒ†ét:ŸÏë~«’\n”Õj’šÜÕ\0€ÿ\rBÌ:räHå—öo¼ñÆšï’Z’ŠÅâ=÷ÜS¹Ÿ?ñ‰O“\0@\"BÌRåºë®«ÌßóçÏÿüç?_=…—CÒÛsQÚk>`©Éš&wØüÆ¹;£šŸ¢İ‡ë×¯÷ûı•³S@¡P0Ò\0€2B,P§íê˜rÃ\r7Ü{ï½jxå45uf.JÛsõhôãÌFóm}èåÜzïår¹Ï~ö³Õ?®««+Êp\0hk„¤¹’Ïç³UR©ÔÚ*‰D\"bš:Y6ûÈjÇ˜š:=¥íY÷Ç™<*‡=wgTóSÔ!¶}Ÿ»ú`ÖØ===ë×¯\Z\Z’ıd\0}„$ûFFFúûûc±˜n”©Tj*ªIjfÊšæœ7¦ÜtÓMÚ	ÆÊÔSËårâ½+I§Z[õSlõ·¬îÊpÙÌÏ‹såHı•¯|åÓŸş´öo¼ñÆp8,{À[¯ú?jBRsRWWW H&“Îyœ@!É²b±¨¦œuëííÍd2N‹2sD=ñÊü\n…¾ûİïªÿ¦Óií»å$qr.JÛs]pÑ_­f¹ùwkvŞh“¹+_Õ{’o¹å–O}êS•ƒY°`Aå¥LÏ+\n}}}êÿ+Ô¨Ô&§ÀIÖ¨‘HmåjHRƒìcù_{óÍ7ı~4\Z­Lf5÷@9R¼5efÏõëÔÜÒä šMWkùÙUßjDP]ŸùÌgÔ®ş;22ò¿dÉÔ¨ÔÕÕÕ†O.\0ÎDH²@½b±X;wp5#¦R)İkfs\Z#\ZÅ—špSwt3“ár}Àš£S«Iê=¬ŞÏê½=ç#ê<j.Ts×“\08!É¬d2ÙÛÛ+û(œ«œ$ŞlmU…¡ÜØdıF+Tßh¸¬—ÆZ|jÕ?TöĞ9Îàà`4\Z•}\0@H2\'›ÍF\"ÙGáh3Ib:?¥í¹²ğßàÒtåúÛ¾Öàî³Ug\'{èœ(‹µç…4\0Bƒ6¦(J(òüû²g©œ$NÌEi{®,4ùAMV¨¾ÑpY/HÍÉ©U~–ì¡s\"õé¦>éxÑ\r€\\4hc©T*‘HÈ>\n§+\'‰7æ¢´=WtĞûQFÿËF;l´“šæîÔ*;—=t‰D²Ù¬ì£\0ĞÖhĞÆÂáp»ı’‘\rå$q¼åõ~p9®ıûÁ<ÿ]¡É¶õ·7Z¿~…&ûoÕ	Ê:‡êëëK&“²@[£AÈår¡PHöQ¸@9I£¬!©õ&ü8M\0.Bƒ6N§ãñ¸ì£prH:JY-BR#ù|¿^@.\Z´ŞŞŞşş~ÙGá„$BRËqç\0‹d€wš¤ÎgÓÓG(«Eh‚;€\\ô ]]]ü•r3Ê!éuÊj‘šàÎ =È@0ä’Ì(‡¤eµÈMpç\0‹d £££ÿX›yåô\ZeµÈMpç\0‹d€6m’ßï¿zuÿôô«”¥âÖw\0¹èAhÓ&ƒÁ\'^œ>LY*`Mpç\0‹d€6mR4\ZıÛàúiñ\ne¾^Ë=ËG•6Á³€\\ô ´i“ÊDâ^é±Ã]õÇÔ£üYÀ&xö‹d€6mRùÏ¶ßzUÙ;-Q&+[Éddsñì =È\0mÚ¼µ3z¦ÅAÊLı%ıËx<*{Ğg\0¹èAhÓæ)Š‰Ü14ôg!PÍ«PØ\nİZ,î=hÆ³€\\ô ´iKr¹\\8|[.—b„jTjBRÓd6û”ìár:}\0ä¢ M[544¤æ¤¾¾ï	±Ÿª¯Læ±P(˜ÍşAö@¹\0Ï>\0rÑƒĞ¦mP%™LD\"·§R?+¶1L‹ÿL§wÇbuYö¹Ï>\0rÑƒĞ¦mËf³‰Ä7úàóutÜ¯Ps’ìaqÏ>\0RÑƒĞ¦=€Ï\"r)}\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zĞ\Zq}S¦M{\0ƒèR\0¹Ú®ùªTß(êÒR³À¹@®öíA5ı·Ñ—\\[ò\0†Ì¥8\0rµcÒ½n¤{‹ $¹V:VGÊï÷‡Ãau!¨ÿ.\\¸0—ËÉ>4˜Ås\r€\\íØƒj\"QólTÿ*Û6oŞ\\ÿ:é²eË2™ŒìCƒY<×\0ÈÕ=¨şºQ£uš/ÀÉEY°`AuBZ¼xq (‹²\rfñ\\ W;ö š‹C†W’\Z-ÀáÖ¬Y3oŞ<m¬W¯^L&e,à¹@®¶îA&C/·¹×¢E‹*c·råÊ`0¨(Šì#‚<×\0ÈÕ¦=H÷mI¼qÛ{¶oß>ş|uÈ¢Ñ(ïFrk\0äj»ÔèšàUË—/¯„$ÙËx®«­{Pó+IMÈ9\\ØR(Ô!ã7ÿİˆç\Z\0¹Ú´U¿kÛä·ë×[0d.ÅÀ‹d€6m›¢(ét:G\"‘`0Øüâœ‡©ç®Ş±X,•Jñ–øxöŠd€6mÏàà \ZÔ„´qãÆ­Û¶;~|¢TjÏRÏ]½V­Z¥Ş\'jT’=8®Á³€\\ô ´i«ŠÅb\"‘èîî>yêäDi‚ª®sçÏ©QI½s\n…‚ìr}\0ä¢ M[¢&¤p8üô†§&JãT£zîùç–,Y’Ïçe—Óñì =È\0mÚ’D\"QNH×¨æµuÛ–¥K¿,{¸œg\0¹èAhÓæ\rvw¯(M*”™úÑ¸nİ#²ÍÑxö‹d€6m’¢(Á`ğÔé|iò*e¦FÇŞíì\\Ì85Á³€\\ô ´i“R©T\"‘(M^ÑjYôë&I¾z«¶ªuë~ÎßÜm‚g\0¹èAhÓ&Åb±MıoBZÑı¶oN‰£%ñê¸80.öNöozéÅÓ—vOˆ+b·\"v\\[®‰ßî8t_ÏıÒóŠ”Ú7<‡esñì =È\0mÚ¤P(tøğşÒäX¥ÔûmTˆ±iqiR\\œW„øÁOö]÷á®±Ó%qr\\œ¼&òŠ86)yù@ùbÒXÖèØ¿ß/{èœ‹g\0¹èAhÓ&uttœ¿pº49Z)õ~»2%Æ§f¾59=óï³/üı“ŸûÂOıõ¤—\'Å¥’¸XE!¶ì9XI£íY<ÀšàÎ =È\0mÚ¤rĞ¹¬•úåØ¤¸pULL½·B±XüÍãO>ò«ÇO™ùÅÒ´˜(‡§]ûÔlÛVÅ¬	î\0rÑƒĞ¦M*ÿh5’¦Ä¹+âQQbb|<tÛm>ßõ>Ÿÿ®o¯ªŞpïğşšmÛªx€5Á@.zÚ´Iå sI«ÊËm®Š3—ÅÙkbïá7-Ztı¼İpÓÍñ{>’öì®Ù¶­ŠX#…B!È>\n\0mm€9Ì¤rĞ)j¥~yuZ\\Tf®$»&¶íÉ}±óö›?öñ›:>òäŸ¹&Äè¸¸2>³á¡=5Û¶Uñ\0k$ŸÏƒAÙG ­Ñ \r0‡™¤ŞQ““ïjU¹ßÔœt©$Şg.—vÊw~ée_ıÚÙqñ\"Î*âÂ¸PcÒİ{j¶m«âÖÈàà`4\Z•}\0Ú\Z\rÚ\0s˜I5A\'²léÁ×î=”\ZÉíÎíÜd×ÁãÿØıêË‡Nl>ò¯á×wî}èÀ‘CGßzâ÷î^y·ô°BHršµe²@[£A`3©’.V×Üoæã¶¿u×]5¶Uñ\0k$\ZÊ>\n\0mm€9Ì¤rHº@Y-`º\n…B0TEö\0hk4hÌa&Í„¤©ó”Õâ¦«¿¿¿··WöQ\0hw4hÌa&•CÒ9Êjñ\0«§(J0,\n²@»£A`3©’ÎRV‹X½D\"‘J¥d\0’Œ0‡™TIïPVËE°êC»Ãîïïïéé™£€%®iĞ²¸h“«’\n”Õrì¬ú7«oui©	K?QQ”D\"ABàmĞÎáØ9ÌiIIšš#lş¥ÉoÕ(‹ıııÁ`WÙ\08ŠÓ´tÎŸÃ¢’Ş¶QÍ7Ô¾«{¡ÂäNjvØd?†;¬>«?ºÑe]Cº×toi²yÙl¶¯¯/‹©ñ¨··—wjp\Zç6h‡pòæ(ê55uÆRÕ$•š[ªWk´yırı>«o¬Y³zA7<éîªÑ‚½ræLQ5Á¨Ç¦ı[½ÉdÔåÊ\'bW/h\"eÚB55U¯–L&Õ½‹EÙg\0:œØ Å™s˜•³ÂéY–¶3{k¾rÍõ+×,4ÿ‰†››<fİ=7¿cs¹\\¶±şşşµE£Ñú˜¢i’ı~¿–rê³N,Ó~„nZª	UÕòùüÿäñ\0-@0@H2©NYªêM*ËÚ-õ6×]³~«êÕô®5;¶êµõ-jó;AöĞ5T}‰¯²™Y\0\0—¢‹ Ñ›T\'­Ve+mÛš/k–mû~pÑßgÍ~š/4¢»ŸêïÚ;ıÊ†²‡Î˜ÉT¨Ï\0îG3@£7©œŞ2_ãÈ[Õ»j²[İÕ\ZİX¿ó&f–kvnéÜkÎBöĞ5Sš¤¥FÛ€{ÑÅĞèMšMPhAf³r£LSŸÌšä¶šÔ(ly,$5º&TsÀ„$\0F3@£7©œŞ´TuAäMm\'õº›×ìDwŸöÓüİåê}š9B“w‚ì¡3ækz%©	9‡\0-B3@£7i&+Lç-Uõ&•eí–ú…æ›~«z‡õš|«z«GhòN=tÍhY§&ôøL¼ñÈá§\0†èbhô&•³Â	KU½Ie¹*”è¬Ó|óæ[Õ¬ĞhóËÕlx¨ÍïÙC\0ĞGƒ6ÀfR9\"¼a©ê®Ö¼Q¿“&»Õ61ÜÊÌ:&¿«İ^Ì6îÊV²‡\0 m€9Ì¤rD8n©ª7©,×ïDw·U¹Jÿöf/ƒ\ZıˆF?W÷àíÇÌ {è\0\0úhĞ˜ÃL*G„c”Õâ\0Eƒ6ÀfR9$¥¬0\0p,\Z´æ0“I„$\0ğ\Z´æ0“Ô;jzúeµx€€cÑ \r0‡™TI¯SV‹\08\rÚ\0s˜Iå”£¬0\0p,\Z´æ0“Ê!é5Êjñ\0\0Ç¢A`3Éï÷_½ºzúUÊRñ\0\0Ç¢A`3)8ñâôôaÊRñ\0\0Ç¢A`3)\Zşmpı´x…2_¯å\r…B²‡\0 `€dR___2y¯ôØá®úcêÑD\"!{è\0\0úH\0I&åóùPèÖ«ÊŞiqˆ2Y±ØòL&#{è\0\0úH\0Iæ­Ñ3-Rfê/é_ÆãQÙƒ\0hˆ`€d¢(‘ÈCCâ\0Õ¼\n…m¡Ğ­ÅâÙƒ\0hˆ`€dI.—‡oËå2BŒPJMHjšÌfŸ’=\\\0€fH\0IV\r\r\r©9©¯ï{Bì§ê+“y,\nf³=P\0\0$\0„$EI&‘Èí©ÔÏ\n…-BSÅâ?Óé_Äãİ±XD]–=D\0\0c$\0„$Û²Ùl\"ñ@à£>ø|7Æã+Ôœ${X\0\0f‘\0øIîÇg\0l  $y\0ƒ\0°ÉÃ\0ó«¢¶BıB“õyl\0€·Ñå\r0zÀ…$3{\0¸-Ş\0³ Ì&$Õ_4Ò}_vë\Z\0 Íİ\0óŸ^Ò‚aZÒ]\0\0x]Ş\0¡Xº’¤›™ª×$$@› Ë`\"ô\0{/·é&$¡÷r[«\0àôwL`&$5z¹­ÉŞxl\0€·Ñå\r0z€™÷$Õ¬IH\0Ğå\r0z@«>€—Û\0 ­Ğß\r0z€ÕÔüÚW’\0 MĞå\r0z€Õßnz±Iwå–*\0À9èò˜=ÀÆ{’DÕËjºëóŠ\0xÍİ\0óŸ0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«K¥Óiuìü~8V€úïÂ…s¹œìC\0¸	À\0!É¥6oŞì«³lÙ²L&#ûĞ\0\0î@0@Hr)EQ,XP/^ŠÅ¢ìC\0¸	À\0!É½Ö¬Y3oŞ<-$­^½:™LÊ>(\0€k\0’\\mÑ¢E•„´råÊ`0¨(Šì#\0¸	À\0!ÉÕ¶oß>ş|u£Ñ(ïF\0XB0@Hr»åË—WB’ì\0¸	À\0!Éí\n…‚:ˆüæ?\0À*€B’0ˆ\0\0˜<0¿Ú¦(J:Çã‘H$ÖjQ›PÏ]½b±X*•â\0ÀEH\0|„$[Õp &¤7nİ¶íØñã¥R{–zîê=000°jÕ*õ>Q£’ìÁ\0˜B0@H²ªX,&‰îîî“§NN”&¨ê:wşœ\Z•Ô;§P(È(\0€€B’%jB\n‡ÃOoxj¢4N5ªçnÉ’%ù|^öp\0š! $Y’H$Ê	é\ZÕ¼¶nÛ²té—e\0 €B’yƒƒƒİİ+J“\ne¦~ôã®[÷ˆìA\04D0@H2IQ”`0xêt¾4y•2S£cïvv.æœ\0À±H\0I&¥R©D\"Qš¼¢Õ²è×Mş’|õVmUëÖıœ¿¹\0E0@H2)‹\rlúëÒŠî·…xsJ-‰WÇÅq±wt²ÓK/¾´{Bü[»±ãŠØrMüvÇ¡ûzî—W¤Ô¾á¡p8,{è\0\0úH\0I&…B¡Ã‡÷—&Ç*¥Şo£BŒM‹K“ââ„¸\"Ä~ò°ïºw­ˆ.‰“ãâä5‘WÄ±IñÌËÊ“ÆÚ°FÇ.øı~ÙC\0ĞG0@H2©££ãü…Ó¥ÉÑJ©÷Û•)1>5ó­Éé™Ÿ}áïŸüÜ~úè¯\'…¸<).•ÄÅ’(\n±eÏÁrH\ZmÏâ\0Eƒ6ÀfR9è\\ÖJırlR\\¸*&¦Ş[¡X,şæñ\'ùÕã\'ÏÌ|biZL”ÃÓ®}j¶m«â\0Eƒ6à÷ûE‘}.P:ÿÑj&$M‰sWÄ;£¢$ÄÄøxè¶Û|¾ë}>ÿ]ß^U½áŞáı5Û¶U’\0À±hĞ‚Á ŸŒlF9è\\ÒªòrÛ…«âÌeqöšØ{øE‹]?ïC7Ütsü„¤=û†k¶m«\"$€cÑ \r„Ãá‘‘ÙGáå SÔJıòê´¸¨Ì\\I:wMlÛ“ûbçí7ìã7u|äÉ?=sMˆÑqqe|fÃC{j¶m«\"$€cÑ \rD\"‘l6+û(\\@ì\'\'ßÕª2÷«9éRI¼;!Î\\.í:”ïüÒË¾úµ³ãâEœUÄ…q¡Æ¤»÷ÔlÛVEH\0Ç¢AH$©TJöQ¸@MĞ‰,[zğµ£{å†Fr;‡s;÷Ùuğø?v¿úò¡Û‡ükøõû_:päĞÑ·øı†»WŞ-=¬’\0\05hĞ*$-û(\\ ’.V×Üoæã¶¿u×]5¶U’\0À±hĞr¹\\(’}.PI(«EH\0Ç¢Aã½ÛfÌ„¤©ó”Õ\"$€cÑ õ÷÷÷ööÊ>\n§+‡¤s”Õ\"$€cÑ )Š…‚ìq´rH:KY-B\08\rÚ”l6‰Dd…£•CÒ;”Õ\"$€cÑ ÍZ»v-/º5QIÊj’\0À±hĞ$“Éh4Z,eˆ’I\0à14hkƒÁàÚµky‹RrHz{öU¿3·4Ù[=3?´æöú…V!	\0‹mY±XTC’\Z•¢Ñ¨ºÀ-©P\'û©©3-©ê]éîV»±&ıÔÜX³fõ‚áG\\ênÕèxfy²²‡\0 m“¢(ƒƒƒjHŠD\"†3n›˜š:=Ë2³sİTs£öe£…æGk¸¹á,²ìÇ2\0@\r\Z­Q\r§fYv¢İ^¿ »UõjzyËÔÏ­^¿ùÌò”e\0@\r\Z­Q\r\'gYv¢İ^\\>ğ­š\r«×o²ĞøªUÃŸ«ûãfyÊ²‡\0 Ö(ç†·fYvRs»öeõíÕ7¾ŸftÖl¾m“}Vï|ögZı#d\0@\r\Z­ÑªÔøêN³„Ô<ÓèîÊäÏj¶I\0ày4h´F9=¼9×õÁ(óæ³¯zµú\r›Ü¢»\\½Ïú…‘ì¡\0è£A£5fÒÃt¾…U½Ãæ;¯ÿ®v‹ş…¢Æßª^¡f?fÄŞiÊ:\0€>\Z4Z£œNÌ²*;ÑvU½ÏšåFßÒ]¡Ñ:æ—µÓ=¶Y²ì¡\0è£A£5Ê¡áYVe\'5»ª¾ñı˜¢³Uõ—†ë˜ü®v»¶Ïê[f¾•ıÈ:\0€>\Z4Z£\ZÏ¦ª÷P÷ú—şúz¯”¬ »·F7j·ëÛ,ÏWÛ›ì¡\0è£A£5Ê¡áeµI\0àX4h´F9$¥¬!	\0‹Ö $’\0ÀchĞh\ru²Ÿ>BY-B\08\r\Z­QI¯SV‹\0EƒFk”CR²Z„$\0p,\Z4Z£’^£¬!	\0‹ÖğûıW¯îŸ~•²T„$\0p,\Z4Z#8ñâôôaÊR’\0À±hĞhh4ú·ÁõÓâÊ|½–{6\nÉ:\0€>BZ£¯¯/™¼WzìpWı1õh\"‘=t\0\0}„$´F>Ÿ…n½ªì‡(“‹-Ïd2²‡\0 „–Y;£gZ¤ÌÔ_Ò¿ŒÇ£²\r\0Ğ!	-£(J$rÇĞĞŸ…8@5¯Ba[(tk±¸Cö \0\Z\"$¡•r¹\\8|[.—b„jTjBRÓd6û”ìá\04CHB‹\r\r\r©9©¯ï{Bì§ê+“y,\nf³=P\0\0„$´¢(Éd\"¹=•úY¡°EˆaªXüg:ı‹x¼;‹¨Ë²‡\0`Œ„¹’Íf‰oõÁçëè¸1_¡æ$ÙÃ\00‹ïã³ˆ\0\06’à}>şô\0À:&xŸaHÒV¨_h²>Ù\0¼.ï›£dfÏ\0\0÷¢ÅÃûf’ê/\Zé¾/»õ\r\0æï3¼,¤Ã´¤»\0\0ğ$º<¼ÏÒ•$İÌT½&!	\0Ú]Şgïå6İ„$ô^nkõñ\0şï3’\Z½ÜÖdoÄ#\0ğ6º<¼ÏÌ{’jÖ$$\0èòğ¾V}\0/·@[¡¿Ãû¬†¤æ×–¸’\0m‚.ï³úÛmB/6é®ÜòC\08]Şgã=I¢êe5İõyÅ\r\0<æï#Ä\0\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼)N«ÙÈï÷‡Ãau!¨ÿ.\\¸0—ËÉ>4\0€;’àM›7oöÕY¶lY&“‘}h\0\0w $Á›EY°`AuBZ¼xq (‹²\r\0à„$xÖš5kæÍ›§…¤Õ«W\'“IÙ\0p\rB¼lÑ¢E•„´råÊ`0¨(Šì#\0¸!	^¶}ûöùóç«!)\Zòn$\0€%„$xÜòåË+!Iö\0\0\\†+\njHâ7ÿ\0V’à}|˜$\0À&x¢(™LfíÚµ±X,ò¾h4ªŞ’J¥\n…‚ì\0¸\0!	¢f#5ÕŒdp8¼~ız~Ù\r\0Ğ!	‘Íf»ººãQµ`0È¯¼\0\Z!$ÁõEI$õ×Š~ô£lÚºí%­zèáîîîš5c±Ã\r\0¨GH‚»\n…šH>øıcÇO”&Õ¹ó~÷Ä•?y«]R\Z‘}*\0\0g!$ÁÅòù¼šo´¬F›Ç£š¨ôĞCkÛúış¡¡!Ù\'\0pBÜJQ”êkH®[g2U×Æÿ§Æ#íz¿ø\0Ğ’àVñx\\KH›l$¤Jíİ7ÜÑÑQÙO$‘}Z\0\0§ $Á•2™Ì,¯!U×sÏ¿ í­¿¿_öÉ\0W\n‡ÃÚûf™*¥½?)ğùI\0\0AH‚¥ÓiíİÖ\'OnIHº<:¦ı¾[oo¯ìS\0ÈGH‚ûD\"í·ı[’*õô†\r•İvttÈ>E\0€|„$¸L±XÔŞ?ÔªËHZİrË{(ÍfeŸ(\0@2B\\&•Ji¿‰ÖÚ„¤Ö}÷İ_Ùy2™”}¢\0\0ÉIp™VıR[}mİöReç]]]²O\0 !	.F+9æ¹ç_hyH:vü¸öÁ’²O\0 !	.£ıòÿŞ}Ã-Ijiox’}¢\0\0É˜	à2Ú/ê›ÿ3m–JÛ¿ì\0HÆL\0—	…B•óÊáÃs’´?å&ûD\0’1Àe´IÚºí¥–\'¤sç/ğQI\0€\nB\\&‘HTrÌïx¢å!é•Ã‡+;‡Ã²O\0 !	.Ó××WÉ1«V}§å!éÑuë*;Çã²O\0 !	.“Ëå´WÄ.µ6$-]º´²óT*%ûD\0’’à>Áà{<d``S’ö!Iªb±(û,\0’’à>Éd²e:;;[x1é›wŞYÙm,“}Š\0\0ùIpŸb±¨}šQ«ş8É»´ËH###²O\0 !	®Ôßß_	4~¿öŸpìøq-uõôôÈ>9\0€#’àV]]]•X£æ›Ù|úöåÑ±ÎÎNmW…BAö™\0·ÊçóZ¸±÷§ÜN:­%$¿ßŸÍfeŸ\0À)Ip15Óho$R#Õ—Ü±s—ö*›ª¿¿_ö	\0„wËd2Úõ¤Êï»=÷üf. İ½r¥¯\n		\0Pƒ×ËårÚ_½Õ¢ÒC=\\ÿpÕlô»\'èîî®^YÍX¼Ê\0¨GH‚‹Åµk×úı~Ÿ%K–4úV<çÚ\0\0]„$x‡\Zw´?k(‰\r\rÉ>d\0€s’à5Š¢¤Ói5-…Ãáš`c±Øúõë¹z\00DH\0\0ĞAH\0\0ĞAH\0\0ĞAH\0\0ĞAH\0\0Ğñÿ7p×”–>ñ\0\0\0\0IEND®B`‚',0),('5003',1,'leaveBill.bpmn','5001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"leaveBill\" name=\"leaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤ç”³è¯·\" activiti:assignee=\"${proposer}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"éƒ¨é—¨ç»ç†å®¡æ‰¹\" activiti:assignee=\"${departmentManager}\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"æ€»ç»ç†å®¡æ‰¹\" activiti:assignee=\"${generalManager}\"></userTask>\n    <sequenceFlow id=\"flow3\" name=\"æ‰¹å‡†\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ‰¹å‡†\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"æ‰¹å‡†\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ‰¹å‡†\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"é©³å›\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"é©³å›\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"leaveBill\" id=\"BPMNPlane_leaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"380.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"247.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"247.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"247.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"280.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"245.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"247.0\" y=\"335.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"380.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"335.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"300.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"216.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"153.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"300.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"350.0\" y=\"211.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"195.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"214.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"128.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"81.0\" y=\"177.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('7502',1,'leaveBill.png','7501','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0¤\0\0\0Í5†\0\0,áIDATxœíİlwıÇqkk©W1-ˆA\ræÁ³4›ÔüEİ\"\Z#³Ä´šıQ,Ml©&F„¸ ­ˆ­DF„ÆÔÁV,P¿Mi-íam‡)mú#MÛuóúcõÖóúk.MÚkâ$ŸïÅŞÏ>û~Äásw~>ôVuqî.wşØïÏ«gÇñ	\0\0\0ÔñÉ>\0\0\0\0\'\"$\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $\0\0è $ÁƒEÉd2k×®Åb‘÷E£Qõ–t:],e \0ÀIğ5©aÈï÷«ñHD›¶n{©RÏ=ÿÂC=Ç;::ºººR©”ìƒ\08\Z!	122‰DÔl¤†¡‰ÒdóÚ±s×ªUß	‡ÃÙlVö\0Š/èëëSÏÖm/Æ£êÚ»oxéÒ¥===Š¢È>\0€ã’ànj¾‰ÇãÉdÒR<ª®ß=ñD$)\n²O\0à,„$¸˜šºººÒé´í„¤½ú¦î\'ŸÏË>!\0€ƒ’àbñx|ö	I{éMÍI¼î\0Ğ’àV}}}³y•­¾6Åb1Ù§\0p\nB\\idd$·0!Uê¾ûî_¿~½ì“\08!	®¤&¤½û†[’N:}Ë-A^t\0BÜ(“ÉÄb±–\'¤J=øà÷ûûûeŸ\"\0@>BÜ\'‰XıH$K“€ìS\0ÈGH‚Ë‹Å9JH•Z²dÉĞĞì\0HFH‚Ë¤R©D\"1§!éÑuë’É¤ì\0HFH‚Ëôôô¬_¿~NCÒÖm/E\"Ù\'\n\0Œ—‰F£fş„ílêØñã·Ü”}¢\0\0ÉIp™9úåÿêº<:æ÷ûeŸ(\0@2B\\&œ<uzNC’Z>O\r\0hwÌp™P(ôÊáÃ„$\0À\\c&€ËÌé‡$ñ$\0€†—I$OoØ0§!iÇÎ]K–,‘}¢\0\0ÉIp™şşşüşœ†$5„­ZõÙ\'\n\0Œ—ÉçóÁ`pNCRww÷àà ì\0HFH‚ûÌé{·/utt(Š\"û,\0’’à>súŠÛ¯{Lİ¹ìS\0ÈGH‚û(ŠçâÓ’.İrK°P(È>E\0€|„$¸R:¾{åJ.#\0æ!	nõÍ;ïØÔÂ„ôÊáÃ—GÇdŸ\0ÀIp«b±¸dÉ’V½ƒûÜùjB:vü¸ìÓ\08!	.–ËåÔœ¤&›Ù\'¤oŞyçsÏ¿ û„\0\0BH‚»ŒŒtvvîØ¹k6¯²©I‹„\0¨AH‚ë‹Å¥K—>ôĞÃçÎ_°.ıú±Ç*¯ÙÉ>	\0€ã’àŠ¢¨!é¶ÛBjèQ£™„ôô†\rêú>ø}5ZÉ>|\0€’à…B¡···££ã›wŞ©f ½û†k‚‘zËÆÿw÷Ê•ê:«V}\'ŸÏË>d\0€s’à5Š¢d2™D\"ÑÙÙéû õ5!¥Óéb±(û0\0NGH‚÷©Iö!\0\0Ü‡ïóùxœ\0,cò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<àMétZÍF~¿?«@@ıwáÂ…¹\\Nö¡\0ÜoÚ¼y³¯Î²eË2™ŒìC\0¸!	Ş¤(Ê‚ªÒâÅ‹@±X”}h\0\0w $Á³Ö¬Y3oŞ<-$­^½:™LÊ>(\0€k’àe‹-ª$¤•+WƒAEQd\0À5Iğ²íÛ·ÏŸ?_\rIÑh”w#\0,!$Áã–/_^	I²\0à2„$x\\¡PPC¿ù\0°ŠïãÃ$\060y`®(Š’N§ãñx$	ƒõŸZÔ&ÔsWïX,–J¥ø\0\0pBæÄàà \ZÔ„´qãÆ­Û¶;~|¢TjÏRÏ]½V­Z¥Ş\'jT’=8\0\0SIh±b±˜H$º»»O:9Qš ªëÜùsjTRïœB¡ { \0\0Ih%5!…Ãá§7<5Q\Z§\ZÕsÏ?·dÉ’|>/{¸\0\0Í’ĞJ‰D¢œ®QÍkë¶-K—~Yöp\0š!$¡e»»W”&ÊLıèÇ?\\·îÙƒ\0hˆ„ÖP%:/M^¥ÌÔèØ»‹ù\0\'\0p,BZ#•J%‰Òä­–E¿nò—ä«·j«Z·îçüÍ]\0p,BZ#‹\rlúëÒŠî·…xsJ-‰WÇÅq±wt²ÓK/¾´{Bü[»±ãŠØrMüvÇ¡ûzî—W¤Ô¾á¡p8,{è\0\0úIhP(tøğşÒäX¥|>ß¨cÓâÒ¤¸8!®ñƒŸ<ì»îÃ]+b§Kâä¸8yMäqlR<óòòÅ¤±6¬Ñ±~¿_öĞ\0ô’Ğ\Zç/œ.MVJÍ=W¦ÄøÔÌ·&§gş}ö…¿òs_øé£¿âò¤¸TK¢(Ä–=Ë!i´=ËÇŸL\0§¢A£5ÊAç²Vê—c“âÂU11õŞ\nÅbñ7?ùÈ¯?yfæsKÓb¢ví;P³m[!	\0‹Ö(ÿh5’¦Ä¹+âQQbb|<tÛm>ßõ>Ÿÿ®o¯ªŞpïğşšmÛªI\0àX4h´F9è\\ÒªòrÛ…«âÌeqöšØ{øE‹]?ïC7Ütsü„¤=û†k¶m«\"$€cÑ Ñ\Zå SÔJıòê´¸¨Ì\\I:wMlÛ“ûbçí7ìã7u|äÉ?=sMˆÑqqe|fÃC{j¶m«\"$€cÑ Ñ\Zêd?9ù®V•¹_ÍI—Jâİ	qæri×¡|ç—îXöÕ¯ï(â¬\".Œ5&íØ½§fÛ¶*B\08\r\Z­Qt\"Ë–|íèŞC¹¡‘ÜÎáÜÎıGv<şİ¯¾|èÄöá#ÿ\Z~}çş×‡9tô­\'~¿áî•wK+„$\0@\r\Z4Z£’.V×Üoæã¶¿u×]5¶U’\0À±hĞhrHº@Y-B\08\r\Z­1’¦ÎSV‹\0EƒFk”CÒ9Êj’\0À±hĞhrH:KY-B\08\r\Z­QIïPV‹\0Eƒ†ét:ŸÏë~«’\n”Õj’šÜÕ\0€ÿ\rBÌ:räHå—öo¼ñÆšï’Z’ŠÅâ=÷ÜS¹Ÿ?ñ‰O“\0@\"BÌRåºë®«ÌßóçÏÿüç?_=…—CÒÛsQÚk>`©Éš&wØüÆ¹;£šŸ¢İ‡ë×¯÷ûı•³S@¡P0Ò\0€2B,P§íê˜rÃ\r7Ü{ï½jxå45uf.JÛsõhôãÌFóm}èåÜzïår¹Ï~ö³Õ?®««+Êp\0hk„¤¹’Ïç³UR©ÔÚ*‰D\"bš:Y6ûÈjÇ˜š:=¥íY÷Ç™<*‡=wgTóSÔ!¶}Ÿ»ú`ÖØ===ë×¯\Z\Z’ıd\0}„$ûFFFúûûc±˜n”©Tj*ªIjfÊšæœ7¦ÜtÓMÚ	ÆÊÔSËårâ½+I§Z[õSlõ·¬îÊpÙÌÏ‹såHı•¯|åÓŸş´öo¼ñÆp8,{À[¯ú?jBRsRWWW H&“Îyœ@!É²b±¨¦œuëííÍd2N‹2sD=ñÊü\n…¾ûİïªÿ¦Óií»å$qr.JÛs]pÑ_­f¹ùwkvŞh“¹+_Õ{’o¹å–O}êS•ƒY°`Aå¥LÏ+\n}}}êÿ+Ô¨Ô&§ÀIÖ¨‘HmåjHRƒìcù_{óÍ7ı~4\Z­Lf5÷@9R¼5efÏõëÔÜÒä šMWkùÙUßjDP]ŸùÌgÔ®ş;22ò¿dÉÔ¨ÔÕÕÕ†O.\0ÎDH²@½b±X;wp5#¦R)İkfs\Z#\ZÅ—špSwt3“ár}Àš£S«Iê=¬ŞÏê½=ç#ê<j.Ts×“\08!É¬d2ÙÛÛ+û(œ«œ$ŞlmU…¡ÜØdıF+Tßh¸¬—ÆZ|jÕ?TöĞ9Îàà`4\Z•}\0@H2\'›ÍF\"ÙGáh3Ib:?¥í¹²ğßàÒtåúÛ¾Öàî³Ug\'{èœ(‹µç…4\0Bƒ6¦(J(òüû²g©œ$NÌEi{®,4ùAMV¨¾ÑpY/HÍÉ©U~–ì¡s\"õé¦>éxÑ\r€\\4hc©T*‘HÈ>\n§+\'‰7æ¢´=WtĞûQFÿËF;l´“šæîÔ*;—=t‰D²Ù¬ì£\0ĞÖhĞÆÂáp»ı’‘\rå$q¼åõ~p9®ıûÁ<ÿ]¡É¶õ·7Z¿~…&ûoÕ	Ê:‡êëëK&“²@[£AÈår¡PHöQ¸@9I£¬!©õ&ü8M\0.Bƒ6N§ãñ¸ì£prH:JY-BR#ù|¿^@.\Z´ŞŞŞşş~ÙGá„$BRËqç\0‹d€wš¤ÎgÓÓG(«Eh‚;€\\ô ]]]ü•r3Ê!éuÊj‘šàÎ =È@0ä’Ì(‡¤eµÈMpç\0‹d £££ÿX›yåô\ZeµÈMpç\0‹d€6m’ßï¿zuÿôô«”¥âÖw\0¹èAhÓ&ƒÁ\'^œ>LY*`Mpç\0‹d€6mR4\ZıÛàúiñ\ne¾^Ë=ËG•6Á³€\\ô ´i“ÊDâ^é±Ã]õÇÔ£üYÀ&xö‹d€6mRùÏ¶ßzUÙ;-Q&+[Éddsñì =È\0mÚ¼µ3z¦ÅAÊLı%ıËx<*{Ğg\0¹èAhÓæ)Š‰Ü14ôg!PÍ«PØ\nİZ,î=hÆ³€\\ô ´iKr¹\\8|[.—b„jTjBRÓd6û”ìár:}\0ä¢ M[544¤æ¤¾¾ï	±Ÿª¯Læ±P(˜ÍşAö@¹\0Ï>\0rÑƒĞ¦mP%™LD\"·§R?+¶1L‹ÿL§wÇbuYö¹Ï>\0rÑƒĞ¦mËf³‰Ä7úàóutÜ¯Ps’ìaqÏ>\0RÑƒĞ¦=€Ï\"r)}\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zÚ´0ˆ.ÅÀ‹d€6í¢K1p\0ä¢ M{\0ƒèR\0¹èAhÓÀ º@.zĞ\Zq}S¦M{\0ƒèR\0¹Ú®ùªTß(êÒR³À¹@®öíA5ı·Ñ—\\[ò\0†Ì¥8\0rµcÒ½n¤{‹ $¹V:VGÊï÷‡Ãau!¨ÿ.\\¸0—ËÉ>4˜Ås\r€\\íØƒj\"QólTÿ*Û6oŞ\\ÿ:é²eË2™ŒìCƒY<×\0ÈÕ=¨şºQ£uš/ÀÉEY°`AuBZ¼xq (‹²\rfñ\\ W;ö š‹C†W’\Z-ÀáÖ¬Y3oŞ<m¬W¯^L&e,à¹@®¶îA&C/·¹×¢E‹*c·råÊ`0¨(Šì#‚<×\0ÈÕ¦=H÷mI¼qÛ{¶oß>ş|uÈ¢Ñ(ïFrk\0äj»ÔèšàUË—/¯„$ÙËx®«­{Pó+IMÈ9\\ØR(Ô!ã7ÿİˆç\Z\0¹Ú´U¿kÛä·ë×[0d.ÅÀ‹d€6m›¢(ét:G\"‘`0Øüâœ‡©ç®Ş±X,•Jñ–øxöŠd€6mÏàà \ZÔ„´qãÆ­Û¶;~|¢TjÏRÏ]½V­Z¥Ş\'jT’=8®Á³€\\ô ´i«ŠÅb\"‘èîî>yêäDi‚ª®sçÏ©QI½s\n…‚ìr}\0ä¢ M[¢&¤p8üô†§&JãT£zîùç–,Y’Ïçe—Óñì =È\0mÚ’D\"QNH×¨æµuÛ–¥K¿,{¸œg\0¹èAhÓæ\rvw¯(M*”™úÑ¸nİ#²ÍÑxö‹d€6m’¢(Á`ğÔé|iò*e¦FÇŞíì\\Ì85Á³€\\ô ´i“R©T\"‘(M^ÑjYôë&I¾z«¶ªuë~ÎßÜm‚g\0¹èAhÓ&Åb±MıoBZÑı¶oN‰£%ñê¸80.öNöozéÅÓ—vOˆ+b·\"v\\[®‰ßî8t_ÏıÒóŠ”Ú7<‡esñì =È\0mÚ¤P(tøğşÒäX¥ÔûmTˆ±iqiR\\œW„øÁOö]÷á®±Ó%qr\\œ¼&òŠ86)yù@ùbÒXÖèØ¿ß/{èœ‹g\0¹èAhÓ&uttœ¿pº49Z)õ~»2%Æ§f¾59=óï³/üı“ŸûÂOıõ¤—\'Å¥’¸XE!¶ì9XI£íY<ÀšàÎ =È\0mÚ¤rĞ¹¬•úåØ¤¸pULL½·B±XüÍãO>ò«ÇO™ùÅÒ´˜(‡§]ûÔlÛVÅ¬	î\0rÑƒĞ¦M*ÿh5’¦Ä¹+âQQbb|<tÛm>ßõ>Ÿÿ®o¯ªŞpïğşšmÛªx€5Á@.zÚ´Iå sI«ÊËm®Š3—ÅÙkbïá7-Ztı¼İpÓÍñ{>’öì®Ù¶­ŠX#…B!È>\n\0mm€9Ì¤rĞ)j¥~yuZ\\Tf®$»&¶íÉ}±óö›?öñ›:>òäŸ¹&Äè¸¸2>³á¡=5Û¶Uñ\0k$ŸÏƒAÙG ­Ñ \r0‡™¤ŞQ““ïjU¹ßÔœt©$Şg.—vÊw~ée_ıÚÙqñ\"Î*âÂ¸PcÒİ{j¶m«âÖÈàà`4\Z•}\0Ú\Z\rÚ\0s˜I5A\'²léÁ×î=”\ZÉíÎíÜd×ÁãÿØıêË‡Nl>ò¯á×wî}èÀ‘CGßzâ÷î^y·ô°BHršµe²@[£A`3©’.V×Üoæã¶¿u×]5¶Uñ\0k$\ZÊ>\n\0mm€9Ì¤rHº@Y-`º\n…B0TEö\0hk4hÌa&Í„¤©ó”Õâ¦«¿¿¿··WöQ\0hw4hÌa&•CÒ9Êjñ\0«§(J0,\n²@»£A`3©’ÎRV‹X½D\"‘J¥d\0’Œ0‡™TIïPVËE°êC»Ãîïïïéé™£€%®iĞ²¸h“«’\n”Õrì¬ú7«oui©	K?QQ”D\"ABàmĞÎáØ9ÌiIIšš#lş¥ÉoÕ(‹ıııÁ`WÙ\08ŠÓ´tÎŸÃ¢’Ş¶QÍ7Ô¾«{¡ÂäNjvØd?†;¬>«?ºÑe]Cº×toi²yÙl¶¯¯/‹©ñ¨··—wjp\Zç6h‡pòæ(ê55uÆRÕ$•š[ªWk´yırı>«o¬Y³zA7<éîªÑ‚½ræLQ5Á¨Ç¦ı[½ÉdÔåÊ\'bW/h\"eÚB55U¯–L&Õ½‹EÙg\0:œØ Å™s˜•³ÂéY–¶3{k¾rÍõ+×,4ÿ‰†››<fİ=7¿cs¹\\¶±şşşµE£Ñú˜¢i’ı~¿–rê³N,Ó~„nZª	UÕòùüÿäñ\0-@0@H2©NYªêM*ËÚ-õ6×]³~«êÕô®5;¶êµõ-jó;AöĞ5T}‰¯²™Y\0\0—¢‹ Ñ›T\'­Ve+mÛš/k–mû~pÑßgÍ~š/4¢»ŸêïÚ;ıÊ†²‡Î˜ÉT¨Ï\0îG3@£7©œŞ2_ãÈ[Õ»j²[İÕ\ZİX¿ó&f–kvnéÜkÎBöĞ5Sš¤¥FÛ€{ÑÅĞèMšMPhAf³r£LSŸÌšä¶šÔ(ly,$5º&TsÀ„$\0F3@£7©œŞ´TuAäMm\'õº›×ìDwŸöÓüİåê}š9B“w‚ì¡3ækz%©	9‡\0-B3@£7i&+Lç-Uõ&•eí–ú…æ›~«z‡õš|«z«GhòN=tÍhY§&ôøL¼ñÈá§\0†èbhô&•³Â	KU½Ie¹*”è¬Ó|óæ[Õ¬ĞhóËÕlx¨ÍïÙC\0ĞGƒ6ÀfR9\"¼a©ê®Ö¼Q¿“&»Õ61ÜÊÌ:&¿«İ^Ì6îÊV²‡\0 m€9Ì¤rD8n©ª7©,×ïDw·U¹Jÿöf/ƒ\ZıˆF?W÷àíÇÌ {è\0\0úhĞ˜ÃL*G„c”Õâ\0Eƒ6ÀfR9$¥¬0\0p,\Z´æ0“I„$\0ğ\Z´æ0“Ô;jzúeµx€€cÑ \r0‡™TI¯SV‹\08\rÚ\0s˜Iå”£¬0\0p,\Z´æ0“Ê!é5Êjñ\0\0Ç¢A`3Éï÷_½ºzúUÊRñ\0\0Ç¢A`3)8ñâôôaÊRñ\0\0Ç¢A`3)\Zşmpı´x…2_¯å\r…B²‡\0 `€dR___2y¯ôØá®úcêÑD\"!{è\0\0úH\0I&åóùPèÖ«ÊŞiqˆ2Y±ØòL&#{è\0\0úH\0Iæ­Ñ3-Rfê/é_ÆãQÙƒ\0hˆ`€d¢(‘ÈCCâ\0Õ¼\n…m¡Ğ­ÅâÙƒ\0hˆ`€dI.—‡oËå2BŒPJMHjšÌfŸ’=\\\0€fH\0IV\r\r\r©9©¯ï{Bì§ê+“y,\nf³=P\0\0$\0„$EI&‘Èí©ÔÏ\n…-BSÅâ?Óé_Äãİ±XD]–=D\0\0c$\0„$Û²Ùl\"ñ@à£>ø|7Æã+Ôœ${X\0\0f‘\0øIîÇg\0l  $y\0ƒ\0°ÉÃ\0ó«¢¶BıB“õyl\0€·Ñå\r0zÀ…$3{\0¸-Ş\0³ Ì&$Õ_4Ò}_vë\Z\0 Íİ\0óŸ^Ò‚aZÒ]\0\0x]Ş\0¡Xº’¤›™ª×$$@› Ë`\"ô\0{/·é&$¡÷r[«\0àôwL`&$5z¹­ÉŞxl\0€·Ñå\r0z€™÷$Õ¬IH\0Ğå\r0z@«>€—Û\0 ­Ğß\r0z€ÕÔüÚW’\0 MĞå\r0z€Õßnz±Iwå–*\0À9èò˜=ÀÆ{’DÕËjºëóŠ\0xÍİ\0óŸ0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«0ˆ\0\0˜<0¿z\0ƒ\0°ÉÃ\0ó«K¥Óiuìü~8V€úïÂ…s¹œìC\0¸	À\0!É¥6oŞì«³lÙ²L&#ûĞ\0\0î@0@Hr)EQ,XP/^ŠÅ¢ìC\0¸	À\0!É½Ö¬Y3oŞ<-$­^½:™LÊ>(\0€k\0’\\mÑ¢E•„´råÊ`0¨(Šì#\0¸	À\0!ÉÕ¶oß>ş|u£Ñ(ïF\0XB0@Hr»åË—WB’ì\0¸	À\0!Éí\n…‚:ˆüæ?\0À*€B’0ˆ\0\0˜<0¿Ú¦(J:Çã‘H$ÖjQ›PÏ]½b±X*•â\0ÀEH\0|„$[Õp &¤7nİ¶íØñã¥R{–zîê=000°jÕ*õ>Q£’ìÁ\0˜B0@H²ªX,&‰îîî“§NN”&¨ê:wşœ\Z•Ô;§P(È(\0€€B’%jB\n‡ÃOoxj¢4N5ªçnÉ’%ù|^öp\0š! $Y’H$Ê	é\ZÕ¼¶nÛ²té—e\0 €B’yƒƒƒİİ+J“\ne¦~ôã®[÷ˆìA\04D0@H2IQ”`0xêt¾4y•2S£cïvv.æœ\0À±H\0I&¥R©D\"Qš¼¢Õ²è×Mş’|õVmUëÖıœ¿¹\0E0@H2)‹\rlúëÒŠî·…xsJ-‰WÇÅq±wt²ÓK/¾´{Bü[»±ãŠØrMüvÇ¡ûzî—W¤Ô¾á¡p8,{è\0\0úH\0I&…B¡Ã‡÷—&Ç*¥Şo£BŒM‹K“ââ„¸\"Ä~ò°ïºw­ˆ.‰“ãâä5‘WÄ±IñÌËÊ“ÆÚ°FÇ.øı~ÙC\0ĞG0@H2©££ãü…Ó¥ÉÑJ©÷Û•)1>5ó­Éé™Ÿ}áïŸüÜ~úè¯\'…¸<).•ÄÅ’(\n±eÏÁrH\ZmÏâ\0Eƒ6ÀfR9è\\ÖJırlR\\¸*&¦Ş[¡X,şæñ\'ùÕã\'ÏÌ|biZL”ÃÓ®}j¶m«â\0Eƒ6à÷ûE‘}.P:ÿÑj&$M‰sWÄ;£¢$ÄÄøxè¶Û|¾ë}>ÿ]ß^U½áŞáı5Û¶U’\0À±hĞ‚Á ŸŒlF9è\\ÒªòrÛ…«âÌeqöšØ{øE‹]?ïC7Ütsü„¤=û†k¶m«\"$€cÑ \r„Ãá‘‘ÙGáå SÔJıòê´¸¨Ì\\I:wMlÛ“ûbçí7ìã7u|äÉ?=sMˆÑqqe|fÃC{j¶m«\"$€cÑ \rD\"‘l6+û(\\@ì\'\'ßÕª2÷«9éRI¼;!Î\\.í:”ïüÒË¾úµ³ãâEœUÄ…q¡Æ¤»÷ÔlÛVEH\0Ç¢AH$©TJöQ¸@MĞ‰,[zğµ£{å†Fr;‡s;÷Ùuğø?v¿úò¡Û‡ükøõû_:päĞÑ·øı†»WŞ-=¬’\0\05hĞ*$-û(\\ ’.V×Üoæã¶¿u×]5¶U’\0À±hĞr¹\\(’}.PI(«EH\0Ç¢Aã½ÛfÌ„¤©ó”Õ\"$€cÑ õ÷÷÷ööÊ>\n§+‡¤s”Õ\"$€cÑ )Š…‚ìq´rH:KY-B\08\rÚ”l6‰Dd…£•CÒ;”Õ\"$€cÑ ÍZ»v-/º5QIÊj’\0À±hĞ$“Éh4Z,eˆ’I\0à14hkƒÁàÚµky‹RrHz{öU¿3·4Ù[=3?´æöú…V!	\0‹mY±XTC’\Z•¢Ñ¨ºÀ-©P\'û©©3-©ê]éîV»±&ıÔÜX³fõ‚áG\\ênÕèxfy²²‡\0 m“¢(ƒƒƒjHŠD\"†3n›˜š:=Ë2³sİTs£öe£…æGk¸¹á,²ìÇ2\0@\r\Z­Q\r§fYv¢İ^¿ »UõjzyËÔÏ­^¿ùÌò”e\0@\r\Z­Q\r\'gYv¢İ^\\>ğ­š\r«×o²ĞøªUÃŸ«ûãfyÊ²‡\0 Ö(ç†·fYvRs»öeõíÕ7¾ŸftÖl¾m“}Vï|ögZı#d\0@\r\Z­ÑªÔøêN³„Ô<ÓèîÊäÏj¶I\0ày4h´F9=¼9×õÁ(óæ³¯zµú\r›Ü¢»\\½Ïú…‘ì¡\0è£A£5fÒÃt¾…U½Ãæ;¯ÿ®v‹ş…¢Æßª^¡f?fÄŞiÊ:\0€>\Z4Z£œNÌ²*;ÑvU½ÏšåFßÒ]¡Ñ:æ—µÓ=¶Y²ì¡\0è£A£5Ê¡áYVe\'5»ª¾ñı˜¢³Uõ—†ë˜ü®v»¶Ïê[f¾•ıÈ:\0€>\Z4Z£\ZÏ¦ª÷P÷ú—şúz¯”¬ »·F7j·ëÛ,ÏWÛ›ì¡\0è£A£5Ê¡áeµI\0àX4h´F9$¥¬!	\0‹Ö $’\0ÀchĞh\ru²Ÿ>BY-B\08\r\Z­QI¯SV‹\0EƒFk”CR²Z„$\0p,\Z4Z£’^£¬!	\0‹ÖğûıW¯îŸ~•²T„$\0p,\Z4Z#8ñâôôaÊR’\0À±hĞhh4ú·ÁõÓâÊ|½–{6\nÉ:\0€>BZ£¯¯/™¼WzìpWı1õh\"‘=t\0\0}„$´F>Ÿ…n½ªì‡(“‹-Ïd2²‡\0 „–Y;£gZ¤ÌÔ_Ò¿ŒÇ£²\r\0Ğ!	-£(J$rÇĞĞŸ…8@5¯Ba[(tk±¸Cö \0\Z\"$¡•r¹\\8|[.—b„jTjBRÓd6û”ìá\04CHB‹\r\r\r©9©¯ï{Bì§ê+“y,\nf³=P\0\0„$´¢(Éd\"¹=•úY¡°EˆaªXüg:ı‹x¼;‹¨Ë²‡\0`Œ„¹’Íf‰oõÁçëè¸1_¡æ$ÙÃ\00‹ïã³ˆ\0\06’à}>şô\0À:&xŸaHÒV¨_h²>Ù\0¼.ï›£dfÏ\0\0÷¢ÅÃûf’ê/\Zé¾/»õ\r\0æï3¼,¤Ã´¤»\0\0ğ$º<¼ÏÒ•$İÌT½&!	\0Ú]Şgïå6İ„$ô^nkõñ\0şï3’\Z½ÜÖdoÄ#\0ğ6º<¼ÏÌ{’jÖ$$\0èòğ¾V}\0/·@[¡¿Ãû¬†¤æ×–¸’\0m‚.ï³úÛmB/6é®ÜòC\08]Şgã=I¢êe5İõyÅ\r\0<æï#Ä\0\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼\0°ÉŞGH\0ØÀäï#$\0l`ò€÷’\0\060yÀûI\0\0˜<à}„$\0€\rLğ>B\0À&x!	\0`“¼)N«ÙÈï÷‡Ãau!¨ÿ.\\¸0—ËÉ>4\0€;’àM›7oöÕY¶lY&“‘}h\0\0w $Á›EY°`AuBZ¼xq (‹²\r\0à„$xÖš5kæÍ›§…¤Õ«W\'“IÙ\0p\rB¼lÑ¢E•„´råÊ`0¨(Šì#\0¸!	^¶}ûöùóç«!)\Zòn$\0€%„$xÜòåË+!Iö\0\0\\†+\njHâ7ÿ\0V’à}|˜$\0À&x¢(™LfíÚµ±X,ò¾h4ªŞ’J¥\n…‚ì\0¸\0!	¢f#5ÕŒdp8¼~ız~Ù\r\0Ğ!	‘Íf»ººãQµ`0È¯¼\0\Z!$ÁõEI$õ×Š~ô£lÚºí%­zèáîîîš5c±Ã\r\0¨GH‚»\n…šH>øıcÇO”&Õ¹ó~÷Ä•?y«]R\Z‘}*\0\0g!$ÁÅòù¼šo´¬F›Ç£š¨ôĞCkÛúış¡¡!Ù\'\0pBÜJQ”êkH®[g2U×Æÿ§Æ#íz¿ø\0Ğ’àVñx\\KH›l$¤Jíİ7ÜÑÑQÙO$‘}Z\0\0§ $Á•2™Ì,¯!U×sÏ¿ í­¿¿_öÉ\0W\n‡ÃÚûf™*¥½?)ğùI\0\0AH‚¥ÓiíİÖ\'OnIHº<:¦ı¾[oo¯ìS\0ÈGH‚ûD\"í·ı[’*õô†\r•İvttÈ>E\0€|„$¸L±XÔŞ?ÔªËHZİrË{(ÍfeŸ(\0@2B\\&•Ji¿‰ÖÚ„¤Ö}÷İ_Ùy2™”}¢\0\0ÉIp™VıR[}mİöReç]]]²O\0 !	.F+9æ¹ç_hyH:vü¸öÁ’²O\0 !	.£ıòÿŞ}Ã-Ijiox’}¢\0\0É˜	à2Ú/ê›ÿ3m–JÛ¿ì\0HÆL\0—	…B•óÊáÃs’´?å&ûD\0’1Àe´IÚºí¥–\'¤sç/ğQI\0€\nB\\&‘HTrÌïx¢å!é•Ã‡+;‡Ã²O\0 !	.Ó××WÉ1«V}§å!éÑuë*;Çã²O\0 !	.“Ëå´WÄ.µ6$-]º´²óT*%ûD\0’’à>Áà{<d``S’ö!Iªb±(û,\0’’à>Éd²e:;;[x1é›wŞYÙm,“}Š\0\0ùIpŸb±¨}šQ«ş8É»´ËH###²O\0 !	®Ôßß_	4~¿öŸpìøq-uõôôÈ>9\0€#’àV]]]•X£æ›Ù|úöåÑ±ÎÎNmW…BAö™\0·ÊçóZ¸±÷§ÜN:­%$¿ßŸÍfeŸ\0À)Ip15Óho$R#Õ—Ü±s—ö*›ª¿¿_ö	\0„wËd2Úõ¤Êï»=÷üf. İ½r¥¯\n		\0Pƒ×ËårÚ_½Õ¢ÒC=\\ÿpÕlô»\'èîî®^YÍX¼Ê\0¨GH‚‹Åµk×úı~Ÿ%K–4úV<çÚ\0\0]„$x‡\Zw´?k(‰\r\rÉ>d\0€s’à5Š¢¤Ói5-…Ãáš`c±Øúõë¹z\00DH\0\0ĞAH\0\0ĞAH\0\0ĞAH\0\0ĞAH\0\0Ğñÿ7p×”–>ñ\0\0\0\0IEND®B`‚',0),('7503',1,'leaveBill.bpmn','7501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"leaveBill\" name=\"leaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤ç”³è¯·\" activiti:assignee=\"${proposer}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"éƒ¨é—¨ç»ç†å®¡æ‰¹\" activiti:assignee=\"${departmentManager}\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"æ€»ç»ç†å®¡æ‰¹\" activiti:assignee=\"${generalManager}\"></userTask>\n    <sequenceFlow id=\"flow3\" name=\"æ‰¹å‡†\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ‰¹å‡†\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"æ‰¹å‡†\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ‰¹å‡†\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"é©³å›\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"é©³å›\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"leaveBill\" id=\"BPMNPlane_leaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"380.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"247.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"247.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"247.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"280.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"245.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"247.0\" y=\"335.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"380.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"335.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"300.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"216.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"153.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"300.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"350.0\" y=\"211.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"195.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"214.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"128.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"81.0\" y=\"177.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','12501',6),('schema.history','create(5.20.0.2)',1),('schema.version','5.20.0.2',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10002','leaveBill:3:7504','10001','10001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2016-06-13 00:12:17.301','2016-06-13 00:12:17.348',47,''),('10006','leaveBill:3:7504','10001','10001','usertask1','10007',NULL,'æäº¤ç”³è¯·','userTask','å¼ éƒƒ','2016-06-13 00:12:17.348',NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10008',NULL,'participant','å¼ éƒƒ',NULL,'10001');

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('10001','10001','leave:1','leaveBill:3:7504','2016-06-13 00:12:17.301',NULL,NULL,NULL,'startevent1',NULL,NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10007','leaveBill:3:7504','usertask1','10001','10001','æäº¤ç”³è¯·',NULL,NULL,NULL,'å¼ éƒƒ','2016-06-13 00:12:17.348',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10003','10001','10001',NULL,'departmentManager','string',0,NULL,NULL,NULL,'å¸é©¬æ‡¿',NULL,'2016-06-13 00:12:17.301','2016-06-13 00:12:17.301'),('10004','10001','10001',NULL,'generalManager','string',0,NULL,NULL,NULL,'æ›¹æ“',NULL,'2016-06-13 00:12:17.317','2016-06-13 00:12:17.317'),('10005','10001','10001',NULL,'proposer','string',0,NULL,NULL,NULL,'å¼ éƒƒ',NULL,'2016-06-13 00:12:17.317','2016-06-13 00:12:17.317');

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('2501','è¯·å‡æµç¨‹',NULL,'','2016-05-29 22:19:27.099'),('5001','è¯·å‡æµç¨‹',NULL,'','2016-05-29 22:43:15.312'),('7501','è¯·å‡æµç¨‹',NULL,'','2016-06-10 15:19:05.723');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('leaveBill:1:2504',1,'http://www.activiti.org/test','leaveBillProcess','leaveBill',1,'2501','leaveBill.bpmn','leaveBill.png',NULL,0,1,1,''),('leaveBill:2:5004',1,'http://www.activiti.org/test','leaveBillProcess','leaveBill',2,'5001','leaveBill.bpmn','leaveBill.png',NULL,0,1,1,''),('leaveBill:3:7504',1,'http://www.activiti.org/test','leaveBillProcess','leaveBill',3,'7501','leaveBill.bpmn','leaveBill.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`LOCK_TIME_`) values ('10001',1,'10001','leave:1',NULL,'leaveBill:3:7504',NULL,'usertask1',1,0,1,0,1,2,'',NULL,NULL);

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10008',1,NULL,'participant','å¼ éƒƒ',NULL,'10001',NULL);

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10007',1,'10001','10001','leaveBill:3:7504','æäº¤ç”³è¯·',NULL,NULL,'usertask1',NULL,'å¼ éƒƒ',NULL,50,'2016-06-13 00:12:17.348',NULL,NULL,1,'',NULL);

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10003',1,'string','departmentManager','10001','10001',NULL,NULL,NULL,NULL,'å¸é©¬æ‡¿',NULL),('10004',1,'string','generalManager','10001','10001',NULL,NULL,NULL,NULL,'æ›¹æ“',NULL),('10005',1,'string','proposer','10001','10001',NULL,NULL,NULL,NULL,'å¼ éƒƒ',NULL);

/*Table structure for table `action` */

DROP TABLE IF EXISTS `action`;

CREATE TABLE `action` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT 'æ¨¡å—åç§°',
  `parentId` bigint(20) DEFAULT '0' COMMENT 'çˆ¶çº§Id',
  `position` int(11) DEFAULT '0' COMMENT 'æ’åº',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  `request` varchar(30) DEFAULT NULL COMMENT 'è¯·æ±‚æ–¹å¼',
  `least` int(11) DEFAULT '1' COMMENT 'å­çº§',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `action` */

insert  into `action`(`id`,`name`,`parentId`,`position`,`url`,`request`,`least`) values (1,'ç”¨æˆ·åˆ—è¡¨',0,1,'/user','get',1),(2,'æ·»åŠ ',1,1,'/user','post',1),(3,'ä¿®æ”¹',1,2,'/update/\\d+','put',1),(4,'åˆ é™¤',1,3,'/user/\\d+','delete',1),(5,'è§’è‰²åˆ—è¡¨',0,1,'/role','get',1),(6,'æ·»åŠ ',5,1,'/role','post',1),(7,'ä¿®æ”¹',5,2,'/role/\\d+','put',1),(8,'åˆ é™¤',5,3,'/role/\\d+','delete',1),(9,'åå°é¦–é¡µ',0,0,'/main','get',1);

/*Table structure for table `b_leave` */

DROP TABLE IF EXISTS `b_leave`;

CREATE TABLE `b_leave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL COMMENT 'è¯·å‡ç±»å‹',
  `reason` varchar(500) NOT NULL COMMENT 'ç†ç”±',
  `days` decimal(10,0) NOT NULL COMMENT 'å¤©æ•°',
  `hours` decimal(10,0) NOT NULL COMMENT 'å°æ—¶',
  `startTime` datetime DEFAULT NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `endTime` datetime DEFAULT NULL COMMENT 'ç»“æŸæ—¶é—´',
  `status` int(11) DEFAULT '0' COMMENT '0æœªå¼€å§‹ï¼Œ1å®¡æ ¸ä¸­ï¼Œ2å®Œæˆ',
  `userId` bigint(20) NOT NULL,
  `processInstanceId` varchar(64) DEFAULT NULL,
  `currentStep` varchar(200) DEFAULT NULL,
  `currentAssignee` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `b_leave` */

insert  into `b_leave`(`id`,`category`,`reason`,`days`,`hours`,`startTime`,`endTime`,`status`,`userId`,`processInstanceId`,`currentStep`,`currentAssignee`) values (1,'äº‹å‡','ç´¯äº†ï¼Œä¼‘æ¯å‡ å¤©','30','210','2016-06-16 00:00:00','2016-07-16 00:00:00',1,1,'10001','æäº¤ç”³è¯·','å¼ éƒƒ');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`description`,`position`) values (2,'powerTax5.0','powerTax5.0',NULL),(3,'vms4.0','vms4.0',2);

/*Table structure for table `privilege` */

DROP TABLE IF EXISTS `privilege`;

CREATE TABLE `privilege` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleId` bigint(20) DEFAULT NULL COMMENT 'è§’è‰²Id',
  `actionId` bigint(20) DEFAULT NULL COMMENT 'actionId',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

/*Data for the table `privilege` */

insert  into `privilege`(`id`,`roleId`,`actionId`) values (21,3,5),(22,3,1),(58,1,5),(59,1,6),(60,1,1),(61,1,2),(62,1,3),(63,1,4),(64,1,7),(66,1,8),(67,1,9),(68,38,1),(69,38,2),(70,38,3),(72,38,4);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values (1,'ç®¡ç†å‘˜'),(3,'æ™®é€šç”¨æˆ·'),(5,'test role'),(38,'test role1');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `passWord` varchar(66) NOT NULL,
  `name` varchar(30) DEFAULT 'åŒ¿å',
  `roleId` bigint(20) DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_role_fk` (`roleId`),
  CONSTRAINT `user_role_fk` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`passWord`,`name`,`roleId`,`email`,`createTime`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','æ›¹æ“',1,NULL,'2016-05-11 21:19:33'),(4,'root','63a9f0ea7bb98050796b649e85481845','å¸é©¬æ‡¿',1,NULL,'2016-05-29 16:18:04'),(5,'test','098f6bcd4621d373cade4e832627b4f6','test',3,NULL,'2016-05-29 16:18:23'),(6,'test User','pwd','user name',3,'','2016-05-29 16:24:00'),(7,'test User','pwd','user name',3,'','2016-05-29 16:24:02'),(8,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(9,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(10,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(11,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(12,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(13,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(14,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(15,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(16,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(17,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(18,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(19,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(20,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(21,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(22,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(23,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(24,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(25,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(26,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(27,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(28,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(29,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(30,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(31,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(32,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(33,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(34,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(35,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(36,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(37,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(38,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(39,'test User','pwd','user name',3,'','2016-05-29 16:24:09'),(40,'test User','pwd','user name',3,'','2016-05-29 16:24:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
