FasdUAS 1.101.10   ��   ��    k             l      ��  ��   � Copyright (C) 2007-2020 Kurita Tetsuro
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	�   C o p y r i g h t   ( C )   2 0 0 7 - 2 0 2 0   K u r i t a   T e t s u r o 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 l     ��������  ��  ��        x     ��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 3��        x    �� ���� 0 xlist XList  4    �� 
�� 
scpt  m       �   
 X L i s t��        x    '�� ����    2    ��
�� 
osax��        j   ' )�� 
�� 
pnam  m   ' (   �     
 X D i c t   ! " ! l     ��������  ��  ��   "  # $ # l      �� % &��   %
}
w!@references
XList || help:openbook='net.script-factory.XList.help'
XText || help:openbook='net.script-factory.XText.help'
Home page || http://www.script-factory.net/XModules/XDict/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XDict/changelog.html
Repository || https://github.com/tkurita/XDict.scptd

@title XDict Reference 
* Version : 1.7.2
* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))
* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

XDict is a module of AppleScript to provides associative list type data collection. The associateve list is a collection of pairs of keys and values.
AppleScript's record class is similar to the associative list.
But record object can do followings :
* Can't append a label at script run time.* Can't specifiy a label using a variable.
XDict allows to avoid these limitations.
The method to search keys in XDict is linear search. 
This means large number of keys cause to make performance slowdown. 
A few hundred of keys may not be serious problems.
A few thousand of keys will cause low performance.

On the other hand, any kind of objects (not only text) can be accept as keys,
for example object spefifiers and script objects and records.

== Example
@example
use XDict : script "XDict"(* Make Instances *)set empty_dict to make XDictset a_dict to XDict's make_with_lists({"key1", "key2"}, {"value1", "value2"})set a_dict to XDict's make_with_pairs({{"key1", "value1"}, {"key2", "value2"}})(* obtain value *)log a_dict's value_for_key("key1")--result : "value1"try	a_dict's value_for_key("key3")on error number 900	log "No value associated with key3"end try(* Reverse Search *)log a_dict's key_for_value("value2") -- result : "key2"(* Non string values can be used as keys *)script scriptAend scriptscript scriptBend scripta_dict's set_value(scriptA, "value3")log a_dict's value_for_key(scriptA) --result : "value3"try	a_dict's value_for_key(scriptB)on error number 900	log "No value associated with scriptB"end try(* Iterator *)set dict_iterator to a_dict's iterator()repeat while dict_iterator's has_next()	set {a_key, a_value} to dict_iterator's next()end repeat(* Loop with a Script Object *)script DictScanner	on do({a_key, a_value})		log a_key		log a_value		return true	end doend scripta_dict's each(DictScanner)script ValueExtractor	on do({a_key, a_value})		return a_value	end doend scriptset a_xlist to a_dict's map(ValueExtractor)(* Dump the Contents for Debugging *)log a_dict's remove_for_key(scriptA) -- result : truea_dict's dump()(* result :
"key1	->	value1
key2	->	value2
"
*)
    & � ' '� ! @ r e f e r e n c e s 
 X L i s t   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . X L i s t . h e l p ' 
 X T e x t   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . X T e x t . h e l p ' 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X D i c t / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X D i c t / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X D i c t . s c p t d 
 
 @ t i t l e   X D i c t   R e f e r e n c e   
 *   V e r s i o n   :   1 . 7 . 2 
 *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
 
 X D i c t   i s   a   m o d u l e   o f   A p p l e S c r i p t   t o   p r o v i d e s   a s s o c i a t i v e   l i s t   t y p e   d a t a   c o l l e c t i o n .   T h e   a s s o c i a t e v e   l i s t   i s   a   c o l l e c t i o n   o f   p a i r s   o f   k e y s   a n d   v a l u e s . 
  A p p l e S c r i p t ' s   r e c o r d   c l a s s   i s   s i m i l a r   t o   t h e   a s s o c i a t i v e   l i s t . 
 B u t   r e c o r d   o b j e c t   c a n   d o   f o l l o w i n g s   :  
 *   C a n ' t   a p p e n d   a   l a b e l   a t   s c r i p t   r u n   t i m e .  *   C a n ' t   s p e c i f i y   a   l a b e l   u s i n g   a   v a r i a b l e .  
  X D i c t   a l l o w s   t o   a v o i d   t h e s e   l i m i t a t i o n s . 
  T h e   m e t h o d   t o   s e a r c h   k e y s   i n   X D i c t   i s   l i n e a r   s e a r c h .   
 T h i s   m e a n s   l a r g e   n u m b e r   o f   k e y s   c a u s e   t o   m a k e   p e r f o r m a n c e   s l o w d o w n .   
 A   f e w   h u n d r e d   o f   k e y s   m a y   n o t   b e   s e r i o u s   p r o b l e m s . 
 A   f e w   t h o u s a n d   o f   k e y s   w i l l   c a u s e   l o w   p e r f o r m a n c e .  
 
 O n   t h e   o t h e r   h a n d ,   a n y   k i n d   o f   o b j e c t s   ( n o t   o n l y   t e x t )   c a n   b e   a c c e p t   a s   k e y s , 
 f o r   e x a m p l e   o b j e c t   s p e f i f i e r s   a n d   s c r i p t   o b j e c t s   a n d   r e c o r d s . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   X D i c t   :   s c r i p t   " X D i c t "   ( *   M a k e   I n s t a n c e s   * )  s e t   e m p t y _ d i c t   t o   m a k e   X D i c t  s e t   a _ d i c t   t o   X D i c t ' s   m a k e _ w i t h _ l i s t s ( { " k e y 1 " ,   " k e y 2 " } ,   { " v a l u e 1 " ,   " v a l u e 2 " } )  s e t   a _ d i c t   t o   X D i c t ' s   m a k e _ w i t h _ p a i r s ( { { " k e y 1 " ,   " v a l u e 1 " } ,   { " k e y 2 " ,   " v a l u e 2 " } } )   ( *   o b t a i n   v a l u e   * )  l o g   a _ d i c t ' s   v a l u e _ f o r _ k e y ( " k e y 1 " )  - - r e s u l t   :   " v a l u e 1 "  t r y  	 a _ d i c t ' s   v a l u e _ f o r _ k e y ( " k e y 3 " )  o n   e r r o r   n u m b e r   9 0 0  	 l o g   " N o   v a l u e   a s s o c i a t e d   w i t h   k e y 3 "  e n d   t r y   ( *   R e v e r s e   S e a r c h   * )  l o g   a _ d i c t ' s   k e y _ f o r _ v a l u e ( " v a l u e 2 " )   - -   r e s u l t   :   " k e y 2 "   ( *   N o n   s t r i n g   v a l u e s   c a n   b e   u s e d   a s   k e y s   * )  s c r i p t   s c r i p t A  e n d   s c r i p t   s c r i p t   s c r i p t B  e n d   s c r i p t   a _ d i c t ' s   s e t _ v a l u e ( s c r i p t A ,   " v a l u e 3 " )  l o g   a _ d i c t ' s   v a l u e _ f o r _ k e y ( s c r i p t A )   - - r e s u l t   :   " v a l u e 3 "  t r y  	 a _ d i c t ' s   v a l u e _ f o r _ k e y ( s c r i p t B )  o n   e r r o r   n u m b e r   9 0 0  	 l o g   " N o   v a l u e   a s s o c i a t e d   w i t h   s c r i p t B "  e n d   t r y   ( *   I t e r a t o r   * )  s e t   d i c t _ i t e r a t o r   t o   a _ d i c t ' s   i t e r a t o r ( )  r e p e a t   w h i l e   d i c t _ i t e r a t o r ' s   h a s _ n e x t ( )  	 s e t   { a _ k e y ,   a _ v a l u e }   t o   d i c t _ i t e r a t o r ' s   n e x t ( )  e n d   r e p e a t   ( *   L o o p   w i t h   a   S c r i p t   O b j e c t   * )  s c r i p t   D i c t S c a n n e r  	 o n   d o ( { a _ k e y ,   a _ v a l u e } )  	 	 l o g   a _ k e y  	 	 l o g   a _ v a l u e  	 	 r e t u r n   t r u e  	 e n d   d o  e n d   s c r i p t   a _ d i c t ' s   e a c h ( D i c t S c a n n e r )   s c r i p t   V a l u e E x t r a c t o r  	 o n   d o ( { a _ k e y ,   a _ v a l u e } )  	 	 r e t u r n   a _ v a l u e  	 e n d   d o  e n d   s c r i p t   s e t   a _ x l i s t   t o   a _ d i c t ' s   m a p ( V a l u e E x t r a c t o r )   ( *   D u m p   t h e   C o n t e n t s   f o r   D e b u g g i n g   * )  l o g   a _ d i c t ' s   r e m o v e _ f o r _ k e y ( s c r i p t A )   - -   r e s u l t   :   t r u e  a _ d i c t ' s   d u m p ( )  ( *   r e s u l t   : 
 " k e y 1 	 - > 	 v a l u e 1 
 k e y 2 	 - > 	 v a l u e 2 
 " 
 * )  
 $  ( ) ( l     ��������  ��  ��   )  * + * l      �� , -��   , " !@group Constructer Methods     - � . . 8 ! @ g r o u p   C o n s t r u c t e r   M e t h o d s   +  / 0 / l     ��������  ��  ��   0  1 2 1 l      �� 3 4��   3 ] W!
@abstruct
Make an empty XDict instance
@result script object : 
an instance of XDict
    4 � 5 5 � ! 
 @ a b s t r u c t 
 M a k e   a n   e m p t y   X D i c t   i n s t a n c e 
 @ r e s u l t   s c r i p t   o b j e c t   :   
 a n   i n s t a n c e   o f   X D i c t 
 2  6 7 6 i   * - 8 9 8 I     ������
�� .corecrel****      � null��  ��   9 L     
 : : I     	�� ;���� 0 make_with_lists   ;  < = < J    ����   =  >�� > J    ����  ��  ��   7  ? @ ? l     ��������  ��  ��   @  A B A l      �� C D��   C � �!
@abstruct
Make a new XDict instance with a list of pair lists of a key and a value.
@param pairs (list) :a list of pairs of a key and a value
{{key1, value1}, {key2,value2},...}
@result script object : a XDict instance
    D � E E� ! 
 @ a b s t r u c t 
 M a k e   a   n e w   X D i c t   i n s t a n c e   w i t h   a   l i s t   o f   p a i r   l i s t s   o f   a   k e y   a n d   a   v a l u e . 
 @ p a r a m   p a i r s   ( l i s t )   : a   l i s t   o f   p a i r s   o f   a   k e y   a n d   a   v a l u e 
 { { k e y 1 ,   v a l u e 1 } ,   { k e y 2 , v a l u e 2 } , . . . } 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X D i c t   i n s t a n c e 
 B  F G F i   . 1 H I H I      �� J���� 0 make_with_pairs   J  K�� K o      ���� 	0 pairs  ��  ��   I k     < L L  M N M l     �� O P��   O ! log "start make_with_pairs"    P � Q Q 6 l o g   " s t a r t   m a k e _ w i t h _ p a i r s " N  R S R r      T U T I    	�� V��
�� .corecrel****      � null V o     ���� 0 xlist XList��   U o      ���� 0 key_list   S  W X W r     Y Z Y I   �� [��
�� .corecrel****      � null [ o    ���� 0 xlist XList��   Z o      ���� 0 
value_list   X  \ ] \ r    $ ^ _ ^ n   " ` a ` I    "�� b���� 0 	make_with   b  c�� c o    ���� 	0 pairs  ��  ��   a o    ���� 0 xlist XList _ o      ���� 0 	pair_list   ]  d e d h   % ,�� f�� 0 pairstolists PairsToLists f k       g g  h i h j     �� j
�� 
pare j 1     ��
�� 
ascr i  k�� k i    	 l m l I      �� n���� 0 do   n  o�� o o      ���� 
0 a_pair  ��  ��   m k      p p  q r q n     s t s I    �� u���� 0 push   u  v�� v n    	 w x w 4    	�� y
�� 
cobj y m    ����  x o    ���� 
0 a_pair  ��  ��   t o     ���� 0 key_list   r  z { z n    | } | I    �� ~���� 0 push   ~  ��  n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 
0 a_pair  ��  ��   } o    ���� 0 
value_list   {  ��� � L     � � m    ��
�� boovtrue��  ��   e  � � � n  - 3 � � � I   . 3�� ����� 0 each   �  ��� � o   . /���� 0 pairstolists PairsToLists��  ��   � o   - .���� 0 	pair_list   �  ��� � L   4 < � � I   4 ;�� ����� 0 make_with_xlists   �  � � � o   5 6���� 0 key_list   �  ��� � o   6 7���� 0 
value_list  ��  ��  ��   G  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!
@abstruct
Make a XDict instance with a list of keys and a list of values.
@param key_list (list) : a list of keys
@param value_list (list) :  a list of values corresponding keys.
@result script object : a XDict instance
    � � � �� ! 
 @ a b s t r u c t 
 M a k e   a   X D i c t   i n s t a n c e   w i t h   a   l i s t   o f   k e y s   a n d   a   l i s t   o f   v a l u e s . 
 @ p a r a m   k e y _ l i s t   ( l i s t )   :   a   l i s t   o f   k e y s 
 @ p a r a m   v a l u e _ l i s t   ( l i s t )   :     a   l i s t   o f   v a l u e s   c o r r e s p o n d i n g   k e y s . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X D i c t   i n s t a n c e 
 �  � � � i   2 5 � � � I      �� ����� 0 make_with_lists   �  � � � o      ���� 0 key_list   �  ��� � o      ���� 0 
value_list  ��  ��   � k     " � �  � � � r      � � � n    
 � � � I    
�� ����� 0 	make_with   �  ��� � o    ���� 0 key_list  ��  ��   � o     ���� 0 xlist XList � o      ���� 0 key_list   �  � � � r     � � � n    � � � I    �� ����� 0 	make_with   �  ��� � o    ���� 0 
value_list  ��  ��   � o    ���� 0 xlist XList � o      ���� 0 
value_list   �  ��� � L    " � � I    !�� ����� 0 make_with_xlists   �  � � � o    ���� 0 key_list   �  ��� � o    ���� 0 
value_list  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � h   6 =�� ��� &0 defaultcomparator DefaultComparator � k       � �  � � � j     �� �
�� 
pare � 1     ��
�� 
ascr �  ��� � i    	 � � � I      � ��~� 0 do   �  � � � o      �}�} 0 a_value   �  ��| � o      �{�{ 0 target_value  �|  �~   � P     
 � ��z � L    	 � � =    � � � o    �y�y 0 a_value   � o    �x�x 0 target_value   � �w�v
�w conscase�v  �z  ��   �  � � � l     �u�t�s�u  �t  �s   �  � � � j   > @�r ��r 0 _key_comparator   � o   > ?�q�q &0 defaultcomparator DefaultComparator �  � � � j   A C�p ��p 0 _value_comparator   � o   A B�o�o &0 defaultcomparator DefaultComparator �  � � � l     �n�m�l�n  �m  �l   �  � � � l      �k � ��k   � �!
@abstruct
Make a XDict instance with a ((<XList>)) of keys and a ((<XList>)) of values.
@param key_list (script object) : a XList of keys
@param value_list (script object) : a XList of values corresponding keys.
@result script object : a XDict instance
    � � � �� ! 
 @ a b s t r u c t 
 M a k e   a   X D i c t   i n s t a n c e   w i t h   a   ( ( < X L i s t > ) )   o f   k e y s   a n d   a   ( ( < X L i s t > ) )   o f   v a l u e s . 
 @ p a r a m   k e y _ l i s t   ( s c r i p t   o b j e c t )   :   a   X L i s t   o f   k e y s 
 @ p a r a m   v a l u e _ l i s t   ( s c r i p t   o b j e c t )   :   a   X L i s t   o f   v a l u e s   c o r r e s p o n d i n g   k e y s . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X D i c t   i n s t a n c e 
 �  � � � i   D G � � � I      �j ��i�j 0 make_with_xlists   �  � � � o      �h�h 0 key_list   �  ��g � o      �f�f 0 
value_list  �g  �i   � k      � �  � � � r      � � �  f      � o      �e�e 0 a_parent   �  � � � h    �d ��d 0 xdict XDict � k       � �  � � � j     �c �
�c 
pare � o     �b�b 0 a_parent   �  � � � j   	 �a ��a 	0 _keys   � o   	 �`�` 0 key_list   �  � � � j    �_ ��_ 0 _values   � o    �^�^ 0 
value_list   �  � � � j    �] ��] 0 _key_comparator   � n    � � � o    �\�\ 0 _key_comparator   �  f     �  ��[ � j    "�Z ��Z 0 _value_comparator   � n   ! � � � o     �Y�Y 0 _value_comparator   �  f    �[   �  ��X � L     � � o    �W�W 0 xdict XDict�X   �    l     �V�U�T�V  �U  �T    l      �S�S    !@group Instance Methods     � 2 ! @ g r o u p   I n s t a n c e   M e t h o d s    l     �R�Q�P�R  �Q  �P   	
	 i   H K I      �O�N�O 0 search_value    o      �M�M 	0 a_key    o      �L�L 0 key_list    o      �K�K 0 
value_list   �J o      �I�I 0 
comparator  �J  �N   k     �  l      �H�H   � �@-- when a value is a record, "is in" operator does not works.
	set exists_key to true
	try
		set exists_key to key_list's has_item(a_key)
	on error
		set exists_key to true
	end try
	
	if not exists_key then
		return missing value
	end if
	    ��0  - -   w h e n   a   v a l u e   i s   a   r e c o r d ,   " i s   i n "   o p e r a t o r   d o e s   n o t   w o r k s . 
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
 	  l     �G�G    log "start seatch_value"    � 0 l o g   " s t a r t   s e a t c h _ v a l u e "  !  r     "#" J     �F�F  # o      �E�E 0 invalid_key_indexes  ! $%$ n   
&'& I    
�D�C�B�D 	0 reset  �C  �B  ' o    �A�A 0 key_list  % ()( V    v*+* k    q,, -.- r    /0/ n   121 I    �@�?�>�@ 0 next  �?  �>  2 o    �=�= 0 key_list  0 o      �<�< 0 current_key  . 343 Q    .5675 r     %898 n     #:;: 1   ! #�;
�; 
pcnt; o     !�:�: 0 current_key  9 o      �9�9 0 current_key  6 R      �8<=
�8 .ascrerr ****      � ****< o      �7�7 0 msg  = �6>�5
�6 
errn> o      �4�4 	0 errno  �5  7 k   - -?? @A@ l   - -�3BC�3  B E ? when current_key is script object, constants of ~ cause error    C �DD ~   w h e n   c u r r e n t _ k e y   i s   s c r i p t   o b j e c t ,   c o n s t a n t s   o f   ~   c a u s e   e r r o r  A E�2E l  - -�1FG�1  F # log msg & "number : " & errno   G �HH : l o g   m s g   &   " n u m b e r   :   "   &   e r r n o�2  4 IJI Q   / oKLMK Z   2 RNO�0�/N n  2 9PQP I   3 9�.R�-�. 0 do  R STS o   3 4�,�, 0 current_key  T U�+U o   4 5�*�* 	0 a_key  �+  �-  Q o   2 3�)�) 0 
comparator  O k   < NVV WXW r   < CYZY n  < A[\[ I   = A�(�'�&�( 0 current_index  �'  �&  \ o   < =�%�% 0 key_list  Z o      �$�$ 0 an_index  X ]^] r   D L_`_ n  D Jaba I   E J�#c�"�# 0 item_at  c d�!d o   E F� �  0 an_index  �!  �"  b o   D E�� 0 
value_list  ` o      �� 0 a_value  ^ e�e  S   M N�  �0  �/  L R      �fg
� .ascrerr ****      � ****f o      �� 0 msg  g �h�
� 
errnh d      ii m      �� +�  M l  Z ojklj k   Z omm non l  Z Z�pq�  p 1 +log "error in search_value of XDict:" & msg   q �rr V l o g   " e r r o r   i n   s e a r c h _ v a l u e   o f   X D i c t : "   &   m s go sts r   Z auvu n  Z _wxw I   [ _���� 0 current_index  �  �  x o   Z [�� 0 key_list  v o      �� 0 an_index  t yzy n  b h{|{ I   c h�}�� 0 	delete_at  } ~�~ o   c d�� 0 an_index  �  �  | o   b c�� 0 key_list  z � n  i o��� I   j o���
� 0 	delete_at  � ��	� o   j k�� 0 an_index  �	  �
  � o   i j�� 0 
value_list  �  k H B if _keys have an alias, the original of the alias does not found.   l ��� �   i f   _ k e y s   h a v e   a n   a l i a s ,   t h e   o r i g i n a l   o f   t h e   a l i a s   d o e s   n o t   f o u n d .J ��� l  p p����  �  �  �  + n   ��� I    ��� � 0 has_next  �  �   � o    ���� 0 key_list  ) ���� Q   w ����� L   z |�� o   z {���� 0 a_value  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ����
���  � k   � ��� ��� Q   � ����� r   � ���� b   � ���� m   � ��� ��� 2 N o   v a l u e   a s s o c i a t e d   w i t h  � l  � ������� c   � ���� o   � ����� 0 a_value  � m   � ���
�� 
utxt��  ��  � o      ���� 0 msg  � R      ������
�� .ascrerr ****      � ****��  ��  � r   � ���� m   � ��� ��� H N o   v a l u e   a s s o c i a t e d   w i t h   a   k e y   v a l u e� o      ���� 0 msg  � ���� R   � �����
�� .ascrerr ****      � ****� o   � ����� 0 msg  � �����
�� 
errn� m   � ��������  ��  ��  
 ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Obtain a value associated with a specified key. If a key is not in a XDict, error number 900 will be rasied.
@param a_key (anything) : a key to obtain its value
@result anything : an object associated with a_key
   � ���� ! 
 @ a b s t r u c t 
 O b t a i n   a   v a l u e   a s s o c i a t e d   w i t h   a   s p e c i f i e d   k e y .   I f   a   k e y   i s   n o t   i n   a   X D i c t ,   e r r o r   n u m b e r   9 0 0   w i l l   b e   r a s i e d . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   a   k e y   t o   o b t a i n   i t s   v a l u e 
 @ r e s u l t   a n y t h i n g   :   a n   o b j e c t   a s s o c i a t e d   w i t h   a _ k e y 
� ��� i   L O��� I      ������� 0 value_for_key  � ���� o      ���� 	0 a_key  ��  ��  � L     �� I     ������� 0 search_value  � ��� o    ���� 	0 a_key  � ��� n   ��� o    ���� 	0 _keys  �  f    � ��� n   ��� o    ���� 0 _values  �  f    � ���� n   ��� o   	 ���� 0 _key_comparator  �  f    	��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �A;!
@abstruct
Obtain a key associating a value. If a same value using "is" operator is not found, missing value is returened.
@description
The values in XDict is not unique. A found value at the first will be returend.
@param a_key (anything) :  an object used as a value.
@result anything : an object used as a key.
   � ���v ! 
 @ a b s t r u c t 
 O b t a i n   a   k e y   a s s o c i a t i n g   a   v a l u e .   I f   a   s a m e   v a l u e   u s i n g   " i s "   o p e r a t o r   i s   n o t   f o u n d ,   m i s s i n g   v a l u e   i s   r e t u r e n e d . 
 @ d e s c r i p t i o n 
 T h e   v a l u e s   i n   X D i c t   i s   n o t   u n i q u e .   A   f o u n d   v a l u e   a t   t h e   f i r s t   w i l l   b e   r e t u r e n d . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :     a n   o b j e c t   u s e d   a s   a   v a l u e . 
 @ r e s u l t   a n y t h i n g   :   a n   o b j e c t   u s e d   a s   a   k e y . 
� ��� i   P S��� I      ������� 0 key_for_value  � ���� o      ���� 0 a_value  ��  ��  � L     �� I     ������� 0 search_value  � ��� o    ���� 0 a_value  � ��� n   ��� o    ���� 0 _values  �  f    � ��� n   ��� o    ���� 	0 _keys  �  f    � ���� n   ��� o   	 ���� 0 _value_comparator  �  f    	��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �!
@abstruct
Set a value associated with a key. If the key is not in the XDict, the key is added.
@param a_key (anything) : an object for a key, which must be able to compare with "is" operator.
@param a_value (anything) : an object to set associated with a key.
   � ��� ! 
 @ a b s t r u c t 
 S e t   a   v a l u e   a s s o c i a t e d   w i t h   a   k e y .   I f   t h e   k e y   i s   n o t   i n   t h e   X D i c t ,   t h e   k e y   i s   a d d e d . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   a n   o b j e c t   f o r   a   k e y ,   w h i c h   m u s t   b e   a b l e   t o   c o m p a r e   w i t h   " i s "   o p e r a t o r . 
 @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   a n   o b j e c t   t o   s e t   a s s o c i a t e d   w i t h   a   k e y . 
� ��� i   T W��� I      ������� 0 	set_value  � ��� o      ���� 	0 a_key  � ���� o      ���� 0 a_value  ��  ��  � Q     =���� k    $�� ��� I    ������� 0 search_value  � ��� o    ���� 	0 a_key  � ��� n   ��� o    ���� 	0 _keys  �  f    � ��� n   ��� o   	 ���� 0 _values  �  f    	� ���� n      o    ���� 0 _key_comparator    f    ��  ��  � �� I   $���� 0 set_item   l   ���� n    o    ���� 0 _values    f    ��  ��   ��	
�� 
for  o    ���� 0 a_value  	 ��
��
�� 
at  
 l    ���� n     n     I     �������� 0 current_index  ��  ��   o    ���� 	0 _keys    f    ��  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****��   ����
�� 
errn m      �������  � k   , =  n  , 4 n  - 4 I   / 4������ 0 push   �� o   / 0���� 	0 a_key  ��  ��   o   - /���� 	0 _keys    f   , - �� n  5 = n  6 = I   8 =�� ���� 0 push    !��! o   8 9���� 0 a_value  ��  ��   o   6 8���� 0 _values    f   5 6��  � "#" l     ��������  ��  ��  # $%$ l      ��&'��  & � �!
@abstruct
Chack whether a passed value is icluded as a key value or not.
@param a_key (anything) : a key to check
@result boolean : true if a value exists as a key value.
   ' �((Z ! 
 @ a b s t r u c t 
 C h a c k   w h e t h e r   a   p a s s e d   v a l u e   i s   i c l u d e d   a s   a   k e y   v a l u e   o r   n o t . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   a   k e y   t o   c h e c k 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   a   v a l u e   e x i s t s   a s   a   k e y   v a l u e . 
% )*) i   X [+,+ I      ��-���� 0 has_key  - .��. o      ���� 	0 a_key  ��  ��  , Q     F/01/ Z    23��42 H    55 E   676 J    88 9:9 m    ��
�� 
reco: ;��; m    ��
�� 
list��  7 n    
<=< m    
��
�� 
pcls= o    ���� 	0 a_key  3 L    >> n   ?@? n   ABA I    ��C���� 0 has_item  C D��D o    ���� 	0 a_key  ��  ��  B o    ���� 	0 _keys  @  f    ��  4 R    ������
�� .ascrerr ****      � ****��  ��  0 R      ������
�� .ascrerr ****      � ****��  ��  1 Q   ' FEFGE k   * <HH IJI I   * 9��K���� 0 search_value  K LML o   + ,���� 	0 a_key  M NON n  , /PQP o   - /�� 	0 _keys  Q  f   , -O RSR n  / 2TUT o   0 2�~�~ 0 _values  U  f   / 0S V�}V n  2 5WXW o   3 5�|�| 0 _key_comparator  X  f   2 3�}  ��  J Y�{Y L   : <ZZ m   : ;�z
�z boovtrue�{  F R      �y�x[
�y .ascrerr ****      � ****�x  [ �w\�v
�w 
errn\ m      �u�u��v  G L   D F]] m   D E�t
�t boovfals* ^_^ l     �s�r�q�s  �r  �q  _ `a` l      �pbc�p  b � �!
@abstruct
Remove a specified key and a associated value.
@param a_key (anything) : a key to remove
@result boolean : true if removing a key and a value is succeeded.
   c �ddP ! 
 @ a b s t r u c t 
 R e m o v e   a   s p e c i f i e d   k e y   a n d   a   a s s o c i a t e d   v a l u e . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   a   k e y   t o   r e m o v e 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   r e m o v i n g   a   k e y   a n d   a   v a l u e   i s   s u c c e e d e d . 
a efe i   \ _ghg I      �oi�n�o 0 remove_for_key  i j�mj o      �l�l 	0 a_key  �m  �n  h k     =kk lml l     �kno�k  n  log "start removeItem"   o �pp , l o g   " s t a r t   r e m o v e I t e m "m qrq Q     stus r    vwv I    �jx�i�j 0 search_value  x yzy o    �h�h 	0 a_key  z {|{ n   }~} o    �g�g 	0 _keys  ~  f    | � n   ��� o   	 �f�f 0 _values  �  f    	� ��e� n   ��� o    �d�d 0 _key_comparator  �  f    �e  �i  w o      �c�c 0 	old_value  t R      �b�a�
�b .ascrerr ****      � ****�a  � �`��_
�` 
errn� m      �^�^��_  u L    �� m    �]
�] boovfalsr ��� l   �\�[�Z�\  �[  �Z  � ��� r    (��� n   &��� n    &��� I   " &�Y�X�W�Y 0 current_index  �X  �W  � o     "�V�V 	0 _keys  �  f     � o      �U�U 0 an_index  � ��� n  ) 1��� n  * 1��� I   , 1�T��S�T 0 	delete_at  � ��R� o   , -�Q�Q 0 an_index  �R  �S  � o   * ,�P�P 	0 _keys  �  f   ) *� ��� n  2 :��� n  3 :��� I   5 :�O��N�O 0 	delete_at  � ��M� o   5 6�L�L 0 an_index  �M  �N  � o   3 5�K�K 0 _values  �  f   2 3� ��J� L   ; =�� m   ; <�I
�I boovtrue�J  f ��� l     �H�G�F�H  �G  �F  � ��� i   ` c��� I      �E��D�E 0 remove_for_value  � ��C� o      �B�B 	0 a_val  �C  �D  � k     =�� ��� l     �A���A  �  log "start removeItem"   � ��� , l o g   " s t a r t   r e m o v e I t e m "� ��� Q     ���� r    ��� I    �@��?�@ 0 search_value  � ��� o    �>�> 	0 a_val  � ��� n   ��� o    �=�= 0 _values  �  f    � ��� n   ��� o   	 �<�< 	0 _keys  �  f    	� ��;� n   ��� o    �:�: 0 _value_comparator  �  f    �;  �?  � o      �9�9 0 	old_value  � R      �8�7�
�8 .ascrerr ****      � ****�7  � �6��5
�6 
errn� m      �4�4��5  � L    �� m    �3
�3 boovfals� ��� l   �2�1�0�2  �1  �0  � ��� r    (��� n   &��� n    &��� I   " &�/�.�-�/ 0 current_index  �.  �-  � o     "�,�, 0 _values  �  f     � o      �+�+ 0 an_index  � ��� n  ) 1��� n  * 1��� I   , 1�*��)�* 0 	delete_at  � ��(� o   , -�'�' 0 an_index  �(  �)  � o   * ,�&�& 	0 _keys  �  f   ) *� ��� n  2 :��� n  3 :��� I   5 :�%��$�% 0 	delete_at  � ��#� o   5 6�"�" 0 an_index  �#  �$  � o   3 5�!�! 0 _values  �  f   2 3� �� � L   ; =�� m   ; <�
� boovtrue�   � ��� l     ����  �  �  � ��� l      ����  � 8 2!@abstruct Obtain all keys as a list
@result list
   � ��� d ! @ a b s t r u c t   O b t a i n   a l l   k e y s   a s   a   l i s t 
 @ r e s u l t   l i s t 
� ��� i   d g��� I      ���� 0 all_keys  �  �  � L     �� n    ��� n   ��� I    ���� 0 	all_items  �  �  � o    �� 	0 _keys  �  f     � ��� l     ����  �  �  � ��� l      ����  � : 4!@abstruct Obtain all values as a list
@result list
   � ��� h ! @ a b s t r u c t   O b t a i n   a l l   v a l u e s   a s   a   l i s t 
 @ r e s u l t   l i s t 
� ��� i   h k   I      ���� 0 
all_values  �  �   L      n     n    I    ���
� 0 	all_items  �  �
   o    �	�	 0 _values    f     �  l     ����  �  �   	
	 l      ��   8 2!@abstruct Obtain all keys as a list
@result list
    � d ! @ a b s t r u c t   O b t a i n   a l l   k e y s   a s   a   l i s t 
 @ r e s u l t   l i s t 

  i   l o I      ���� 0 
count_keys  �  �   k       O     I   �� ��
� .corecnte****       ****�   ��   n     o    ���� 	0 _keys    f      �� L     1    ��
�� 
rslt��    l     ��������  ��  ��    l      �� ��   , &!@abstruct Remove all keys and values
     �!! L ! @ a b s t r u c t   R e m o v e   a l l   k e y s   a n d   v a l u e s 
 "#" i   p s$%$ I      �������� 
0 forget  ��  ��  % k     && '(' r     )*) I    	��+��
�� .corecrel****      � null+ o     ���� 0 xlist XList��  * n     ,-, o   
 ���� 0 _values  -  f   	 
( ./. r    010 I   ��2��
�� .corecrel****      � null2 o    ���� 0 xlist XList��  1 n     343 o    ���� 	0 _keys  4  f    / 5��5 L    66  f    ��  # 787 l     ��������  ��  ��  8 9:9 l      ��;<��  ; . (!@group Setting and Getting Comparators    < �== P ! @ g r o u p   S e t t i n g   a n d   G e t t i n g   C o m p a r a t o r s  : >?> l     ��������  ��  ��  ? @A@ l      ��BC��  BF@!
@abstruct Set a key comparator script to the instance.
@description
A key comparator script must have following specification.
* do handler which have two positional parameters.
* do handler return true if two argumetns are identical, otherwise return false.
@param a_script (script object)
@result script object : me
   C �DD� ! 
 @ a b s t r u c t   S e t   a   k e y   c o m p a r a t o r   s c r i p t   t o   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 A   k e y   c o m p a r a t o r   s c r i p t   m u s t   h a v e   f o l l o w i n g   s p e c i f i c a t i o n . 
 *   d o   h a n d l e r   w h i c h   h a v e   t w o   p o s i t i o n a l   p a r a m e t e r s . 
 *   d o   h a n d l e r   r e t u r n   t r u e   i f   t w o   a r g u m e t n s   a r e   i d e n t i c a l ,   o t h e r w i s e   r e t u r n   f a l s e . 
 @ p a r a m   a _ s c r i p t   ( s c r i p t   o b j e c t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   m e 
A EFE i   t wGHG I      ��I���� 0 set_key_comparator  I J��J o      ���� 0 a_script  ��  ��  H k     KK LML r     NON o     ���� 0 a_script  O n     PQP o    ���� 0 _key_comparator  Q  f    M R��R L    SS  f    ��  F TUT l     ��������  ��  ��  U VWV l      ��XY��  XHB!
@abstruct Set a value comparator script to the instance.
@description
A key comparator script must have following specification.
* do handler which have two positional parameters.
* do handler return true if two argumetns are identical, otherwise return false.
@param a_script (script object)
@result script object : me
   Y �ZZ� ! 
 @ a b s t r u c t   S e t   a   v a l u e   c o m p a r a t o r   s c r i p t   t o   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 A   k e y   c o m p a r a t o r   s c r i p t   m u s t   h a v e   f o l l o w i n g   s p e c i f i c a t i o n . 
 *   d o   h a n d l e r   w h i c h   h a v e   t w o   p o s i t i o n a l   p a r a m e t e r s . 
 *   d o   h a n d l e r   r e t u r n   t r u e   i f   t w o   a r g u m e t n s   a r e   i d e n t i c a l ,   o t h e r w i s e   r e t u r n   f a l s e . 
 @ p a r a m   a _ s c r i p t   ( s c r i p t   o b j e c t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   m e 
W [\[ i   x {]^] I      ��_���� 0 set_value_comparator  _ `��` o      ���� 0 a_script  ��  ��  ^ k     aa bcb r     ded o     ���� 0 a_script  e n     fgf o    ���� 0 _value_comparator  g  f    c h��h L    ii  f    ��  \ jkj l     ��������  ��  ��  k lml l      ��no��  n W Q!@abstruct Obrain the key comprator of the XDict instance.
@result script object
   o �pp � ! @ a b s t r u c t   O b r a i n   t h e   k e y   c o m p r a t o r   o f   t h e   X D i c t   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t 
m qrq i   | sts I      �������� 0 key_comparator  ��  ��  t L     uu n    vwv o    ���� 0 _key_comparator  w  f     r xyx l     ��������  ��  ��  y z{z l      ��|}��  | Y S!@abstruct Obrain the value comprator of the XDict instance.
@result script object
   } �~~ � ! @ a b s t r u c t   O b r a i n   t h e   v a l u e   c o m p r a t o r   o f   t h e   X D i c t   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t 
{ � i   � ���� I      �������� 0 value_comparator  ��  ��  � L     �� n    ��� o    ���� 0 _value_comparator  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � $ !@group Obtain Iterator Object   � ��� < ! @ g r o u p   O b t a i n   I t e r a t o r   O b j e c t� ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Make an iterator object of XDict. The iterator object return a pair list of key and a value i.e. {a_key, a_value} with ((<next>))() handler.
@result script object : An iterator
   � ���x ! @ a b s t r u c t 
 M a k e   a n   i t e r a t o r   o b j e c t   o f   X D i c t .   T h e   i t e r a t o r   o b j e c t   r e t u r n   a   p a i r   l i s t   o f   k e y   a n d   a   v a l u e   i . e .   { a _ k e y ,   a _ v a l u e }   w i t h   ( ( < n e x t > ) ) ( )   h a n d l e r . 
 @ r e s u l t   s c r i p t   o b j e c t   :   A n   i t e r a t o r 
� ��� i   � ���� I      �������� 0 iterator  ��  ��  � k     $�� ��� r     ���  f     � o      ���� 
0 a_dict  � ��� r    ��� n   ��� I   	 ������� 0 	make_with  � ���� n  	 ��� n  
 ��� I    �������� 0 list_ref  ��  ��  � o   
 ���� 	0 _keys  �  f   	 
��  ��  � o    	���� 0 xlist XList� o      ���� 0 key_list  � ��� r    ��� n   ��� o    ���� 0 _values  �  f    � o      ���� 0 
value_list  � ��� l    ������  � ( "!@group Methods of Iterator Object   � ��� D ! @ g r o u p   M e t h o d s   o f   I t e r a t o r   O b j e c t� ���� h    $����� 0 xdictiterator XDictIterator� k      �� ��� j     ���
�� 
pare� 1     ��
�� 
ascr� ��� j    ����� 0 _values  � o    ���� 0 
value_list  � ��� j    ����� 	0 _keys  � o    ���� 0 key_list  � ��� l     ��������  ��  ��  � ��� l      ������  � W Q!@abstruct Check whether next object can be obtained or not.
		@result boolean
		   � ��� � ! @ a b s t r u c t   C h e c k   w h e t h e r   n e x t   o b j e c t   c a n   b e   o b t a i n e d   o r   n o t . 
 	 	 @ r e s u l t   b o o l e a n 
 	 	� ��� i    ��� I      �������� 0 has_next  ��  ��  � L     
�� n    	��� I    	�������� 0 has_next  ��  ��  � o     ���� 	0 _keys  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct Obtain a next pair of a key and its value.
		@description
		If it is fail to obtain next key value, error number 900 will be raised.
		@result list : { a_key, a_value}
		   � ���j ! @ a b s t r u c t   O b t a i n   a   n e x t   p a i r   o f   a   k e y   a n d   i t s   v a l u e . 
 	 	 @ d e s c r i p t i o n 
 	 	 I f   i t   i s   f a i l   t o   o b t a i n   n e x t   k e y   v a l u e ,   e r r o r   n u m b e r   9 0 0   w i l l   b e   r a i s e d . 
 	 	 @ r e s u l t   l i s t   :   {   a _ k e y ,   a _ v a l u e } 
 	 	� ��� i    ��� I      �������� 0 next  ��  ��  � k     &�� ��� l     ������  � ! log "next in XDictIterator"   � ��� 6 l o g   " n e x t   i n   X D i c t I t e r a t o r "� ��� r     ��� n    	��� I    	�������� 0 next  ��  ��  � o     ���� 	0 _keys  � o      ���� 	0 a_key  � ��� r     ��� n   ��� I    ������� 0 item_at  � ���� n   ��� I    �������� 0 current_index  ��  ��  � o    ���� 	0 _keys  ��  ��  � o    ���� 0 _values  � o      ���� 0 a_value  � ���� L   ! &�� J   ! %�� ��� o   ! "�� 	0 a_key  � ��~� o   " #�}�} 0 a_value  �~  ��  � ��� l     �|�{�z�|  �{  �z  � ��� l      �y���y  � c ]!@abstruct
		Make a pair of a key and a value retuned by ((<next>))() revert to first one.
		   � ��� � ! @ a b s t r u c t 
 	 	 M a k e   a   p a i r   o f   a   k e y   a n d   a   v a l u e   r e t u n e d   b y   ( ( < n e x t > ) ) ( )   r e v e r t   t o   f i r s t   o n e . 
 	 	� ��x� i    ��� I      �w�v�u�w 	0 reset  �v  �u  � n    	� � I    	�t�s�r�t 	0 reset  �s  �r    o     �q�q 	0 _keys  �x  ��  �  l     �p�o�n�p  �o  �n    l      �m�m   &  !@group Loop with Script Object     � @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t   	 l     �l�k�j�l  �k  �j  	 

 l      �i�i  ��!
@abstruct
Perform do handler of given script object with passing pair lists of each key and value as a argument.
@description 
a_script must have a do handler which require only argument. The do handler must return true or false.

When the do handler return false, the process is stoped immediately.
@param a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
    �N ! 
 @ a b s t r u c t 
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t . 
 @ d e s c r i p t i o n   
 a _ s c r i p t   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e . 
 
 W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
  i   � � I      �h�g�h 0 each   �f o      �e�e 0 a_script  �f  �g   k     /  r      I     �d�c�b�d 0 iterator  �c  �b   o      �a�a 0 an_iterator   �` V    / k    *  r     !  n   "#" I    �_�^�]�_ 0 next  �^  �]  # o    �\�\ 0 an_iterator  ! o      �[�[ 
0 a_pair   $�Z$ Z    *%&�Y�X% l   "'�W�V' =   "()( n    *+* I     �U,�T�U 0 do  , -�S- o    �R�R 
0 a_pair  �S  �T  + o    �Q�Q 0 a_script  ) m     !�P
�P boovfals�W  �V  &  S   % &�Y  �X  �Z   n   ./. I    �O�N�M�O 0 has_next  �N  �M  / o    �L�L 0 an_iterator  �`   010 l     �K�J�I�K  �J  �I  1 232 l      �H45�H  4��!
@abstruct 
Perform do handler of given script object with passing pair lists of each key and value as a argument.�@A ((<XList>)) consisting of the results of do handler is returned.
@description 
a_script must have a�@do handler which require only argument.
@param a_script(script object) : must have a do handler which require only argument.
@result script object : a XList instance
   5 �66  ! 
 @ a b s t r u c t   
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t .0  A   ( ( < X L i s t > ) )   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 @ d e s c r i p t i o n   
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X L i s t   i n s t a n c e 
3 787 i   � �9:9 I      �G;�F�G 0 map  ; <�E< o      �D�D 0 a_script  �E  �F  : k     == >?> r     @A@ I     �CB�B�C 0 map_as_list  B C�AC o    �@�@ 0 a_script  �A  �B  A o      �?�? 0 out_list  ? D�>D L   	 EE n  	 FGF I    �=H�<�= 0 	make_with  H I�;I o    �:�: 0 out_list  �;  �<  G o   	 �9�9 0 xlist XList�>  8 JKJ l     �8�7�6�8  �7  �6  K LML l      �5NO�5  N��!
@abstruct 
Almost same to ((<map>)), but a result of this method is AppleScript's list.
@description 
Perform do handler of given script object with passing pair lists of each key and value as a argument.�@A list consisting of the results of do handler is returned.

a_script must have a�@do handler which require only argument.
@param a_script(script object) : must have a do handler which require only argument.
@result list
   O �PPV ! 
 @ a b s t r u c t   
 A l m o s t   s a m e   t o   ( ( < m a p > ) ) ,   b u t   a   r e s u l t   o f   t h i s   m e t h o d   i s   A p p l e S c r i p t ' s   l i s t . 
 @ d e s c r i p t i o n   
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t .0  A   l i s t   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   l i s t 
M QRQ i   � �STS I      �4U�3�4 0 map_as_list  U V�2V o      �1�1 0 a_script  �2  �3  T k     0WW XYX r     Z[Z J     �0�0  [ o      �/�/ 0 out_list  Y \]\ r    ^_^ I    
�.�-�,�. 0 iterator  �-  �,  _ o      �+�+ 0 an_iterator  ] `a` V    -bcb k    (dd efe r    ghg n   iji I    �*�)�(�* 0 next  �)  �(  j o    �'�' 0 an_iterator  h o      �&�& 
0 a_pair  f k�%k r    (lml n   %non I     %�$p�#�$ 0 do  p q�"q o     !�!�! 
0 a_pair  �"  �#  o o     � �  0 a_script  m n      rsr  ;   & 's o   % &�� 0 out_list  �%  c n   tut I    ���� 0 has_next  �  �  u o    �� 0 an_iterator  a v�v L   . 0ww o   . /�� 0 out_list  �  R xyx l     ����  �  �  y z{z l     ����  �  �  { |}| l      �~�  ~  !@group Debugging     ��� $ ! @ g r o u p   D e b u g g i n g  } ��� l      ����  � � �!
@abstruct Dump keys and values in XDict as text. Use this method for debugging.
@description
If objects which can be coerce to string, error raise.
@result string

  "key1 -> Value1 
    key2 -> Value2
    ......."
 
   � ���� ! 
 @ a b s t r u c t   D u m p   k e y s   a n d   v a l u e s   i n   X D i c t   a s   t e x t .   U s e   t h i s   m e t h o d   f o r   d e b u g g i n g . 
 @ d e s c r i p t i o n 
 I f   o b j e c t s   w h i c h   c a n   b e   c o e r c e   t o   s t r i n g ,   e r r o r   r a i s e . 
 @ r e s u l t   s t r i n g 
 
     " k e y 1   - >   V a l u e 1   
         k e y 2   - >   V a l u e 2 
         . . . . . . . " 
   
� ��� i   � ���� I      ���� 0 dump  �  �  � k     9�� ��� r     ��� m     �� ���  � o      �� 
0 a_text  � ��� Y    6������ r    1��� b    /��� b    -��� b    $��� b    "��� b     ��� b    ��� o    �
�
 
0 a_text  � l   ��	�� n   ��� n   ��� I    ���� 0 item_at  � ��� o    �� 0 n  �  �  � o    �� 	0 _keys  �  f    �	  �  � 1    �
� 
tab � m     !�� ���  - >� 1   " #�
� 
tab � l  $ ,�� ��� n  $ ,��� n  % ,��� I   ' ,������� 0 item_at  � ���� o   ' (���� 0 n  ��  ��  � o   % '���� 0 _values  �  f   $ %�   ��  � o   - .��
�� 
ret � o      ���� 
0 a_text  � 0 n  � m    ���� � l   ������ n   ��� n  	 ��� I    �������� 0 item_counts  ��  ��  � o   	 ���� 	0 _keys  �  f    	��  ��  �  � ���� L   7 9�� o   7 8���� 
0 a_text  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �  * private *   � ���  *   p r i v a t e   *� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 	0 debug  ��  ��  � k     �� ��� r     ��� I     ������� 0 make_with_lists  � ��� J    �� ��� m    �� ���  k e y 1� ���� m    �� ���  k e y 2��  � ���� J    	�� ��� m    �� ���  v a l u e 1� ���� m    �� ���  v a l u e 2��  ��  ��  � o      ���� 
0 a_dict  � ��� l   ������  � % a_dict's remove_for_key("key1")   � ��� > a _ d i c t ' s   r e m o v e _ f o r _ k e y ( " k e y 1 " )� ��� I   �����
�� .ascrcmnt****      � ****� n   ��� I    �������� 0 dump  ��  ��  � o    ���� 
0 a_dict  ��  � ���� o    ���� 
0 a_dict  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
 ������� 0 do  � ���� I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � 4    ���
�� 
scpt� m    �� ���  O p e n H e l p B o o k� R      ����
�� .ascrerr ****      � ****� o      ���� 0 msg  � �����
�� 
errn� o      ���� 	0 errno  ��  � k    ,    I   "������
�� .miscactvnull��� ��� null��  ��   �� I  # ,����
�� .sysodisAaleR        TEXT l  # (���� b   # ( b   # &	 o   # $���� 0 msg  	 o   $ %��
�� 
ret  o   & '���� 	0 errno  ��  ��  ��  ��  � 

 l     ��������  ��  ��    i   � � I     ������
�� .aevtoappnull  �   � ****��  ��   k       l     ����    return debug()    �  r e t u r n   d e b u g ( ) �� I     �������� 0 open_helpbook  ��  ��  ��    l     ��������  ��  ��   �� l     ��������  ��  ��  ��       #��    !"#$%&'()*+,-./012345678��   !������������������������������������������������������������������
�� 
pimr�� 0 xlist XList
�� 
pnam
�� .corecrel****      � null�� 0 make_with_pairs  �� 0 make_with_lists  �� &0 defaultcomparator DefaultComparator�� 0 _key_comparator  �� 0 _value_comparator  �� 0 make_with_xlists  �� 0 search_value  �� 0 value_for_key  �� 0 key_for_value  �� 0 	set_value  �� 0 has_key  �� 0 remove_for_key  �� 0 remove_for_value  �� 0 all_keys  �� 0 
all_values  �� 0 
count_keys  �� 
0 forget  �� 0 set_key_comparator  �� 0 set_value_comparator  �� 0 key_comparator  �� 0 value_comparator  �� 0 iterator  �� 0 each  �� 0 map  �� 0 map_as_list  �� 0 dump  �� 	0 debug  �� 0 open_helpbook  
�� .aevtoappnull  �   � **** ��9�� 9  :;<: �� ��
�� 
vers��  ; ��=��
�� 
cobj= >>   �� 
�� 
scpt��  < �?�~
� 
cobj? @@   �}
�} 
osax�~   AA   �| 
�| 
scpt �{ 9�z�yBC�x
�{ .corecrel****      � null�z  �y  B  C �w�w 0 make_with_lists  �x *jvjvl+   �v I�u�tDE�s�v 0 make_with_pairs  �u �rF�r F  �q�q 	0 pairs  �t  D �p�o�n�m�l�p 	0 pairs  �o 0 key_list  �n 0 
value_list  �m 0 	pair_list  �l 0 pairstolists PairsToListsE �k�j�i fG�h�g
�k .corecrel****      � null�j 0 	make_with  �i 0 pairstolists PairsToListsG �fH�e�dIJ�c
�f .ascrinit****      � ****H k     	KK  hLL  k�b�b  �e  �d  I �a�`
�a 
pare�` 0 do  J �_�^M
�_ 
ascr
�^ 
pareM �] m�\�[NO�Z�] 0 do  �\ �YP�Y P  �X�X 
0 a_pair  �[  N �W�W 
0 a_pair  O �V�U
�V 
cobj�U 0 push  �Z b  ��k/k+ Ob  ��l/k+ Oe�c 
�EN OL �h 0 each  �g 0 make_with_xlists  �s =b  j  E�Ob  j  E�Ob  �k+ E�O��K S�O��k+ O*��l+  �T ��S�RQR�Q�T 0 make_with_lists  �S �PS�P S  �O�N�O 0 key_list  �N 0 
value_list  �R  Q �M�L�M 0 key_list  �L 0 
value_list  R �K�J�K 0 	make_with  �J 0 make_with_xlists  �Q #b  �k+  E�Ob  �k+  E�O*��l+   �I � T�I &0 defaultcomparator DefaultComparatorT  U�HVU �G�F
�G 
pare�F 0 do  �H  V �E ��D�CWX�B�E 0 do  �D �AY�A Y  �@�?�@ 0 a_value  �? 0 target_value  �C  W �>�=�> 0 a_value  �= 0 target_value  X  ��B �g �� V! �< ��;�:Z[�9�< 0 make_with_xlists  �; �8\�8 \  �7�6�7 0 key_list  �6 0 
value_list  �:  Z �5�4�3�2�5 0 key_list  �4 0 
value_list  �3 0 a_parent  �2 0 xdict XDict[ �1 �]�1 0 xdict XDict] �0^�/�._`�-
�0 .ascrinit****      � ****^ k     "aa  �bb  �cc  �dd  �ee  ��,�,  �/  �.  _ �+�*�)�(�'
�+ 
pare�* 	0 _keys  �) 0 _values  �( 0 _key_comparator  �' 0 _value_comparator  ` �&�%�$�#�"
�& 
pare�% 	0 _keys  �$ 0 _values  �# 0 _key_comparator  �" 0 _value_comparator  �- #b  N  Ob   �Ob  �O)�,E�O)�,E��9 )E�O��K S�O�" �!� �fg��! 0 search_value  �  �h� h  ����� 	0 a_key  � 0 key_list  � 0 
value_list  � 0 
comparator  �  f 
����������� 	0 a_key  � 0 key_list  � 0 
value_list  � 0 
comparator  � 0 invalid_key_indexes  � 0 current_key  � 0 msg  � 	0 errno  � 0 an_index  � 0 a_value  g �����
i�	��j��k������� 	0 reset  � 0 has_next  � 0 next  
� 
pcnt�
 0 msg  i � ����
�  
errn�� 	0 errno  ��  �	 0 do  � 0 current_index  � 0 item_at  j ������
�� 
errn������  � 0 	delete_at  �  k ������
�� 
errn���?��  
� 
utxt�  
� 
errn��� �jvE�O�j+  O jh�j+ �j+ E�O 
��,E�W X  hO %���l+  �j+ E�O��k+ E�OY hW X  	�j+ E�O��k+ 
O��k+ 
OP[OY��O �W )X   ���&%E�W X  a E�O)a a l�# �������lm���� 0 value_for_key  �� ��n�� n  ���� 	0 a_key  ��  l ���� 	0 a_key  m ������������ 	0 _keys  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  �� *�)�,)�,)�,�+ $ �������op���� 0 key_for_value  �� ��q�� q  ���� 0 a_value  ��  o ���� 0 a_value  p ������������ 0 _values  �� 	0 _keys  �� 0 _value_comparator  �� �� 0 search_value  �� *�)�,)�,)�,�+ % �������rs���� 0 	set_value  �� ��t�� t  ������ 	0 a_key  �� 0 a_value  ��  r ������ 	0 a_key  �� 0 a_value  s ��������������������u���� 	0 _keys  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  
�� 
for 
�� 
at  �� 0 current_index  �� 0 set_item  ��  u ������
�� 
errn�����  �� 0 push  �� > &*�)�,)�,)�,�+ O)�,��)�,j+ � W X 	 
)�,�k+ O)�,�k+ & ��,����vw���� 0 has_key  �� ��x�� x  ���� 	0 a_key  ��  v ���� 	0 a_key  w ����������������������y
�� 
reco
�� 
list
�� 
pcls�� 	0 _keys  �� 0 has_item  ��  ��  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  y ������
�� 
errn�����  �� G !��lv��, )�,�k+ Y )jhW &X   *�)�,)�,)�,�+ 
OeW 	X  f' ��h����z{���� 0 remove_for_key  �� ��|�� |  ���� 	0 a_key  ��  z �������� 	0 a_key  �� 0 	old_value  �� 0 an_index  { 	������������}������ 	0 _keys  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  ��  } ������
�� 
errn�����  �� 0 current_index  �� 0 	delete_at  �� > *�)�,)�,)�,�+ E�W 	X  fO)�,j+ E�O)�,�k+ O)�,�k+ Oe( �������~���� 0 remove_for_value  �� ����� �  ���� 	0 a_val  ��  ~ �������� 	0 a_val  �� 0 	old_value  �� 0 an_index   	������������������� 0 _values  �� 	0 _keys  �� 0 _value_comparator  �� �� 0 search_value  ��  � ������
�� 
errn�����  �� 0 current_index  �� 0 	delete_at  �� > *�)�,)�,)�,�+ E�W 	X  fO)�,j+ E�O)�,�k+ O)�,�k+ Oe) ������������� 0 all_keys  ��  ��  �  � ������ 	0 _keys  �� 0 	all_items  �� 	)�,j+ * ������������ 0 
all_values  ��  ��  �  � ������ 0 _values  �� 0 	all_items  �� 	)�,j+ + ��~�}���|� 0 
count_keys  �~  �}  �  � �{�z�y�{ 	0 _keys  
�z .corecnte****       ****
�y 
rslt�| )�, *j UO�E, �x%�w�v���u�x 
0 forget  �w  �v  �  � �t�s�r
�t .corecrel****      � null�s 0 _values  �r 	0 _keys  �u b  j  )�,FOb  j  )�,FO)- �qH�p�o���n�q 0 set_key_comparator  �p �m��m �  �l�l 0 a_script  �o  � �k�k 0 a_script  � �j�j 0 _key_comparator  �n 	�)�,FO). �i^�h�g���f�i 0 set_value_comparator  �h �e��e �  �d�d 0 a_script  �g  � �c�c 0 a_script  � �b�b 0 _value_comparator  �f 	�)�,FO)/ �at�`�_���^�a 0 key_comparator  �`  �_  �  � �]�] 0 _key_comparator  �^ )�,E0 �\��[�Z���Y�\ 0 value_comparator  �[  �Z  �  � �X�X 0 _value_comparator  �Y )�,E1 �W��V�U���T�W 0 iterator  �V  �U  � �S�R�Q�P�S 
0 a_dict  �R 0 key_list  �Q 0 
value_list  �P 0 xdictiterator XDictIterator� �O�N�M�L�K���O 	0 _keys  �N 0 list_ref  �M 0 	make_with  �L 0 _values  �K 0 xdictiterator XDictIterator� �J��I�H���G
�J .ascrinit****      � ****� k     �� ��� ��� ��� ��� ��� ��F�F  �I  �H  � �E�D�C�B�A�@
�E 
pare�D 0 _values  �C 	0 _keys  �B 0 has_next  �A 0 next  �@ 	0 reset  � �?�>�=�<���
�? 
ascr
�> 
pare�= 0 _values  �< 	0 _keys  � �;��:�9���8�; 0 has_next  �:  �9  �  � �7�7 0 has_next  �8 b  j+  � �6��5�4���3�6 0 next  �5  �4  � �2�1�2 	0 a_key  �1 0 a_value  � �0�/�.�0 0 next  �/ 0 current_index  �. 0 item_at  �3 'b  j+  E�Ob  b  j+ k+ E�O��lv� �-��,�+���*�- 	0 reset  �,  �+  �  � �)�) 	0 reset  �* 
b  j+  �G  �EN Ob  �Ob  �OL OL OL �T %)E�Ob  )�,j+ k+ E�O)�,E�O��K S�2 �(�'�&���%�( 0 each  �' �$��$ �  �#�# 0 a_script  �&  � �"�!� �" 0 a_script  �! 0 an_iterator  �  
0 a_pair  � ����� 0 iterator  � 0 has_next  � 0 next  � 0 do  �% 0*j+  E�O &h�j+ �j+ E�O��k+ f  Y h[OY��3 �:������ 0 map  � ��� �  �� 0 a_script  �  � ��� 0 a_script  � 0 out_list  � ��� 0 map_as_list  � 0 	make_with  � *�k+  E�Ob  �k+ 4 �T������ 0 map_as_list  � ��� �  �� 0 a_script  �  � ��
�	�� 0 a_script  �
 0 out_list  �	 0 an_iterator  � 
0 a_pair  � ����� 0 iterator  � 0 has_next  � 0 next  � 0 do  � 1jvE�O*j+  E�O h�j+ �j+ E�O��k+ �6F[OY��O�5 ������� � 0 dump  �  �  � ������ 
0 a_text  �� 0 n  � ���������������� 	0 _keys  �� 0 item_counts  �� 0 item_at  
�� 
tab �� 0 _values  
�� 
ret �  :�E�O 1k)�,j+ kh �)�,�k+ %�%�%�%)�,�k+ %�%E�[OY��O�6 ������������� 	0 debug  ��  ��  � ���� 
0 a_dict  � ������������ 0 make_with_lists  �� 0 dump  
�� .ascrcmnt****      � ****�� *��lv��lvl+ E�O�j+ j O�7 ������������� 0 open_helpbook  ��  ��  � ������ 0 msg  �� 	0 errno  � 	����������������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  � ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j 8 ����������
�� .aevtoappnull  �   � ****��  ��  �  � ���� 0 open_helpbook  �� *j+   ascr  ��ޭ