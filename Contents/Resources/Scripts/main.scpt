FasdUAS 1.101.10   ��   ��    k             j     �� 
�� 
pnam  m        � 	 	 
 X D i c t   
  
 j    �� 
�� 
vers  m       �   
 1 . 6 . 1      j    �� �� 0 xlist XList  I   ������
�� .MoloMkMsMoSp    ��� TEXT��  ��        l     ��������  ��  ��        l      ��  ��    [ U!@references
XList || help:openbook='XList Help'
XText || help:openbook='XText Help'
     �   � ! @ r e f e r e n c e s 
 X L i s t   | |   h e l p : o p e n b o o k = ' X L i s t   H e l p ' 
 X T e x t   | |   h e l p : o p e n b o o k = ' X T e x t   H e l p ' 
      l     ��������  ��  ��        l      ��  ��   !@title XDict Reference 
* Version : 1.6.1
* Author : Tetsuro KURITA ((<tkurita@mac.com>))

<!-- begin locale ja -->
XDict �͘A�z�z��I�u�W�F�N�g�𐶐����܂��B
<!-- begin locale en -->
XDict is an associative list type data collection. 
<!-- end locale -->
     �  � ! @ t i t l e   X D i c t   R e f e r e n c e   
 *   V e r s i o n   :   1 . 6 . 1 
 *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) ) 
 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
 X D i c t  0o�#`�MR0�0�0�0�0�0�0�ub0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 X D i c t   i s   a n   a s s o c i a t i v e   l i s t   t y p e   d a t a   c o l l e c t i o n .   
 < ! - -   e n d   l o c a l e   - - > 
     !   l     ��������  ��  ��   !  " # " l      �� $ %��   $ " !@group Constructer Methods     % � & & 8 ! @ g r o u p   C o n s t r u c t e r   M e t h o d s   #  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   +sm!
@abstruct
<!-- begin locale ja -->
�A�z�z��I�u�W�F�N�g�̃C���X�^���X�𐶐����܂��B�������ꂽ�I�u�W�F�N�g�ɂ͉����l�͐ݒ肳��Ă��܂���B
<!-- begin locale en -->
Make an empty XDict instance
<!-- end locale -->
@result script object : 
<!-- begin locale ja -->
�A�z�z��I�u�W�F�N�g�̃C���X�^���X
<!-- begin locale en -->
an instance of XDict
<!-- end locale -->
    , � - -R ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
�#`�MR0�0�0�0�0�0�0n0�0�0�0�0�0�0�ub0W0~0Y0ub0U0�0_0�0�0�0�0�0�0k0oOU0�P$0o�-[�0U0�0f0D0~0[0�0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 M a k e   a n   e m p t y   X D i c t   i n s t a n c e 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   s c r i p t   o b j e c t   :   
 < ! - -   b e g i n   l o c a l e   j a   - - > 
�#`�MR0�0�0�0�0�0�0n0�0�0�0�0�0� 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 a n   i n s t a n c e   o f   X D i c t 
 < ! - -   e n d   l o c a l e   - - > 
 *  . / . i     0 1 0 I     ������
�� .corecrel****      � null��  ��   1 L     
 2 2 I     	�� 3���� 0 make_with_lists   3  4 5 4 J    ����   5  6�� 6 J    ����  ��  ��   /  7 8 7 l     ��������  ��  ��   8  9 : 9 l      �� ; <��   ;��!
@abstruct
<!-- begin locale ja -->
�L�[�l�Ƃ���ɑΉ������l�̃y�A(���X�g�j�̃��X�g���� XDict �I�u�W�F�N�g�𐶐����܂��B
<!-- begin locale en -->
Make a new XDict instance with a list of pair lists of a key and a value.
<!-- end locale -->
@param pairs (list) :<!-- begin locale ja --> �L�[�l�ƒl�̃y�A�̃��X�g
<!-- begin locale en -->a list of pairs of a key and a value<!-- end locale -->
{{key1, value1}, {key2,value2},...}
@result script object : a XDict instance
    < � = =F ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�P$0h0]0�0k[�_�0W0_P$0n0�0� (0�0�0��	0n0�0�0�0K0�   X D i c t  0�0�0�0�0�0�0�ub0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 M a k e   a   n e w   X D i c t   i n s t a n c e   w i t h   a   l i s t   o f   p a i r   l i s t s   o f   a   k e y   a n d   a   v a l u e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   p a i r s   ( l i s t )   : < ! - -   b e g i n   l o c a l e   j a   - - >  0�0�P$0hP$0n0�0�0n0�0�0� 
 < ! - -   b e g i n   l o c a l e   e n   - - > a   l i s t   o f   p a i r s   o f   a   k e y   a n d   a   v a l u e < ! - -   e n d   l o c a l e   - - > 
 { { k e y 1 ,   v a l u e 1 } ,   { k e y 2 , v a l u e 2 } , . . . } 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X D i c t   i n s t a n c e 
 :  > ? > i     @ A @ I      �� B���� 0 make_with_pairs   B  C�� C o      ���� 	0 pairs  ��  ��   A k     < D D  E F E r      G H G I    	�� I��
�� .corecrel****      � null I o     ���� 0 xlist XList��   H o      ���� 0 key_list   F  J K J r     L M L I   �� N��
�� .corecrel****      � null N o    ���� 0 xlist XList��   M o      ���� 0 
value_list   K  O P O r    $ Q R Q n   " S T S I    "�� U���� 0 	make_with   U  V�� V o    ���� 	0 pairs  ��  ��   T o    ���� 0 xlist XList R o      ���� 0 	pair_list   P  W X W l  % %��������  ��  ��   X  Y Z Y h   % ,�� [�� 0 pairstolists PairsToLists [ i      \ ] \ I      �� ^���� 0 do   ^  _�� _ o      ���� 
0 a_pair  ��  ��   ] k      ` `  a b a n     c d c I    �� e���� 0 push   e  f�� f n    	 g h g 4    	�� i
�� 
cobj i m    ����  h o    ���� 
0 a_pair  ��  ��   d o     ���� 0 key_list   b  j k j n    l m l I    �� n���� 0 push   n  o�� o n     p q p 4    �� r
�� 
cobj r m    ����  q o    ���� 
0 a_pair  ��  ��   m o    ���� 0 
value_list   k  s�� s L     t t m    ��
�� boovtrue��   Z  u v u n  - 3 w x w I   . 3�� y���� 0 each   y  z�� z o   . /���� 0 pairstolists PairsToLists��  ��   x o   - .���� 0 	pair_list   v  {�� { L   4 < | | I   4 ;�� }���� 0 make_with_xlists   }  ~  ~ o   5 6���� 0 key_list     ��� � o   6 7���� 0 
value_list  ��  ��  ��   ?  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �0*!
@abstruct
<!-- begin locale ja -->
�L�[�l�̃��X�g�Ƃ���ɑΉ�����l�̃��X�g����AXDict�I�u�W�F�N�g�𐶐����܂��B
<!-- begin locale en -->
Make a XDict instance with a list of keys and a list of values.
<!-- end locale -->

@param key_list (list) :<!-- begin locale ja --> �L�[�l�̃��X�g
<!-- begin locale en -->a list of keys<!-- end locale -->
@param value_list (list) : <!-- begin locale ja -->�L�[�l�ɑΉ����Đݒ肷��l�̃��X�g
<!-- begin locale en -->a list of values corresponding keys.<!-- end locale -->
@result script object : a XDict instance
    � � � �� ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�P$0n0�0�0�0h0]0�0k[�_�0Y0�P$0n0�0�0�0K0�0 X D i c t0�0�0�0�0�0�0�ub0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 M a k e   a   X D i c t   i n s t a n c e   w i t h   a   l i s t   o f   k e y s   a n d   a   l i s t   o f   v a l u e s . 
 < ! - -   e n d   l o c a l e   - - > 
 
 @ p a r a m   k e y _ l i s t   ( l i s t )   : < ! - -   b e g i n   l o c a l e   j a   - - >  0�0�P$0n0�0�0� 
 < ! - -   b e g i n   l o c a l e   e n   - - > a   l i s t   o f   k e y s < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   v a l u e _ l i s t   ( l i s t )   :   < ! - -   b e g i n   l o c a l e   j a   - - >0�0�P$0k[�_�0W0f�-[�0Y0�P$0n0�0�0� 
 < ! - -   b e g i n   l o c a l e   e n   - - > a   l i s t   o f   v a l u e s   c o r r e s p o n d i n g   k e y s . < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X D i c t   i n s t a n c e 
 �  � � � i     � � � I      �� ����� 0 make_with_lists   �  � � � o      ���� 0 key_list   �  ��� � o      ���� 0 
value_list  ��  ��   � k     " � �  � � � r      � � � n    
 � � � I    
�� ����� 0 	make_with   �  ��� � o    ���� 0 key_list  ��  ��   � o     ���� 0 xlist XList � o      ���� 0 key_list   �  � � � r     � � � n    � � � I    �� ����� 0 	make_with   �  ��� � o    ���� 0 
value_list  ��  ��   � o    ���� 0 xlist XList � o      ���� 0 
value_list   �  ��� � L    " � � I    !�� ����� 0 make_with_xlists   �  � � � o    ���� 0 key_list   �  ��� � o    ���� 0 
value_list  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � h     �� ��� &0 defaultcomparator DefaultComparator � i      � � � I      �� ����� 0 do   �  � � � o      ���� 0 a_value   �  ��� � o      ���� 0 target_value  ��  ��   � P     
 � ��� � L    	 � � =    � � � o    ���� 0 a_value   � o    ���� 0 target_value   � ���
�� conscase�  ��   �  � � � l     �~�}�|�~  �}  �|   �  � � � j   ! #�{ ��{ 0 _key_comparator   � o   ! "�z�z &0 defaultcomparator DefaultComparator �  � � � j   $ &�y ��y 0 _value_comparator   � o   $ %�x�x &0 defaultcomparator DefaultComparator �  � � � l     �w�v�u�w  �v  �u   �  � � � l      �t � ��t   �ys!
@abstruct
<!-- begin locale ja -->
�L�[�l��v�f�Ƃ��� ((<XList>)) �ƁA����ɑΉ�����l��v�f�Ƃ����� ((<XList>)) ����AXDict �I�u�W�F�N�g�𐶐����܂��B
<!-- begin locale en -->
Make a XDict instance with a ((<XList>)) of keys and a ((<XList>)) of values.
<!-- end locale -->
@param key_list (script object) : 
<!-- begin locale ja -->�L�[�l�� XList
<!-- begin locale en -->a XList of keys<!-- end locale -->
@param value_list (script object) : <!-- begin locale ja -->�L�[�l�ɑΉ����Đݒ肷��l�� XList
<!-- begin locale en -->a XList of values corresponding keys.<!-- end locale -->
@result script object : a XDict instance
    � � � �n ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�P$0���} 0h0W0_   ( ( < X L i s t > ) )  0h00]0�0k[�_�0Y0�P$0���} 0h0W0_0n   ( ( < X L i s t > ) )  0K0�0 X D i c t  0�0�0�0�0�0�0�ub0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 M a k e   a   X D i c t   i n s t a n c e   w i t h   a   ( ( < X L i s t > ) )   o f   k e y s   a n d   a   ( ( < X L i s t > ) )   o f   v a l u e s . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   k e y _ l i s t   ( s c r i p t   o b j e c t )   :   
 < ! - -   b e g i n   l o c a l e   j a   - - >0�0�P$0n   X L i s t 
 < ! - -   b e g i n   l o c a l e   e n   - - > a   X L i s t   o f   k e y s < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   v a l u e _ l i s t   ( s c r i p t   o b j e c t )   :   < ! - -   b e g i n   l o c a l e   j a   - - >0�0�P$0k[�_�0W0f�-[�0Y0�P$0n   X L i s t 
 < ! - -   b e g i n   l o c a l e   e n   - - > a   X L i s t   o f   v a l u e s   c o r r e s p o n d i n g   k e y s . < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X D i c t   i n s t a n c e 
 �  � � � i   ' * � � � I      �s ��r�s 0 make_with_xlists   �  � � � o      �q�q 0 key_list   �  ��p � o      �o�o 0 
value_list  �p  �r   � k      � �  � � � r      � � �  f      � o      �n�n 0 a_parent   �  � � � h    �m ��m 0 xdict XDict � k       � �  � � � j     �l �
�l 
pare � o     �k�k 0 a_parent   �  � � � j   	 �j ��j 	0 _keys   � o   	 �i�i 0 key_list   �  � � � j    �h ��h 0 _values   � o    �g�g 0 
value_list   �  � � � j    �f ��f 0 _key_comparator   � n    � � � o    �e�e 0 _key_comparator   �  f     �  ��d � j    "�c ��c 0 _value_comparator   � n   ! � � � o     �b�b 0 _value_comparator   �  f    �d   �  ��a � L     � � o    �`�` 0 xdict XDict�a   �  � � � l     �_�^�]�_  �^  �]   �  � � � l      �\ � ��\   �  !@group Instance Methods     � � � � 2 ! @ g r o u p   I n s t a n c e   M e t h o d s   �  � � � l     �[�Z�Y�[  �Z  �Y   �  � � � i   + . � � � I      �X ��W�X 0 search_value   �  � � � o      �V�V 	0 a_key   �  � � � o      �U�U 0 key_list   �  � � � o      �T�T 0 
value_list   �  ��S � o      �R�R 0 
comparator  �S  �W   � k     �    l      �Q�Q   � �@-- when a value is a record, "is in" operator does not works.
	set exists_key to true
	try
		set exists_key to key_list's has_item(a_key)
	on error
		set exists_key to true
	end try
	
	if not exists_key then
		return missing value
	end if
	    ��0  - -   w h e n   a   v a l u e   i s   a   r e c o r d ,   " i s   i n "   o p e r a t o r   d o e s   n o t   w o r k s . 
 	 s e t   e x i s t s _ k e y   t o   t r u e 
 	 t r y 
 	 	 s e t   e x i s t s _ k e y   t o   k e y _ l i s t ' s   h a s _ i t e m ( a _ k e y ) 
 	 o n   e r r o r 
 	 	 s e t   e x i s t s _ k e y   t o   t r u e 
 	 e n d   t r y 
 	 
 	 i f   n o t   e x i s t s _ k e y   t h e n 
 	 	 r e t u r n   m i s s i n g   v a l u e 
 	 e n d   i f 
 	  l     �P	�P    log "start seatch_value"   	 �

 0 l o g   " s t a r t   s e a t c h _ v a l u e "  r      J     �O�O   o      �N�N 0 invalid_key_indexes    n   
 I    
�M�L�K�M 	0 reset  �L  �K   o    �J�J 0 key_list    V    v k    q  r     n    I    �I�H�G�I 0 next  �H  �G   o    �F�F 0 key_list   o      �E�E 0 current_key    Q    . !"  r     %#$# n     #%&% 1   ! #�D
�D 
pcnt& o     !�C�C 0 current_key  $ o      �B�B 0 current_key  ! R      �A'(
�A .ascrerr ****      � ****' o      �@�@ 0 msg  ( �?)�>
�? 
errn) o      �=�= 	0 errno  �>  " k   - -** +,+ l   - -�<-.�<  - E ? when current_key is script object, constants of ~ cause error    . �// ~   w h e n   c u r r e n t _ k e y   i s   s c r i p t   o b j e c t ,   c o n s t a n t s   o f   ~   c a u s e   e r r o r  , 0�;0 l  - -�:12�:  1 # log msg & "number : " & errno   2 �33 : l o g   m s g   &   " n u m b e r   :   "   &   e r r n o�;   454 Q   / o6786 Z   2 R9:�9�89 n  2 9;<; I   3 9�7=�6�7 0 do  = >?> o   3 4�5�5 0 current_key  ? @�4@ o   4 5�3�3 	0 a_key  �4  �6  < o   2 3�2�2 0 
comparator  : k   < NAA BCB r   < CDED n  < AFGF I   = A�1�0�/�1 0 current_index  �0  �/  G o   < =�.�. 0 key_list  E o      �-�- 0 an_index  C HIH r   D LJKJ n  D JLML I   E J�,N�+�, 0 item_at  N O�*O o   E F�)�) 0 an_index  �*  �+  M o   D E�(�( 0 
value_list  K o      �'�' 0 a_value  I P�&P  S   M N�&  �9  �8  7 R      �%QR
�% .ascrerr ****      � ****Q o      �$�$ 0 msg  R �#S�"
�# 
errnS d      TT m      �!�! +�"  8 l  Z oUVWU k   Z oXX YZY l  Z Z� [\�   [ 1 +log "error in search_value of XDict:" & msg   \ �]] V l o g   " e r r o r   i n   s e a r c h _ v a l u e   o f   X D i c t : "   &   m s gZ ^_^ r   Z a`a` n  Z _bcb I   [ _���� 0 current_index  �  �  c o   Z [�� 0 key_list  a o      �� 0 an_index  _ ded n  b hfgf I   c h�h�� 0 	delete_at  h i�i o   c d�� 0 an_index  �  �  g o   b c�� 0 key_list  e j�j n  i oklk I   j o�m�� 0 	delete_at  m n�n o   j k�� 0 an_index  �  �  l o   i j�� 0 
value_list  �  V H B if _keys have an alias, the original of the alias does not found.   W �oo �   i f   _ k e y s   h a v e   a n   a l i a s ,   t h e   o r i g i n a l   o f   t h e   a l i a s   d o e s   n o t   f o u n d .5 p�p l  p p����  �  �  �   n   qrq I    ��
�	� 0 has_next  �
  �	  r o    �� 0 key_list   s�s Q   w �tuvt L   z |ww o   z {�� 0 a_value  u R      ��x
� .ascrerr ****      � ****�  x �y�
� 
errny d      zz m      ��
��  v k   � �{{ |}| Q   � �~�~ r   � ���� b   � ���� m   � ��� ��� 2 N o   v a l u e   a s s o c i a t e d   w i t h  � l  � ��� ��� c   � ���� o   � ����� 0 a_value  � m   � ���
�� 
utxt�   ��  � o      ���� 0 msg   R      ������
�� .ascrerr ****      � ****��  ��  � r   � ���� m   � ��� ��� H N o   v a l u e   a s s o c i a t e d   w i t h   a   k e y   v a l u e� o      ���� 0 msg  } ���� R   � �����
�� .ascrerr ****      � ****� o   � ����� 0 msg  � �����
�� 
errn� m   � ��������  ��  �   � ��� l     ��������  ��  ��  � ��� l      ������  �\V!
@abstruct
<!-- begin locale ja -->
�L�[�l�ɑΉ������l���擾���܂��B�L�[�l�����݂��Ȃ���΁Aerror number 900 ���������܂��B
<!-- begin locale en -->
Obtain a value associated with a specified key. If a key is not in a XDict, error number 900 will be rasied.
<!-- end locale -->
@param a_key (anything) : <!-- begin locale ja -->�L�[�l�Ƃ��Đݒ肵���I�u�W�F�N�g
<!-- begin locale en -->a key to obtain its value<!-- end locale -->

@result anything : 
<!-- begin locale ja -->a_key �ɑΉ������l�Ƃ��Đݒ肳�ꂽ�I�u�W�F�N�g
<!-- begin locale en -->an object associated with a_key<!-- end locale -->
   � ��� ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�P$0k[�_�0W0_P$0�S�_�0W0~0Y00�0�P$0L[XW(0W0j0Q0�0p0 e r r o r   n u m b e r   9 0 0  0Lvzu0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b t a i n   a   v a l u e   a s s o c i a t e d   w i t h   a   s p e c i f i e d   k e y .   I f   a   k e y   i s   n o t   i n   a   X D i c t ,   e r r o r   n u m b e r   9 0 0   w i l l   b e   r a s i e d . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   < ! - -   b e g i n   l o c a l e   j a   - - >0�0�P$0h0W0f�-[�0W0_0�0�0�0�0�0� 
 < ! - -   b e g i n   l o c a l e   e n   - - > a   k e y   t o   o b t a i n   i t s   v a l u e < ! - -   e n d   l o c a l e   - - > 
 
 @ r e s u l t   a n y t h i n g   :   
 < ! - -   b e g i n   l o c a l e   j a   - - > a _ k e y  0k[�_�0W0_P$0h0W0f�-[�0U0�0_0�0�0�0�0�0� 
 < ! - -   b e g i n   l o c a l e   e n   - - > a n   o b j e c t   a s s o c i a t e d   w i t h   a _ k e y < ! - -   e n d   l o c a l e   - - > 
� ��� i   / 2��� I      ������� 0 value_for_key  � ���� o      ���� 	0 a_key  ��  ��  � L     �� I     ������� 0 search_value  � ��� o    ���� 	0 a_key  � ��� n   ��� o    ���� 	0 _keys  �  f    � ��� n   ��� o    ���� 0 _values  �  f    � ���� n   ��� o   	 ���� 0 _key_comparator  �  f    	��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �]W!
@abstruct
<!-- begin locale ja -->
�l�ɑΉ������L�[�l���擾���܂��Bis ���Z�q�œ��l�ɂȂ�l�����݂��Ȃ���΁Amissing value ���Ԃ�l�ɂȂ�܂��B
<!-- begin locale en -->
Obtain a key associating a value. If a same value using "is" operator is not found, missing value is returened.
<!-- end locale -->
@description
<!-- begin locale ja -->
�����l�́A�K��������Ƃ͌���܂���B�ŏ��Ɍ��������l�̃L�[�l��Ԃ��܂��B
<!-- begin locale en -->
The values in XDict is not unique. A found value at the first will be returend.
<!-- end locale -->
@param a_key (anything) : 
<!-- begin locale ja --> �l�Ƃ��Đݒ肳�Ă���I�u�W�F�N�g
<!-- begin locale en --> an object used as a value.<!-- end locale -->
@result
anything :<!-- begin locale ja --> a_value �̃L�[�l�Ƃ��Đݒ肳�ꂽ�I�u�W�F�N�g
<!-- begin locale en --> an object used as a key.<!-- end locale -->
   � ���� ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
P$0k[�_�0W0_0�0�P$0�S�_�0W0~0Y0 i s  o{�[P0gTP$0k0j0�P$0L[XW(0W0j0Q0�0p0 m i s s i n g   v a l u e  0L��0�P$0k0j0�0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b t a i n   a   k e y   a s s o c i a t i n g   a   v a l u e .   I f   a   s a m e   v a l u e   u s i n g   " i s "   o p e r a t o r   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r e n e d . 
 < ! - -   e n d   l o c a l e   - - > 
 @ d e s c r i p t i o n 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
T0XP$0o0_�0Z0W0�N 0d0h0o�P0�0~0[0�0g R0k��0d0K0c0_P$0n0�0�P$0���0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 T h e   v a l u e s   i n   X D i c t   i s   n o t   u n i q u e .   A   f o u n d   v a l u e   a t   t h e   f i r s t   w i l l   b e   r e t u r e n d . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   
 < ! - -   b e g i n   l o c a l e   j a   - - >  P$0h0W0f�-[�0U0f0D0�0�0�0�0�0�0� 
 < ! - -   b e g i n   l o c a l e   e n   - - >   a n   o b j e c t   u s e d   a s   a   v a l u e . < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t 
 a n y t h i n g   : < ! - -   b e g i n   l o c a l e   j a   - - >   a _ v a l u e  0n0�0�P$0h0W0f�-[�0U0�0_0�0�0�0�0�0� 
 < ! - -   b e g i n   l o c a l e   e n   - - >   a n   o b j e c t   u s e d   a s   a   k e y . < ! - -   e n d   l o c a l e   - - > 
� ��� i   3 6��� I      ������� 0 key_for_value  � ���� o      ���� 0 a_value  ��  ��  � L     �� I     ������� 0 search_value  � ��� o    ���� 0 a_value  � ��� n   ��� o    ���� 0 _values  �  f    � ��� n   ��� o    ���� 	0 _keys  �  f    � ���� n   ��� o   	 ���� 0 _value_comparator  �  f    	��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  ���!
@abstruct
<!-- begin locale ja -->
�L�[�l�ɑΉ�����l��ݒ肵�܂��B�L�[�l���ݒ肳��Ă��Ȃ���΁A�V�����L�[�l�Ƃ��Ēǉ�����܂��B
<!-- begin locale en -->
Set a value associated with a key. If the key is not in the XDict, the key is added.
<!-- end locale -->
@param a_key (anything) : 
<!-- begin locale ja -->�L�[�l�ƂȂ�I�u�W�F�N�g�Bis ���Z�q�Ŕ�r�ł��镨�Ȃ牽�ł��B
<!-- begin locale en -->an object for a key, which must be able to compare with "is" operator.
<!-- end locale -->
@param a_value (anything) : 
<!-- begin locale ja -->�L�[�l�ɑΉ����ēo�^����I�u�W�F�N�g�B
<!-- begin locale en -->an object to set associated with a key.
<!-- end locale -->
   � ���x ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�P$0k[�_�0Y0�P$0��-[�0W0~0Y00�0�P$0L�-[�0U0�0f0D0j0Q0�0p0e�0W0D0�0�P$0h0W0f��R�0U0�0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 S e t   a   v a l u e   a s s o c i a t e d   w i t h   a   k e y .   I f   t h e   k e y   i s   n o t   i n   t h e   X D i c t ,   t h e   k e y   i s   a d d e d . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   
 < ! - -   b e g i n   l o c a l e   j a   - - >0�0�P$0h0j0�0�0�0�0�0�0�0 i s  o{�[P0gkԏ0g0M0�ri0j0�OU0g0�S�0 
 < ! - -   b e g i n   l o c a l e   e n   - - > a n   o b j e c t   f o r   a   k e y ,   w h i c h   m u s t   b e   a b l e   t o   c o m p a r e   w i t h   " i s "   o p e r a t o r . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   
 < ! - -   b e g i n   l o c a l e   j a   - - >0�0�P$0k[�_�0W0fv{�20Y0�0�0�0�0�0�0�0 
 < ! - -   b e g i n   l o c a l e   e n   - - > a n   o b j e c t   t o   s e t   a s s o c i a t e d   w i t h   a   k e y . 
 < ! - -   e n d   l o c a l e   - - > 
� ��� i   7 :��� I      ������� 0 	set_value  � ��� o      ���� 	0 a_key  � ���� o      ���� 0 a_value  ��  ��  � Q     =���� k    $�� ��� I    ������� 0 search_value  � ��� o    ���� 	0 a_key  � ��� n   ��� o    ���� 	0 _keys  �  f    � ��� n   ��� o   	 ���� 0 _values  �  f    	� ���� n   ��� o    ���� 0 _key_comparator  �  f    ��  ��  � ���� I   $������ 0 set_item  � l   ������ n   ��� o    ���� 0 _values  �  f    ��  ��  � ����
�� 
for � o    ���� 0 a_value  � �����
�� 
at  � l    ������ n    ��� n    ��� I     �������� 0 current_index  ��  ��  � o    ���� 	0 _keys  �  f    ��  ��  ��  ��  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m      �������  � k   , =�� ��� n  , 4   n  - 4 I   / 4������ 0 push   �� o   / 0���� 	0 a_key  ��  ��   o   - /���� 	0 _keys    f   , -� �� n  5 = n  6 =	
	 I   8 =������ 0 push   �� o   8 9���� 0 a_value  ��  ��  
 o   6 8���� 0 _values    f   5 6��  �  l     ��������  ��  ��    l      ����  ��!
@abstruct
<!-- begin locale ja -->
�w�肵���l���L�[�l�Ƃ��đ��݂��邩���ׂ܂��B
<!-- begin locale en -->
Chack whether a passed value is icluded as a key value or not.
<!-- end locale -->
@param a_key (anything) :
<!-- begin locale ja -->�L�[�l
<!-- begin locale en -->a key to check<!-- end locale -->
@result boolean : <!-- begin locale ja -->�w�肵���L�[�l�����݂����� true
<!-- begin locale en -->true if a value exists as a key value.<!-- end locale -->
    �N ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
c[�0W0_P$0L0�0�P$0h0W0f[XW(0Y0�0K��0y0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 C h a c k   w h e t h e r   a   p a s s e d   v a l u e   i s   i c l u d e d   a s   a   k e y   v a l u e   o r   n o t . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   : 
 < ! - -   b e g i n   l o c a l e   j a   - - >0�0�P$ 
 < ! - -   b e g i n   l o c a l e   e n   - - > a   k e y   t o   c h e c k < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   b o o l e a n   :   < ! - -   b e g i n   l o c a l e   j a   - - >c[�0W0_0�0�P$0L[XW(0W0_0�   t r u e 
 < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   a   v a l u e   e x i s t s   a s   a   k e y   v a l u e . < ! - -   e n d   l o c a l e   - - > 
  i   ; > I      ������ 0 has_key   �� o      ���� 	0 a_key  ��  ��   Q     K Z    $�� H       E   !"! J    ## $��$ G    
%&% m    ��
�� 
reco& m    ��
�� 
list��  " n    '(' 1    ��
�� 
pcls( o    ���� 	0 a_key   L    )) n   *+* n   ,-, I    ��.���� 0 has_item  . /��/ o    ���� 	0 a_key  ��  ��  - o    ���� 	0 _keys  +  f    ��   R     $������
�� .ascrerr ****      � ****��  ��   R      ������
�� .ascrerr ****      � ****��  ��   Q   , K0120 k   / A33 454 I   / >��6���� 0 search_value  6 787 o   0 1���� 	0 a_key  8 9:9 n  1 4;<; o   2 4���� 	0 _keys  <  f   1 2: =>= n  4 7?@? o   5 7���� 0 _values  @  f   4 5> A��A n  7 :BCB o   8 :���� 0 _key_comparator  C  f   7 8��  ��  5 D��D L   ? AEE m   ? @��
�� boovtrue��  1 R      ����F
�� .ascrerr ****      � ****��  F ��G�
�� 
errnG m      �~�~��  2 L   I KHH m   I J�}
�} boovfals IJI l     �|�{�z�|  �{  �z  J KLK l      �yMN�y  M��!
@abstruct
<!-- begin locale ja -->
�w�肵���L�[�l����сA����ɑΉ������l���폜���܂��B
<!-- begin locale en -->
Remove a specified key and a associated value.
<!-- end locale -->
@param a_key (anything) :
<!-- begin locale ja -->�폜�������L�[�l
<!-- begin locale en -->a key to remove<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->�w�肵���L�[�l�����݂��āA�폜�ɐ��������� true
<!-- begin locale en -->true if removing a key and a value is succeeded.<!-- end locale -->
   N �OOh ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
c[�0W0_0�0�P$0J0�0s00]0�0k[�_�0W0_P$0�RJ�d0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 R e m o v e   a   s p e c i f i e d   k e y   a n d   a   a s s o c i a t e d   v a l u e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   : 
 < ! - -   b e g i n   l o c a l e   j a   - - >RJ�d0W0_0D0�0�P$ 
 < ! - -   b e g i n   l o c a l e   e n   - - > a   k e y   t o   r e m o v e < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   b o o l e a n   :   
 < ! - -   b e g i n   l o c a l e   j a   - - >c[�0W0_0�0�P$0L[XW(0W0f0RJ�d0kbR�0W0_0�   t r u e 
 < ! - -   b e g i n   l o c a l e   e n   - - > t r u e   i f   r e m o v i n g   a   k e y   a n d   a   v a l u e   i s   s u c c e e d e d . < ! - -   e n d   l o c a l e   - - > 
L PQP i   ? BRSR I      �xT�w�x 0 remove_for_key  T U�vU o      �u�u 	0 a_key  �v  �w  S k     =VV WXW l     �tYZ�t  Y  log "start removeItem"   Z �[[ , l o g   " s t a r t   r e m o v e I t e m "X \]\ Q     ^_`^ r    aba I    �sc�r�s 0 search_value  c ded o    �q�q 	0 a_key  e fgf n   hih o    �p�p 	0 _keys  i  f    g jkj n   lml o   	 �o�o 0 _values  m  f    	k n�nn n   opo o    �m�m 0 _key_comparator  p  f    �n  �r  b o      �l�l 0 	old_value  _ R      �k�jq
�k .ascrerr ****      � ****�j  q �ir�h
�i 
errnr m      �g�g��h  ` L    ss m    �f
�f boovfals] tut l   �e�d�c�e  �d  �c  u vwv r    (xyx n   &z{z n    &|}| I   " &�b�a�`�b 0 current_index  �a  �`  } o     "�_�_ 	0 _keys  {  f     y o      �^�^ 0 an_index  w ~~ n  ) 1��� n  * 1��� I   , 1�]��\�] 0 	delete_at  � ��[� o   , -�Z�Z 0 an_index  �[  �\  � o   * ,�Y�Y 	0 _keys  �  f   ) * ��� n  2 :��� n  3 :��� I   5 :�X��W�X 0 	delete_at  � ��V� o   5 6�U�U 0 an_index  �V  �W  � o   3 5�T�T 0 _values  �  f   2 3� ��S� L   ; =�� m   ; <�R
�R boovtrue�S  Q ��� l     �Q�P�O�Q  �P  �O  � ��� i   C F��� I      �N��M�N 0 remove_for_value  � ��L� o      �K�K 	0 a_val  �L  �M  � k     =�� ��� l     �J���J  �  log "start removeItem"   � ��� , l o g   " s t a r t   r e m o v e I t e m "� ��� Q     ���� r    ��� I    �I��H�I 0 search_value  � ��� o    �G�G 	0 a_val  � ��� n   ��� o    �F�F 0 _values  �  f    � ��� n   ��� o   	 �E�E 	0 _keys  �  f    	� ��D� n   ��� o    �C�C 0 _value_comparator  �  f    �D  �H  � o      �B�B 0 	old_value  � R      �A�@�
�A .ascrerr ****      � ****�@  � �?��>
�? 
errn� m      �=�=��>  � L    �� m    �<
�< boovfals� ��� l   �;�:�9�;  �:  �9  � ��� r    (��� n   &��� n    &��� I   " &�8�7�6�8 0 current_index  �7  �6  � o     "�5�5 0 _values  �  f     � o      �4�4 0 an_index  � ��� n  ) 1��� n  * 1��� I   , 1�3��2�3 0 	delete_at  � ��1� o   , -�0�0 0 an_index  �1  �2  � o   * ,�/�/ 	0 _keys  �  f   ) *� ��� n  2 :��� n  3 :��� I   5 :�.��-�. 0 	delete_at  � ��,� o   5 6�+�+ 0 an_index  �,  �-  � o   3 5�*�* 0 _values  �  f   2 3� ��)� L   ; =�� m   ; <�(
�( boovtrue�)  � ��� l     �'�&�%�'  �&  �%  � ��� l      �$���$  � � �!@abstruct
<!-- begin locale ja -->
�L�[�l�Ɛݒ肳��Ă���l�̃��X�g��Ԃ��܂��B
<!-- begin locale en -->
Obtain all keys as a list
<!-- end locale -->
@result list
   � ��� ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�P$0h�-[�0U0�0f0D0�P$0n0�0�0�0���0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b t a i n   a l l   k e y s   a s   a   l i s t 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   l i s t 
� ��� i   G J��� I      �#�"�!�# 0 all_keys  �"  �!  � L     �� n    ��� n   ��� I    � ���  0 	all_items  �  �  � o    �� 	0 _keys  �  f     � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct
<!-- begin locale ja -->
�L�[�l�ɑΉ�����l�Ƃ��Đݒ肳��Ă��镨�̃��X�g��Ԃ��܂��B
<!-- begin locale en -->
Obtain all values as a list
<!-- end locale -->
@result list
   � ���2 ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�P$0k[�_�0Y0�P$0h0W0f�-[�0U0�0f0D0�ri0n0�0�0�0���0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b t a i n   a l l   v a l u e s   a s   a   l i s t 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   l i s t 
� ��� i   K N��� I      ���� 0 
all_values  �  �  � L     �� n    ��� n   ��� I    ���� 0 	all_items  �  �  � o    �� 0 _values  �  f     � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct
<!-- begin locale ja -->
�ݒ肳��Ă���L�[�l�̐���Ԃ��܂��B
<!-- begin locale en -->
Obtain all keys as a list
<!-- end locale -->
@result list
   � ��� ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
�-[�0U0�0f0D0�0�0�P$0nep0���0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b t a i n   a l l   k e y s   a s   a   l i s t 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   l i s t 
� ��� i   O R��� I      ���� 0 
count_keys  �  �  � k     �� ��� O       I   �
�	�
�
 .corecnte****       ****�	  �   n     o    �� 	0 _keys    f     � � L     1    �
� 
rslt�  �  l     ����  �  �   	 l      �
�  
 � �!
@abstruct
<!-- begin locale ja -->
�ݒ肳��Ă��� �L�[�l�ƒl�����ׂď������܂��B
<!-- begin locale en -->
Remove all keys and values
<!-- end locale -->
    �
 ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
�-[�0U0�0f0D0�  0�0�P$0hP$0�0Y0y0fm�S�0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 R e m o v e   a l l   k e y s   a n d   v a l u e s 
 < ! - -   e n d   l o c a l e   - - > 
	  i   S V I      � �����  
0 forget  ��  ��   k       r      I    	����
�� .corecrel****      � null o     ���� 0 xlist XList��   n      o   
 ���� 0 _values    f   	 
  r     I   ����
�� .corecrel****      � null o    ���� 0 xlist XList��   n      o    ���� 	0 _keys    f      ��  L    !!  f    ��   "#" l     ��������  ��  ��  # $%$ l      ��&'��  & . (!@group Setting and Getting Comparators    ' �(( P ! @ g r o u p   S e t t i n g   a n d   G e t t i n g   C o m p a r a t o r s  % )*) l     ��������  ��  ��  * +,+ l      ��-.��  -��!
@abstruct
<!-- begin locale ja -->
key comparator ��ݒ肵�܂��Bkey comparator �́A�L�[�l���r���鎞�ɗp�����܂��B
<!-- begin locale en -->
Set a key comparator script to the instance.
<!-- end locale -->
@description
<!-- begin locale ja -->
key comparator script �͈ȉ��̎d�l�𖞂����Ă���K�v������܂��B
* ��� positional parameter ������ do handler ���������Ă���B
* do handler �͓�̈��������l�̎��� true ��Ԃ��B����ȊO�̏ꍇ�� false ��Ԃ��B
<!-- begin locale en -->
A key comparator script must have following specification.
* do handler which have two positional parameters.
* do handler return true if two argumetns are identical, otherwise return false.
<!-- end locale -->
@param a_script (script object)
@result script object : me
   . �//6 ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
 k e y   c o m p a r a t o r  0��-[�0W0~0Y0 k e y   c o m p a r a t o r  0o00�0�P$0�kԏ0Y0�fB0ku(0D0�0�0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 S e t   a   k e y   c o m p a r a t o r   s c r i p t   t o   t h e   i n s t a n c e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ d e s c r i p t i o n 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
 k e y   c o m p a r a t o r   s c r i p t  0oN�N0nN�i�0�n�0_0W0f0D0�_ŉ�0L0B0�0~0Y0 
 *  N�0d0n   p o s i t i o n a l   p a r a m e t e r  0�c0d   d o   h a n d l e r  0�[���0W0f0D0�0 
 *   d o   h a n d l e r  0oN�0d0n_ep0LTP$0nfB0k   t r u e  0���0Y00]0�N�Y0nX4T0o   f a l s e  0���0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 A   k e y   c o m p a r a t o r   s c r i p t   m u s t   h a v e   f o l l o w i n g   s p e c i f i c a t i o n . 
 *   d o   h a n d l e r   w h i c h   h a v e   t w o   p o s i t i o n a l   p a r a m e t e r s . 
 *   d o   h a n d l e r   r e t u r n   t r u e   i f   t w o   a r g u m e t n s   a r e   i d e n t i c a l ,   o t h e r w i s e   r e t u r n   f a l s e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ s c r i p t   ( s c r i p t   o b j e c t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   m e 
, 010 i   W Z232 I      ��4���� 0 set_key_comparator  4 5��5 o      ���� 0 a_script  ��  ��  3 k     66 787 r     9:9 o     ���� 0 a_script  : n     ;<; o    ���� 0 _key_comparator  <  f    8 =��= L    >>  f    ��  1 ?@? l     ��������  ��  ��  @ ABA l      ��CD��  C��!
@abstruct
<!-- begin locale ja -->
value comparator ��ݒ肵�܂��Bvalue comparator �́A�l���r���鎞�ɗp�����܂��B
<!-- begin locale en -->
Set a value comparator script to the instance.
<!-- end locale -->
@description
<!-- begin locale ja -->
value comparator script �͈ȉ��̎d�l�𖞂����Ă���K�v������܂��B
* ��� positional parameter ������ do handler ���������Ă���B
* do handler �͓�̈��������l�̎��� true ��Ԃ��B����ȊO�̏ꍇ�� false ��Ԃ��B
<!-- begin locale en -->
A key comparator script must have following specification.
* do handler which have two positional parameters.
* do handler return true if two argumetns are identical, otherwise return false.
<!-- end locale -->
@param a_script (script object)
@result script object : me
   D �EEB ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
 v a l u e   c o m p a r a t o r  0��-[�0W0~0Y0 v a l u e   c o m p a r a t o r  0o0P$0�kԏ0Y0�fB0ku(0D0�0�0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 S e t   a   v a l u e   c o m p a r a t o r   s c r i p t   t o   t h e   i n s t a n c e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ d e s c r i p t i o n 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
 v a l u e   c o m p a r a t o r   s c r i p t  0oN�N0nN�i�0�n�0_0W0f0D0�_ŉ�0L0B0�0~0Y0 
 *  N�0d0n   p o s i t i o n a l   p a r a m e t e r  0�c0d   d o   h a n d l e r  0�[���0W0f0D0�0 
 *   d o   h a n d l e r  0oN�0d0n_ep0LTP$0nfB0k   t r u e  0���0Y00]0�N�Y0nX4T0o   f a l s e  0���0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 A   k e y   c o m p a r a t o r   s c r i p t   m u s t   h a v e   f o l l o w i n g   s p e c i f i c a t i o n . 
 *   d o   h a n d l e r   w h i c h   h a v e   t w o   p o s i t i o n a l   p a r a m e t e r s . 
 *   d o   h a n d l e r   r e t u r n   t r u e   i f   t w o   a r g u m e t n s   a r e   i d e n t i c a l ,   o t h e r w i s e   r e t u r n   f a l s e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   a _ s c r i p t   ( s c r i p t   o b j e c t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   m e 
B FGF i   [ ^HIH I      ��J���� 0 set_value_comparator  J K��K o      ���� 0 a_script  ��  ��  I k     LL MNM r     OPO o     ���� 0 a_script  P n     QRQ o    ���� 0 _value_comparator  R  f    N S��S L    TT  f    ��  G UVU l     ��������  ��  ��  V WXW l      ��YZ��  Y � �!@abstruct
<!-- begin locale ja -->
�ݒ肳��Ă��� key comparator ���擾���܂��B
<!-- begin locale en -->
Obrain the key comprator of the XDict instance.
<!-- end locale -->
@result script object
   Z �[[l ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
�-[�0U0�0f0D0�   k e y   c o m p a r a t o r  0�S�_�0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b r a i n   t h e   k e y   c o m p r a t o r   o f   t h e   X D i c t   i n s t a n c e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   s c r i p t   o b j e c t 
X \]\ i   _ b^_^ I      �������� 0 key_comparator  ��  ��  _ L     `` n    aba o    ���� 0 _key_comparator  b  f     ] cdc l     ��������  ��  ��  d efe l      ��gh��  g � �!@abstruct
<!-- begin locale ja -->
�ݒ肳��Ă��� value comparator ���擾���܂��B
<!-- begin locale en -->
Obrain the value comprator of the XDict instance.
<!-- end locale -->
@result script object
   h �iit ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
�-[�0U0�0f0D0�   v a l u e   c o m p a r a t o r  0�S�_�0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 O b r a i n   t h e   v a l u e   c o m p r a t o r   o f   t h e   X D i c t   i n s t a n c e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   s c r i p t   o b j e c t 
f jkj i   c flml I      �������� 0 value_comparator  ��  ��  m L     nn n    opo o    ���� 0 _value_comparator  p  f     k qrq l     ��������  ��  ��  r sts l      ��uv��  u $ !@group Obtain Iterator Object   v �ww < ! @ g r o u p   O b t a i n   I t e r a t o r   O b j e c tt xyx l     ��������  ��  ��  y z{z l      ��|}��  |��!@abstruct
<!-- begin locale ja -->
XDict �̃C�e���[�^���擾���܂��B �C�e���[�^�I�u�W�F�N�g�� ((<next>))() �n���h���ŃL�[�ƒl�̃y�A���X�g {a_key, a_value} ��Ԃ��܂��B
<!-- begin locale en -->
Make an iterator object of XDict. The iterator object return a pair list of key and a value i.e. {a_key, a_value} with ((<next>))() handler.
<!-- end locale -->
@result script object : An iterator
   } �~~� ! @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
 X D i c t  0n0�0�0�0�0�0�S�_�0W0~0Y0  0�0�0�0�0�0�0�0�0�0�0�0o   ( ( < n e x t > ) ) ( )  0�0�0�0�0g0�0�0hP$0n0�0�0�0�0�   { a _ k e y ,   a _ v a l u e }  0���0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 M a k e   a n   i t e r a t o r   o b j e c t   o f   X D i c t .   T h e   i t e r a t o r   o b j e c t   r e t u r n   a   p a i r   l i s t   o f   k e y   a n d   a   v a l u e   i . e .   { a _ k e y ,   a _ v a l u e }   w i t h   ( ( < n e x t > ) ) ( )   h a n d l e r . 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t   s c r i p t   o b j e c t   :   A n   i t e r a t o r 
{ � i   g j��� I      �������� 0 iterator  ��  ��  � k     $�� ��� r     ���  f     � o      ���� 
0 a_dict  � ��� r    ��� n   ��� I   	 ������� 0 	make_with  � ���� n  	 ��� n  
 ��� I    �������� 0 list_ref  ��  ��  � o   
 ���� 	0 _keys  �  f   	 
��  ��  � o    	���� 0 xlist XList� o      ���� 0 key_list  � ��� r    ��� n   ��� o    ���� 0 _values  �  f    � o      ���� 0 
value_list  � ��� l    ������  � ( "!@group Methods of Iterator Object   � ��� D ! @ g r o u p   M e t h o d s   o f   I t e r a t o r   O b j e c t� ���� h    $����� 0 xdictiterator XDictIterator� k      �� ��� j     ����� 0 _values  � o     ���� 0 
value_list  � ��� j    ����� 	0 _keys  � o    ���� 0 key_list  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
		<!-- begin locale ja -->
		���̃I�u�W�F�N�g���擾�ł��邩�ǂ������ׂ܂��B
		<!-- begin locale en -->
		Check whether next object can be obtained or not.
		<!-- end locale -->
		@result boolean
		   � ���r ! @ a b s t r u c t 
 	 	 < ! - -   b e g i n   l o c a l e   j a   - - > 
 	 	k!0n0�0�0�0�0�0�0�S�_�0g0M0�0K0i0F0K��0y0~0Y0 
 	 	 < ! - -   b e g i n   l o c a l e   e n   - - > 
 	 	 C h e c k   w h e t h e r   n e x t   o b j e c t   c a n   b e   o b t a i n e d   o r   n o t . 
 	 	 < ! - -   e n d   l o c a l e   - - > 
 	 	 @ r e s u l t   b o o l e a n 
 	 	� ��� i    ��� I      �������� 0 has_next  ��  ��  � L     
�� n    	��� I    	�������� 0 has_next  ��  ��  � o     ���� 	0 _keys  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct
		<!-- begin locale ja -->
		���̃L�[�l�ƑΉ������l���擾���܂��B
		<!-- begin locale en -->
		Obtain a next pair of a key and its value.
		<!-- end locale -->
		@description
		<!--begin locale ja-->
		���̃L�[�l���擾�ł��Ȃ��ꍇ�́Aerror number 900 ���������܂��B
		<!-- begin locale en -->
		If it is fail to obtain next key value, error number 900 will be raised.
		<!--end locale-->
		@result list : { a_key, a_value}
		   � ��� ! @ a b s t r u c t 
 	 	 < ! - -   b e g i n   l o c a l e   j a   - - > 
 	 	k!0n0�0�P$0h[�_�0W0_P$0�S�_�0W0~0Y0 
 	 	 < ! - -   b e g i n   l o c a l e   e n   - - > 
 	 	 O b t a i n   a   n e x t   p a i r   o f   a   k e y   a n d   i t s   v a l u e . 
 	 	 < ! - -   e n d   l o c a l e   - - > 
 	 	 @ d e s c r i p t i o n 
 	 	 < ! - - b e g i n   l o c a l e   j a - - > 
 	 	k!0n0�0�P$0LS�_�0g0M0j0DX4T0o0 e r r o r   n u m b e r   9 0 0  0Lvzu0W0~0Y0 
 	 	 < ! - -   b e g i n   l o c a l e   e n   - - > 
 	 	 I f   i t   i s   f a i l   t o   o b t a i n   n e x t   k e y   v a l u e ,   e r r o r   n u m b e r   9 0 0   w i l l   b e   r a i s e d . 
 	 	 < ! - - e n d   l o c a l e - - > 
 	 	 @ r e s u l t   l i s t   :   {   a _ k e y ,   a _ v a l u e } 
 	 	� ��� i    ��� I      �������� 0 next  ��  ��  � k     &�� ��� r     ��� n    	��� I    	�������� 0 next  ��  ��  � o     ���� 	0 _keys  � o      ���� 	0 a_key  � ��� l    ������  � ` Z
			if a_key is missing value then
				return {missing value, missing value}
			end if
			   � ��� � 
 	 	 	 i f   a _ k e y   i s   m i s s i n g   v a l u e   t h e n 
 	 	 	 	 r e t u r n   { m i s s i n g   v a l u e ,   m i s s i n g   v a l u e } 
 	 	 	 e n d   i f 
 	 	 	� ��� r     ��� n   ��� I    ������� 0 item_at  � ���� n   ��� I    �������� 0 current_index  ��  ��  � o    ���� 	0 _keys  ��  ��  � o    ���� 0 _values  � o      ���� 0 a_value  � ���� L   ! &�� J   ! %�� ��� o   ! "���� 	0 a_key  � ���� o   " #���� 0 a_value  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
		<!-- begin locale ja -->
		((<next>))() �Ŏ擾����L�[�l�ƒl�̃y�A���ŏ��ɖ߂��܂��B
		<!-- begin locale en -->
		Make a pair of a key and a value retuned by ((<next>))() revert to first one.
		<!-- end locale -->
		   � ���� ! @ a b s t r u c t 
 	 	 < ! - -   b e g i n   l o c a l e   j a   - - > 
 	 	 ( ( < n e x t > ) ) ( )  0gS�_�0Y0�0�0�P$0hP$0n0�0�0�g R0kb;0W0~0Y0 
 	 	 < ! - -   b e g i n   l o c a l e   e n   - - > 
 	 	 M a k e   a   p a i r   o f   a   k e y   a n d   a   v a l u e   r e t u n e d   b y   ( ( < n e x t > ) ) ( )   r e v e r t   t o   f i r s t   o n e . 
 	 	 < ! - -   e n d   l o c a l e   - - > 
 	 	� ���� i    ��� I      �������� 	0 reset  ��  ��  � n    	��� I    	��~�}� 	0 reset  �~  �}  � o     �|�| 	0 _keys  ��  ��  � ��� l     �{�z�y�{  �z  �y  � ��� l      �x���x  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     �w�v�u�w  �v  �u  � ��� l      �t���t  �!
@abstruct
<!--begin locale ja-->
�L�[�l�ƒl�̃y�A���X�g�̂������ɂ��ăX�N���v�g�I�u�W�F�N�g�� do �n���h�����J��Ԃ����s���܂��B
<!--begin locale en-->
Perform do handler of given script object with passing pair lists of each key and value as a argument.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script �͈�����������Ƃ� do �n���h�����������Ă��Ȃ���΂Ȃ�܂���Bdo �n���h���̕Ԃ�l�� true �������� false �ł���K�v������܂��Bdo �n���h���� false �� �Ԃ��Ə����𒆎~���܂��B

<!--begin locale en-->
a_script must have a do handler which require only argument. The do handler must return true or false.

When the do handler return false, the process is stoped immediately.
<!--end locale-->
@param
<!--begin locale ja-->
a_script(�X�N���v�g�I�u�W�F�N�g) : ������������Ƃ� do �n���h���������Ă���K�v������܂��B do �n���h���͐^�U�l��Ԃ��Ȃ��Ă͂Ȃ�܂���B
<!--begin locale en-->
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
<!--end locale-->
   � ���� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�P$0hP$0n0�0�0�0�0�0n0�_ep0k0W0f0�0�0�0�0�0�0�0�0�0�0�0n   d o  0�0�0�0�0�~p0���0W[��L0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n   
 < ! - - b e g i n   l o c a l e   j a - - > 
 a _ s c r i p t  0o_ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�[���0W0f0D0j0Q0�0p0j0�0~0[0�0 d o  0�0�0�0�0n��0�P$0o   t r u e  0�0W0O0o   f a l s e  0g0B0�_ŉ�0L0B0�0~0Y0 d o  0�0�0�0�0L   f a l s e  0�  ��0Y0hQ�t0�N-kb0W0~0Y0 
 
 < ! - - b e g i n   l o c a l e   e n - - > 
 a _ s c r i p t   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e . 
 
 W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m 
 < ! - - b e g i n   l o c a l e   j a - - > 
 a _ s c r i p t (0�0�0�0�0�0�0�0�0�0�0� )   :  _ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�c0c0f0D0�_ŉ�0L0B0�0~0Y0   d o  0�0�0�0�0owP}P$0���0U0j0O0f0o0j0�0~0[0�0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
 < ! - - e n d   l o c a l e - - > 
� ��� i   k n��� I      �s��r�s 0 each  � ��q� o      �p�p 0 a_script  �q  �r  � k     /�� ��� r        I     �o�n�m�o 0 iterator  �n  �m   o      �l�l 0 an_iterator  � �k V    / k    *  r    	 n   

 I    �j�i�h�j 0 next  �i  �h   o    �g�g 0 an_iterator  	 o      �f�f 
0 a_pair   �e Z    *�d�c l   "�b�a =   " n     I     �`�_�` 0 do   �^ o    �]�] 
0 a_pair  �^  �_   o    �\�\ 0 a_script   m     !�[
�[ boovfals�b  �a    S   % &�d  �c  �e   n    I    �Z�Y�X�Z 0 has_next  �Y  �X   o    �W�W 0 an_iterator  �k  �  l     �V�U�T�V  �U  �T    l      �S�S  ke!
@abstruct 
<!--begin locale ja-->
�L�[�l�ƒl�̃y�A���X�g�̂������ɂ��ăX�N���v�g�I�u�W�F�N�g�� do �n���h�����J��Ԃ����s���܂��B
do �n���h���̕Ԃ�l��v�f�Ƃ��� ((<XList>)) �����ʂɂȂ�܂��B
<!--begin locale en-->
Perform do handler of given script object with passing pair lists of each key and value as a argument.�@A ((<XList>)) consisting of the results of do handler is returned.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script �͈�����������Ƃ� do �n���h�����������Ă��Ȃ���΂Ȃ�܂���B
<!--begin locale en-->
a_script must have a�@do handler which require only argument.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> ������������Ƃ� do �n���h���������Ă���K�v������܂��B
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->
@result script object : a XList instance
    �� ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�P$0hP$0n0�0�0�0�0�0n0�_ep0k0W0f0�0�0�0�0�0�0�0�0�0�0�0n   d o  0�0�0�0�0�~p0���0W[��L0W0~0Y0 
 d o  0�0�0�0�0n��0�P$0���} 0h0W0_   ( ( < X L i s t > ) )  0L}Pg�0k0j0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t .0  A   ( ( < X L i s t > ) )   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n   
 < ! - - b e g i n   l o c a l e   j a - - > 
 a _ s c r i p t  0o_ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�[���0W0f0D0j0Q0�0p0j0�0~0[0�0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   : 
 < ! - - b e g i n   l o c a l e   j a - - >  _ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�c0c0f0D0�_ŉ�0L0B0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - >   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X L i s t   i n s t a n c e 
   i   o r!"! I      �R#�Q�R 0 map  # $�P$ o      �O�O 0 a_script  �P  �Q  " k     %% &'& r     ()( I     �N*�M�N 0 map_as_list  * +�L+ o    �K�K 0 a_script  �L  �M  ) o      �J�J 0 out_list  ' ,�I, L   	 -- n  	 ./. I    �H0�G�H 0 	make_with  0 1�F1 o    �E�E 0 out_list  �F  �G  / o   	 �D�D 0 xlist XList�I    232 l     �C�B�A�C  �B  �A  3 454 l      �@67�@  6��!
@abstruct 
<!--begin locale ja-->
((<map>)) �Ƃقړ����ł����A�Ԃ�l�� AppleScript �̃��X�g�I�u�W�F�N�g�ɂȂ�܂��B
<!--begin locale en-->
Almost same to ((<map>)), but a result of this method is AppleScript's list.
<!--end locale-->
@description 
<!--begin locale ja-->
�L�[�l�ƒl�̃y�A���X�g�̂������ɂ��ăX�N���v�g�I�u�W�F�N�g�� do �n���h�����J��Ԃ����s���܂��B
do �n���h���̕Ԃ�l��v�f�Ƃ��� list �����ʂɂȂ�܂��B

a_script �͈�����������Ƃ� do �n���h�����������Ă��Ȃ���΂Ȃ�܂���B
<!--begin locale en-->
Perform do handler of given script object with passing pair lists of each key and value as a argument.�@A list consisting of the results of do handler is returned.

a_script must have a�@do handler which require only argument.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> ������������Ƃ� do �n���h���������Ă���K�v������܂��B
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->
@result list
   7 �88� ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
 ( ( < m a p > ) )  0h0{0|T0X0g0Y0L0��0�P$0L   A p p l e S c r i p t  0n0�0�0�0�0�0�0�0�0�0k0j0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 A l m o s t   s a m e   t o   ( ( < m a p > ) ) ,   b u t   a   r e s u l t   o f   t h i s   m e t h o d   i s   A p p l e S c r i p t ' s   l i s t . 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n   
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�P$0hP$0n0�0�0�0�0�0n0�_ep0k0W0f0�0�0�0�0�0�0�0�0�0�0�0n   d o  0�0�0�0�0�~p0���0W[��L0W0~0Y0 
 d o  0�0�0�0�0n��0�P$0���} 0h0W0_   l i s t  0L}Pg�0k0j0�0~0Y0 
 
 a _ s c r i p t  0o_ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�[���0W0f0D0j0Q0�0p0j0�0~0[0�0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t .0  A   l i s t   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   : 
 < ! - - b e g i n   l o c a l e   j a - - >  _ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�c0c0f0D0�_ŉ�0L0B0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - >   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   l i s t 
5 9:9 i   s v;<; I      �?=�>�? 0 map_as_list  = >�=> o      �<�< 0 a_script  �=  �>  < k     0?? @A@ r     BCB J     �;�;  C o      �:�: 0 out_list  A DED r    FGF I    
�9�8�7�9 0 iterator  �8  �7  G o      �6�6 0 an_iterator  E HIH V    -JKJ k    (LL MNM r    OPO n   QRQ I    �5�4�3�5 0 next  �4  �3  R o    �2�2 0 an_iterator  P o      �1�1 
0 a_pair  N S�0S r    (TUT n   %VWV I     %�/X�.�/ 0 do  X Y�-Y o     !�,�, 
0 a_pair  �-  �.  W o     �+�+ 0 a_script  U n      Z[Z  ;   & '[ o   % &�*�* 0 out_list  �0  K n   \]\ I    �)�(�'�) 0 has_next  �(  �'  ] o    �&�& 0 an_iterator  I ^�%^ L   . 0__ o   . /�$�$ 0 out_list  �%  : `a` l     �#�"�!�#  �"  �!  a bcb l     � ���   �  �  c ded l      �fg�  f  !@group Debugging    g �hh $ ! @ g r o u p   D e b u g g i n g  e iji l      �kl�  k��!
@abstruct
<!-- begin locale ja -->
�ݒ肳��Ă���L�[�l�ƑΉ�����l�̈ꗗ�𕶎���Ƃ��ĕԂ��܂��B�f�o�b�N�p�Ɏg���ĉ������B
<!-- begin locale en -->
Dump keys and values in XDict as text. Use this method for debugging.
<!-- end locale -->
@description
<!-- begin locale ja -->
�L�[�l�������͂���ɑΉ�����l�ɕ�����ɕϊ��ł��Ȃ��I�u�W�F�N�g���ݒ肳��Ă���ƃG���[���������܂��B
<!-- begin locale en -->
If objects which can be coerce to string, error raise.
<!-- end locale -->
@result
string

  "key1 -> Value1 
    key2 -> Value2
    ......."
 
 <!-- begin locale ja -->
�Ƃ����t�H�[�}�b�g�ŃL�[�l�ƑΉ�����l�̈ꗗ�𕶎���ɂ��ꂽ�����Ԃ���܂��B
<!-- end locale -->
   l �mm: ! 
 @ a b s t r u c t 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
�-[�0U0�0f0D0�0�0�P$0h[�_�0Y0�P$0nN ��0�e�[WR0h0W0f��0W0~0Y00�0�0�0�u(0kO0c0fN0U0D0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 D u m p   k e y s   a n d   v a l u e s   i n   X D i c t   a s   t e x t .   U s e   t h i s   m e t h o d   f o r   d e b u g g i n g . 
 < ! - -   e n d   l o c a l e   - - > 
 @ d e s c r i p t i o n 
 < ! - -   b e g i n   l o c a l e   j a   - - > 
0�0�P$0�0W0O0o0]0�0k[�_�0Y0�P$0ke�[WR0kY	c�0g0M0j0D0�0�0�0�0�0�0L�-[�0U0�0f0D0�0h0�0�0�0Lvzu0W0~0Y0 
 < ! - -   b e g i n   l o c a l e   e n   - - > 
 I f   o b j e c t s   w h i c h   c a n   b e   c o e r c e   t o   s t r i n g ,   e r r o r   r a i s e . 
 < ! - -   e n d   l o c a l e   - - > 
 @ r e s u l t 
 s t r i n g 
 
     " k e y 1   - >   V a l u e 1   
         k e y 2   - >   V a l u e 2 
         . . . . . . . " 
   
   < ! - -   b e g i n   l o c a l e   j a   - - > 
0h0D0F0�0�0�0�0�0�0g0�0�P$0h[�_�0Y0�P$0nN ��0�e�[WR0k0U0�0_ri0L��0U0�0~0Y0 
 < ! - -   e n d   l o c a l e   - - > 
j non i   w zpqp I      ���� 0 dump  �  �  q k     9rr sts r     uvu m     ww �xx  v o      �� 
0 a_text  t yzy Y    6{�|}�{ r    1~~ b    /��� b    -��� b    $��� b    "��� b     ��� b    ��� o    �� 
0 a_text  � l   ���� n   ��� n   ��� I    ���� 0 item_at  � ��� o    �� 0 n  �  �  � o    �� 	0 _keys  �  f    �  �  � 1    �
� 
tab � m     !�� ���  - >� 1   " #�
� 
tab � l  $ ,���
� n  $ ,��� n  % ,��� I   ' ,�	���	 0 item_at  � ��� o   ' (�� 0 n  �  �  � o   % '�� 0 _values  �  f   $ %�  �
  � o   - .�
� 
ret  o      �� 
0 a_text  � 0 n  | m    �� } l   ��� � n   ��� n  	 ��� I    �������� 0 item_counts  ��  ��  � o   	 ���� 	0 _keys  �  f    	�  �   �  z ���� L   7 9�� o   7 8���� 
0 a_text  ��  o ��� l     ��������  ��  ��  � ��� l      ������  �  * private *   � ���  *   p r i v a t e   *� ��� l     ��������  ��  ��  � ��� i   { ~��� I      �������� 	0 debug  ��  ��  � k     �� ��� r     ��� I     ������� 0 make_with_lists  � ��� J    �� ��� m    �� ���  k e y 1� ���� m    �� ���  k e y 2��  � ���� J    	�� ��� m    �� ���  v a l u e 1� ���� m    �� ���  v a l u e 2��  ��  ��  � o      ���� 
0 a_dict  � ��� l   ������  � % a_dict's remove_for_key("key1")   � ��� > a _ d i c t ' s   r e m o v e _ f o r _ k e y ( " k e y 1 " )� ��� I   �����
�� .ascrcmnt****      � ****� n   ��� I    �������� 0 dump  ��  ��  � o    ���� 
0 a_dict  ��  � ���� o    ���� 
0 a_dict  ��  � ��� l     ��������  ��  ��  � ��� i    ���� I     ������
�� .aevtoappnull  �   � ****��  ��  � k     %�� ��� l     ������  �  return debug()   � ���  r e t u r n   d e b u g ( )� ���� Q     %���� I   ����
�� .HBsushHBTEXT    ��� file� l   ������ I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � �����
�� 
rcIP� m   	 
��
�� boovtrue��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 msg  � �����
�� 
errn� o      ���� 	0 errno  ��  � k    %�� ��� I   ������
�� .miscactvnull��� ��� null��  ��  � ���� I   %�����
�� .sysodisAaleR        TEXT� l   !������ b    !��� b    ��� o    ���� 0 msg  � o    ��
�� 
ret � o     ���� 	0 errno  ��  ��  ��  ��  ��  � ���� l     ��������  ��  ��  ��       "���  ���������� 	
��  �  ����������������������������������������������������������������
�� 
pnam
�� 
vers�� 0 xlist XList
�� .corecrel****      � null�� 0 make_with_pairs  �� 0 make_with_lists  �� &0 defaultcomparator DefaultComparator�� 0 _key_comparator  �� 0 _value_comparator  �� 0 make_with_xlists  �� 0 search_value  �� 0 value_for_key  �� 0 key_for_value  �� 0 	set_value  �� 0 has_key  �� 0 remove_for_key  �� 0 remove_for_value  �� 0 all_keys  �� 0 
all_values  �� 0 
count_keys  �� 
0 forget  �� 0 set_key_comparator  �� 0 set_value_comparator  �� 0 key_comparator  �� 0 value_comparator  �� 0 iterator  �� 0 each  �� 0 map  �� 0 map_as_list  �� 0 dump  �� 	0 debug  
�� .aevtoappnull  �   � ****� ������
�� 
pcls
�� 
MoSp��  � �� 1������
�� .corecrel****      � null��  ��     ���� 0 make_with_lists  �� *jvjvl+  � �� A�������� 0 make_with_pairs  �� ����   ���� 	0 pairs  ��   ������������ 	0 pairs  �� 0 key_list  �� 0 
value_list  �� 0 	pair_list  �� 0 pairstolists PairsToLists ������ [����
�� .corecrel****      � null�� 0 	make_with  �� 0 pairstolists PairsToLists ��������
�� .ascrinit****      � **** k       [��  ��  ��   �~�~ 0 do    �} ]�|�{ �z�} 0 do  �| �y!�y !  �x�x 
0 a_pair  �{   �w�w 
0 a_pair    �v�u
�v 
cobj�u 0 push  �z b  ��k/k+ Ob  ��l/k+ Oe�� L  �� 0 each  �� 0 make_with_xlists  �� =b  j  E�Ob  j  E�Ob  �k+ E�O��K S�O��k+ O*��l+ � �t ��s�r"#�q�t 0 make_with_lists  �s �p$�p $  �o�n�o 0 key_list  �n 0 
value_list  �r  " �m�l�m 0 key_list  �l 0 
value_list  # �k�j�k 0 	make_with  �j 0 make_with_xlists  �q #b  �k+  E�Ob  �k+  E�O*��l+ � �i �  %�i &0 defaultcomparator DefaultComparator%  &'& �h�h 0 do  ' �g ��f�e()�d�g 0 do  �f �c*�c *  �b�a�b 0 a_value  �a 0 target_value  �e  ( �`�_�` 0 a_value  �_ 0 target_value  )  ��d �g �� V� �^ ��]�\+,�[�^ 0 make_with_xlists  �] �Z-�Z -  �Y�X�Y 0 key_list  �X 0 
value_list  �\  + �W�V�U�T�W 0 key_list  �V 0 
value_list  �U 0 a_parent  �T 0 xdict XDict, �S �.�S 0 xdict XDict. �R/�Q�P01�O
�R .ascrinit****      � ****/ k     "22  �33  �44  �55  �66  ��N�N  �Q  �P  0 �M�L�K�J�I
�M 
pare�L 	0 _keys  �K 0 _values  �J 0 _key_comparator  �I 0 _value_comparator  1 �H�G�F�E�D
�H 
pare�G 	0 _keys  �F 0 _values  �E 0 _key_comparator  �D 0 _value_comparator  �O #b  N  Ob   �Ob  �O)�,E�O)�,E��[ )E�O��K S�O�� �C ��B�A78�@�C 0 search_value  �B �?9�? 9  �>�=�<�;�> 	0 a_key  �= 0 key_list  �< 0 
value_list  �; 0 
comparator  �A  7 
�:�9�8�7�6�5�4�3�2�1�: 	0 a_key  �9 0 key_list  �8 0 
value_list  �7 0 
comparator  �6 0 invalid_key_indexes  �5 0 current_key  �4 0 msg  �3 	0 errno  �2 0 an_index  �1 0 a_value  8 �0�/�.�-�,:�+�*�);�(�'<��&�%��$�#�0 	0 reset  �/ 0 has_next  �. 0 next  
�- 
pcnt�, 0 msg  : �"�!� 
�" 
errn�! 	0 errno  �   �+ 0 do  �* 0 current_index  �) 0 item_at  ; ���
� 
errn����  �( 0 	delete_at  �'  < ���
� 
errn��?�  
�& 
utxt�%  
�$ 
errn�#��@ �jvE�O�j+  O jh�j+ �j+ E�O 
��,E�W X  hO %���l+  �j+ E�O��k+ E�OY hW X  	�j+ E�O��k+ 
O��k+ 
OP[OY��O �W )X   ���&%E�W X  a E�O)a a l�� ����=>�� 0 value_for_key  � �?� ?  �� 	0 a_key  �  = �� 	0 a_key  > ������ 	0 _keys  � 0 _values  � 0 _key_comparator  � � 0 search_value  � *�)�,)�,)�,�+   ����@A�
� 0 key_for_value  � �	B�	 B  �� 0 a_value  �  @ �� 0 a_value  A ������ 0 _values  � 	0 _keys  � 0 _value_comparator  � � 0 search_value  �
 *�)�,)�,)�,�+  ��� ��CD��� 0 	set_value  �  ��E�� E  ������ 	0 a_key  �� 0 a_value  ��  C ������ 	0 a_key  �� 0 a_value  D ��������������������F���� 	0 _keys  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  
�� 
for 
�� 
at  �� 0 current_index  �� 0 set_item  ��  F ������
�� 
errn�����  �� 0 push  �� > &*�)�,)�,)�,�+ O)�,��)�,j+ � W X 	 
)�,�k+ O)�,�k+  ������GH���� 0 has_key  �� ��I�� I  ���� 	0 a_key  ��  G ���� 	0 a_key  H ������������������������J
�� 
reco
�� 
list
�� 
bool
�� 
pcls�� 	0 _keys  �� 0 has_item  ��  ��  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  J ������
�� 
errn�����  �� L &�
 ��&kv��, )�,�k+ Y )jhW &X   *�)�,)�,)�,�+ OeW 	X  f ��S����KL���� 0 remove_for_key  �� ��M�� M  ���� 	0 a_key  ��  K �������� 	0 a_key  �� 0 	old_value  �� 0 an_index  L 	������������N������ 	0 _keys  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  ��  N ������
�� 
errn�����  �� 0 current_index  �� 0 	delete_at  �� > *�)�,)�,)�,�+ E�W 	X  fO)�,j+ E�O)�,�k+ O)�,�k+ Oe �������OP���� 0 remove_for_value  �� ��Q�� Q  ���� 	0 a_val  ��  O �������� 	0 a_val  �� 0 	old_value  �� 0 an_index  P 	������������R������ 0 _values  �� 	0 _keys  �� 0 _value_comparator  �� �� 0 search_value  ��  R ������
�� 
errn�����  �� 0 current_index  �� 0 	delete_at  �� > *�)�,)�,)�,�+ E�W 	X  fO)�,j+ E�O)�,�k+ O)�,�k+ Oe �������ST���� 0 all_keys  ��  ��  S  T ������ 	0 _keys  �� 0 	all_items  �� 	)�,j+  �������UV���� 0 
all_values  ��  ��  U  V ������ 0 _values  �� 0 	all_items  �� 	)�,j+  �������WX���� 0 
count_keys  ��  ��  W  X �������� 	0 _keys  
�� .corecnte****       ****
�� 
rslt�� )�, *j UO�E ������YZ���� 
0 forget  ��  ��  Y  Z ������
�� .corecrel****      � null�� 0 _values  �� 	0 _keys  �� b  j  )�,FOb  j  )�,FO)	 ��3����[\���� 0 set_key_comparator  �� ��]�� ]  ���� 0 a_script  ��  [ ���� 0 a_script  \ ���� 0 _key_comparator  �� 	�)�,FO)
 ��I����^_���� 0 set_value_comparator  �� ��`�� `  ���� 0 a_script  ��  ^ ���� 0 a_script  _ ���� 0 _value_comparator  �� 	�)�,FO) ��_����ab��� 0 key_comparator  ��  ��  a  b �~�~ 0 _key_comparator  � )�,E �}m�|�{cd�z�} 0 value_comparator  �|  �{  c  d �y�y 0 _value_comparator  �z )�,E �x��w�vef�u�x 0 iterator  �w  �v  e �t�s�r�q�t 
0 a_dict  �s 0 key_list  �r 0 
value_list  �q 0 xdictiterator XDictIteratorf �p�o�n�m�l�g�p 	0 _keys  �o 0 list_ref  �n 0 	make_with  �m 0 _values  �l 0 xdictiterator XDictIteratorg �kh�j�iij�h
�k .ascrinit****      � ****h k     kk �ll �mm �nn �oo ��g�g  �j  �i  i �f�e�d�c�b�f 0 _values  �e 	0 _keys  �d 0 has_next  �c 0 next  �b 	0 reset  j �a�`pqr�a 0 _values  �` 	0 _keys  p �_��^�]st�\�_ 0 has_next  �^  �]  s  t �[�[ 0 has_next  �\ b  j+  q �Z��Y�Xuv�W�Z 0 next  �Y  �X  u �V�U�V 	0 a_key  �U 0 a_value  v �T�S�R�T 0 next  �S 0 current_index  �R 0 item_at  �W 'b  j+  E�Ob   b  j+ k+ E�O��lvr �Q��P�Owx�N�Q 	0 reset  �P  �O  w  x �M�M 	0 reset  �N 
b  j+  �h b  �Ob  �OL OL OL �u %)E�Ob  )�,j+ k+ E�O)�,E�O��K S� �L��K�Jyz�I�L 0 each  �K �H{�H {  �G�G 0 a_script  �J  y �F�E�D�F 0 a_script  �E 0 an_iterator  �D 
0 a_pair  z �C�B�A�@�C 0 iterator  �B 0 has_next  �A 0 next  �@ 0 do  �I 0*j+  E�O &h�j+ �j+ E�O��k+ f  Y h[OY�� �?"�>�=|}�<�? 0 map  �> �;~�; ~  �:�: 0 a_script  �=  | �9�8�9 0 a_script  �8 0 out_list  } �7�6�7 0 map_as_list  �6 0 	make_with  �< *�k+  E�Ob  �k+  �5<�4�3��2�5 0 map_as_list  �4 �1��1 �  �0�0 0 a_script  �3   �/�.�-�,�/ 0 a_script  �. 0 out_list  �- 0 an_iterator  �, 
0 a_pair  � �+�*�)�(�+ 0 iterator  �* 0 has_next  �) 0 next  �( 0 do  �2 1jvE�O*j+  E�O h�j+ �j+ E�O��k+ �6F[OY��O� �'q�&�%���$�' 0 dump  �&  �%  � �#�"�# 
0 a_text  �" 0 n  � w�!� ������! 	0 _keys  �  0 item_counts  � 0 item_at  
� 
tab � 0 _values  
� 
ret �$ :�E�O 1k)�,j+ kh �)�,�k+ %�%�%�%)�,�k+ %�%E�[OY��O� �������� 	0 debug  �  �  � �� 
0 a_dict  � �������� 0 make_with_lists  � 0 dump  
� .ascrcmnt****      � ****� *��lv��lvl+ E�O�j+ j O� �������
� .aevtoappnull  �   � ****�  �  � ��� 0 msg  � 	0 errno  � ����
��	��
� .earsffdralis        afdr
� 
rcIP
� .HBsushHBTEXT    ��� file�
 0 msg  � ���
� 
errn� 	0 errno  �  
�	 .miscactvnull��� ��� null
� 
ret 
� .sysodisAaleR        TEXT� & )j  �el W X  *j O��%�%j  ascr  ��ޭ