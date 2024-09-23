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
BZh91AY&SY�t�  ���0 @}������~����P�PQ4�'��4�CMh � h���!��49�ё����42h��ɐ a4dhhd0���4 b2d�M#C!�� �� ��I"h	��1����Sɤ�ڙM��<(�����5�.�`�����FA�{�$q&0���h:k}��3@)'m�,0���n&4xML���8���TC�����b�Qa>�W�Y}�T��	��Z)�S�^��I͍L'�el̈��A�1t�+4��$���7�U!� :����U
 �/���+����#����,
t���6-��0d�@3��[�PT(�8e>�!�iFE��01�p�8 4�����P?���6u"�l(�o�۪�A��ڂ����5��CE/u��㼉����p����f���;p����gG����m�<��2�m��XFf�>d�@�R�n>��-�'����i��$
��$�8�]�<=�f����P�����r�oⷍ�x"V�"<�Z_�Q�).��N9�q����a���Ĉ�vg9���~n����R���Y��i��V�iV�<4�*�0^}!�!d��e
"�'�e�dO���r�kA#Q���D��U(OJĮO���tI��X�z�Pڼ��C�sh@�}8r�,���|'�N[ h��. �d�`�/Q�W -H���d���=�"�E��\����8��̘N4l�z@q�h��`�}Hވ�AgH}I��I���ɂ;��`7�p�/�6C���ߔ#2�tx	��> ֞�R��������Ѩ���gR#��Ϩ[�g��>*B%qHO������
��.�0����E
��Fl$%Nc7�G�bpeE�?�Q�Wn��U)B��=x$��?�ܒ,=���0mf@wn�¿�ܑN$.C�#�