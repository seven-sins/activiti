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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2502',1,'leaveBill.png','2501','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0�\0\0\0�5�\0\0,�IDATx���lw��qkk�W1-�A\r���4���E�\"\Z#�Ĵ��Q,Ml�&F������DF����V,P�Mi-�am�)m�#M�u��c����k.M�k�$�����>�~��sw~>�Vuq�.w���ϫg��	\0\0\0���>\0\0\0\0\'\"$\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $��E�d2k׮��b��E�Q��t:],e \0�I�5�a�����H�D��n{�R�=��C=��;::���R���\08\Z!	122�D�l�����d�ڱsתU�	���lV��\0��/���S��m/ƣ�ڻox�ҥ===���>\0����nj�����d�R<���=�D$)\n�O\0�,�$���������턤����\'���>!\0����b�x|�	I{�M�I��\0���V}}}�y���6�b1٧\0p\nB\\idd$�0!U���_�~��\08!	��&����[�N�:}�-A^t\0B�(���b��\'�J=������e�\"\0@>B�\'�X�H$K����S\0�GH���Ŏ��9JH�Z�d��А�\0HFH�ˤR�D\"1�!��u�ɤ�\0HFH������_�~NC��m/E\"�\'\n\0�����F�f���l������}�\0\0�Ip�9����<:���e�(\0@2B\\&�<uzNC�Z>O\r\0hw�p�P(���Ä$\0�\\c&����$�$\0����I$Oo�0�!i��]K�,�}�\0\0�Ip��������$5��Z��\'\n\0��������`pNCRww����\0HFH����{�/��utt(�\"�,\0���>s��ۯ{Lݹ�S\0�GH��(���Ӓ.���rK�P(�>E\0�|�$�R:��{�J.#\0�!	n��;������Ý���G�d�\0�Ip�b��dɒV�����jB:v����\08!	.���Ԝ�&��\'�o�y�sϿ ��\0\0BH�����tvv�عk6���I��\0�AH���ťK�>�����_��.������*���>	\0�������!��Bj�Q������\r��>�}5Z�>|\0����B�������wީf����k��z�ƍ�w�ʕ�:�V}\'���>d\0�s��5��d2�D\"����� �5!���b�(�0\0NGH����I�!\0\0܇����x�\0,c���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�M�tZ�F~�?��@@�w��\\N��\0܁�oڼy��βe�2���C\0�!	ޤ(ʂ���ŋ�@�X�}h\0\0w $��֬Y3o�<-$�^�:�L�>(\0�k��e�-�$��+W�AEQd\0�5I��۷ϟ?_\rI�h�w#\0,!$��/_^	I�\0�2�$x\\�PPC��\0������$\060y`�(��N���x$	���Z�&�sW�X,�J��\0\0pB����\ZԄ�q�ƭ۶;~|�Tj�R�]�V�Z��\'jT�=8\0\0SIh�b��H$���O�:9Q������sjTR�B� {�\0\0Ih%5!���7<5Q\Z�\Z�s�?�dɒ|>/{�\0\0���J�D����Q�k�-K�~Y�p\0�!$�e��W�&�L���?\\��ك\0h����P%�:�/M^����ػ����\0\'\0p,BZ#�J%�����E�n�䫷j�Z�����]\0p,BZ#�\rl��ҊxsJ-�W�Łq�wt��K/���{B�[����rM�vǡ�zW�Ծ�p8,{�\0\0�Ih�P(t�����X�|>ߨc��Ҥ�8!��<���]+b�K��8yM�qlR<���Ť�6�ѱ~�_��\0���\Z�/�.M�VJ�=W����̷&�g�}����s_�飿���TK�(Ė=�!i�=�ǟL\0��A�5�A�V�c���U11��\n�b�7�?�ȯ?yf�sK�b��v�;P�m[!	\0���(��h5��Ĺ+�QQbb|<t�m>��>���o���p����m۪I\0�X4h�F9�\\Ҫ�rۅ���eq���{��E�]?�C7�ts����=��k�m�\"$�cѠ�\Z�S�J��괸��\\I:wMlۓ�b��7��7u|��?=sM��qqe|f�C{j�m�\"$�cѠ�\Z�d?9��V��_�I�J��	q�riס|��X�կ��(�\".�5&�ؽ�f۶*B\08\r\Z�Qt\"˖|���C���������Gv<��ݯ�|����#�\Z~}��ׇ9t��\'~���wK+�$\0@\r\Z4Z��.V��o�㶿u�]5�U�\0��h�h�rH�@Y-B\08\r\Z�1���SV��\0�E�Fk�C�9�j�\0��h�h�rH:KY-B\08\r\Z�QI�PV��\0�E���t:���~��\n��j����\0��\rB�:r�H��o��Ɓ�����Z����=��S��?�O��\0@\"B�R�뮫��������?_=��C��sQڞk>`�ɚ&w��ƹ;����݇�ׯ�����S�@�P�0�\0�2B,P���r�\r7�{�jx�45uf.J�s��h���F�m}��ܝ�z��r��~���?���+�p\0hk������UR���*�D\"b�:Y6��jǘ�:=��Y�Ǚ<*�=wgT�S�!�}����`��===�ׯ\Z\Z��d\0}�$�FFF���c��n���Tj*�Ijfʚ�7��t�M�	���S��r�+I�Z[�Sl�����p��ϝ�s�H���|�ӟ���o���p8,{�[��?jBRsRWWW H&��y�@!ɲb������u����d2N�2sD=���\n��������i��$qr.J�s]p�_�f��wkv�h��+_�{�o��O}�S��Y�`A�L�+\n}}}��+Ԩ�&��I֨�Hm�jHR��c�_{��7�~4\Z�Lf5�@9R�5ef���������MWk��UߍjDP]���g���;22�d�Ԩ���ՆO.\0�DH�@��b�X;wp5#�R)�kfs\Z#\Zŗ�pSwt3��r}���S�I�=����=�#�<j.Tsד\08!ɬd2���+�(���$�lmU����d�F+T�h����Z|j�?T��9���`4\Z�}\0@H2\'��F\"�G�h3Ib:?������t��������Ug\'{�(���4\0�B�6�(J(����g��$N�Ei{�,4�AMV���pY/H�ɩU~��s\"��>�x�\r�\\4hc�T*�H�>\n�+\'�7梴=Wt��QF��F;l������*;�=t�D�٬�\0��h����p����\r�$q���~p9����<�]�ɶ��7Z�~�&�o�	�:����K&���@[�A��r�PH�Q�@9I��!��&��8M\0.B�6�N����p�rH:JY-BR#�|��^@.\Z�������~�G��$BR�q�\0��d�w����g��G(�Eh�;�\\� ]]]��r3�!�u�j���� =�@0���(��e��Mp�\0��d������X�y��\Ze��Mp�\0��d�6m���zu��������w\0��Ah�&��\'^��>LY*`Mp�\0��d�6mR4\Z����i�\ne�^�=�G�6���\\� �i��D�^��]��ԣ�Y�&x���d�6mR�϶�zU�;-Q&+[��dd�s�� =�\0mڼ�3z��A�L�%��x<*{��g\0��Ah��)���14�g!PͫP�\n�Z,�=h�Ƴ�\\� �iKr�\\8|[.�b�jTjBR�d6����r:�}\0��M[544�椾��	����L�P(���A�@�\0�>\0rуЦmP%�LD\"��R?+�1L��L��w�buY���>\0rуЦm�f���7�����ut���Ps��aq�>\0RуЦ=��\"r)�}\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�\Zq}S�M{\0��R\0�ڮ��T�(��R�����@���A5��ї\\[�\0�̥8\0r�cҽn�{� $�V:�VG�����au!��.\\�0���>4��s\r�\\�؃j\"Q�lT�*��6o�\\�:�e�2���C�Y<�\0�Վ=���Q�u�/��EY�`AuBZ�xq (��\rf�\\ W;����C�W�\Z-��֬Y3o�<m�W�^�L&e,�@���A&C/��עE�*c�r��`0�(��#�<�\0�զ=H�mI�q�{�o�>�|uȢ�(�Fr�k\0�j����U˗/��$��x����{P�+IM�9\\�R(�!�7�݈�\Z\0�ڴU�k����ׁ[0d.����d�6m��(�t:�G\"�`0��✇����X,�J���x���d�6m���\ZԄ�q�ƭ۶;~|�Tj�R�]�V�Z��\'jT�=8����\\� �i���b\"����>y��Di���s�ϩQI�s\n���r�}\0��M[�&�p8��&J�T�z���,Y���e���� =�\0mڒD\"QNHר�uۖ�K�,{���g\0��Ah��\rvw�(M*���я�n�#���x���d�6m��(�`���|i�*e�F����\\�85���\\� �i�R�T\"�(M^�jY��&I�z���u�~���m�g\0��Ah�&�b��M�oBZ���oN��%��80.��N�oz��ӗvO�+b�\"v\\[����8t_�����7<�e�s�� =�\0mڤP(t�����X���mT��iqiR\\�W���O�]����%qr\\��&�86)�y�@�b�X�����/{蜋g\0��Ah�&utt��p�49Z)�~�2%Ƨf�59=��/������O����\'ť��XE!��9XI��Y<���� =�\0mڤrй����ؤ�pULL��B�X���O>��O����Ҵ�(��]��l�V��	�\0rуЦM*��h5��Ĺ+�QQbb|<t�m>��>���o���p����m۪x�5��@.z�ڴI�sI���m��3���kb��7-Zt���p���{>����ٶ��X#�B!�>\n\0m�m�9̤r�)j�~yuZ\\Tf�$��&���}����?��:>�䟞�&�踸2>�Ꭱ=5۶U�\0k$���A�G��Ѡ\r0����Q���jU��Ԝt�$ޝg.�v�w~�e_���q�\"�*�¸PcҎ�{j�m������`4\Z�}\0�\Z\r�\0s�I5A\'�l��׎�=�\Z�����d�������ˇNl>���w�}���CG�z���^y���BHr��e��@[�A`3��.V��o�㶿u�]5�U�\0k$\Z��>\n\0m�m�9̤rH�@Y-`�\n�B0TE��\0hk4h�a&̈́������������W�Q\0hw4h�a&�C�9�j�\0��(J0,\n�@��A`3���RV�X�D\"�J�d\0��0��TI�PV�E��C��������陣��%�iв�h���\n��r���7�oui�	K?QQ�D\"AB�m����9�iII��#l���o�(�����`�W�\08���tΟ���޶Q�7Ծ�{���Njv�d?�;�>�?��e]C�׍toi�y�l���/��񨷷�wjp\Z�6h�p��(�55u�R�$��[�Wk�y�r�>�o�Y�zA7<��т�r�LQ5��Ǧ�[���d���\'bW/h\"e�B55U��L&ս�E�g\0:�ؠřs�����Y��3{k�r͍�+�,4�����<f�=7�cs�\\�������E�����i��~��r�N,�~�nZ�	U�������\0-@0@H2�NY��M*��-��6�]�~�����5;����-j�;A��5T}����Y\0\0����ћT�\'�Ve+mۚ/k�m�~p��g�~�/4������;�ʆ��ΘɐT���\0�G3@�7���2_���[ջj�[��\Z�X��&f�kvn��k�B��5S����F��{����M�MPhAf�r�LS�̚䶚��(ly,$5�&Ts��$\0F3@�7��޴TuA�Mm\'�����Dw��������}�9B�w��3�kz%�	9�\0-B3@�7i&+L�-U�&�e����~�z���|�z�Gh�N�=t�hY�&��L����\0��bh�&���	KU�Ie�*���|��[լ�h���lx����C\0�G�6�fR9\"�a��ּQ��&��61���:&���^�6��V��\0��m�9̤rD8n��7�,��Dw�U�J��f/�\Z��F?W����̝ {�\0\0�h���L*G�c���\0�E�6�fR9$��0\0p,\Z��0�I�$\0�\Z��0��;jz�e�x��cѠ\r0��TI�SV�\08\r�\0s�I吔��0\0p,\Z��0��!�5�j�\0\0ǢA`3���_��z�U�R�\0\0ǢA`3)�8����a�R�\0\0ǢA`3)\Z��mp��x�2_��\r�B��\0��`��dR___2y�����c��D\"!{�\0\0�H\0I&���P�֫��iq�2Y���L&#{�\0\0�H\0I歝�3-Rf�/�_��Qك\0h�`��d��(��CC�\0ռ\n�m�Э��ك\0h�`��dI.��o��2B�P�JMHj��f��=\\\0�fH\0IV\r\r\r�9���{B��+�y,\nf��=P\0\0$\0�$EI&�����\n�-BS��?��_��ݱXD]�=D\0\0c$\0�$۲�l\"�@�>�|7��+Ԝ${X\0\0f�\0�I��g\0l  $y\0�\0����\0���B�B��yl\0����\r0z��$3{\0�-�\0���&$�_4�}_v�\Z\0 ��\0�^҂�aZ�]\0\0x]�\0�X�������$$@���`\"�\0{/��&$��r[��\0��wL�`&$5z����xl\0����\r0z���$լIH\0��\r0z@�>���\0����\r0z�Ր���W�\0�M��\r0z���nz�Iw�*\0�9���=��{�D��j���\0x��\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�K��iu��~8V����s���C\0�	�\0!ɥ6o�쫳lٲL&#��\0\0�@0@Hr)EQ,XP��/^�Ţ�C\0�	�\0!ɽ֬Y3o�<-$�^�:�L�>(\0�k�\0�\\mѢE���r��`0�(��#\0�	�\0!�նo�>�|u��(�F\0XB0@Hr��˗WB��\0�	�\0!��\n��:���?\0�*�B�0�\0\0�<0�ڦ(J:����H$�jQ�P�]�b�X*��\0�EH\0|�$[�p�&��7nݶ�����R{�z��=000�j�*�>Q����\0�B0@H��X,&���NN�&��:w��\Z��;�P(�(\0��B�%jB\n��Ooxj�4N5��nɒ%�|^�p\0�! $Y�H$�	�\Zռ�n۲t�e\0��B�y�����+J�\ne�~���[���A\04D0@H2IQ�`0x�t�4y�2S�c�vv.��\0��H\0I&�R�D\"Q���ղ��M��|�VmU������\0�E0@H2)�\rl��ҊxsJ-�W�Łq�wt��K/���{B�[����rM�vǡ�zW�Ծ�p8,{�\0\0�H\0I&�B�Ç��&�*��o�B�M�K��ℸ\"�~��w���.�����5�WıI������ڰF�.��~�C\0�G0@H2������ӥ��J��ە)1>5����}����~��\'��<).��Œ(\n�e��rH\Zm��\0�E�6�fR9�\\�J�rlR\\�*&��[�X,���\'���\'��|�biZL��Ӯ}j�m��\0�E�6���E�}.P:��j&$M�sW�;��$���x��|��}>�]�^U�����5۶U�\0��h��� ��lF9�\\Ҫ�rۅ���eq���{��E�]?�C7�ts����=��k�m�\"$�cѠ\r��ᑑ�G��S�J��괸��\\I:wMlۓ�b��7��7u|��?=sM��qqe|f�C{j�m�\"$�cѠ\rD\"�l6+�(\\@��\'\'�ժ2��9�RI�;!�\\.�:����˾�����E�Uąq�Ƥ���l�VEH\0ǢAH$�TJ�Q�@MЉ,[z�{�Fr;�s;��u��?v���ۇ��k����_:p��ѷ�����W�-=��\0\05h�*$-�(\\��.V��o�㶿u�]5�U�\0��h�r�\\(�}.PI(�EH\0ǢA��f̄����\"$�cѠ��������>\n�+��s��\"$�cѠ�)����q�rH:KY-B\08\rڔl6�Dd���C�;��\"$�cѠ�Z�v-/�5QI�j�\0��h�$��h4Z,e��I\0�14hk���ڵky�R�rHz{�U�3�4�[=3?�����V!	\0�mY�XTC�\Z��Ѩ��-�P\'���3-��]��V��&���X�f���G\\�n��xfy���\0��m��(���jH�D\"�3n���:=�2�s�Ts��e���Gk���,����2\0@\r\Z�Q\r�fY�v��^���U�jzy��ϭ^����e\0@\r\Z�Q\r\'gY�v��^\\>�\r��o����Uß���fyʲ�\0����(熷fY�vRs��e���7��ft�l�m�}V�|�gZ�#d\0@\r\Z�Ѫ����N���<������j�I\0�y4h�F9=�9���(�����z��\r�ܢ�\\�������\0�A�5f��t��U���;���v�����ߪ^�f?f���i�:\0�>\Z4Z��N̲*;�vU�Ϛ�F��]��:旵�=�Y���\0�A�5ʡ�YVe\'5��������U������v����[f����:\0�>\Z4Z�\Z�Ϧ��P�����z������F7j���,�Wۛ�\0�A�5ʡ�e�I\0�X4h�F9$��!	\0��� $�\0�ch�h\ru���>BY-B\08\r\Z�QI�SV��\0�E�Fk�CR��Z�$\0p,\Z4Z��^��!	\0������W�~��T�$\0p,\Z4Z#�8����a�R�\0��h�h�h4�������|��{6\n�:\0�>BZ���/��Wz�pW�1�h\"��=t\0\0}�$�F>��n����(��-�d2��\0�����Y;�gZ���_ҿ�ǣ�\r\0�!	-�(J$r��П�8@5�Ba[(tk��C��\0\Z\"$��r�\\8|[.�b�jTjBR�d6����\04CHB�\r\r\r�9���{B��+�y,\nf��=P\0\0�$���(�d\"�=��Y��E�a�X�g:��x�;��˲�\0`������f�o�����1_��$��\00���㳈\0\06��}>��\0�:&x�aH�V�_h�>�\0��.�df�\0\0�����f��/\Z�/��\r\0����3�,�ô��\0\0�$�<��ҕ$��T�&!	\0�]�g��6݄$�^nk��\0���3�\Z���do�#\0�6�<���{�j�$$\0���V}\0/�@[��������ז��\0m�.���mB/6���C\08]�g�=I��e5��y�\r\0<���#�\0\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`��)�N�������au!��.\\�0���>4\0�;��M�7o��Y�lY&��}h\0\0w $��EY�`AuBZ�xq (��\r\0��$x֚5k�͛���իW\'�I�\0p\rB�lѢE���r��`0�(��#\0�!	^�}�����!)\Z��n$\0�%�$x����+!I��\0\0\\���+\njH�7�\0V��}|�$\0�&x��(�Lf�ڵ�X,�h4�ޒJ�\n���\0�\0!	��f#5��d�p8�~�z~�\r\0�!	��f����Q�`0ȯ�\0\Z!$��EI$�׊~��lں�%�z�����5c��\r\0�GH��\n��H>��cǏO�&չ�~���?y�]R\Z�}*\0\0g!$������o���F�ǣ����Ck������!�\'\0pB�JQ��kH��[g2U�ƍ���#�z��\0���V�x\\KH�l$�J��7���Q�O$�}Z\0\0� $��2��,�!U�sϿ���_��\0��W\n�����f��*��?)��I\0\0AH���i���\'O�nIH�<:���[oo��S\0�GH��D\"��[��*��\r��vtt�>E\0�|�$�L�X��?Ԫ�HZ�r�{(��fe�(\0@2B\\&�Ji���ڄ��}��_�y2��}�\0\0�Ip����V�R[}m��Re�]]]�O\0 !	.�F+9��_hyH:v������O\0 !	.�����}�-Ijiox�}�\0\0ɘ	�2�/��3m�Jۿ�\0H�L\0�	�B�����s��?�&�D\0�1�e�Iں�\'�s�/�QI\0�\nB\\&�HTr��x��!�Ç+;�òO\0 !	.���W�1�V}��!��u�*;���O\0 !	.���W�.���6$-]����T*%�D\0���>��{<d``S��!I�b�(�,\0���>�d�e:;;[x1�w�Y�m,�}�\0\0�Ip�b��}�Q��8Ɏ����H###�O\0 !	����_	4~���p��q-u����>9\0�#��V]]]�X���|���ѱ��NmW�BA��\0������Z�����N�:�%$�ߟ�fe�\0�)Ip15�ho$R#�Տ�ܱs��*����_�	\0��w�d2�����=��f. ݽr��\n		\0P�����r�_�բ�C=\\�p�l��\'����^Y�X��\0�GH��ŵk���~��%K�4�V<��\0\0]�$x�\Zw�?k(�\r\r�>d\0�s��5����i5-���`c�����z\00DH\0\0�AH\0\0�AH\0\0�AH\0\0�AH\0\0���7pה�>�\0\0\0\0IEND�B`�',0),('2503',1,'leaveBill.bpmn','2501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"leaveBill\" name=\"leaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"提交申请\" activiti:assignee=\"${proposer}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"部门经理审批\" activiti:assignee=\"${departmentManager}\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"总经理审批\" activiti:assignee=\"${generalManager}\"></userTask>\n    <sequenceFlow id=\"flow3\" name=\"批准\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'批准\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"批准\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'批准\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"驳回\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'驳回\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"驳回\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'驳回\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"leaveBill\" id=\"BPMNPlane_leaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"380.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"247.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"247.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"247.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"280.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"245.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"247.0\" y=\"335.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"380.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"335.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"300.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"216.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"153.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"300.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"350.0\" y=\"211.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"195.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"214.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"128.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"81.0\" y=\"177.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('5002',1,'leaveBill.png','5001','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0�\0\0\0�5�\0\0,�IDATx���lw��qkk�W1-�A\r���4���E�\"\Z#�Ĵ��Q,Ml�&F������DF����V,P�Mi-�am�)m�#M�u��c����k.M�k�$�����>�~��sw~>�Vuq�.w���ϫg��	\0\0\0���>\0\0\0\0\'\"$\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $��E�d2k׮��b��E�Q��t:],e \0�I�5�a�����H�D��n{�R�=��C=��;::���R���\08\Z!	122�D�l�����d�ڱsתU�	���lV��\0��/���S��m/ƣ�ڻox�ҥ===���>\0����nj�����d�R<���=�D$)\n�O\0�,�$���������턤����\'���>!\0����b�x|�	I{�M�I��\0���V}}}�y���6�b1٧\0p\nB\\idd$�0!U���_�~��\08!	��&����[�N�:}�-A^t\0B�(���b��\'�J=������e�\"\0@>B�\'�X�H$K����S\0�GH���Ŏ��9JH�Z�d��А�\0HFH�ˤR�D\"1�!��u�ɤ�\0HFH������_�~NC��m/E\"�\'\n\0�����F�f���l������}�\0\0�Ip�9����<:���e�(\0@2B\\&�<uzNC�Z>O\r\0hw�p�P(���Ä$\0�\\c&����$�$\0����I$Oo�0�!i��]K�,�}�\0\0�Ip��������$5��Z��\'\n\0��������`pNCRww����\0HFH����{�/��utt(�\"�,\0���>s��ۯ{Lݹ�S\0�GH��(���Ӓ.���rK�P(�>E\0�|�$�R:��{�J.#\0�!	n��;������Ý���G�d�\0�Ip�b��dɒV�����jB:v����\08!	.���Ԝ�&��\'�o�y�sϿ ��\0\0BH�����tvv�عk6���I��\0�AH���ťK�>�����_��.������*���>	\0�������!��Bj�Q������\r��>�}5Z�>|\0����B�������wީf����k��z�ƍ�w�ʕ�:�V}\'���>d\0�s��5��d2�D\"����� �5!���b�(�0\0NGH����I�!\0\0܇����x�\0,c���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�M�tZ�F~�?��@@�w��\\N��\0܁�oڼy��βe�2���C\0�!	ޤ(ʂ���ŋ�@�X�}h\0\0w $��֬Y3o�<-$�^�:�L�>(\0�k��e�-�$��+W�AEQd\0�5I��۷ϟ?_\rI�h�w#\0,!$��/_^	I�\0�2�$x\\�PPC��\0������$\060y`�(��N���x$	���Z�&�sW�X,�J��\0\0pB����\ZԄ�q�ƭ۶;~|�Tj�R�]�V�Z��\'jT�=8\0\0SIh�b��H$���O�:9Q������sjTR�B� {�\0\0Ih%5!���7<5Q\Z�\Z�s�?�dɒ|>/{�\0\0���J�D����Q�k�-K�~Y�p\0�!$�e��W�&�L���?\\��ك\0h����P%�:�/M^����ػ����\0\'\0p,BZ#�J%�����E�n�䫷j�Z�����]\0p,BZ#�\rl��ҊxsJ-�W�Łq�wt��K/���{B�[����rM�vǡ�zW�Ծ�p8,{�\0\0�Ih�P(t�����X�|>ߨc��Ҥ�8!��<���]+b�K��8yM�qlR<���Ť�6�ѱ~�_��\0���\Z�/�.M�VJ�=W����̷&�g�}����s_�飿���TK�(Ė=�!i�=�ǟL\0��A�5�A�V�c���U11��\n�b�7�?�ȯ?yf�sK�b��v�;P�m[!	\0���(��h5��Ĺ+�QQbb|<t�m>��>���o���p����m۪I\0�X4h�F9�\\Ҫ�rۅ���eq���{��E�]?�C7�ts����=��k�m�\"$�cѠ�\Z�S�J��괸��\\I:wMlۓ�b��7��7u|��?=sM��qqe|f�C{j�m�\"$�cѠ�\Z�d?9��V��_�I�J��	q�riס|��X�կ��(�\".�5&�ؽ�f۶*B\08\r\Z�Qt\"˖|���C���������Gv<��ݯ�|����#�\Z~}��ׇ9t��\'~���wK+�$\0@\r\Z4Z��.V��o�㶿u�]5�U�\0��h�h�rH�@Y-B\08\r\Z�1���SV��\0�E�Fk�C�9�j�\0��h�h�rH:KY-B\08\r\Z�QI�PV��\0�E���t:���~��\n��j����\0��\rB�:r�H��o��Ɓ�����Z����=��S��?�O��\0@\"B�R�뮫��������?_=��C��sQڞk>`�ɚ&w��ƹ;����݇�ׯ�����S�@�P�0�\0�2B,P���r�\r7�{�jx�45uf.J�s��h���F�m}��ܝ�z��r��~���?���+�p\0hk������UR���*�D\"b�:Y6��jǘ�:=��Y�Ǚ<*�=wgT�S�!�}����`��===�ׯ\Z\Z��d\0}�$�FFF���c��n���Tj*�Ijfʚ�7��t�M�	���S��r�+I�Z[�Sl�����p��ϝ�s�H���|�ӟ���o���p8,{�[��?jBRsRWWW H&��y�@!ɲb������u����d2N�2sD=���\n��������i��$qr.J�s]p�_�f��wkv�h��+_�{�o��O}�S��Y�`A�L�+\n}}}��+Ԩ�&��I֨�Hm�jHR��c�_{��7�~4\Z�Lf5�@9R�5ef���������MWk��UߍjDP]���g���;22�d�Ԩ���ՆO.\0�DH�@��b�X;wp5#�R)�kfs\Z#\Zŗ�pSwt3��r}���S�I�=����=�#�<j.Tsד\08!ɬd2���+�(���$�lmU����d�F+T�h����Z|j�?T��9���`4\Z�}\0@H2\'��F\"�G�h3Ib:?������t��������Ug\'{�(���4\0�B�6�(J(����g��$N�Ei{�,4�AMV���pY/H�ɩU~��s\"��>�x�\r�\\4hc�T*�H�>\n�+\'�7梴=Wt��QF��F;l������*;�=t�D�٬�\0��h����p����\r�$q���~p9����<�]�ɶ��7Z�~�&�o�	�:����K&���@[�A��r�PH�Q�@9I��!��&��8M\0.B�6�N����p�rH:JY-BR#�|��^@.\Z�������~�G��$BR�q�\0��d�w����g��G(�Eh�;�\\� ]]]��r3�!�u�j���� =�@0���(��e��Mp�\0��d������X�y��\Ze��Mp�\0��d�6m���zu��������w\0��Ah�&��\'^��>LY*`Mp�\0��d�6mR4\Z����i�\ne�^�=�G�6���\\� �i��D�^��]��ԣ�Y�&x���d�6mR�϶�zU�;-Q&+[��dd�s�� =�\0mڼ�3z��A�L�%��x<*{��g\0��Ah��)���14�g!PͫP�\n�Z,�=h�Ƴ�\\� �iKr�\\8|[.�b�jTjBR�d6����r:�}\0��M[544�椾��	����L�P(���A�@�\0�>\0rуЦmP%�LD\"��R?+�1L��L��w�buY���>\0rуЦm�f���7�����ut���Ps��aq�>\0RуЦ=��\"r)�}\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�\Zq}S�M{\0��R\0�ڮ��T�(��R�����@���A5��ї\\[�\0�̥8\0r�cҽn�{� $�V:�VG�����au!��.\\�0���>4��s\r�\\�؃j\"Q�lT�*��6o�\\�:�e�2���C�Y<�\0�Վ=���Q�u�/��EY�`AuBZ�xq (��\rf�\\ W;����C�W�\Z-��֬Y3o�<m�W�^�L&e,�@���A&C/��עE�*c�r��`0�(��#�<�\0�զ=H�mI�q�{�o�>�|uȢ�(�Fr�k\0�j����U˗/��$��x����{P�+IM�9\\�R(�!�7�݈�\Z\0�ڴU�k����ׁ[0d.����d�6m��(�t:�G\"�`0��✇����X,�J���x���d�6m���\ZԄ�q�ƭ۶;~|�Tj�R�]�V�Z��\'jT�=8����\\� �i���b\"����>y��Di���s�ϩQI�s\n���r�}\0��M[�&�p8��&J�T�z���,Y���e���� =�\0mڒD\"QNHר�uۖ�K�,{���g\0��Ah��\rvw�(M*���я�n�#���x���d�6m��(�`���|i�*e�F����\\�85���\\� �i�R�T\"�(M^�jY��&I�z���u�~���m�g\0��Ah�&�b��M�oBZ���oN��%��80.��N�oz��ӗvO�+b�\"v\\[����8t_�����7<�e�s�� =�\0mڤP(t�����X���mT��iqiR\\�W���O�]����%qr\\��&�86)�y�@�b�X�����/{蜋g\0��Ah�&utt��p�49Z)�~�2%Ƨf�59=��/������O����\'ť��XE!��9XI��Y<���� =�\0mڤrй����ؤ�pULL��B�X���O>��O����Ҵ�(��]��l�V��	�\0rуЦM*��h5��Ĺ+�QQbb|<t�m>��>���o���p����m۪x�5��@.z�ڴI�sI���m��3���kb��7-Zt���p���{>����ٶ��X#�B!�>\n\0m�m�9̤r�)j�~yuZ\\Tf�$��&���}����?��:>�䟞�&�踸2>�Ꭱ=5۶U�\0k$���A�G��Ѡ\r0����Q���jU��Ԝt�$ޝg.�v�w~�e_���q�\"�*�¸PcҎ�{j�m������`4\Z�}\0�\Z\r�\0s�I5A\'�l��׎�=�\Z�����d�������ˇNl>���w�}���CG�z���^y���BHr��e��@[�A`3��.V��o�㶿u�]5�U�\0k$\Z��>\n\0m�m�9̤rH�@Y-`�\n�B0TE��\0hk4h�a&̈́������������W�Q\0hw4h�a&�C�9�j�\0��(J0,\n�@��A`3���RV�X�D\"�J�d\0��0��TI�PV�E��C��������陣��%�iв�h���\n��r���7�oui�	K?QQ�D\"AB�m����9�iII��#l���o�(�����`�W�\08���tΟ���޶Q�7Ծ�{���Njv�d?�;�>�?��e]C�׍toi�y�l���/��񨷷�wjp\Z�6h�p��(�55u�R�$��[�Wk�y�r�>�o�Y�zA7<��т�r�LQ5��Ǧ�[���d���\'bW/h\"e�B55U��L&ս�E�g\0:�ؠřs�����Y��3{k�r͍�+�,4�����<f�=7�cs�\\�������E�����i��~��r�N,�~�nZ�	U�������\0-@0@H2�NY��M*��-��6�]�~�����5;����-j�;A��5T}����Y\0\0����ћT�\'�Ve+mۚ/k�m�~p��g�~�/4������;�ʆ��ΘɐT���\0�G3@�7���2_���[ջj�[��\Z�X��&f�kvn��k�B��5S����F��{����M�MPhAf�r�LS�̚䶚��(ly,$5�&Ts��$\0F3@�7��޴TuA�Mm\'�����Dw��������}�9B�w��3�kz%�	9�\0-B3@�7i&+L�-U�&�e����~�z���|�z�Gh�N�=t�hY�&��L����\0��bh�&���	KU�Ie�*���|��[լ�h���lx����C\0�G�6�fR9\"�a��ּQ��&��61���:&���^�6��V��\0��m�9̤rD8n��7�,��Dw�U�J��f/�\Z��F?W����̝ {�\0\0�h���L*G�c���\0�E�6�fR9$��0\0p,\Z��0�I�$\0�\Z��0��;jz�e�x��cѠ\r0��TI�SV�\08\r�\0s�I吔��0\0p,\Z��0��!�5�j�\0\0ǢA`3���_��z�U�R�\0\0ǢA`3)�8����a�R�\0\0ǢA`3)\Z��mp��x�2_��\r�B��\0��`��dR___2y�����c��D\"!{�\0\0�H\0I&���P�֫��iq�2Y���L&#{�\0\0�H\0I歝�3-Rf�/�_��Qك\0h�`��d��(��CC�\0ռ\n�m�Э��ك\0h�`��dI.��o��2B�P�JMHj��f��=\\\0�fH\0IV\r\r\r�9���{B��+�y,\nf��=P\0\0$\0�$EI&�����\n�-BS��?��_��ݱXD]�=D\0\0c$\0�$۲�l\"�@�>�|7��+Ԝ${X\0\0f�\0�I��g\0l  $y\0�\0����\0���B�B��yl\0����\r0z��$3{\0�-�\0���&$�_4�}_v�\Z\0 ��\0�^҂�aZ�]\0\0x]�\0�X�������$$@���`\"�\0{/��&$��r[��\0��wL�`&$5z����xl\0����\r0z���$լIH\0��\r0z@�>���\0����\r0z�Ր���W�\0�M��\r0z���nz�Iw�*\0�9���=��{�D��j���\0x��\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�K��iu��~8V����s���C\0�	�\0!ɥ6o�쫳lٲL&#��\0\0�@0@Hr)EQ,XP��/^�Ţ�C\0�	�\0!ɽ֬Y3o�<-$�^�:�L�>(\0�k�\0�\\mѢE���r��`0�(��#\0�	�\0!�նo�>�|u��(�F\0XB0@Hr��˗WB��\0�	�\0!��\n��:���?\0�*�B�0�\0\0�<0�ڦ(J:����H$�jQ�P�]�b�X*��\0�EH\0|�$[�p�&��7nݶ�����R{�z��=000�j�*�>Q����\0�B0@H��X,&���NN�&��:w��\Z��;�P(�(\0��B�%jB\n��Ooxj�4N5��nɒ%�|^�p\0�! $Y�H$�	�\Zռ�n۲t�e\0��B�y�����+J�\ne�~���[���A\04D0@H2IQ�`0x�t�4y�2S�c�vv.��\0��H\0I&�R�D\"Q���ղ��M��|�VmU������\0�E0@H2)�\rl��ҊxsJ-�W�Łq�wt��K/���{B�[����rM�vǡ�zW�Ծ�p8,{�\0\0�H\0I&�B�Ç��&�*��o�B�M�K��ℸ\"�~��w���.�����5�WıI������ڰF�.��~�C\0�G0@H2������ӥ��J��ە)1>5����}����~��\'��<).��Œ(\n�e��rH\Zm��\0�E�6�fR9�\\�J�rlR\\�*&��[�X,���\'���\'��|�biZL��Ӯ}j�m��\0�E�6���E�}.P:��j&$M�sW�;��$���x��|��}>�]�^U�����5۶U�\0��h��� ��lF9�\\Ҫ�rۅ���eq���{��E�]?�C7�ts����=��k�m�\"$�cѠ\r��ᑑ�G��S�J��괸��\\I:wMlۓ�b��7��7u|��?=sM��qqe|f�C{j�m�\"$�cѠ\rD\"�l6+�(\\@��\'\'�ժ2��9�RI�;!�\\.�:����˾�����E�Uąq�Ƥ���l�VEH\0ǢAH$�TJ�Q�@MЉ,[z�{�Fr;�s;��u��?v���ۇ��k����_:p��ѷ�����W�-=��\0\05h�*$-�(\\��.V��o�㶿u�]5�U�\0��h�r�\\(�}.PI(�EH\0ǢA��f̄����\"$�cѠ��������>\n�+��s��\"$�cѠ�)����q�rH:KY-B\08\rڔl6�Dd���C�;��\"$�cѠ�Z�v-/�5QI�j�\0��h�$��h4Z,e��I\0�14hk���ڵky�R�rHz{�U�3�4�[=3?�����V!	\0�mY�XTC�\Z��Ѩ��-�P\'���3-��]��V��&���X�f���G\\�n��xfy���\0��m��(���jH�D\"�3n���:=�2�s�Ts��e���Gk���,����2\0@\r\Z�Q\r�fY�v��^���U�jzy��ϭ^����e\0@\r\Z�Q\r\'gY�v��^\\>�\r��o����Uß���fyʲ�\0����(熷fY�vRs��e���7��ft�l�m�}V�|�gZ�#d\0@\r\Z�Ѫ����N���<������j�I\0�y4h�F9=�9���(�����z��\r�ܢ�\\�������\0�A�5f��t��U���;���v�����ߪ^�f?f���i�:\0�>\Z4Z��N̲*;�vU�Ϛ�F��]��:旵�=�Y���\0�A�5ʡ�YVe\'5��������U������v����[f����:\0�>\Z4Z�\Z�Ϧ��P�����z������F7j���,�Wۛ�\0�A�5ʡ�e�I\0�X4h�F9$��!	\0��� $�\0�ch�h\ru���>BY-B\08\r\Z�QI�SV��\0�E�Fk�CR��Z�$\0p,\Z4Z��^��!	\0������W�~��T�$\0p,\Z4Z#�8����a�R�\0��h�h�h4�������|��{6\n�:\0�>BZ���/��Wz�pW�1�h\"��=t\0\0}�$�F>��n����(��-�d2��\0�����Y;�gZ���_ҿ�ǣ�\r\0�!	-�(J$r��П�8@5�Ba[(tk��C��\0\Z\"$��r�\\8|[.�b�jTjBR�d6����\04CHB�\r\r\r�9���{B��+�y,\nf��=P\0\0�$���(�d\"�=��Y��E�a�X�g:��x�;��˲�\0`������f�o�����1_��$��\00���㳈\0\06��}>��\0�:&x�aH�V�_h�>�\0��.�df�\0\0�����f��/\Z�/��\r\0����3�,�ô��\0\0�$�<��ҕ$��T�&!	\0�]�g��6݄$�^nk��\0���3�\Z���do�#\0�6�<���{�j�$$\0���V}\0/�@[��������ז��\0m�.���mB/6���C\08]�g�=I��e5��y�\r\0<���#�\0\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`��)�N�������au!��.\\�0���>4\0�;��M�7o��Y�lY&��}h\0\0w $��EY�`AuBZ�xq (��\r\0��$x֚5k�͛���իW\'�I�\0p\rB�lѢE���r��`0�(��#\0�!	^�}�����!)\Z��n$\0�%�$x����+!I��\0\0\\���+\njH�7�\0V��}|�$\0�&x��(�Lf�ڵ�X,�h4�ޒJ�\n���\0�\0!	��f#5��d�p8�~�z~�\r\0�!	��f����Q�`0ȯ�\0\Z!$��EI$�׊~��lں�%�z�����5c��\r\0�GH��\n��H>��cǏO�&չ�~���?y�]R\Z�}*\0\0g!$������o���F�ǣ����Ck������!�\'\0pB�JQ��kH��[g2U�ƍ���#�z��\0���V�x\\KH�l$�J��7���Q�O$�}Z\0\0� $��2��,�!U�sϿ���_��\0��W\n�����f��*��?)��I\0\0AH���i���\'O�nIH�<:���[oo��S\0�GH��D\"��[��*��\r��vtt�>E\0�|�$�L�X��?Ԫ�HZ�r�{(��fe�(\0@2B\\&�Ji���ڄ��}��_�y2��}�\0\0�Ip����V�R[}m��Re�]]]�O\0 !	.�F+9��_hyH:v������O\0 !	.�����}�-Ijiox�}�\0\0ɘ	�2�/��3m�Jۿ�\0H�L\0�	�B�����s��?�&�D\0�1�e�Iں�\'�s�/�QI\0�\nB\\&�HTr��x��!�Ç+;�òO\0 !	.���W�1�V}��!��u�*;���O\0 !	.���W�.���6$-]����T*%�D\0���>��{<d``S��!I�b�(�,\0���>�d�e:;;[x1�w�Y�m,�}�\0\0�Ip�b��}�Q��8Ɏ����H###�O\0 !	����_	4~���p��q-u����>9\0�#��V]]]�X���|���ѱ��NmW�BA��\0������Z�����N�:�%$�ߟ�fe�\0�)Ip15�ho$R#�Տ�ܱs��*����_�	\0��w�d2�����=��f. ݽr��\n		\0P�����r�_�բ�C=\\�p�l��\'����^Y�X��\0�GH��ŵk���~��%K�4�V<��\0\0]�$x�\Zw�?k(�\r\r�>d\0�s��5����i5-���`c�����z\00DH\0\0�AH\0\0�AH\0\0�AH\0\0�AH\0\0���7pה�>�\0\0\0\0IEND�B`�',0),('5003',1,'leaveBill.bpmn','5001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"leaveBill\" name=\"leaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"提交申请\" activiti:assignee=\"${proposer}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"部门经理审批\" activiti:assignee=\"${departmentManager}\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"总经理审批\" activiti:assignee=\"${generalManager}\"></userTask>\n    <sequenceFlow id=\"flow3\" name=\"批准\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'批准\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"批准\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'批准\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"驳回\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'驳回\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"驳回\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'驳回\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"leaveBill\" id=\"BPMNPlane_leaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"380.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"247.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"247.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"247.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"280.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"245.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"247.0\" y=\"335.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"380.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"335.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"300.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"216.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"153.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"300.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"350.0\" y=\"211.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"195.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"214.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"128.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"81.0\" y=\"177.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('7502',1,'leaveBill.png','7501','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0�\0\0\0�5�\0\0,�IDATx���lw��qkk�W1-�A\r���4���E�\"\Z#�Ĵ��Q,Ml�&F������DF����V,P�Mi-�am�)m�#M�u��c����k.M�k�$�����>�~��sw~>�Vuq�.w���ϫg��	\0\0\0���>\0\0\0\0\'\"$\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $\0\0� $��E�d2k׮��b��E�Q��t:],e \0�I�5�a�����H�D��n{�R�=��C=��;::���R���\08\Z!	122�D�l�����d�ڱsתU�	���lV��\0��/���S��m/ƣ�ڻox�ҥ===���>\0����nj�����d�R<���=�D$)\n�O\0�,�$���������턤����\'���>!\0����b�x|�	I{�M�I��\0���V}}}�y���6�b1٧\0p\nB\\idd$�0!U���_�~��\08!	��&����[�N�:}�-A^t\0B�(���b��\'�J=������e�\"\0@>B�\'�X�H$K����S\0�GH���Ŏ��9JH�Z�d��А�\0HFH�ˤR�D\"1�!��u�ɤ�\0HFH������_�~NC��m/E\"�\'\n\0�����F�f���l������}�\0\0�Ip�9����<:���e�(\0@2B\\&�<uzNC�Z>O\r\0hw�p�P(���Ä$\0�\\c&����$�$\0����I$Oo�0�!i��]K�,�}�\0\0�Ip��������$5��Z��\'\n\0��������`pNCRww����\0HFH����{�/��utt(�\"�,\0���>s��ۯ{Lݹ�S\0�GH��(���Ӓ.���rK�P(�>E\0�|�$�R:��{�J.#\0�!	n��;������Ý���G�d�\0�Ip�b��dɒV�����jB:v����\08!	.���Ԝ�&��\'�o�y�sϿ ��\0\0BH�����tvv�عk6���I��\0�AH���ťK�>�����_��.������*���>	\0�������!��Bj�Q������\r��>�}5Z�>|\0����B�������wީf����k��z�ƍ�w�ʕ�:�V}\'���>d\0�s��5��d2�D\"����� �5!���b�(�0\0NGH����I�!\0\0܇����x�\0,c���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�M�tZ�F~�?��@@�w��\\N��\0܁�oڼy��βe�2���C\0�!	ޤ(ʂ���ŋ�@�X�}h\0\0w $��֬Y3o�<-$�^�:�L�>(\0�k��e�-�$��+W�AEQd\0�5I��۷ϟ?_\rI�h�w#\0,!$��/_^	I�\0�2�$x\\�PPC��\0������$\060y`�(��N���x$	���Z�&�sW�X,�J��\0\0pB����\ZԄ�q�ƭ۶;~|�Tj�R�]�V�Z��\'jT�=8\0\0SIh�b��H$���O�:9Q������sjTR�B� {�\0\0Ih%5!���7<5Q\Z�\Z�s�?�dɒ|>/{�\0\0���J�D����Q�k�-K�~Y�p\0�!$�e��W�&�L���?\\��ك\0h����P%�:�/M^����ػ����\0\'\0p,BZ#�J%�����E�n�䫷j�Z�����]\0p,BZ#�\rl��ҊxsJ-�W�Łq�wt��K/���{B�[����rM�vǡ�zW�Ծ�p8,{�\0\0�Ih�P(t�����X�|>ߨc��Ҥ�8!��<���]+b�K��8yM�qlR<���Ť�6�ѱ~�_��\0���\Z�/�.M�VJ�=W����̷&�g�}����s_�飿���TK�(Ė=�!i�=�ǟL\0��A�5�A�V�c���U11��\n�b�7�?�ȯ?yf�sK�b��v�;P�m[!	\0���(��h5��Ĺ+�QQbb|<t�m>��>���o���p����m۪I\0�X4h�F9�\\Ҫ�rۅ���eq���{��E�]?�C7�ts����=��k�m�\"$�cѠ�\Z�S�J��괸��\\I:wMlۓ�b��7��7u|��?=sM��qqe|f�C{j�m�\"$�cѠ�\Z�d?9��V��_�I�J��	q�riס|��X�կ��(�\".�5&�ؽ�f۶*B\08\r\Z�Qt\"˖|���C���������Gv<��ݯ�|����#�\Z~}��ׇ9t��\'~���wK+�$\0@\r\Z4Z��.V��o�㶿u�]5�U�\0��h�h�rH�@Y-B\08\r\Z�1���SV��\0�E�Fk�C�9�j�\0��h�h�rH:KY-B\08\r\Z�QI�PV��\0�E���t:���~��\n��j����\0��\rB�:r�H��o��Ɓ�����Z����=��S��?�O��\0@\"B�R�뮫��������?_=��C��sQڞk>`�ɚ&w��ƹ;����݇�ׯ�����S�@�P�0�\0�2B,P���r�\r7�{�jx�45uf.J�s��h���F�m}��ܝ�z��r��~���?���+�p\0hk������UR���*�D\"b�:Y6��jǘ�:=��Y�Ǚ<*�=wgT�S�!�}����`��===�ׯ\Z\Z��d\0}�$�FFF���c��n���Tj*�Ijfʚ�7��t�M�	���S��r�+I�Z[�Sl�����p��ϝ�s�H���|�ӟ���o���p8,{�[��?jBRsRWWW H&��y�@!ɲb������u����d2N�2sD=���\n��������i��$qr.J�s]p�_�f��wkv�h��+_�{�o��O}�S��Y�`A�L�+\n}}}��+Ԩ�&��I֨�Hm�jHR��c�_{��7�~4\Z�Lf5�@9R�5ef���������MWk��UߍjDP]���g���;22�d�Ԩ���ՆO.\0�DH�@��b�X;wp5#�R)�kfs\Z#\Zŗ�pSwt3��r}���S�I�=����=�#�<j.Tsד\08!ɬd2���+�(���$�lmU����d�F+T�h����Z|j�?T��9���`4\Z�}\0@H2\'��F\"�G�h3Ib:?������t��������Ug\'{�(���4\0�B�6�(J(����g��$N�Ei{�,4�AMV���pY/H�ɩU~��s\"��>�x�\r�\\4hc�T*�H�>\n�+\'�7梴=Wt��QF��F;l������*;�=t�D�٬�\0��h����p����\r�$q���~p9����<�]�ɶ��7Z�~�&�o�	�:����K&���@[�A��r�PH�Q�@9I��!��&��8M\0.B�6�N����p�rH:JY-BR#�|��^@.\Z�������~�G��$BR�q�\0��d�w����g��G(�Eh�;�\\� ]]]��r3�!�u�j���� =�@0���(��e��Mp�\0��d������X�y��\Ze��Mp�\0��d�6m���zu��������w\0��Ah�&��\'^��>LY*`Mp�\0��d�6mR4\Z����i�\ne�^�=�G�6���\\� �i��D�^��]��ԣ�Y�&x���d�6mR�϶�zU�;-Q&+[��dd�s�� =�\0mڼ�3z��A�L�%��x<*{��g\0��Ah��)���14�g!PͫP�\n�Z,�=h�Ƴ�\\� �iKr�\\8|[.�b�jTjBR�d6����r:�}\0��M[544�椾��	����L�P(���A�@�\0�>\0rуЦmP%�LD\"��R?+�1L��L��w�buY���>\0rуЦm�f���7�����ut���Ps��aq�>\0RуЦ=��\"r)�}\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�ڴ0�.����d�6��K1p\0��M{\0��R\0��Ah�� �@.z�\Zq}S�M{\0��R\0�ڮ��T�(��R�����@���A5��ї\\[�\0�̥8\0r�cҽn�{� $�V:�VG�����au!��.\\�0���>4��s\r�\\�؃j\"Q�lT�*��6o�\\�:�e�2���C�Y<�\0�Վ=���Q�u�/��EY�`AuBZ�xq (��\rf�\\ W;����C�W�\Z-��֬Y3o�<m�W�^�L&e,�@���A&C/��עE�*c�r��`0�(��#�<�\0�զ=H�mI�q�{�o�>�|uȢ�(�Fr�k\0�j����U˗/��$��x����{P�+IM�9\\�R(�!�7�݈�\Z\0�ڴU�k����ׁ[0d.����d�6m��(�t:�G\"�`0��✇����X,�J���x���d�6m���\ZԄ�q�ƭ۶;~|�Tj�R�]�V�Z��\'jT�=8����\\� �i���b\"����>y��Di���s�ϩQI�s\n���r�}\0��M[�&�p8��&J�T�z���,Y���e���� =�\0mڒD\"QNHר�uۖ�K�,{���g\0��Ah��\rvw�(M*���я�n�#���x���d�6m��(�`���|i�*e�F����\\�85���\\� �i�R�T\"�(M^�jY��&I�z���u�~���m�g\0��Ah�&�b��M�oBZ���oN��%��80.��N�oz��ӗvO�+b�\"v\\[����8t_�����7<�e�s�� =�\0mڤP(t�����X���mT��iqiR\\�W���O�]����%qr\\��&�86)�y�@�b�X�����/{蜋g\0��Ah�&utt��p�49Z)�~�2%Ƨf�59=��/������O����\'ť��XE!��9XI��Y<���� =�\0mڤrй����ؤ�pULL��B�X���O>��O����Ҵ�(��]��l�V��	�\0rуЦM*��h5��Ĺ+�QQbb|<t�m>��>���o���p����m۪x�5��@.z�ڴI�sI���m��3���kb��7-Zt���p���{>����ٶ��X#�B!�>\n\0m�m�9̤r�)j�~yuZ\\Tf�$��&���}����?��:>�䟞�&�踸2>�Ꭱ=5۶U�\0k$���A�G��Ѡ\r0����Q���jU��Ԝt�$ޝg.�v�w~�e_���q�\"�*�¸PcҎ�{j�m������`4\Z�}\0�\Z\r�\0s�I5A\'�l��׎�=�\Z�����d�������ˇNl>���w�}���CG�z���^y���BHr��e��@[�A`3��.V��o�㶿u�]5�U�\0k$\Z��>\n\0m�m�9̤rH�@Y-`�\n�B0TE��\0hk4h�a&̈́������������W�Q\0hw4h�a&�C�9�j�\0��(J0,\n�@��A`3���RV�X�D\"�J�d\0��0��TI�PV�E��C��������陣��%�iв�h���\n��r���7�oui�	K?QQ�D\"AB�m����9�iII��#l���o�(�����`�W�\08���tΟ���޶Q�7Ծ�{���Njv�d?�;�>�?��e]C�׍toi�y�l���/��񨷷�wjp\Z�6h�p��(�55u�R�$��[�Wk�y�r�>�o�Y�zA7<��т�r�LQ5��Ǧ�[���d���\'bW/h\"e�B55U��L&ս�E�g\0:�ؠřs�����Y��3{k�r͍�+�,4�����<f�=7�cs�\\�������E�����i��~��r�N,�~�nZ�	U�������\0-@0@H2�NY��M*��-��6�]�~�����5;����-j�;A��5T}����Y\0\0����ћT�\'�Ve+mۚ/k�m�~p��g�~�/4������;�ʆ��ΘɐT���\0�G3@�7���2_���[ջj�[��\Z�X��&f�kvn��k�B��5S����F��{����M�MPhAf�r�LS�̚䶚��(ly,$5�&Ts��$\0F3@�7��޴TuA�Mm\'�����Dw��������}�9B�w��3�kz%�	9�\0-B3@�7i&+L�-U�&�e����~�z���|�z�Gh�N�=t�hY�&��L����\0��bh�&���	KU�Ie�*���|��[լ�h���lx����C\0�G�6�fR9\"�a��ּQ��&��61���:&���^�6��V��\0��m�9̤rD8n��7�,��Dw�U�J��f/�\Z��F?W����̝ {�\0\0�h���L*G�c���\0�E�6�fR9$��0\0p,\Z��0�I�$\0�\Z��0��;jz�e�x��cѠ\r0��TI�SV�\08\r�\0s�I吔��0\0p,\Z��0��!�5�j�\0\0ǢA`3���_��z�U�R�\0\0ǢA`3)�8����a�R�\0\0ǢA`3)\Z��mp��x�2_��\r�B��\0��`��dR___2y�����c��D\"!{�\0\0�H\0I&���P�֫��iq�2Y���L&#{�\0\0�H\0I歝�3-Rf�/�_��Qك\0h�`��d��(��CC�\0ռ\n�m�Э��ك\0h�`��dI.��o��2B�P�JMHj��f��=\\\0�fH\0IV\r\r\r�9���{B��+�y,\nf��=P\0\0$\0�$EI&�����\n�-BS��?��_��ݱXD]�=D\0\0c$\0�$۲�l\"�@�>�|7��+Ԝ${X\0\0f�\0�I��g\0l  $y\0�\0����\0���B�B��yl\0����\r0z��$3{\0�-�\0���&$�_4�}_v�\Z\0 ��\0�^҂�aZ�]\0\0x]�\0�X�������$$@���`\"�\0{/��&$��r[��\0��wL�`&$5z����xl\0����\r0z���$լIH\0��\r0z@�>���\0����\r0z�Ր���W�\0�M��\r0z���nz�Iw�*\0�9���=��{�D��j���\0x��\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�0�\0\0�<0�z\0�\0����\0�K��iu��~8V����s���C\0�	�\0!ɥ6o�쫳lٲL&#��\0\0�@0@Hr)EQ,XP��/^�Ţ�C\0�	�\0!ɽ֬Y3o�<-$�^�:�L�>(\0�k�\0�\\mѢE���r��`0�(��#\0�	�\0!�նo�>�|u��(�F\0XB0@Hr��˗WB��\0�	�\0!��\n��:���?\0�*�B�0�\0\0�<0�ڦ(J:����H$�jQ�P�]�b�X*��\0�EH\0|�$[�p�&��7nݶ�����R{�z��=000�j�*�>Q����\0�B0@H��X,&���NN�&��:w��\Z��;�P(�(\0��B�%jB\n��Ooxj�4N5��nɒ%�|^�p\0�! $Y�H$�	�\Zռ�n۲t�e\0��B�y�����+J�\ne�~���[���A\04D0@H2IQ�`0x�t�4y�2S�c�vv.��\0��H\0I&�R�D\"Q���ղ��M��|�VmU������\0�E0@H2)�\rl��ҊxsJ-�W�Łq�wt��K/���{B�[����rM�vǡ�zW�Ծ�p8,{�\0\0�H\0I&�B�Ç��&�*��o�B�M�K��ℸ\"�~��w���.�����5�WıI������ڰF�.��~�C\0�G0@H2������ӥ��J��ە)1>5����}����~��\'��<).��Œ(\n�e��rH\Zm��\0�E�6�fR9�\\�J�rlR\\�*&��[�X,���\'���\'��|�biZL��Ӯ}j�m��\0�E�6���E�}.P:��j&$M�sW�;��$���x��|��}>�]�^U�����5۶U�\0��h��� ��lF9�\\Ҫ�rۅ���eq���{��E�]?�C7�ts����=��k�m�\"$�cѠ\r��ᑑ�G��S�J��괸��\\I:wMlۓ�b��7��7u|��?=sM��qqe|f�C{j�m�\"$�cѠ\rD\"�l6+�(\\@��\'\'�ժ2��9�RI�;!�\\.�:����˾�����E�Uąq�Ƥ���l�VEH\0ǢAH$�TJ�Q�@MЉ,[z�{�Fr;�s;��u��?v���ۇ��k����_:p��ѷ�����W�-=��\0\05h�*$-�(\\��.V��o�㶿u�]5�U�\0��h�r�\\(�}.PI(�EH\0ǢA��f̄����\"$�cѠ��������>\n�+��s��\"$�cѠ�)����q�rH:KY-B\08\rڔl6�Dd���C�;��\"$�cѠ�Z�v-/�5QI�j�\0��h�$��h4Z,e��I\0�14hk���ڵky�R�rHz{�U�3�4�[=3?�����V!	\0�mY�XTC�\Z��Ѩ��-�P\'���3-��]��V��&���X�f���G\\�n��xfy���\0��m��(���jH�D\"�3n���:=�2�s�Ts��e���Gk���,����2\0@\r\Z�Q\r�fY�v��^���U�jzy��ϭ^����e\0@\r\Z�Q\r\'gY�v��^\\>�\r��o����Uß���fyʲ�\0����(熷fY�vRs��e���7��ft�l�m�}V�|�gZ�#d\0@\r\Z�Ѫ����N���<������j�I\0�y4h�F9=�9���(�����z��\r�ܢ�\\�������\0�A�5f��t��U���;���v�����ߪ^�f?f���i�:\0�>\Z4Z��N̲*;�vU�Ϛ�F��]��:旵�=�Y���\0�A�5ʡ�YVe\'5��������U������v����[f����:\0�>\Z4Z�\Z�Ϧ��P�����z������F7j���,�Wۛ�\0�A�5ʡ�e�I\0�X4h�F9$��!	\0��� $�\0�ch�h\ru���>BY-B\08\r\Z�QI�SV��\0�E�Fk�CR��Z�$\0p,\Z4Z��^��!	\0������W�~��T�$\0p,\Z4Z#�8����a�R�\0��h�h�h4�������|��{6\n�:\0�>BZ���/��Wz�pW�1�h\"��=t\0\0}�$�F>��n����(��-�d2��\0�����Y;�gZ���_ҿ�ǣ�\r\0�!	-�(J$r��П�8@5�Ba[(tk��C��\0\Z\"$��r�\\8|[.�b�jTjBR�d6����\04CHB�\r\r\r�9���{B��+�y,\nf��=P\0\0�$���(�d\"�=��Y��E�a�X�g:��x�;��˲�\0`������f�o�����1_��$��\00���㳈\0\06��}>��\0�:&x�aH�V�_h�>�\0��.�df�\0\0�����f��/\Z�/��\r\0����3�,�ô��\0\0�$�<��ҕ$��T�&!	\0�]�g��6݄$�^nk��\0���3�\Z���do�#\0�6�<���{�j�$$\0���V}\0/�@[��������ז��\0m�.���mB/6���C\08]�g�=I��e5��y�\r\0<���#�\0\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`����\0����GH\0����#$\0l`���\0\060y��I\0\0�<�}�$\0�\rL�>B\0�&x!	\0`��)�N�������au!��.\\�0���>4\0�;��M�7o��Y�lY&��}h\0\0w $��EY�`AuBZ�xq (��\r\0��$x֚5k�͛���իW\'�I�\0p\rB�lѢE���r��`0�(��#\0�!	^�}�����!)\Z��n$\0�%�$x����+!I��\0\0\\���+\njH�7�\0V��}|�$\0�&x��(�Lf�ڵ�X,�h4�ޒJ�\n���\0�\0!	��f#5��d�p8�~�z~�\r\0�!	��f����Q�`0ȯ�\0\Z!$��EI$�׊~��lں�%�z�����5c��\r\0�GH��\n��H>��cǏO�&չ�~���?y�]R\Z�}*\0\0g!$������o���F�ǣ����Ck������!�\'\0pB�JQ��kH��[g2U�ƍ���#�z��\0���V�x\\KH�l$�J��7���Q�O$�}Z\0\0� $��2��,�!U�sϿ���_��\0��W\n�����f��*��?)��I\0\0AH���i���\'O�nIH�<:���[oo��S\0�GH��D\"��[��*��\r��vtt�>E\0�|�$�L�X��?Ԫ�HZ�r�{(��fe�(\0@2B\\&�Ji���ڄ��}��_�y2��}�\0\0�Ip����V�R[}m��Re�]]]�O\0 !	.�F+9��_hyH:v������O\0 !	.�����}�-Ijiox�}�\0\0ɘ	�2�/��3m�Jۿ�\0H�L\0�	�B�����s��?�&�D\0�1�e�Iں�\'�s�/�QI\0�\nB\\&�HTr��x��!�Ç+;�òO\0 !	.���W�1�V}��!��u�*;���O\0 !	.���W�.���6$-]����T*%�D\0���>��{<d``S��!I�b�(�,\0���>�d�e:;;[x1�w�Y�m,�}�\0\0�Ip�b��}�Q��8Ɏ����H###�O\0 !	����_	4~���p��q-u����>9\0�#��V]]]�X���|���ѱ��NmW�BA��\0������Z�����N�:�%$�ߟ�fe�\0�)Ip15�ho$R#�Տ�ܱs��*����_�	\0��w�d2�����=��f. ݽr��\n		\0P�����r�_�բ�C=\\�p�l��\'����^Y�X��\0�GH��ŵk���~��%K�4�V<��\0\0]�$x�\Zw�?k(�\r\r�>d\0�s��5����i5-���`c�����z\00DH\0\0�AH\0\0�AH\0\0�AH\0\0�AH\0\0���7pה�>�\0\0\0\0IEND�B`�',0),('7503',1,'leaveBill.bpmn','7501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"leaveBill\" name=\"leaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"提交申请\" activiti:assignee=\"${proposer}\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"部门经理审批\" activiti:assignee=\"${departmentManager}\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"总经理审批\" activiti:assignee=\"${generalManager}\"></userTask>\n    <sequenceFlow id=\"flow3\" name=\"批准\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'批准\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"批准\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'批准\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"驳回\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'驳回\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"驳回\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'驳回\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"leaveBill\" id=\"BPMNPlane_leaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"100.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"190.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"195.0\" y=\"280.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"230.0\" y=\"380.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"247.0\" y=\"55.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"100.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"247.0\" y=\"155.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"247.0\" y=\"245.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"280.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"245.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"247.0\" y=\"335.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"247.0\" y=\"380.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"257.0\" y=\"335.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"300.0\" y=\"217.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"216.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"153.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"394.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"300.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"350.0\" y=\"211.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"195.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"307.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"214.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"96.0\" y=\"128.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125.0\" y=\"127.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"127.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"100.0\" x=\"81.0\" y=\"177.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

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

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('10002','leaveBill:3:7504','10001','10001','startevent1',NULL,NULL,'Start','startEvent',NULL,'2016-06-13 00:12:17.301','2016-06-13 00:12:17.348',47,''),('10006','leaveBill:3:7504','10001','10001','usertask1','10007',NULL,'提交申请','userTask','张郃','2016-06-13 00:12:17.348',NULL,NULL,'');

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

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10008',NULL,'participant','张郃',NULL,'10001');

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

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10007','leaveBill:3:7504','usertask1','10001','10001','提交申请',NULL,NULL,NULL,'张郃','2016-06-13 00:12:17.348',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

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

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('10003','10001','10001',NULL,'departmentManager','string',0,NULL,NULL,NULL,'司马懿',NULL,'2016-06-13 00:12:17.301','2016-06-13 00:12:17.301'),('10004','10001','10001',NULL,'generalManager','string',0,NULL,NULL,NULL,'曹操',NULL,'2016-06-13 00:12:17.317','2016-06-13 00:12:17.317'),('10005','10001','10001',NULL,'proposer','string',0,NULL,NULL,NULL,'张郃',NULL,'2016-06-13 00:12:17.317','2016-06-13 00:12:17.317');

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

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('2501','请假流程',NULL,'','2016-05-29 22:19:27.099'),('5001','请假流程',NULL,'','2016-05-29 22:43:15.312'),('7501','请假流程',NULL,'','2016-06-10 15:19:05.723');

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

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('10008',1,NULL,'participant','张郃',NULL,'10001',NULL);

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

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`) values ('10007',1,'10001','10001','leaveBill:3:7504','提交申请',NULL,NULL,'usertask1',NULL,'张郃',NULL,50,'2016-06-13 00:12:17.348',NULL,NULL,1,'',NULL);

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

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('10003',1,'string','departmentManager','10001','10001',NULL,NULL,NULL,NULL,'司马懿',NULL),('10004',1,'string','generalManager','10001','10001',NULL,NULL,NULL,NULL,'曹操',NULL),('10005',1,'string','proposer','10001','10001',NULL,NULL,NULL,NULL,'张郃',NULL);

/*Table structure for table `action` */

DROP TABLE IF EXISTS `action`;

CREATE TABLE `action` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '模块名称',
  `parentId` bigint(20) DEFAULT '0' COMMENT '父级Id',
  `position` int(11) DEFAULT '0' COMMENT '排序',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  `request` varchar(30) DEFAULT NULL COMMENT '请求方式',
  `least` int(11) DEFAULT '1' COMMENT '子级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `action` */

insert  into `action`(`id`,`name`,`parentId`,`position`,`url`,`request`,`least`) values (1,'用户列表',0,1,'/user','get',1),(2,'添加',1,1,'/user','post',1),(3,'修改',1,2,'/update/\\d+','put',1),(4,'删除',1,3,'/user/\\d+','delete',1),(5,'角色列表',0,1,'/role','get',1),(6,'添加',5,1,'/role','post',1),(7,'修改',5,2,'/role/\\d+','put',1),(8,'删除',5,3,'/role/\\d+','delete',1),(9,'后台首页',0,0,'/main','get',1);

/*Table structure for table `b_leave` */

DROP TABLE IF EXISTS `b_leave`;

CREATE TABLE `b_leave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL COMMENT '请假类型',
  `reason` varchar(500) NOT NULL COMMENT '理由',
  `days` decimal(10,0) NOT NULL COMMENT '天数',
  `hours` decimal(10,0) NOT NULL COMMENT '小时',
  `startTime` datetime DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  `status` int(11) DEFAULT '0' COMMENT '0未开始，1审核中，2完成',
  `userId` bigint(20) NOT NULL,
  `processInstanceId` varchar(64) DEFAULT NULL,
  `currentStep` varchar(200) DEFAULT NULL,
  `currentAssignee` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `b_leave` */

insert  into `b_leave`(`id`,`category`,`reason`,`days`,`hours`,`startTime`,`endTime`,`status`,`userId`,`processInstanceId`,`currentStep`,`currentAssignee`) values (1,'事假','累了，休息几天','30','210','2016-06-16 00:00:00','2016-07-16 00:00:00',1,1,'10001','提交申请','张郃');

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
  `roleId` bigint(20) DEFAULT NULL COMMENT '角色Id',
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

insert  into `role`(`id`,`name`) values (1,'管理员'),(3,'普通用户'),(5,'test role'),(38,'test role1');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `passWord` varchar(66) NOT NULL,
  `name` varchar(30) DEFAULT '匿名',
  `roleId` bigint(20) DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_role_fk` (`roleId`),
  CONSTRAINT `user_role_fk` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`passWord`,`name`,`roleId`,`email`,`createTime`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','曹操',1,NULL,'2016-05-11 21:19:33'),(4,'root','63a9f0ea7bb98050796b649e85481845','司马懿',1,NULL,'2016-05-29 16:18:04'),(5,'test','098f6bcd4621d373cade4e832627b4f6','test',3,NULL,'2016-05-29 16:18:23'),(6,'test User','pwd','user name',3,'','2016-05-29 16:24:00'),(7,'test User','pwd','user name',3,'','2016-05-29 16:24:02'),(8,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(9,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(10,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(11,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(12,'test User','pwd','user name',3,'','2016-05-29 16:24:03'),(13,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(14,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(15,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(16,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(17,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(18,'test User','pwd','user name',3,'','2016-05-29 16:24:04'),(19,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(20,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(21,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(22,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(23,'test User','pwd','user name',3,'','2016-05-29 16:24:05'),(24,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(25,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(26,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(27,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(28,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(29,'test User','pwd','user name',3,'','2016-05-29 16:24:06'),(30,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(31,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(32,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(33,'test User','pwd','user name',3,'','2016-05-29 16:24:07'),(34,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(35,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(36,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(37,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(38,'test User','pwd','user name',3,'','2016-05-29 16:24:08'),(39,'test User','pwd','user name',3,'','2016-05-29 16:24:09'),(40,'test User','pwd','user name',3,'','2016-05-29 16:24:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
