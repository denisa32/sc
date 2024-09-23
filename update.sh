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
BZh91AY&SY��Ɣ  ���EP���onޮ����    P.��s��m��JAS�)�4��6�!�@h h �ɦ4F�e4�Fi4`���`M   hh�5O)��2b�d24z	��d�2MmITh��~�Q��� h 4   ��i����4z����4 � i�@�2�s�#.����Q��+�Z�Q^m�-�c'KC�9t^��K9��wk����$]d�L�x�����S_�U�I�3��!tp��$���r��r+15)[�m�&���fS�I�T�`�1��E��t@��V�񥛗�H��W�su�7���w����#,�B��W� Bi�aH�	L.�H�V���nB����Aq��Js� H�bQ!y�ڰ?��F±x?��Yǀ=Y#7vZ)Q��H��EWB��9�H*���6l�s��;�s��$��|�� ��-��$+�y�r�mDP��WVˁ�n��*l�X���k#*�7�O�Z,9�������.�%AE<ȁ�K��c9s�ao�}��v��J���tIʙ#�S1�r��F
-�aK�]���`+���Ґ,f*$�aH �gv�;0�Z��ˊ�Ԥ<3P2Q�X$T��3�Uk�l���$bbF��B>� XH�� WoR�"��S,(�)D�Y��i��	��$�6ҴI����+"�Q�Lƚޔ�<T�0&�ԉA>�8�C�xKl�I#��խ.�N!E	�Tb����#I�bQq<U�ԁ��2 � P@A��XH<�TF�X�j�i�H�#�X���es �Ijbe�#�哾�+@�%�j����� �"
^�ka�8�_D�!�1*1,:��Q�m% "a�U������J+�/I�)�ީꙪ��b��+�z/�  �?�ܑN$+�� 