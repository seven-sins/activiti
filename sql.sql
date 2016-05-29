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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2502',1,'leaveBill.png','2501','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0§\0\0\0Õ5Ü\0\0,·IDATxúÌ›lw˝«qkk©W1-àA\rÊ¡≥4õ‘¸E›\"\Z#≥ƒ¥ö˝Q,Ml©&FÑ∏†≠à≠DFÑ∆‘¡V,PøMi-Ìamá)m˙#M€uÛ˙cı÷Û˙k.M⁄k‚$üÔ≈ﬁœ>˚~ƒ·sw~>ÙVuqÓ.w˛ÿÔœ´g«Ò	\0\0\0‘Ò…>\0\0\0\0\'\"$\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $¡ÉE…d2k◊Æç≈bë˜E£Qıñt:],e \0¿I5©a»Ô˜´ÒHçDõ∂n{©Rœ=ˇ¬C=è«;::∫∫∫R©îÏÉ\08\Z!	122âD‘l§Ü°â“dÛ⁄±s◊™Uﬂ	á√ŸlVˆÅ\0äê/ËÎÎSœ÷m/∆£Í⁄ªoxÈ“•===ä¢»>\0Ä„í‡njæâ«„…d“R<™Æﬂ=ÒD$)\n≤O\0‡,Ñ$∏òöê∫∫∫“È¥ÌÑ§Ω˙¶Ó\'üœÀ>!\0ÄÉí‡bÒx|ˆ	I{ÈMÕIºÓ\0–í‡V}}}≥yï≠æ6≈b1Ÿß\0p\nB\\idd$∑0!UÍæ˚Ó_ø~ΩÏì\08!	Æ§&§Ω˚Ü[íNû:}À-A^t\0B‹(ì…ƒb±ñ\'§J=¯‡˜˚˚˚eü\"\0@>B‹\'âX˝H$KìÅÄÏS\0»GHÇÀã≈ééé9JHïZ≤d…––êÏ\0HFHÇÀ§R©D\"1ß!È—uÎí…§Ï\0HFHÇÀÙÙÙ¨_ø~NC“÷m/E\"Ÿ\'\n\0êåêóâF£f˛ÑÌlÍÿÒ„∑‹î}¢\0\0…Ipô9˙ÂˇÍ∫<:Ê˜˚eü(\0@2B\\&ú<uzNCíZ>O\r\0hwÃpôP(Ù ·√Ñ$\0¿\\c&ÄÀÃÈá$Òû$\0ÄÜêóI$Ooÿ0ß!i«Œ]Kñ,ë}¢\0\0…Ipô˛˛˛¸˛úÜ$5Ñ≠ZıŸ\'\n\0êåêó…ÁÛ¡`pNCRww˜‡‡†Ï\0HFHÇ˚ÃÈ{∑/èéutt(ä\"˚,\0íí‡>s˙ä€Ø{L›πÏS\0»GHÇ˚(äÁ‚”í.èé›rK∞P(»>E\0Ä|Ñ$∏R:ùæ{ÂJ.#\0Ê!	nıÕ;Ôÿ‘¬ÑÙ ·√ùùùóG«dü\0¿Ip´b±∏d…íVΩÉ˚‹˘jB:v¸∏Ï”\08!	.ñÀÂ‘ú§&õŸ\'§oﬁyÁsœø ˚Ñ\0\0BHÇªçååtvvÓÿπk6Ø≤©IãÑ\0®AHÇÎã≈•Kó>Ù–√ÁŒ_∞è.èé˝˙±«*ØŸ…>	\0Ä„í‡ä¢®!È∂€BjËQ£èôÑÙÙÜ\rÍ˙>¯}5Z…>|\0Äí‡ÖB°∑∑∑££„õwﬁ©f†Ω˚ÜkÇëzÀ∆çˇw˜ ïÍ:´V}\'üœÀ>d\0Äsí‡5ä¢d2ôD\"—ŸŸÈ˚ ı5!•”Èb±(˚0\0NGHÇ˜©ÅIˆ!\0\0‹áêÔÛ˘xú\0,cÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡MÈtZÕF~ø?´Å@@˝w·¬Öπ\\Nˆ°\0‹Åêo⁄ºy≥ØŒ≤eÀ2ôåÏC\0∏!	ﬁ§( Ç™“‚≈ãÅ@±Xî}h\0\0w $¡≥÷¨Y3oﬁ<-$≠^Ω:ôL >(\0Äkí‡eã-™$§ï+WÉAEQd\0¿5I≤Ì€∑œü?_\rI—hîw#\0,!$¡„ñ/_^	I≤\0‡2Ñ$x\\°PPCø˘\0∞äêÔ„√$\060y`Æ(äíNß„Òx$	ÉıüZ‘&‘sWÔÅX,ñJ•¯\0\0pBÊƒ‡‡†\Z‘Ñ¥q„∆≠€∂;~|¢TjœRœ]ΩV≠Z•ﬁ\'jTí=8\0\0SIh±b±òH$∫ªªOû:9Qö†™Î‹˘sjTRÔúB° {†\0\0Ih%5!Ö√·ß7<5Q\Zß\Z’sœ?∑d…í|>/{∏\0\0Õí–JâD¢úêÆQÕkÎ∂-Kó~Yˆp\0ö!$°eªªWî& L˝Ë«?\\∑ÓŸÉ\0hàêÑ÷P%û:ù/M^•Ã‘Ëÿªùùã˘\0\'\0p,BZ#ïJ%â“‰≠ñEønÚó‰´∑j´Z∑ÓÁ¸Õ]\0p,BZ#ã\rl˙Î“äÓ∑ÖxsJ-âW«≈Åq±wt≤”K/ûæ¥{B¸[ª±„äÿrM¸v«°˚zÓóûW§‘æ·°p8,{Ë\0\0˙IhçP(t¯˛“‰X•|>ﬂ®c”‚“§∏8!ÆÒÉü<ÏªÓ√]+bßK‚‰∏8yM‰qlR<ÛÚÅÚ≈§±6¨—±~ø_ˆ–\0Ùí–\ZÁ/ú.MéVJÕ=W¶ƒ¯‘Ã∑&ßg˛}ˆÖøÚs_¯È£øû‚Ú§∏TK¢(ƒñ=À!i¥=À«üL\0ß¢A£5 AÁ≤VÍócì‚¬U11ıﬁ\n≈bÒ7è?˘»Ø?yfÊsK”b¢ûvÌ;P≥m[!	\0ãç÷(ùˇh5í¶ƒπ+‚ùQQbb|<t€m>ﬂı>üˇÆoØ™ﬁpÔ˛öm€™I\0‡X4h¥F9Ë\\“™Úr€Ö´‚Ãeqˆöÿ{¯çEã]?ÔC7‹ts¸ûÑ§=˚Ük∂m´\"$Äc—†—\ZÂ†S‘J˝ÚÍ¥∏®Ã\\I:wMl€ì˚bÁÌ7Ï„7u|‰…?=sMà—qqe|f√C{j∂m´\"$Äc—†—\ZÍd?9˘ÆVïπ_ÕIóJ‚›	qÊri◊°|ÁóÓXˆ’ØùÔ(‚¨\".å5&ÌÿΩßf€∂*B\08\r\Z≠Qt\"Àñ|ÌËﬁCπ°ë‹Œ·‹Œ˝Gv<˛è›Øæ|Ëƒˆ·#ˇ\Z~}Á˛◊á9tÙ≠\'~ø·ÓïwK+Ñ$\0@\r\Z4Z£í.V◊‹oÊ„∂øu◊]5∂Uí\0¿±h–hçrH∫@Y-B\08\r\Z≠1í¶ŒSVãê\0éEÉFkîC“9 jí\0¿±h–hçrH:KY-B\08\r\Z≠QIÔPVãê\0éEÉÜÈt:üœÎ~´í\nî’jíö‹’\0Äˇ\rBÃ:r‰HÂóˆoºÒ∆ÅÅÅöÔíZíä≈‚=˜‹Sπü?ÒâOêì\0@\"BÃRÂ∫ÎÆ´ÃﬂÛÁœˇ¸Á?_=ÖóC“€sQ⁄ûk>`©…ö&wÿ¸∆π;£öü¢›áÎ◊Ø˜˚˝ï≥SÅ@°Pê0“\0Ä2B,PßÌÍòr√\r7‹{ÔΩjxÂê45uf.J€sıèhÙ„ÃFÛm}ËÂ‹ùùzÔÂrπœ~ˆ≥’?Æ´´+ p\0hkÑ§πíœÁ≥UR©‘⁄*âD\"bö:Y6˚»j«òö:=•ÌY˜«ô<*á=wgTÛS‘!∂}üªé˙`÷ÿ===Î◊Ø\Z\Zí˝d\0}Ñ$˚FFF˙˚˚c±ònî©ûTj*™Ijf öÊú7¶‹t”M⁄	∆ ‘SÀÂr‚Ω+IßZ[ıSlı∑¨Ó pŸÃœùãsÂH˝ïØ|Â”ü˛¥ˆoºÒ∆p8,{¿[Ø˙?jBRsRWWW H&ìŒyú@!…≤b±®¶úééuÎÌÌÕd2Nã2sD=Ò ¸\nÖæ˚›Ô™ˇ¶”iÌªÂ$qr.J€s]p—_≠fπ˘wkvﬁhìπ+_’{íoπÂñO}ÍSïÉY∞`AÂ•Lœ+\n}}}Íˇ+‘®‘&ß¿I÷®ëHmÂjHRÉÏc˘_{ÛÕ7˝~4\Z≠Lf5˜@9Rº5efœıÎ‘‹“‰†öMWk˘ŸUﬂçjDP]ü˘Ãg‘Æ˛;22Úød…‘®‘’’’ÜO.\0ŒDH≤@ùΩb±X;wp5#¶R)›kfs\Z#\Z≈óöpSwt3ì·r}¿ö£S´IÍ=¨ﬁœÍΩ=Á#Í<j.Ts◊ì\08!…¨d2Ÿ€€+˚(ú´ú$ﬁlmUÖ°‹ÿd˝F+Tﬂh∏¨ó∆Z|j’?Tˆ–9Œ‡‡`4\Zï}\0@H2\'õÕF\"ŸG·h3Ib:?•Ìπ≤ﬂ‡“tÂ˙€æé÷‡Ó≥Ug\'{Ëú(ãµÁÖ4\0éBÉ6¶(J(Ú¸˚≤g©ú$NÃEi{Æ,4˘AMV®æ—pY/HÕ…©U~ñÏ°s\"ıÈ¶>Èx—\rÄ\\4hc©T*ëH»>\nß+\'â7Ê¢¥=Wt–˚QFˇÀF;l¥ìöÊÓ‘*;ó=tâD≤Ÿ¨Ï£\0–÷h–∆¬·pª˝íë\rÂ$qºÂı~p9Æ˝˚¡<ˇ]°…∂ı∑7Zø~Ö&˚o’	 :áÍÎÎK&ì≤è@[£A»Âr°PHˆQ∏@9I£¨!©ı&û¸8M\0.BÉ6êNß„Ò∏Ï£pÅrH:JY-BR#˘|ûø^@.\Z¥Åﬁﬁﬁ˛˛~ŸG·Ñ$BRÀqÁ\0êãdÄwèö§Œg””G(´EhÇ;Ä\\Ù ]]]¸ïr3 !Èu jëö‡Œ =»@0‰íÃ(á§eµ»MpÁ\0êãd†£££ùˇXõyÂêÙ\Zeµ»MpÁ\0êãdÄ6míﬂÔøzuˇÙÙ´î•‚÷w\0πËAh”&É¡\'^úû>LY*`MpÁ\0êãdÄ6mR4\Z˝€‡˙iÒ\neæ^À=ÀGï6¡≥Ä\\Ù ¥iì D‚^È±√]ı«‘£¸Y¿&xˆêãdÄ6mR˘œ∂ﬂzUŸ;-Q&+[û…ddùsÒÏ =»\0m⁄ºµ3z¶≈A L˝%˝Àx<*{–çg\0πËAh”Ê)äâ‹14Ùg!PÕ´Pÿ\n›Z,Óê=hé∆≥Ä\\Ù ¥iKrπ\\8|[.óbÑjTjBR”d6˚îÏ·r:û}\0‰¢†M[544§Ê§ææÔ	±ü™ØLÊ±P(òÕ˛Aˆ@π\0œ>\0r—É–¶mP%ôLD\"∑ßR?+∂1LãˇLßèw«buYˆπœ>\0r—É–¶mÀf≥âƒ7Åè˙‡Ûut‹èØPsíÏaqœ>\0R—É–¶=Äœ\"r)û}\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.z–\Zq}S¶M{\0ÉËR\0π⁄Æ˘™Tﬂ(Í“Ré≥¿êπ@ÆˆÌA5˝∑—ó\\[Ú\0ÜÃ•8\0rµc“Ωn§{ã $πV:ùVG Ô˜á√au!®ˇ.\\∏0óÀ…>4ò≈s\rÄ\\ÌÿÉj\"QÛlTˇ*ç€6oﬁ\\ˇ:È≤eÀ2ôåÏCÉY<◊\0»’é=®˛∫Q£uö/¿…EY∞`AuBZºxq (ã≤\rfÒ\\ W;ˆ†öãCÜWí\Z-¿·÷¨Y3oﬁ<m¨WØ^ùL&e,‡π@Æ∂ÓA&C/∑π◊¢Eã*c∑rÂ `0®(äÏ#Ç<◊\0»’¶=H˜mIºq€{∂oﬂ>˛|u»¢—(ÔFrûk\0‰jª‘Ëö‡UÀó/ØÑ$ŸÀxÆê´≠{PÛ+IM»9\\ÿR(‘!„7ˇ›àÁ\Z\0π⁄¥Uøk€‰∑Î◊Å[0d.≈¿êãdÄ6mõ¢(Èt:èG\"ë`0ÿ¸‚úá©ÁÆﬁ±X,ïJÒñ¯xˆêädÄ6mœ‡‡†\Z‘Ñ¥q„∆≠€∂;~|¢TjœRœ]ΩV≠Z•ﬁ\'jTí=8Æ¡≥Ä\\Ù ¥i´ä≈b\"ëËÓÓ>yÍ‰DiÇ™ÆsÁœ©QIΩs\nÖÇÏÅrû}\0‰¢†M[¢&§p8¸ÙÜß&J„T£zÓ˘Áñ,YíœÁeó”ÒÏ =»\0m⁄íD\"QNH◊®Êµu€ñ•Kø,{∏úég\0πËAh”Ê\rvwØ(M*îô˙—è∏n›#≤Õ—xˆêãdÄ6mí¢(¡`‘È|iÚ*e¶F«ﬁÌÏ\\Ã85¡≥Ä\\Ù ¥iìR©T\"ë(M^—jYÙÎ&Iæz´∂™uÎ~Œﬂ‹mÇg\0πËAh”&≈b±ÅM˝oBZ—˝∂oNâ£%ÒÍ∏80.ˆéNˆozÈ≈”óvOà+b∑\"v\\[ÆâﬂÓ8t_œ˝“Ûäî⁄7<áeùsÒÏ =»\0m⁄§P(t¯˛“‰X•‘˚mTà±iqiR\\úWÑ¯¡Oˆ]˜·Æ±”%qr\\úº&Úä86)ûy˘@˘b“X÷Ëÿøﬂ/{Ëúãg\0πËAh”&uttúøp∫49Z)ı~ª2%∆ßfæ59=ÛÔ≥/¸˝ìü˚¬O˝ı§ó\'≈•í∏XE!∂Ï9XI£ÌY<¿ö‡Œ =»\0m⁄§r–π¨ï˙Âÿ§∏pULLΩ∑B±X¸Õ„O>Ú´«Oûô˘≈“¥ò(áß]˚‘l€V≈¨	Ó\0r—É–¶M*ùˇh5í¶ƒπ+‚ùQQbb|<t€m>ﬂı>üˇÆoØ™ﬁpÔ˛öm€™xÄ5¡ù@.zê⁄¥IÂ†sI´ ÀmÆä3ó≈ŸkbÔ·7-Zt˝º›p”ÕÒ{>íˆÏÆŸ∂≠äX#ÖB!»>\n\0mçmÄ9Ã§r–)j•~yuZ\\TfÆ$ùª&∂Ì…}±Ûˆõ?ˆÒõ:>Ú‰üûπ&ƒË∏∏2>≥·é°=5€∂UÒ\0k$üœÉAŸG†≠—†\r0áô§ﬁQììÔjUπﬂ‘út©$ﬁùg.óv w~Èée_˝⁄ŸqÒé\"Œ*‚¬∏Pc“é›{j∂m´‚÷»‡‡`4\Zï}\0⁄\Z\r⁄\0sòI5A\'≤lÈ¡◊éÓ=î\Z…ÌŒÌ‹d◊¡„ˇÿ˝ÍÀáNl>ÚØ·◊wÓ}Ë¿ëCGﬂz‚˜Ó^y∑Ù∞BHröµe≤è@[£A`3©í.V◊‹oÊ„∂øu◊]5∂UÒ\0k$\Zç >\n\0mçmÄ9Ã§rH∫@Y-`∫\nÖB0TEˆÅ\0hk4hÃa&ÕÑ§©Ûî’‚¶´øøø∑∑WˆQ\0hw4hÃa&ïC“9 jÒ\0´ß(J0,\n≤@ª£A`3©íŒRVãXΩD\"ëJ•d\0íå0áôTIÔPVÀE∞ÍCùª√ÓÔÔÔÈÈô£ùÄ%Æi–≤∏hì´í\nî’rÏ¨˙7´oui©	K?QQîD\"AB‡m–Œ·ÿ9ÃiIIöö#l˛•…o’(ã˝˝˝¡`êWŸ\08ä”¥tŒü√¢íﬁ∂QÕ7‘æ´{°¬‰Njvÿd?Ü;¨>´?∫—e]C∫◊çtoi≤yŸl∂ØØ/ã©Ò®∑∑ówjp\ZÁ6hápÚÊ(Í55u∆R’$ïö[™Wk¥y˝r˝>´o¨Y≥zA7<ÈÓ™—ÇΩrÊLQ5¡®«¶˝[Ωê…d‘Â \'bW/h\"e⁄B55UØñL&’ΩãEŸg\0:úÿ†≈ôsòï≥¬ÈYñ∂3{kærÕçı+◊,4ˇâÜõõ<f›=7øcsπ\\∂±˛˛˛µçE£—˙ò¢ií˝~øñrÍ≥N,”~ÑnZ™	U’Ú˘¸ˇ‰Ò\0-@0@H2©NY™ÍM*À⁄-ıç6◊]≥~´Í’ÙÆ5;∂Íµı-jÛ;Aˆ–5T}âØ≤ôY\0\0ó¢ã†—õTé\'≠Ve+m€ö/kñm˚~p—ﬂgÕ~ö/4¢ªüÍÔ⁄;˝ Ü≤áŒò…êTù®œ\0ÓG3@£7©úﬁ2_ç„»[’ªj≤[›’\Z›XøÛ&fñkvnÈ‹kŒBˆ–5Sèö§•F€Ä{—≈–ËMöMPhAf≥r£LSüÃö‰∂öê‘(ly,$5∫&Ts¿Ñ$\0F3@£7©úﬁ¥TuA‰Mm\'ı∫õ◊ÏDwüçˆ”¸›ÂÍ}ö9BìwÇÏ°3Êkz%©	9á\0-B3@£7i&+LÁ-Uı&ïeÌñ˙ÖÊõ~´záıö|´z´GhÚNê=tÕhYß&Ù¯LºÒ»·ß\0ÜËbhÙ&ï≥¬	KUΩIeπ*îË¨”|ÛÊ[’¨–hÛÀ’lx®ÕÔŸC\0–GÉ6¿fR9\"ºa©ÍÆ÷ºQøì&ª’61‹ Ã:&ø´›^Ã6ÓÅ V≤á\0†èmÄ9Ã§rD8n©™7©,◊ÔDw∑UπJˇˆf/É\Z˝àF?W˜‡Ì«Ãù {Ë\0\0˙h–ò√L*GÑcî’‚\0éEÉ6¿fR9$•¨0\0p,\Z¥Ê0ìIÑ$\0\Z¥Ê0ì‘;jz˙eµxÄÄc—†\r0áôTIØSVã\08\r⁄\0sòIÂêî£¨0\0p,\Z¥Ê0ì !È5 jÒ\0\0«¢A`3…Ô˜_Ω∫z˙U RÒ\0\0«¢A`3)û8Ò‚ÙÙa RÒ\0\0«¢A`3)\Zç˛mp˝¥xÖ2_ØÂû\rÖB≤á\0†è`ÄêdR___2yØÙÿ·Æ˙cÍ—D\"!{Ë\0\0˙H\0I&ÂÛ˘PË÷´ ﬁiqà2Y±ÿÚL&#{Ë\0\0˙H\0IÊ≠ù—3-RfÍ/È_∆„QŸÉ\0hà`Äêdû¢(ë»CC‚\0’º\nÖm°–≠≈‚ŸÉ\0hà`ÄêdI.óáoÀÂ2BåPçJMHjöÃfüí=\\\0ÄfH\0IV\r\r\r©9©ØÔ{BÏßÍ+ìy,\nf≥ê=P\0\0$\0Ñ$EI&ë»Ì©‘œ\nÖ-BS≈‚?”È_ƒ„›±XD]ñ=D\0\0c$\0Ñ$€≤Ÿl\"Òç@‡£>¯|7∆„+‘ú${X\0\0fë\0¯IÓ«g\0l  $y\0É\0∞Å…√\0Û´¢∂B˝Bìıyl\0Ä∑—Â\r0z¿Ö$3{\0∏-ﬁ\0≥†Ã&$’_4“}_vÎ\Z\0 Õ›\0Ûü^“ÇéaZ“]\0\0x]ﬁ\0°X∫í§õô™◊$$@õ†À`\"Ù\0{/∑È&$°˜r[´è\0‡ÙwLÅ`&$5zπ≠…ﬁxl\0Ä∑—Â\r0zÄô˜$’¨IH\0–Â\r0z@´>Äó€\0†≠–ﬂ\r0zÄ’ê‘¸⁄Wí\0†M–Â\r0zÄ’ﬂnz±IwÂñ*\0¿9ËÚò=¿∆{íD’Àj∫ÎÛä\0xÕ›\0Ûü0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´K•”iuÏ¸~8VÅÄ˙Ô¬ÖsπúÏC\0∏	¿\0!…•6oﬁÏ´≥lŸ≤L&#˚–\0\0Ó@0@Hr)EQ,XPùê/^ä≈¢ÏC\0∏	¿\0!…Ω÷¨Y3oﬁ<-$≠^Ω:ôL >(\0Äkê\0í\\m—¢EïÑ¥rÂ `0®(äÏ#\0∏	¿\0!…’∂oﬂ>˛|u£—(ÔF\0XB0@HrªÂÀóWBíÏ\0∏	¿\0!…Ì\nÖÇ:à¸Ê?\0¿*ÄBí0à\0\0ò<0ø⁄¶(J:ùé«„ëH$÷jQõPœ]Ωb±X*ï‚\0¿EH\0|Ñ$[’p†&§ç7n›∂ÌÿÒ„•R{ñzÓÍ=000∞j’*ı>Q£íÏ¡\0òB0@H≤™X,&âÓÓÓìßNNî&®Í:w˛ú\Zï‘;ßP(»(\0ÄÄBí%jB\ná√Ooxj¢4N5™Áûn…í%˘|^ˆp\0ö! $YíH$ 	È\Z’º∂n€≤tÈóe\0†ÄBíyÉÉÉ››+Jì\ne¶~Ù„Æ[˜àÏA\04D0@H2IQî`0xÍtæ4yï2S£cÔvv.Êú\0¿±H\0I&•R©D\"Qöº¢’≤Ë◊M˛í|ıVmUÎ÷˝úøπ\0éE0@H2)ã\rl˙Î“äÓ∑ÖxsJ-âW«≈Åq±wt≤”K/ûæ¥{B¸[ª±„äÿrM¸v«°˚zÓóûW§‘æ·°p8,{Ë\0\0˙H\0I&ÖB°√á˜ó&«*•ﬁo£BåMãKì‚‚Ñ∏\"ƒ~Ú∞Ô∫w≠àù.âì„‚‰5ëWƒ±IÒÃÀ ì∆⁄∞F«.¯˝~ŸC\0–G0@H2©££„¸Ö”•…—J©˜€ï)1>5Û≠…Èôü}·Ôü¸‹~˙ËØ\'Ö∏<).ïƒ≈í(\n±eœ¡rH\Zmœ‚\0éEÉ6¿fR9Ë\\÷J˝rlR\\∏*&¶ﬁ[°X,˛ÊÒ\'˘’„\'œÃ|ébiZLî√”Æ}j∂m´‚\0éEÉ6‡˜˚Eë}.P:ˇ—j&$MâsWƒ;£¢$ƒƒ¯xË∂€|æÎ}>ˇ]ﬂ^UΩ·ﬁ·˝5€∂Uí\0¿±h–Ç¡ üålF9Ë\\“™Úr€Ö´‚Ãeqˆöÿ{¯çEã]?ÔC7‹ts¸ûÑ§=˚Ük∂m´\"$Äc—†\rÑ√·ëëŸG·Â†S‘J˝ÚÍ¥∏®Ã\\I:wMl€ì˚bÁÌ7Ï„7u|‰…?=sMà—qqe|f√C{j∂m´\"$Äc—†\rD\"ël6+˚(\\@ùÏ\'\'ﬂ’™2˜´9ÈRIº;!Œ\\.Ì:îÔ¸“Àæ˙µ≥„‚EúUƒÖq°∆§ª˜‘l€VEH\0«¢AH$©TJˆQ∏@M–â,[zµ£{ÂÜFr;ás;˜Ÿu¯?vø˙Ú°€áè¸k¯ıù˚_:p‰–—∑û¯˝ÜªWﬁ-=¨í\0\05h–*$-˚(\\†í.V◊‹oÊ„∂øu◊]5∂Uí\0¿±h–rπ\\(í}.PI(´EH\0«¢A„Ω€fÃÑ§©Ûî’\"$Äc—†çı˜˜˜ˆˆ >\nß+á§sî’\"$Äc—†ç)äÖÇÏq¥rH:KY-B\08\r⁄îl6âDdÖ£ïC“;î’\"$Äc—†ÕZªv-/∫5QI jí\0¿±h–$ì…h4Z,eàíI\0‡14hkÉ¡‡⁄µkyãRçrHz{ˆUø3∑4Ÿ[=3?¥Êˆ˙ÖV!	\0ãmY±XTCí\Zï¢—®∫¿-©P\'˚©©3-©Í]ÈÓVª±&˝‘‹X≥fıÇ·G\\Ín’Ëxfy≤≤á\0†èmì¢(ÉÉÉjHäD\"Ü3nõòö:=À2≥s›Ts£ˆe£ÖÊGk∏π·,ù≤Ï«2\0@\r\Z≠Q\rßfYçv¢›^ø†ªUıjzyÀ‘œ≠^ø˘ÃÚîe\0@\r\Z≠Q\r\'gYçv¢›^\\>≠ö\r´◊o≤–¯™U√ü´˚„fy ≤á\0†èç÷(ÁÜ∑fYçvRsªˆeıÌ’7æüft÷læmì}VÔ|ˆgZ˝#d\0@\r\Z≠—™ê‘¯ÍN≥Ñ‘<”ËÓ ‰œj∂I\0‡y4h¥F9=º9◊ı¡(ÛÊ≥çØzµ˙\rõ‹¢ª\\Ωœ˙ÖûëÏ°\0Ë£A£5f“√tæÖUΩ√Ê;ØˇÆvã˛Ö¢∆ﬂ™^°f?féƒﬁi :\0Ä>\Z4Z£úNÃ≤*;—vUΩœöÂFﬂ“]°—:Êóµ”=∂Yû≤Ï°\0Ë£A£5 °·çYVe\'5ª™æÒ˝ò¢≥UıóÜÎò¸Ævª∂œÍ[fæï˝»:\0Ä>\Z4Z£\Zéœ¶™˜P˜˙ó˛˙zØî¨†ª∑F7j∑Î€,œW€õÏ°\0Ë£A£5 °·eµI\0‡X4h¥F9$•¨!	\0ãç÷ $í\0¿ch–h\ru≤üû>BY-B\08\r\Z≠QIØSVãê\0éEÉFkîCRé≤ZÑ$\0p,\Z4Z£í^£¨!	\0ãç÷˚˝WØÓüû~ï≤TÑ$\0p,\Z4Z#û8Ò‚ÙÙa Rí\0¿±h–hçh4˙∑¡ı”‚ |Ωñ{6\n…:\0Ä>BZ£ØØ/ôºWzÏpW˝1ıh\"ëê=t\0\0}Ñ$¥F>üÖnΩ™Ïùá(ìã-œd2≤á\0†èêÑñY;£gZ§Ã‘_“øå«£≤\r\0–!	-£(J$r«––üÖ8@5ØBa[(tk±∏Cˆ†\0\Z\"$°ïrπ\\8|[.óbÑjTjBR”d6˚îÏ·\04CHBã\r\r\r©9©ØÔ{BÏßÍ+ìy,\nf≥ê=P\0\0Ñ$¥û¢(…d\"π=ï˙Y°∞Eàa™X¸g:˝ãxº;ã®À≤á\0`åêÑπíÕfâoı¡ÁÎË∏1_°Ê$Ÿ√\00ãêÔ„≥à\0\06í‡}>˛Ù\0¿:&xüaH“V®_h≤>Ÿ\0ºç.Ôõ£êdfœ\0\0˜¢≈√˚fíÍ/\ZÈæ/ªı\r\0êçÊÔ3º,§√¥§ª\0\0$∫<ºœ“ï$›ÃTΩ&!	\0⁄]ﬁgÔÂ6›Ñ$Ù^nkıÒ\0Å˛Ô3í\ZΩ‹÷doƒ#\06∫<ºœÃ{íj÷$$\0ËÚæV}\0/∑@[°ø√˚¨Ü§Ê◊ñ∏í\0mÇ.Ô≥˙€mB/6ÈÆ‹ÚC\08]ﬁg„=I¢Íe5›ıy≈\r\0<èÊÔ#ƒ\0\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìº)ùN´Ÿ»Ô˜á√au!®ˇ.\\∏0óÀ…>4\0Ä;í‡Mõ7oˆ’Y∂lY&ìë}h\0\0w $¡õEY∞`AuBZºxq (ã≤\r\0‡Ñ$x÷ö5kÊÕõßÖ§’´W\'ìIŸ\0p\rBºl—¢EïÑ¥rÂ `0®(äÏ#\0∏!	^∂}˚ˆ˘ÛÁ´!)\ZçÚn$\0Ä%Ñ$x‹ÚÂÀ+!IˆÅ\0\0\\Üêè+\njH‚7ˇ\0Ví‡}|ò$\0¿&xê¢(ôLfÌ⁄µ±X,Úæh4™ﬁíJ•\nÖÇÏ\0∏\0!	û¢f#5’ådçp8º~˝z~Ÿ\r\0–!	ëÕfª∫∫„Qµ`0»Øº\0\Z!$¡ıEI$ı◊ä~Ù£l⁄∫Ì%≠zË·ÓÓÓö5c±√\r\0®GHÇª\nÖöH>¯˝c«èOî&’πÛ~˜ƒï?y´]R\Zë}*\0\0g!$¡≈Ú˘ºöo¥¨çFõ«£ö®Ù–Ck€˙˝˛°°!Ÿ\'\0pB‹JQîÍkHèÆ[g2U◊∆çˇß∆#Ìzø¯\0–í‡VÒx\\KHõl$§JÌ›7‹——QŸO$ë}Z\0\0ß $¡ï2ôÃ,Ø!U◊sœø†Ì≠øø_ˆ…\0ÅêW\ná√⁄˚êfôê*•Ω?)˘I\0\0AHÇ•”iÌ›÷\'OùnIH∫<:¶˝æ[ooØÏS\0»GHÇ˚D\"Ì∑˝[íê*ıÙÜ\rï›vtt»>E\0Ä|Ñ$∏L±X‘ﬁ?‘™ÀHZ›rÀ{(êÕfeü(\0@2B\\&ïJiøâ÷⁄Ñ§÷}˜›_Ÿy2ôî}¢\0\0…IpôûûûV˝R[}m›ˆReÁ]]]≤O\0 !	.çF+9ÊπÁ_hyH:v¸∏ˆ¡í≤O\0 !	.£˝Úˇﬁ}√-Ijioxí}¢\0\0…ò	‡2⁄/Íõˇ3mñJ€øÏ\0H∆L\0ó	ÖBïÛ ·√sí¥?Â&˚D\0í1¿e¥I⁄∫Ì•ñ\'§sÁ/QI\0Ä\nB\\&ëHTrÃÔûx¢Â!Èï√á+;á√≤O\0 !	.”◊◊W…1´V}ßÂ!È—uÎ*;è«„≤O\0 !	.ìÀÂ¥Wƒ.èéµ6$-]∫¥≤ÛT*%˚D\0íí‡>¡‡{<d``Síˆ!I™b±(˚,\0íí‡>…d≤e:;;[x1ÈõwﬁYŸm,ì}ä\0\0˘Ipüb±®}öQ´˛8…éùª¥ÀH###≤O\0 !	Æ‘ﬂﬂ_	4~øˆüpÏ¯q-uıÙÙ»>9\0Ä#í‡V]]]ïX£ÊõŸ|˙ˆÂ—±ŒŒNmWÖBAˆô\0Åê∑ ÁÛZ∏±˜ß‹Nû:≠%$øﬂüÕfeü\0¿)Ip15”ho$R#é’èó‹±sóˆ*õ™øø_ˆ	\0ÑêwÀd2⁄ı§ Ôª=˜¸f. ›Ωr•Ø\n		\0PÉê◊ÀÂr⁄_Ω’¢“C=\\ˇp’lÙª\'ûËÓÓÆ^YÕXº \0®GHÇã≈µk◊˙˝~üû%Kñ4˙V<Áù⁄\0\0]Ñ$xá\Zw¥?k(â\r\r…>d\0Äsí‡5ä¢§”i5-Ö√·ö`c±ÿ˙ıÎπz\00DH\0\0–AH\0\0–AH\0\0–AH\0\0–AH\0\0–Òˇ7p◊îñ>Ò\0\0\0\0IENDÆB`Ç',0),('2503',1,'leaveBill.bpmn','2501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"leaveBill\" name=\"leaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"Êèê‰∫§Áî≥ËØ∑\" activiti:assignee=\"${proposer}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"ÈÉ®Èó®ÁªèÁêÜÂÆ°Êâπ\" activiti:assignee=\"${departmentManager}\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"ÊÄªÁªèÁêÜÂÆ°Êâπ\" activiti:assignee=\"${generalManager}\"></userTask>\n    <sequenceFlow id=\"flow3\" name=\"ÊâπÂáÜ\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'ÊâπÂáÜ\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"ÊâπÂáÜ\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'ÊâπÂáÜ\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"È©≥Âõû\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'È©≥Âõû\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"È©≥Âõû\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'È©≥Âõû\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"leaveBill\" id=\"BPMNPlane_leaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"380.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"247.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"247.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"247.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"280.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"245.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"247.0\" y=\"335.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"380.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"335.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"300.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"216.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"153.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"300.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"350.0\" y=\"211.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"195.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"214.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"128.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"81.0\" y=\"177.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('5002',1,'leaveBill.png','5001','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0§\0\0\0Õ5Ü\0\0,·IDATxúÌ›lw˝«qkk©W1-àA\rÊ¡≥4õ‘¸E›\"\Z#≥ƒ¥ö˝Q,Ml©&FÑ∏†≠à≠DFÑ∆‘¡V,PøMi-Ìamá)m˙#M€uÛ˙cı÷Û˙k.M⁄k‚$üÔ≈ﬁœ>˚~ƒ·sw~>ÙVuqÓ.w˛ÿÔœ´g«Ò	\0\0\0‘Ò…>\0\0\0\0\'\"$\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $\0\0Ë $¡ÉE…d2k◊Æç≈bë˜E£Qıñt:],e \0¿I5©a»Ô˜´ÒHçDõ∂n{©Rœ=ˇ¬C=è«;::∫∫∫R©îÏÉ\08\Z!	122âD‘l§Ü°â“dÛ⁄±s◊™Uﬂ	á√ŸlVˆÅ\0äê/ËÎÎSœ÷m/∆£Í⁄ªoxÈ“•===ä¢»>\0Ä„í‡njæâ«„…d“R<™Æﬂ=ÒD$)\n≤O\0‡,Ñ$∏òöê∫∫∫“È¥ÌÑ§Ω˙¶Ó\'üœÀ>!\0ÄÉí‡bÒx|ˆ	I{ÈMÕIºÓ\0–í‡V}}}≥yï≠æ6≈b1Ÿß\0p\nB\\idd$∑0!UÍæ˚Ó_ø~ΩÏì\08!	Æ§&§Ω˚Ü[íNû:}À-A^t\0B‹(ì…ƒb±ñ\'§J=¯‡˜˚˚˚eü\"\0@>B‹\'âX˝H$KìÅÄÏS\0»GHÇÀã≈ééé9JHïZ≤d…––êÏ\0HFHÇÀ§R©D\"1ß!È—uÎí…§Ï\0HFHÇÀÙÙÙ¨_ø~NC“÷m/E\"Ÿ\'\n\0êåêóâF£f˛ÑÌlÍÿÒ„∑‹î}¢\0\0…Ipô9˙ÂˇÍ∫<:Ê˜˚eü(\0@2B\\&ú<uzNCíZ>O\r\0hwÃpôP(Ù ·√Ñ$\0¿\\c&ÄÀÃÈá$Òû$\0ÄÜêóI$Ooÿ0ß!i«Œ]Kñ,ë}¢\0\0…Ipô˛˛˛¸˛úÜ$5Ñ≠ZıŸ\'\n\0êåêó…ÁÛ¡`pNCRww˜‡‡†Ï\0HFHÇ˚ÃÈ{∑/èéutt(ä\"˚,\0íí‡>s˙ä€Ø{L›πÏS\0»GHÇ˚(äÁ‚”í.èé›rK∞P(»>E\0Ä|Ñ$∏R:ùæ{ÂJ.#\0Ê!	nıÕ;Ôÿ‘¬ÑÙ ·√ùùùóG«dü\0¿Ip´b±∏d…íVΩÉ˚‹˘jB:v¸∏Ï”\08!	.ñÀÂ‘ú§&õŸ\'§oﬁyÁsœø ˚Ñ\0\0BHÇªçååtvvÓÿπk6Ø≤©IãÑ\0®AHÇÎã≈•Kó>Ù–√ÁŒ_∞è.èé˝˙±«*ØŸ…>	\0Ä„í‡ä¢®!È∂€BjËQ£èôÑÙÙÜ\rÍ˙>¯}5Z…>|\0Äí‡ÖB°∑∑∑££„õwﬁ©f†Ω˚ÜkÇëzÀ∆çˇw˜ ïÍ:´V}\'üœÀ>d\0Äsí‡5ä¢d2ôD\"—ŸŸÈ˚ ı5!•”Èb±(˚0\0NGHÇ˜©ÅIˆ!\0\0‹áêÔÛ˘xú\0,cÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡MÈtZÕF~ø?´Å@@˝w·¬Öπ\\Nˆ°\0‹Åêo⁄ºy≥ØŒ≤eÀ2ôåÏC\0∏!	ﬁ§( Ç™“‚≈ãÅ@±Xî}h\0\0w $¡≥÷¨Y3oﬁ<-$≠^Ω:ôL >(\0Äkí‡eã-™$§ï+WÉAEQd\0¿5I≤Ì€∑œü?_\rI—hîw#\0,!$¡„ñ/_^	I≤\0‡2Ñ$x\\°PPCø˘\0∞äêÔ„√$\060y`Æ(äíNß„Òx$	ÉıüZ‘&‘sWÔÅX,ñJ•¯\0\0pBÊƒ‡‡†\Z‘Ñ¥q„∆≠€∂;~|¢TjœRœ]ΩV≠Z•ﬁ\'jTí=8\0\0SIh±b±òH$∫ªªOû:9Qö†™Î‹˘sjTRÔúB° {†\0\0Ih%5!Ö√·ß7<5Q\Zß\Z’sœ?∑d…í|>/{∏\0\0Õí–JâD¢úêÆQÕkÎ∂-Kó~Yˆp\0ö!$°eªªWî& L˝Ë«?\\∑ÓŸÉ\0hàêÑ÷P%û:ù/M^•Ã‘Ëÿªùùã˘\0\'\0p,BZ#ïJ%â“‰≠ñEønÚó‰´∑j´Z∑ÓÁ¸Õ]\0p,BZ#ã\rl˙Î“äÓ∑ÖxsJ-âW«≈Åq±wt≤”K/ûæ¥{B¸[ª±„äÿrM¸v«°˚zÓóûW§‘æ·°p8,{Ë\0\0˙IhçP(t¯˛“‰X•|>ﬂ®c”‚“§∏8!ÆÒÉü<ÏªÓ√]+bßK‚‰∏8yM‰qlR<ÛÚÅÚ≈§±6¨—±~ø_ˆ–\0Ùí–\ZÁ/ú.MéVJÕ=W¶ƒ¯‘Ã∑&ßg˛}ˆÖøÚs_¯È£øû‚Ú§∏TK¢(ƒñ=À!i¥=À«üL\0ß¢A£5 AÁ≤VÍócì‚¬U11ıﬁ\n≈bÒ7è?˘»Ø?yfÊsK”b¢ûvÌ;P≥m[!	\0ãç÷(ùˇh5í¶ƒπ+‚ùQQbb|<t€m>ﬂı>üˇÆoØ™ﬁpÔ˛öm€™I\0‡X4h¥F9Ë\\“™Úr€Ö´‚Ãeqˆöÿ{¯çEã]?ÔC7‹ts¸ûÑ§=˚Ük∂m´\"$Äc—†—\ZÂ†S‘J˝ÚÍ¥∏®Ã\\I:wMl€ì˚bÁÌ7Ï„7u|‰…?=sMà—qqe|f√C{j∂m´\"$Äc—†—\ZÍd?9˘ÆVïπ_ÕIóJ‚›	qÊri◊°|ÁóÓXˆ’ØùÔ(‚¨\".å5&ÌÿΩßf€∂*B\08\r\Z≠Qt\"Àñ|ÌËﬁCπ°ë‹Œ·‹Œ˝Gv<˛è›Øæ|Ëƒˆ·#ˇ\Z~}Á˛◊á9tÙ≠\'~ø·ÓïwK+Ñ$\0@\r\Z4Z£í.V◊‹oÊ„∂øu◊]5∂Uí\0¿±h–hçrH∫@Y-B\08\r\Z≠1í¶ŒSVãê\0éEÉFkîC“9 jí\0¿±h–hçrH:KY-B\08\r\Z≠QIÔPVãê\0éEÉÜÈt:üœÎ~´í\nî’jíö‹’\0Äˇ\rBÃ:r‰HÂóˆoºÒ∆ÅÅÅöÔíZíä≈‚=˜‹Sπü?ÒâOêì\0@\"BÃRÂ∫ÎÆ´ÃﬂÛÁœˇ¸Á?_=ÖóC“€sQ⁄ûk>`©…ö&wÿ¸∆π;£öü¢›áÎ◊Ø˜˚˝ï≥SÅ@°Pê0“\0Ä2B,PßÌÍòr√\r7‹{ÔΩjxÂê45uf.J€sıèhÙ„ÃFÛm}ËÂ‹ùùzÔÂrπœ~ˆ≥’?Æ´´+ p\0hkÑ§πíœÁ≥UR©‘⁄*âD\"bö:Y6˚»j«òö:=•ÌY˜«ô<*á=wgTÛS‘!∂}üªé˙`÷ÿ===Î◊Ø\Z\Zí˝d\0}Ñ$˚FFF˙˚˚c±ònî©ûTj*™Ijf öÊú7¶‹t”M⁄	∆ ‘SÀÂr‚Ω+IßZ[ıSlı∑¨Ó pŸÃœùãsÂH˝ïØ|Â”ü˛¥ˆoºÒ∆p8,{¿[Ø˙?jBRsRWWW H&ìŒyú@!…≤b±®¶úééuÎÌÌÕd2Nã2sD=Ò ¸\nÖæ˚›Ô™ˇ¶”iÌªÂ$qr.J€s]p—_≠fπ˘wkvﬁhìπ+_’{íoπÂñO}ÍSïÉY∞`AÂ•Lœ+\n}}}Íˇ+‘®‘&ß¿I÷®ëHmÂjHRÉÏc˘_{ÛÕ7˝~4\Z≠Lf5˜@9Rº5efœıÎ‘‹“‰†öMWk˘ŸUﬂçjDP]ü˘Ãg‘Æ˛;22Úød…‘®‘’’’ÜO.\0ŒDH≤@ùΩb±X;wp5#¶R)›kfs\Z#\Z≈óöpSwt3ì·r}¿ö£S´IÍ=¨ﬁœÍΩ=Á#Í<j.Ts◊ì\08!…¨d2Ÿ€€+˚(ú´ú$ﬁlmUÖ°‹ÿd˝F+Tﬂh∏¨ó∆Z|j’?Tˆ–9Œ‡‡`4\Zï}\0@H2\'õÕF\"ŸG·h3Ib:?•Ìπ≤ﬂ‡“tÂ˙€æé÷‡Ó≥Ug\'{Ëú(ãµÁÖ4\0éBÉ6¶(J(Ú¸˚≤g©ú$NÃEi{Æ,4˘AMV®æ—pY/HÕ…©U~ñÏ°s\"ıÈ¶>Èx—\rÄ\\4hc©T*ëH»>\nß+\'â7Ê¢¥=Wt–˚QFˇÀF;l¥ìöÊÓ‘*;ó=tâD≤Ÿ¨Ï£\0–÷h–∆¬·pª˝íë\rÂ$qºÂı~p9Æ˝˚¡<ˇ]°…∂ı∑7Zø~Ö&˚o’	 :áÍÎÎK&ì≤è@[£A»Âr°PHˆQ∏@9I£¨!©ı&û¸8M\0.BÉ6êNß„Ò∏Ï£pÅrH:JY-BR#˘|ûø^@.\Z¥Åﬁﬁﬁ˛˛~ŸG·Ñ$BRÀqÁ\0êãdÄwèö§Œg””G(´EhÇ;Ä\\Ù ]]]¸ïr3 !Èu jëö‡Œ =»@0‰íÃ(á§eµ»MpÁ\0êãd†£££ùˇXõyÂêÙ\Zeµ»MpÁ\0êãdÄ6míﬂÔøzuˇÙÙ´î•‚÷w\0πËAh”&É¡\'^úû>LY*`MpÁ\0êãdÄ6mR4\Z˝€‡˙iÒ\neæ^À=ÀGï6¡≥Ä\\Ù ¥iì D‚^È±√]ı«‘£¸Y¿&xˆêãdÄ6mR˘œ∂ﬂzUŸ;-Q&+[û…ddùsÒÏ =»\0m⁄ºµ3z¶≈A L˝%˝Àx<*{–çg\0πËAh”Ê)äâ‹14Ùg!PÕ´Pÿ\n›Z,Óê=hé∆≥Ä\\Ù ¥iKrπ\\8|[.óbÑjTjBR”d6˚îÏ·r:û}\0‰¢†M[544§Ê§ææÔ	±ü™ØLÊ±P(òÕ˛Aˆ@π\0œ>\0r—É–¶mP%ôLD\"∑ßR?+∂1LãˇLßèw«buYˆπœ>\0r—É–¶mÀf≥âƒ7Åè˙‡Ûut‹èØPsíÏaqœ>\0R—É–¶=Äœ\"r)û}\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.zê⁄¥0à.≈¿êãdÄ6Ì¢K1p\0‰¢†M{\0ÉËR\0πËAh”¿ ∫@.z–\Zq}S¶M{\0ÉËR\0π⁄Æ˘™Tﬂ(Í“Ré≥¿êπ@ÆˆÌA5˝∑—ó\\[Ú\0ÜÃ•8\0rµc“Ωn§{ã $πV:ùVG Ô˜á√au!®ˇ.\\∏0óÀ…>4ò≈s\rÄ\\ÌÿÉj\"QÛlTˇ*ç€6oﬁ\\ˇ:È≤eÀ2ôåÏCÉY<◊\0»’é=®˛∫Q£uö/¿…EY∞`AuBZºxq (ã≤\rfÒ\\ W;ˆ†öãCÜWí\Z-¿·÷¨Y3oﬁ<m¨WØ^ùL&e,‡π@Æ∂ÓA&C/∑π◊¢Eã*c∑rÂ `0®(äÏ#Ç<◊\0»’¶=H˜mIºq€{∂oﬂ>˛|u»¢—(ÔFrûk\0‰jª‘Ëö‡UÀó/ØÑ$ŸÀxÆê´≠{PÛ+IM»9\\ÿR(‘!„7ˇ›àÁ\Z\0π⁄¥Uøk€‰∑Î◊Å[0d.≈¿êãdÄ6mõ¢(Èt:èG\"ë`0ÿ¸‚úá©ÁÆﬁ±X,ïJÒñ¯xˆêädÄ6mœ‡‡†\Z‘Ñ¥q„∆≠€∂;~|¢TjœRœ]ΩV≠Z•ﬁ\'jTí=8Æ¡≥Ä\\Ù ¥i´ä≈b\"ëËÓÓ>yÍ‰DiÇ™ÆsÁœ©QIΩs\nÖÇÏÅrû}\0‰¢†M[¢&§p8¸ÙÜß&J„T£zÓ˘Áñ,YíœÁeó”ÒÏ =»\0m⁄íD\"QNH◊®Êµu€ñ•Kø,{∏úég\0πËAh”Ê\rvwØ(M*îô˙—è∏n›#≤Õ—xˆêãdÄ6mí¢(¡`‘È|iÚ*e¶F«ﬁÌÏ\\Ã85¡≥Ä\\Ù ¥iìR©T\"ë(M^—jYÙÎ&Iæz´∂™uÎ~Œﬂ‹mÇg\0πËAh”&≈b±ÅM˝oBZ—˝∂oNâ£%ÒÍ∏80.ˆéNˆozÈ≈”óvOà+b∑\"v\\[ÆâﬂÓ8t_œ˝“Ûäî⁄7<áeùsÒÏ =»\0m⁄§P(t¯˛“‰X•‘˚mTà±iqiR\\úWÑ¯¡Oˆ]˜·Æ±”%qr\\úº&Úä86)ûy˘@˘b“X÷Ëÿøﬂ/{Ëúãg\0πËAh”&uttúøp∫49Z)ı~ª2%∆ßfæ59=ÛÔ≥/¸˝ìü˚¬O˝ı§ó\'≈•í∏XE!∂Ï9XI£ÌY<¿ö‡Œ =»\0m⁄§r–π¨ï˙Âÿ§∏pULLΩ∑B±X¸Õ„O>Ú´«Oûô˘≈“¥ò(áß]˚‘l€V≈¨	Ó\0r—É–¶M*ùˇh5í¶ƒπ+‚ùQQbb|<t€m>ﬂı>üˇÆoØ™ﬁpÔ˛öm€™xÄ5¡ù@.zê⁄¥IÂ†sI´ ÀmÆä3ó≈ŸkbÔ·7-Zt˝º›p”ÕÒ{>íˆÏÆŸ∂≠äX#ÖB!»>\n\0mçmÄ9Ã§r–)j•~yuZ\\TfÆ$ùª&∂Ì…}±Ûˆõ?ˆÒõ:>Ú‰üûπ&ƒË∏∏2>≥·é°=5€∂UÒ\0k$üœÉAŸG†≠—†\r0áô§ﬁQììÔjUπﬂ‘út©$ﬁùg.óv w~Èée_˝⁄ŸqÒé\"Œ*‚¬∏Pc“é›{j∂m´‚÷»‡‡`4\Zï}\0⁄\Z\r⁄\0sòI5A\'≤lÈ¡◊éÓ=î\Z…ÌŒÌ‹d◊¡„ˇÿ˝ÍÀáNl>ÚØ·◊wÓ}Ë¿ëCGﬂz‚˜Ó^y∑Ù∞BHröµe≤è@[£A`3©í.V◊‹oÊ„∂øu◊]5∂UÒ\0k$\Zç >\n\0mçmÄ9Ã§rH∫@Y-`∫\nÖB0TEˆÅ\0hk4hÃa&ÕÑ§©Ûî’‚¶´øøø∑∑WˆQ\0hw4hÃa&ïC“9 jÒ\0´ß(J0,\n≤@ª£A`3©íŒRVãXΩD\"ëJ•d\0íå0áôTIÔPVÀE∞ÍCùª√ÓÔÔÔÈÈô£ùÄ%Æi–≤∏hì´í\nî’rÏ¨˙7´oui©	K?QQîD\"AB‡m–Œ·ÿ9ÃiIIöö#l˛•…o’(ã˝˝˝¡`êWŸ\08ä”¥tŒü√¢íﬁ∂QÕ7‘æ´{°¬‰Njvÿd?Ü;¨>´?∫—e]C∫◊çtoi≤yŸl∂ØØ/ã©Ò®∑∑ówjp\ZÁ6hápÚÊ(Í55u∆R’$ïö[™Wk¥y˝r˝>´o¨Y≥zA7<ÈÓ™—ÇΩrÊLQ5¡®«¶˝[Ωê…d‘Â \'bW/h\"e⁄B55UØñL&’ΩãEŸg\0:úÿ†≈ôsòï≥¬ÈYñ∂3{kærÕçı+◊,4ˇâÜõõ<f›=7øcsπ\\∂±˛˛˛µçE£—˙ò¢ií˝~øñrÍ≥N,”~ÑnZ™	U’Ú˘¸ˇ‰Ò\0-@0@H2©NY™ÍM*À⁄-ıç6◊]≥~´Í’ÙÆ5;∂Íµı-jÛ;Aˆ–5T}âØ≤ôY\0\0ó¢ã†—õTé\'≠Ve+m€ö/kñm˚~p—ﬂgÕ~ö/4¢ªüÍÔ⁄;˝ Ü≤áŒò…êTù®œ\0ÓG3@£7©úﬁ2_ç„»[’ªj≤[›’\Z›XøÛ&fñkvnÈ‹kŒBˆ–5Sèö§•F€Ä{—≈–ËMöMPhAf≥r£LSüÃö‰∂öê‘(ly,$5∫&Ts¿Ñ$\0F3@£7©úﬁ¥TuA‰Mm\'ı∫õ◊ÏDwüçˆ”¸›ÂÍ}ö9BìwÇÏ°3Êkz%©	9á\0-B3@£7i&+LÁ-Uı&ïeÌñ˙ÖÊõ~´záıö|´z´GhÚNê=tÕhYß&Ù¯LºÒ»·ß\0ÜËbhÙ&ï≥¬	KUΩIeπ*îË¨”|ÛÊ[’¨–hÛÀ’lx®ÕÔŸC\0–GÉ6¿fR9\"ºa©ÍÆ÷ºQøì&ª’61‹ Ã:&ø´›^Ã6ÓÅ V≤á\0†èmÄ9Ã§rD8n©™7©,◊ÔDw∑UπJˇˆf/É\Z˝àF?W˜‡Ì«Ãù {Ë\0\0˙h–ò√L*GÑcî’‚\0éEÉ6¿fR9$•¨0\0p,\Z¥Ê0ìIÑ$\0\Z¥Ê0ì‘;jz˙eµxÄÄc—†\r0áôTIØSVã\08\r⁄\0sòIÂêî£¨0\0p,\Z¥Ê0ì !È5 jÒ\0\0«¢A`3…Ô˜_Ω∫z˙U RÒ\0\0«¢A`3)û8Ò‚ÙÙa RÒ\0\0«¢A`3)\Zç˛mp˝¥xÖ2_ØÂû\rÖB≤á\0†è`ÄêdR___2yØÙÿ·Æ˙cÍ—D\"!{Ë\0\0˙H\0I&ÂÛ˘PË÷´ ﬁiqà2Y±ÿÚL&#{Ë\0\0˙H\0IÊ≠ù—3-RfÍ/È_∆„QŸÉ\0hà`Äêdû¢(ë»CC‚\0’º\nÖm°–≠≈‚ŸÉ\0hà`ÄêdI.óáoÀÂ2BåPçJMHjöÃfüí=\\\0ÄfH\0IV\r\r\r©9©ØÔ{BÏßÍ+ìy,\nf≥ê=P\0\0$\0Ñ$EI&ë»Ì©‘œ\nÖ-BS≈‚?”È_ƒ„›±XD]ñ=D\0\0c$\0Ñ$€≤Ÿl\"Òç@‡£>¯|7∆„+‘ú${X\0\0fë\0¯IÓ«g\0l  $y\0É\0∞Å…√\0Û´¢∂B˝Bìıyl\0Ä∑—Â\r0z¿Ö$3{\0∏-ﬁ\0≥†Ã&$’_4“}_vÎ\Z\0 Õ›\0Ûü^“ÇéaZ“]\0\0x]ﬁ\0°X∫í§õô™◊$$@õ†À`\"Ù\0{/∑È&$°˜r[´è\0‡ÙwLÅ`&$5zπ≠…ﬁxl\0Ä∑—Â\r0zÄô˜$’¨IH\0–Â\r0z@´>Äó€\0†≠–ﬂ\r0zÄ’ê‘¸⁄Wí\0†M–Â\r0zÄ’ﬂnz±IwÂñ*\0¿9ËÚò=¿∆{íD’Àj∫ÎÛä\0xÕ›\0Ûü0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´0à\0\0ò<0øz\0É\0∞Å…√\0Û´K•”iuÏ¸~8VÅÄ˙Ô¬ÖsπúÏC\0∏	¿\0!…•6oﬁÏ´≥lŸ≤L&#˚–\0\0Ó@0@Hr)EQ,XPùê/^ä≈¢ÏC\0∏	¿\0!…Ω÷¨Y3oﬁ<-$≠^Ω:ôL >(\0Äkê\0í\\m—¢EïÑ¥rÂ `0®(äÏ#\0∏	¿\0!…’∂oﬂ>˛|u£—(ÔF\0XB0@HrªÂÀóWBíÏ\0∏	¿\0!…Ì\nÖÇ:à¸Ê?\0¿*ÄBí0à\0\0ò<0ø⁄¶(J:ùé«„ëH$÷jQõPœ]Ωb±X*ï‚\0¿EH\0|Ñ$[’p†&§ç7n›∂ÌÿÒ„•R{ñzÓÍ=000∞j’*ı>Q£íÏ¡\0òB0@H≤™X,&âÓÓÓìßNNî&®Í:w˛ú\Zï‘;ßP(»(\0ÄÄBí%jB\ná√Ooxj¢4N5™Áûn…í%˘|^ˆp\0ö! $YíH$ 	È\Z’º∂n€≤tÈóe\0†ÄBíyÉÉÉ››+Jì\ne¶~Ù„Æ[˜àÏA\04D0@H2IQî`0xÍtæ4yï2S£cÔvv.Êú\0¿±H\0I&•R©D\"Qöº¢’≤Ë◊M˛í|ıVmUÎ÷˝úøπ\0éE0@H2)ã\rl˙Î“äÓ∑ÖxsJ-âW«≈Åq±wt≤”K/ûæ¥{B¸[ª±„äÿrM¸v«°˚zÓóûW§‘æ·°p8,{Ë\0\0˙H\0I&ÖB°√á˜ó&«*•ﬁo£BåMãKì‚‚Ñ∏\"ƒ~Ú∞Ô∫w≠àù.âì„‚‰5ëWƒ±IÒÃÀ ì∆⁄∞F«.¯˝~ŸC\0–G0@H2©££„¸Ö”•…—J©˜€ï)1>5Û≠…Èôü}·Ôü¸‹~˙ËØ\'Ö∏<).ïƒ≈í(\n±eœ¡rH\Zmœ‚\0éEÉ6¿fR9Ë\\÷J˝rlR\\∏*&¶ﬁ[°X,˛ÊÒ\'˘’„\'œÃ|ébiZLî√”Æ}j∂m´‚\0éEÉ6‡˜˚Eë}.P:ˇ—j&$MâsWƒ;£¢$ƒƒ¯xË∂€|æÎ}>ˇ]ﬂ^UΩ·ﬁ·˝5€∂Uí\0¿±h–Ç¡ üålF9Ë\\“™Úr€Ö´‚Ãeqˆöÿ{¯çEã]?ÔC7‹ts¸ûÑ§=˚Ük∂m´\"$Äc—†\rÑ√·ëëŸG·Â†S‘J˝ÚÍ¥∏®Ã\\I:wMl€ì˚bÁÌ7Ï„7u|‰…?=sMà—qqe|f√C{j∂m´\"$Äc—†\rD\"ël6+˚(\\@ùÏ\'\'ﬂ’™2˜´9ÈRIº;!Œ\\.Ì:îÔ¸“Àæ˙µ≥„‚EúUƒÖq°∆§ª˜‘l€VEH\0«¢AH$©TJˆQ∏@M–â,[zµ£{ÂÜFr;ás;˜Ÿu¯?vø˙Ú°€áè¸k¯ıù˚_:p‰–—∑û¯˝ÜªWﬁ-=¨í\0\05h–*$-˚(\\†í.V◊‹oÊ„∂øu◊]5∂Uí\0¿±h–rπ\\(í}.PI(´EH\0«¢A„Ω€fÃÑ§©Ûî’\"$Äc—†çı˜˜˜ˆˆ >\nß+á§sî’\"$Äc—†ç)äÖÇÏq¥rH:KY-B\08\r⁄îl6âDdÖ£ïC“;î’\"$Äc—†ÕZªv-/∫5QI jí\0¿±h–$ì…h4Z,eàíI\0‡14hkÉ¡‡⁄µkyãRçrHz{ˆUø3∑4Ÿ[=3?¥Êˆ˙ÖV!	\0ãmY±XTCí\Zï¢—®∫¿-©P\'˚©©3-©Í]ÈÓVª±&˝‘‹X≥fıÇ·G\\Ín’Ëxfy≤≤á\0†èmì¢(ÉÉÉjHäD\"Ü3nõòö:=À2≥s›Ts£ˆe£ÖÊGk∏π·,ù≤Ï«2\0@\r\Z≠Q\rßfYçv¢›^ø†ªUıjzyÀ‘œ≠^ø˘ÃÚîe\0@\r\Z≠Q\r\'gYçv¢›^\\>≠ö\r´◊o≤–¯™U√ü´˚„fy ≤á\0†èç÷(ÁÜ∑fYçvRsªˆeıÌ’7æüft÷læmì}VÔ|ˆgZ˝#d\0@\r\Z≠—™ê‘¯ÍN≥Ñ‘<”ËÓ ‰œj∂I\0‡y4h¥F9=º9◊ı¡(ÛÊ≥çØzµ˙\rõ‹¢ª\\Ωœ˙ÖûëÏ°\0Ë£A£5f“√tæÖUΩ√Ê;ØˇÆvã˛Ö¢∆ﬂ™^°f?féƒﬁi :\0Ä>\Z4Z£úNÃ≤*;—vUΩœöÂFﬂ“]°—:Êóµ”=∂Yû≤Ï°\0Ë£A£5 °·çYVe\'5ª™æÒ˝ò¢≥UıóÜÎò¸Ævª∂œÍ[fæï˝»:\0Ä>\Z4Z£\Zéœ¶™˜P˜˙ó˛˙zØî¨†ª∑F7j∑Î€,œW€õÏ°\0Ë£A£5 °·eµI\0‡X4h¥F9$•¨!	\0ãç÷ $í\0¿ch–h\ru≤üû>BY-B\08\r\Z≠QIØSVãê\0éEÉFkîCRé≤ZÑ$\0p,\Z4Z£í^£¨!	\0ãç÷˚˝WØÓüû~ï≤TÑ$\0p,\Z4Z#û8Ò‚ÙÙa Rí\0¿±h–hçh4˙∑¡ı”‚ |Ωñ{6\n…:\0Ä>BZ£ØØ/ôºWzÏpW˝1ıh\"ëê=t\0\0}Ñ$¥F>üÖnΩ™Ïùá(ìã-œd2≤á\0†èêÑñY;£gZ§Ã‘_“øå«£≤\r\0–!	-£(J$r«––üÖ8@5ØBa[(tk±∏Cˆ†\0\Z\"$°ïrπ\\8|[.óbÑjTjBR”d6˚îÏ·\04CHBã\r\r\r©9©ØÔ{BÏßÍ+ìy,\nf≥ê=P\0\0Ñ$¥û¢(…d\"π=ï˙Y°∞Eàa™X¸g:˝ãxº;ã®À≤á\0`åêÑπíÕfâoı¡ÁÎË∏1_°Ê$Ÿ√\00ãêÔ„≥à\0\06í‡}>˛Ù\0¿:&xüaH“V®_h≤>Ÿ\0ºç.Ôõ£êdfœ\0\0˜¢≈√˚fíÍ/\ZÈæ/ªı\r\0êçÊÔ3º,§√¥§ª\0\0$∫<ºœ“ï$›ÃTΩ&!	\0⁄]ﬁgÔÂ6›Ñ$Ù^nkıÒ\0Å˛Ô3í\ZΩ‹÷doƒ#\06∫<ºœÃ{íj÷$$\0ËÚæV}\0/∑@[°ø√˚¨Ü§Ê◊ñ∏í\0mÇ.Ô≥˙€mB/6ÈÆ‹ÚC\08]ﬁg„=I¢Íe5›ıy≈\r\0<èÊÔ#ƒ\0\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìºèê\0∞Å…ﬁGH\0ÿ¿‰Ô#$\0l`ÚÄ˜í\0\060y¿˚I\0\0ò<‡}Ñ$\0Ä\rL>B\0¿&x!	\0`ìº)ùN´Ÿ»Ô˜á√au!®ˇ.\\∏0óÀ…>4\0Ä;í‡Mõ7oˆ’Y∂lY&ìë}h\0\0w $¡õEY∞`AuBZºxq (ã≤\r\0‡Ñ$x÷ö5kÊÕõßÖ§’´W\'ìIŸ\0p\rBºl—¢EïÑ¥rÂ `0®(äÏ#\0∏!	^∂}˚ˆ˘ÛÁ´!)\ZçÚn$\0Ä%Ñ$x‹ÚÂÀ+!IˆÅ\0\0\\Üêè+\njH‚7ˇ\0Ví‡}|ò$\0¿&xê¢(ôLfÌ⁄µ±X,Úæh4™ﬁíJ•\nÖÇÏ\0∏\0!	û¢f#5’ådçp8º~˝z~Ÿ\r\0–!	ëÕfª∫∫„Qµ`0»Øº\0\Z!$¡ıEI$ı◊ä~Ù£l⁄∫Ì%≠zË·ÓÓÓö5c±√\r\0®GHÇª\nÖöH>¯˝c«èOî&’πÛ~˜ƒï?y´]R\Zë}*\0\0g!$¡≈Ú˘ºöo¥¨çFõ«£ö®Ù–Ck€˙˝˛°°!Ÿ\'\0pB‹JQîÍkHèÆ[g2U◊∆çˇß∆#Ìzø¯\0–í‡VÒx\\KHõl$§JÌ›7‹——QŸO$ë}Z\0\0ß $¡ï2ôÃ,Ø!U◊sœø†Ì≠øø_ˆ…\0ÅêW\ná√⁄˚êfôê*•Ω?)˘I\0\0AHÇ•”iÌ›÷\'OùnIH∫<:¶˝æ[ooØÏS\0»GHÇ˚D\"Ì∑˝[íê*ıÙÜ\rï›vtt»>E\0Ä|Ñ$∏L±X‘ﬁ?‘™ÀHZ›rÀ{(êÕfeü(\0@2B\\&ïJiøâ÷⁄Ñ§÷}˜›_Ÿy2ôî}¢\0\0…IpôûûûV˝R[}m›ˆReÁ]]]≤O\0 !	.çF+9ÊπÁ_hyH:v¸∏ˆ¡í≤O\0 !	.£˝Úˇﬁ}√-Ijioxí}¢\0\0…ò	‡2⁄/Íõˇ3mñJ€øÏ\0H∆L\0ó	ÖBïÛ ·√sí¥?Â&˚D\0í1¿e¥I⁄∫Ì•ñ\'§sÁ/QI\0Ä\nB\\&ëHTrÃÔûx¢Â!Èï√á+;á√≤O\0 !	.”◊◊W…1´V}ßÂ!È—uÎ*;è«„≤O\0 !	.ìÀÂ¥Wƒ.èéµ6$-]∫¥≤ÛT*%˚D\0íí‡>¡‡{<d``Síˆ!I™b±(˚,\0íí‡>…d≤e:;;[x1ÈõwﬁYŸm,ì}ä\0\0˘Ipüb±®}öQ´˛8…éùª¥ÀH###≤O\0 !	Æ‘ﬂﬂ_	4~øˆüpÏ¯q-uıÙÙ»>9\0Ä#í‡V]]]ïX£ÊõŸ|˙ˆÂ—±ŒŒNmWÖBAˆô\0Åê∑ ÁÛZ∏±˜ß‹Nû:≠%$øﬂüÕfeü\0¿)Ip15”ho$R#é’èó‹±sóˆ*õ™øø_ˆ	\0ÑêwÀd2⁄ı§ Ôª=˜¸f. ›Ωr•Ø\n		\0PÉê◊ÀÂr⁄_Ω’¢“C=\\ˇp’lÙª\'ûËÓÓÆ^YÕXº \0®GHÇã≈µk◊˙˝~üû%Kñ4˙V<Áù⁄\0\0]Ñ$xá\Zw¥?k(â\r\r…>d\0Äsí‡5ä¢§”i5-Ö√·ö`c±ÿ˙ıÎπz\00DH\0\0–AH\0\0–AH\0\0–AH\0\0–AH\0\0–Òˇ7p◊îñ>Ò\0\0\0\0IENDÆB`Ç',0),('5003',1,'leaveBill.bpmn','5001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"leaveBill\" name=\"leaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"Êèê‰∫§Áî≥ËØ∑\" activiti:assignee=\"${proposer}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"ÈÉ®Èó®ÁªèÁêÜÂÆ°Êâπ\" activiti:assignee=\"${departmentManager}\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"ÊÄªÁªèÁêÜÂÆ°Êâπ\" activiti:assignee=\"${generalManager}\"></userTask>\n    <sequenceFlow id=\"flow3\" name=\"ÊâπÂáÜ\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'ÊâπÂáÜ\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"ÊâπÂáÜ\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'ÊâπÂáÜ\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"È©≥Âõû\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'È©≥Âõû\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"È©≥Âõû\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'È©≥Âõû\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"leaveBill\" id=\"BPMNPlane_leaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"380.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"247.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"247.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"247.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"280.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"245.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"247.0\" y=\"335.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"380.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"335.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"300.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"216.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"153.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"300.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"350.0\" y=\"211.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"195.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"214.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"128.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"81.0\" y=\"177.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','7501',4),('schema.history','create(5.20.0.2)',1),('schema.version','5.20.0.2',1);

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

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('2501','ËØ∑ÂÅáÊµÅÁ®ã',NULL,'','2016-05-29 22:19:27.099'),('5001','ËØ∑ÂÅáÊµÅÁ®ã',NULL,'','2016-05-29 22:43:15.312');

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

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('leaveBill:1:2504',1,'http://www.activiti.org/test','leaveBillProcess','leaveBill',1,'2501','leaveBill.bpmn','leaveBill.png',NULL,0,1,1,''),('leaveBill:2:5004',1,'http://www.activiti.org/test','leaveBillProcess','leaveBill',2,'5001','leaveBill.bpmn','leaveBill.png',NULL,0,1,1,'');

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

/*Table structure for table `action` */

DROP TABLE IF EXISTS `action`;

CREATE TABLE `action` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `url` varchar(200) DEFAULT NULL,
  `request` varchar(30) DEFAULT NULL,
  `least` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `action` */

insert  into `action`(`id`,`name`,`parentId`,`position`,`url`,`request`,`least`) values (1,'Áî®Êà∑ÂàóË°®',0,1,'/user','get',1),(2,'Ê∑ªÂä†',1,1,'/user','post',1),(3,'‰øÆÊîπ',1,2,'/update/\\d+','put',1),(4,'Âà†Èô§',1,3,'/user/\\d+','delete',1),(5,'ËßíËâ≤ÂàóË°®',0,1,'/role','get',1),(6,'Ê∑ªÂä†',5,1,'/role','post',1),(7,'‰øÆÊîπ',5,2,'/role/\\d+','put',1),(8,'Âà†Èô§',5,3,'/role/\\d+','delete',1),(9,'ÂêéÂè∞È¶ñÈ°µ',0,0,'/main','get',1);

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
  `roleId` bigint(20) DEFAULT NULL,
  `actionId` bigint(20) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values (1,'ÁÆ°ÁêÜÂëò'),(3,'ÊôÆÈÄöÁî®Êà∑'),(5,'test role'),(38,'test role1');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `passWord` varchar(66) NOT NULL,
  `name` varchar(30) DEFAULT 'ÂåøÂêç',
  `roleId` bigint(20) DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_role_fk` (`roleId`),
  CONSTRAINT `user_role_fk` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`passWord`,`name`,`roleId`,`email`,`createTime`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','ÊõπÊìç',1,NULL,'2016-05-11 21:19:33'),(4,'root','63a9f0ea7bb98050796b649e85481845','Âè∏È©¨Êáø',1,NULL,'2016-05-29 16:18:04'),(5,'test','098f6bcd4621d373cade4e832627b4f6','test',3,NULL,'2016-05-29 16:18:23'),(6,'test User','pwd','user name',3,'','2016-05-29 16:24:00'),(7,'test User','pwd','user name',3,'','2016-05-29 16:24:02'),(8,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(9,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(10,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(11,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(12,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(13,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(14,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(15,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(16,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(17,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(18,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(19,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(20,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(21,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(22,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(23,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(24,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(25,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(26,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(27,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(28,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(29,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(30,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(31,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(32,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(33,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(34,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(35,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(36,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(37,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(38,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(39,'test User','pwd','user name',3,'','2016-05-29 16:24:09'),(40,'test User','pwd','user name',3,'','2016-05-29 16:24:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
