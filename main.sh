#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY@Ԭl ����p	�����������B�� �   0 @ `,c�9�z���}>|���fٻ��}�����dۚ��zy-9���3��j)�W�˻��v��:��5�zy����d�����wmr��'m�ڮ�6���Y�\��v�wk����wN�����54��$���
��Ʀ����6$��)�'� 0�@# SИ�M��0H�A��h 4��4  H����3I6)�=��������@�  z�1  �JH"�*{
���C��dA��=@  hi� D�4ɢe<��S�2��5=&M=&ii�M@h�jM�$I4 #A4О�d�!����$�i��c)������4 lU��EDa�j;:�þ�y�=P�^����NÙ��Ǉ�rŴ�#�h�J����$U-#u�;���J���3/][	���R�o��[��>���Y��"A7�	�8��q��*	��G�f���_�Q"1d���3�/��)�A��u��ȖNӪ��:��ˢ�Z���G��-�"��S@�#��������
��.+l�ݪ���ц��q���<t�eؘ�����v��"-&H���[r�<��P4i 1\����b��_G�c(�ÿ���:���z��,;�4�Z^ũĩ-*Z�'z������I�|����R��s�_���arXN�k�UM���о�S����Y#�B.�LO�`����}V�Y�{7�mQ���s>*��_@ ���C:�[k߬�m֔-�^%R�8���}���zy���˚�5�ᔠ`��CR�V^I��+�6Mͮ�X�m�p�w5�Xc)ך�k�Oa����:4�&��d�}�����Ȧ�W-[���r�BI#��U9pdᦺ��'�U�&s���9���ֵ�u��s9��5D/]�o�*�q�YD���%F_w�9������a��Jp�͘���1~G�w��JX�#[������~̣����`ɍ�}��e����ߥi`1t�WA�Cll�Tz^Ip�B�H�^Cp0WU��� �jB�`
�2�cybh��}�B����Q�{�A2;kb��*J�dS8�"$�~&����W�$�9}W��~6�$16I�;�ytm��D�T+�r���[�NFNJ��;%9u�d�<ڧz��t�6孡À=�� ��C���a���wh�4���8B��x�rxg�����Bt�e���D)�k���r[��� 柳E��zk����H�;�{���R�z;��>N/y~Bo���+*�W���b��u�m~��Hu��[�f�|>z6 ,��Q�L��qP����L�zT�ړ�7�*� y� Ax����x��6��8�ή8�D��ֲX MjTh+{�DL���@d�y���ĝ�ō����ٙ���K~��w�.��f�VÒ����5���G���;D��r��;�q��*G���5��^�!�fz�E�m3��a��j� ��g*�0ϘD�aGgg=� ���wL?h���3����#��1W��	a�׶��>,U=Z;�H���aN�1u�P�dx͉�b�m3=��S�����մ���Ql��u��Sw~$\����f'(�ށ?�bC%�A3A��~
�o��wn�h ���&�����jȞ�0�����Q�pJ���_�p�7��hd���kp���w̦`�����lJi�:�K��C'��/�"�`y �7}��h�+R2�>��¶�Y��t�}�T��;m�n[�KY�ڂYX�(��o
���R�@v��B����-�$�	 �I�Q����@4R� �"�����NpY�,���p�-�N;��*Y�9�TA�j�2|�P*׾-�@�:;��ڶQ�eM�X�����KY:\l�I��r�_�A���w��(�ɑ���!�h�l��o�-~]��
��n[�xxT��]�@dб�0()����X�li٥X/į?'��;Xꃎ�N5VGSF��E��C"v� ��m����(C$k��X�_Eՠ�n���C'D]�2&��a��*�k�q����W�m4������v�[;),��-y4�bNK�|L5G�tEw�$I2aJ�2�������ς����0{�_2 �U�_߆��M�(�#�o�]7=�~��]�JkE�d7��c���<��C���B���_��[�:El0ء�}� ������X�P�튪9)��Kh or��N�NJ�콧U�B�k����ͣ�K,ӂ,K���o���Y��ȳt�lsdw<��^��쿝c�������~N</��B�?v!Y�
H5�c�ǡ���0�ym?w����Ta��V=�}r�)s0Z�IP(�,rՈa,�1�?��)(��}R�i�N���74�p�ee��(�d�Re
"���h�a�U�4�-J��v6���4�,��@��s�;����D�iBFF�H�C�P$+�.��X��NG��L��P���h�3Y��o��Gj�*}jM|~7���ѽ@�R�E�n��y�b>B��&qhq�����	0�@o�)��gkT�q�!O/w?WU{#:}%��_HR�M/{��=U�?4�	Hʐ�9NNF��ʯ�fr��=mu$����d����aƙB�h��ϳ+�@w���3� �� ���V��=�\_��G�YS�1����$����a�2rᙊ�*�̇��Q6��#��C�)|e�_7o��~��n3��آ��fbT�V}�eu�'q��T�2��M�1�}!I�"(��*3�l"�&~_de����$�-�R����Pu���6l�q�P�!�6��\ɲ���`4İ��O��)i�P~QM۵2%���s���Q�q#����Ō�v��#� d��u�EAh|`!x���<�z�5 �^����a������iq���~&�78V=�*"X�_o3�|��9TV"(D��'��ꖂ�l�`��]tlGv����M!�{>Z¾ί{��n~��<6�*��.�2��>pӶ�F%#2B�6˿'��3	v��iX.F;�;�\@���l�֨P-��`m���� �VT"XSpb!���p�+��s;��?	}�\��,�ÒL���Y�C�@la�@�o��m�wK_69$��m;�`U`jl<J8��ni&��I�4�lkF�Y`RYm����$ġ��-,��Qb�E,X(���l��w_���Zͦ�i�j���z�#�=�I\Vt��̛00���(�G��c)�x;e�ۮ���I)C~\�P_|�d�oiJׂ;�F�4з^  ev��A�D�5�W��JNuh��pbR1�������$ۘ`&2G�5-����gTѐ�X
��������A��4I�m��
�X
7�]':=V�{Ij����q�`%S����Lu�$��,!d��BU��jo8�����!#_9_���{J-�r�7�/h2�l ��=���_rD��|,,�D��x=3.��,��Y�N?��(9�l5�K�y�pn3��S���?䃶�$l����P۞��7�a,�B֜q���G�\a�d��Ьs硄#�ZZЃ���`W����R�����pq�b;��B� 8W��r��`r�f�QT_/I��MS�T��m^z������4>w��-�۠��a�W�ÿ0�ͺ�@a;ԝ�S.�sI��)�o��f�)y���q�n&\�CD7�~,_G���$�0��G����3[U�;�ЄG�k=qn�9�� ��� �������^e$%_�&�A�k��x~�ԗ+���i��{�����p���Kg{��p���<�_=��
��^�>��I��φ�؟�&>9Y�x�e$��@ �6Tv�d��x�Q��,�˘y�������ʳ\�"
�]��1$���d��Y�	�L�������#$H�"�0~x&J��ry-t=���i��	����������e�ж�X��q���f���z>�4)wG�{�1�ku�,Z-�i<D�oDE��7xs��\�:���l���ț�e���m~7��uU��)�:�"�
�����kC�Ԟ�+�4��4<e�?�4�ڶ���f�����'q�ox���<���X� ����V�H��W�T~�C��)���xG�� D�����u�!�A�Q�CouW��d�JoH/�Ũ͈�=;`�#��Z��=�KR�R���įŸd�9ó8�X�&u�t��\�<|�n�+kǚ���_����������y�-�hÈ��Ttݾl�� �׾Z��$K!�Ĩ���g��HG���0�ܷ���VkH"���$�#��"�S(1�ͧHvJ�{H�?rG�Z܌�-�����"�Ѫ�C���v��q��B�(���F�$:r�����q<�ƀ+226�a"�]��jBGp�]$�j�v!]�������)�����L�#)6)�T�^��ޫ&x2���ά���*�]�� �.0��UBD�B��󇫰�[V9�f/ �K]p��P�4<�&�%l`���(��  {�G�}e�?P���0�9�V��=R����#�=<{�U
e���K��Ga��.7q�Ƭ��[c�����E���_
JvL�[���&���p'@]iy���-0��Ɖ���ND�1�D��*=��J_��,Ȟ�C<�Km�9�{O|w.��G��8��`4��D#2%ە.�q�S�>Z�~/��>n��_�y4Y,N�{��\��u
k'��{�2�ם>@D����uș�fC�{�u�%�91�@G8g� q���X���Q ���v/HL*>u�涁!�iu�gX>:8I-�Bf����hQbJ�!�g!�i`�����?�d��&E�i{����#�8�S��[��#��%R�l���!>|<���Sa��_:e��"A�P�*D0�d�|+̙�\8��Ɵ�����;i'smO���s t�d8�SY�S B��Os���z��Er�l8ߜ���o9�|ò��	�M���I�ڗ5Hv��]c�Ap�p+�͠1��F���T�w��2�C���Q=�D�<�eѼ�qd �08�=zl�Sp�ҹ�dL<p)�����1���P��M)��	�����A�J�<�b	� �.�.3\@*H���'@j��q��}~�D1tb��p���m���Ww�;7`����s��P�2�#b���8��\#@#F 0�e ��=�B�b���O�M@[
LDBdg�G_���q~K~:�)�]��f"�D0��EE.�\�`f	j-+�"��LM�h`���7A��?���x��R l�`=�S�I��#�(3| �S��9r���X�!b�愄ab�7��NDHQ�2�j�䬟�pn�1��{��}F��u����`�̼��bT$�*T&]m���:�dB����q	p�3�r���܆`�j�`��
m��5!"Mi���Sm�K/��H��^S�,ܜ
�0���ꎅH��J��bC�iOJ ���TJ-�!�c�L��qnH&0S �KY��d鵌`��}�C��b6�B�5�po˒� TQw�7��PTc�ďc�Xդ��DMU"e���*�)=���x
��(��)	���wJ3�
�SWg2 �CO��ӘaA�-��4$b���P6��\�/��g�z��7���ٕ(�����-x��Ͷ� ]&4-�e��V`["[�v�"�f�^_Vkp��yo��&�ߍ=Ƽt�Y�q��^��n4�a 7�_�%�X��Ɠƌo)rn�P\�*)h�c��fFbJ�O��  ]�Q��*�ffA��I u0I�Cm�dC�p���V����(|`:��&�'���,��(�Đ��;359�첂���ar+�)���.*`]�u^�� �
ZЭcL8I6�,�#b�i*���!-A!%ڋBW!V��p%s�FfRs/?^)R�Az4c�:h/~�2�2qSH:��AJ�a�J��۳m�����U��pUE&�����/ĉ�d�I�_ky�V��r�A��"T��v�P��ň|��e�P���v*�B��IJ;����.>���P�S-�
}:6���@ǒ��3�,0��ґ*�E�ndT+�8ް�]`��R0=���j�߸�ؼ�ߦ�r��ĽQ��Ү�I!!#-��xŬh@d��N]1�
���R�cD�*@I�E�!�ȅ�uXk,�'$�|�k��-�W�<��-5-6�\&YLBAMz�-
�z��T���	$���ޘ7
�j��6/��\!��������5{2i��@l1DB�e�f�8}�o��(�*6��*�bE����C,��L���Ȩ׊Z���Sx��UX��I������6���dL.D�ޔ�.9N�sX*Kw�༩���N��q_��@�e��}[M�v�� �ő�ut��{��Շ���)�>�<����O��8w��@�Iw�c��7Y�!�A��C����j�`1*��#�����1�Dʐx@���������<�-�\@PDnn��Cd�ԇl�A��EUUUU0�Nb �2C5�tR��)�l� ���1��H�w�gY�n}G �"Np����!�>"�ͱϑ/�.�VT!P�I(U��^ u�IZ�{�K�N�][)b����.�c���I4�_A)|�&��@�����Y��.ۘ�!s��Ѝ��뾆�	X��bۚB�-&"��������g�,�F�#��
R����4�{0PI+��"!r��=4(��,�hE$�h,1*6���7����u�M�P�Z�%�r�g��)+��Q�ؐ�@��41��bP�#�%47�_t�1�x�%!��IB#C��1�ؑ~k�bT��i�U�N�!A�0���x9"��B<� ��.��R'C�jI:�UM�&<��"Y5S�G� ��AX~	A�C�cWs��K��b�R�H���=�^���r�(RS�A�L�*K��`�ܷ
�z�D�}�nP ��0i.o�ᱻ/l9,JY����f�9 � ���Stp������Å���q˅��0rK7�k2^�^�:���I6��|�'Ǉ�6 �ÿ ��B�y�ֱU�	]��1D�X�d�y�fGi=bq��3�}LaF�XV��D���-���O���� �E�N�e�>�*HF�M��JZL
���F��K�ɂ13+�MÑ������d3		RQ$Dt�"F)��s�X!��@��D ��❂�ww��8��pS%I�lV�8�F��,׀�7��5���N�a&��0w�0��C2��2榳���"��Q��%�G�
�2F�u��B�h�"V||� MC��UU��H 7 �jG�ƔL	@�XBI�@�H G�V�,Gq���Y�Koq��Q)� İ�!���Ԫ�̅!"6H������9�D��r>��v�;
��35z�{cE���m��9L	&\��j$�=�GOQ ��!j�'a����U<�������#]���պb�ki'	bV��)1�k�
�_퇸f�tx��+�Dو�(�S�*:�a5��C�I д;9�62=J6O��vԭ�e�24)Ə��h$�]�ZA;�d�&�	�!�F!'y�pߟ�O�`r>�尜�A�Np���v�iP~c�J��`C	8���(y-�TU .�0��,y��B�r0YB�>I�$��55(Y(*�&\�; ��������!uV6�{�)��3�+�6y�'��oǽ�/�p-B�2��$H]f���-�Q���C.�!���l�Z�pw⼬w]�+6��?�!���7��pTj�īzYs"/��� % R�#1/(&;Hi�I�!���I�6!*,�`��\m
�V:~2B$��4LD�]\�Z�*��YNقa�?9!ٔ�H�*X�D0�i�L�KgT7��j&H��L��/����s��4�K�8`���Զ�B��}`���P��5kq�EH���}~ȭL�*���$;	�؍zKT�0� ���m�L2 V�S �_��,B�<I ���b	.F	.6/�a�1(��2�^Awn�������QGm���l��.��UM��T�@4�
AAniPЕ�*����e�A��Ɵ�����=ȇ�0�!Ԅ}�����l�J��QL��A:�����\�1�QC���姭o������B����족��&���.`��
���S�)"C1�IY3%Xzu�]�¬�6q�Yl�Af?N�*���� .���X ��-Aɓ<���(�^p(A��n��)�*� �P��Q��$�@�zMH�Vku1!�Z��0dY[IKHU,�-�(�2����^P����%�V����BZ���/i�D��3Q����d�FӤ� 
�� cTT`�t�Ԑ�[����Lɥ��{!�I8Gu�	�����������Z�J�<���6r Xn�i���H�r�qJ����ދ���]Ki6�А$/Fi��x�U"�u��I�̂A
�����m*.�x�k%��^f��R�)�l� �l4��+n�$k��-[֒�2�V
#ER0<p�+�cR�-|;��i�U7D��k11�cX�և�6,j�.���-AL�Đoi�ݺ�8F��2��S 'm�#7E1����S���'��m���*�S$n`kx�ɽ[a�Xe����hk$	 ʢ&��e�Bi�1�Q�C�=9�{@.�"@"�$�8D�qT4�לr88��@Q���
�6k�j�zt��h�5��Gy�B�%F�"���H���j& aP��A�q!"I�|��g�qi�a��r#_9m�؀��I\�`�;7��jѢ���@hb�$�deh�;Yza�E���X�sk'�䒸ֶ�*�f`�jH��\3}.k0�kC�����A��Tlo#`� �$:n�&=|i���o*RF��G5�C�J���J�I�(Zk.�f>��sF����yBo]�OAPk|iq$��C)Ε�L4�#!V"tde��F6���|/���{�^ê����i�i#yY /�e&�c[���e�>�!�[�M[�ݲ�~2��,h��&4�ݑ�������`�N\�v�0�$<�3X�y�2R9M�ՍH��8ps�[;,�B��](u�u(ߵ)��8����j�����i��^h�� ��5�����%K���Z0!���/����H3_Ĳ{D��2Cv�\�hTN��W����U���+:;�����P&@�^�*�T������5$���[�yAB�k8P{�t݄7|^�w{��Y�:{#�y<ϰ)ǁ�
�1"H�r�=�"IT�'8��[�@�������\�i���M�ɒi�w�?'����W��>�t�Vzߍ�����Iw����_�dS�~� |��g��y|�h ��!�t��]��BAR��