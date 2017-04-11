FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2017 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	   C o p y r i g h t   ( C )   2 0 0 7 - 2 0 1 7   T e t s u r o   K U R I T A  
 
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
 x     �� ���� 0 xlist XList  4    �� 
�� 
scpt  m       �   
 X L i s t��        x    �� ����    2   ��
�� 
osax��        j     �� 
�� 
pnam  m       �   
 X D i c t      l     ��������  ��  ��        l     ��������  ��  ��        l      ��  ��   
{
u!@references
XList || help:openbook='net.script-factory.XList.help'
XText || help:openbook='net.script-factory.XText.help'
Home page || http://www.script-factory.net/XModules/XDict/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XDict/changelog.html
Repository || https://github.com/tkurita/XDict.scptd

@title XDict Reference 
* Version : 1.7
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
     �    � ! @ r e f e r e n c e s 
 X L i s t   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . X L i s t . h e l p ' 
 X T e x t   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . X T e x t . h e l p ' 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X D i c t / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X D i c t / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X D i c t . s c p t d 
 
 @ t i t l e   X D i c t   R e f e r e n c e   
 *   V e r s i o n   :   1 . 7 
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
   ! " ! l     ��������  ��  ��   "  # $ # l      �� % &��   % " !@group Constructer Methods     & � ' ' 8 ! @ g r o u p   C o n s t r u c t e r   M e t h o d s   $  ( ) ( l     ��������  ��  ��   )  * + * l      �� , -��   , ] W!
@abstruct
Make an empty XDict instance
@result script object : 
an instance of XDict
    - � . . � ! 
 @ a b s t r u c t 
 M a k e   a n   e m p t y   X D i c t   i n s t a n c e 
 @ r e s u l t   s c r i p t   o b j e c t   :   
 a n   i n s t a n c e   o f   X D i c t 
 +  / 0 / i   ! $ 1 2 1 I     ������
�� .corecrel****      � null��  ��   2 L     
 3 3 I     	�� 4���� 0 make_with_lists   4  5 6 5 J    ����   6  7�� 7 J    ����  ��  ��   0  8 9 8 l     ��������  ��  ��   9  : ; : l      �� < =��   < � �!
@abstruct
Make a new XDict instance with a list of pair lists of a key and a value.
@param pairs (list) :a list of pairs of a key and a value
{{key1, value1}, {key2,value2},...}
@result script object : a XDict instance
    = � > >� ! 
 @ a b s t r u c t 
 M a k e   a   n e w   X D i c t   i n s t a n c e   w i t h   a   l i s t   o f   p a i r   l i s t s   o f   a   k e y   a n d   a   v a l u e . 
 @ p a r a m   p a i r s   ( l i s t )   : a   l i s t   o f   p a i r s   o f   a   k e y   a n d   a   v a l u e 
 { { k e y 1 ,   v a l u e 1 } ,   { k e y 2 , v a l u e 2 } , . . . } 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X D i c t   i n s t a n c e 
 ;  ? @ ? i   % ( A B A I      �� C���� 0 make_with_pairs   C  D�� D o      ���� 	0 pairs  ��  ��   B k     < E E  F G F l     �� H I��   H ! log "start make_with_pairs"    I � J J 6 l o g   " s t a r t   m a k e _ w i t h _ p a i r s " G  K L K r      M N M I    	�� O��
�� .corecrel****      � null O o     ���� 0 xlist XList��   N o      ���� 0 key_list   L  P Q P r     R S R I   �� T��
�� .corecrel****      � null T o    ���� 0 xlist XList��   S o      ���� 0 
value_list   Q  U V U r    $ W X W n   " Y Z Y I    "�� [���� 0 	make_with   [  \�� \ o    ���� 	0 pairs  ��  ��   Z o    ���� 0 xlist XList X o      ���� 0 	pair_list   V  ] ^ ] h   % ,�� _�� 0 pairstolists PairsToLists _ k       ` `  a b a j     �� c
�� 
pare c 1     ��
�� 
ascr b  d�� d i    	 e f e I      �� g���� 0 do   g  h�� h o      ���� 
0 a_pair  ��  ��   f k      i i  j k j n     l m l I    �� n���� 0 push   n  o�� o n    	 p q p 4    	�� r
�� 
cobj r m    ����  q o    ���� 
0 a_pair  ��  ��   m o     ���� 0 key_list   k  s t s n    u v u I    �� w���� 0 push   w  x�� x n     y z y 4    �� {
�� 
cobj { m    ����  z o    ���� 
0 a_pair  ��  ��   v o    ���� 0 
value_list   t  |�� | L     } } m    ��
�� boovtrue��  ��   ^  ~  ~ n  - 3 � � � I   . 3�� ����� 0 each   �  ��� � o   . /���� 0 pairstolists PairsToLists��  ��   � o   - .���� 0 	pair_list     ��� � L   4 < � � I   4 ;�� ����� 0 make_with_xlists   �  � � � o   5 6���� 0 key_list   �  ��� � o   6 7���� 0 
value_list  ��  ��  ��   @  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!
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
 �  � � � i   ) , � � � I      �� ����� 0 make_with_lists   �  � � � o      ���� 0 key_list   �  ��� � o      ���� 0 
value_list  ��  ��   � k     " � �  � � � r      � � � n    
 � � � I    
�� ����� 0 	make_with   �  ��� � o    ���� 0 key_list  ��  ��   � o     ���� 0 xlist XList � o      ���� 0 key_list   �  � � � r     � � � n    � � � I    �� ����� 0 	make_with   �  ��� � o    ���� 0 
value_list  ��  ��   � o    ���� 0 xlist XList � o      ���� 0 
value_list   �  ��� � L    " � � I    !�� ����� 0 make_with_xlists   �  � � � o    ���� 0 key_list   �  ��� � o    ���� 0 
value_list  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � h   - 4�� ��� &0 defaultcomparator DefaultComparator � k       � �  � � � j     �� �
�� 
pare � 1     ��
�� 
ascr �  ��� � i    	 � � � I      �� ����� 0 do   �  � � � o      ���� 0 a_value   �  ��� � o      �� 0 target_value  ��  ��   � P     
 � ��~ � L    	 � � =    � � � o    �}�} 0 a_value   � o    �|�| 0 target_value   � �{�z
�{ conscase�z  �~  ��   �  � � � l     �y�x�w�y  �x  �w   �  � � � j   5 7�v ��v 0 _key_comparator   � o   5 6�u�u &0 defaultcomparator DefaultComparator �  � � � j   8 :�t ��t 0 _value_comparator   � o   8 9�s�s &0 defaultcomparator DefaultComparator �  � � � l     �r�q�p�r  �q  �p   �  � � � l      �o � ��o   � �!
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
 �  � � � i   ; > � � � I      �n ��m�n 0 make_with_xlists   �  � � � o      �l�l 0 key_list   �  ��k � o      �j�j 0 
value_list  �k  �m   � k      � �  � � � r      � � �  f      � o      �i�i 0 a_parent   �  � � � h    �h ��h 0 xdict XDict � k       � �  � � � j     �g �
�g 
pare � o     �f�f 0 a_parent   �  � � � j   	 �e ��e 	0 _keys   � o   	 �d�d 0 key_list   �  � � � j    �c ��c 0 _values   � o    �b�b 0 
value_list   �  � � � j    �a ��a 0 _key_comparator   � n    � � � o    �`�` 0 _key_comparator   �  f     �  ��_ � j    "�^ ��^ 0 _value_comparator   � n   ! � � � o     �]�] 0 _value_comparator   �  f    �_   �  ��\ � L     � � o    �[�[ 0 xdict XDict�\   �  � � � l     �Z�Y�X�Z  �Y  �X   �  � � � l      �W � ��W   �  !@group Instance Methods     � � � � 2 ! @ g r o u p   I n s t a n c e   M e t h o d s   �    l     �V�U�T�V  �U  �T    i   ? B I      �S�R�S 0 search_value    o      �Q�Q 	0 a_key   	
	 o      �P�P 0 key_list  
  o      �O�O 0 
value_list   �N o      �M�M 0 
comparator  �N  �R   k     �  l      �L�L   � �@-- when a value is a record, "is in" operator does not works.
	set exists_key to true
	try
		set exists_key to key_list's has_item(a_key)
	on error
		set exists_key to true
	end try
	
	if not exists_key then
		return missing value
	end if
	    ��0  - -   w h e n   a   v a l u e   i s   a   r e c o r d ,   " i s   i n "   o p e r a t o r   d o e s   n o t   w o r k s . 
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
 	  l     �K�K    log "start seatch_value"    � 0 l o g   " s t a r t   s e a t c h _ v a l u e "  r      J     �J�J   o      �I�I 0 invalid_key_indexes    n   
  I    
�H�G�F�H 	0 reset  �G  �F    o    �E�E 0 key_list   !"! V    v#$# k    q%% &'& r    ()( n   *+* I    �D�C�B�D 0 next  �C  �B  + o    �A�A 0 key_list  ) o      �@�@ 0 current_key  ' ,-, Q    ../0. r     %121 n     #343 1   ! #�?
�? 
pcnt4 o     !�>�> 0 current_key  2 o      �=�= 0 current_key  / R      �<56
�< .ascrerr ****      � ****5 o      �;�; 0 msg  6 �:7�9
�: 
errn7 o      �8�8 	0 errno  �9  0 k   - -88 9:9 l   - -�7;<�7  ; E ? when current_key is script object, constants of ~ cause error    < �== ~   w h e n   c u r r e n t _ k e y   i s   s c r i p t   o b j e c t ,   c o n s t a n t s   o f   ~   c a u s e   e r r o r  : >�6> l  - -�5?@�5  ? # log msg & "number : " & errno   @ �AA : l o g   m s g   &   " n u m b e r   :   "   &   e r r n o�6  - BCB Q   / oDEFD Z   2 RGH�4�3G n  2 9IJI I   3 9�2K�1�2 0 do  K LML o   3 4�0�0 0 current_key  M N�/N o   4 5�.�. 	0 a_key  �/  �1  J o   2 3�-�- 0 
comparator  H k   < NOO PQP r   < CRSR n  < ATUT I   = A�,�+�*�, 0 current_index  �+  �*  U o   < =�)�) 0 key_list  S o      �(�( 0 an_index  Q VWV r   D LXYX n  D JZ[Z I   E J�'\�&�' 0 item_at  \ ]�%] o   E F�$�$ 0 an_index  �%  �&  [ o   D E�#�# 0 
value_list  Y o      �"�" 0 a_value  W ^�!^  S   M N�!  �4  �3  E R      � _`
�  .ascrerr ****      � ****_ o      �� 0 msg  ` �a�
� 
errna d      bb m      �� +�  F l  Z ocdec k   Z off ghg l  Z Z�ij�  i 1 +log "error in search_value of XDict:" & msg   j �kk V l o g   " e r r o r   i n   s e a r c h _ v a l u e   o f   X D i c t : "   &   m s gh lml r   Z anon n  Z _pqp I   [ _���� 0 current_index  �  �  q o   Z [�� 0 key_list  o o      �� 0 an_index  m rsr n  b htut I   c h�v�� 0 	delete_at  v w�w o   c d�� 0 an_index  �  �  u o   b c�� 0 key_list  s x�x n  i oyzy I   j o�{�� 0 	delete_at  { |�| o   j k�� 0 an_index  �  �  z o   i j�� 0 
value_list  �  d H B if _keys have an alias, the original of the alias does not found.   e �}} �   i f   _ k e y s   h a v e   a n   a l i a s ,   t h e   o r i g i n a l   o f   t h e   a l i a s   d o e s   n o t   f o u n d .C ~�
~ l  p p�	���	  �  �  �
  $ n   � I    ���� 0 has_next  �  �  � o    �� 0 key_list  " ��� Q   w ����� L   z |�� o   z {�� 0 a_value  � R      � ���
�  .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ����
���  � k   � ��� ��� Q   � ����� r   � ���� b   � ���� m   � ��� ��� 2 N o   v a l u e   a s s o c i a t e d   w i t h  � l  � ������� c   � ���� o   � ����� 0 a_value  � m   � ���
�� 
utxt��  ��  � o      ���� 0 msg  � R      ������
�� .ascrerr ****      � ****��  ��  � r   � ���� m   � ��� ��� H N o   v a l u e   a s s o c i a t e d   w i t h   a   k e y   v a l u e� o      ���� 0 msg  � ���� R   � �����
�� .ascrerr ****      � ****� o   � ����� 0 msg  � �����
�� 
errn� m   � ��������  ��  �   ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Obtain a value associated with a specified key. If a key is not in a XDict, error number 900 will be rasied.
@param a_key (anything) : a key to obtain its value
@result anything : an object associated with a_key
   � ���� ! 
 @ a b s t r u c t 
 O b t a i n   a   v a l u e   a s s o c i a t e d   w i t h   a   s p e c i f i e d   k e y .   I f   a   k e y   i s   n o t   i n   a   X D i c t ,   e r r o r   n u m b e r   9 0 0   w i l l   b e   r a s i e d . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   a   k e y   t o   o b t a i n   i t s   v a l u e 
 @ r e s u l t   a n y t h i n g   :   a n   o b j e c t   a s s o c i a t e d   w i t h   a _ k e y 
� ��� i   C F��� I      ������� 0 value_for_key  � ���� o      ���� 	0 a_key  ��  ��  � L     �� I     ������� 0 search_value  � ��� o    ���� 	0 a_key  � ��� n   ��� o    ���� 	0 _keys  �  f    � ��� n   ��� o    ���� 0 _values  �  f    � ���� n   ��� o   	 ���� 0 _key_comparator  �  f    	��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �A;!
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
� ��� i   G J��� I      ������� 0 key_for_value  � ���� o      ���� 0 a_value  ��  ��  � L     �� I     ������� 0 search_value  � ��� o    ���� 0 a_value  � ��� n   ��� o    ���� 0 _values  �  f    � ��� n   ��� o    ���� 	0 _keys  �  f    � ���� n   ��� o   	 ���� 0 _value_comparator  �  f    	��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �!
@abstruct
Set a value associated with a key. If the key is not in the XDict, the key is added.
@param a_key (anything) : an object for a key, which must be able to compare with "is" operator.
@param a_value (anything) : an object to set associated with a key.
   � ��� ! 
 @ a b s t r u c t 
 S e t   a   v a l u e   a s s o c i a t e d   w i t h   a   k e y .   I f   t h e   k e y   i s   n o t   i n   t h e   X D i c t ,   t h e   k e y   i s   a d d e d . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   a n   o b j e c t   f o r   a   k e y ,   w h i c h   m u s t   b e   a b l e   t o   c o m p a r e   w i t h   " i s "   o p e r a t o r . 
 @ p a r a m   a _ v a l u e   ( a n y t h i n g )   :   a n   o b j e c t   t o   s e t   a s s o c i a t e d   w i t h   a   k e y . 
� ��� i   K N��� I      ������� 0 	set_value  � ��� o      ���� 	0 a_key  � ���� o      ���� 0 a_value  ��  ��  � Q     =���� k    $�� ��� I    ������� 0 search_value  � ��� o    ���� 	0 a_key  � ��� n   ��� o    ���� 	0 _keys  �  f    � ��� n   ��� o   	 ���� 0 _values  �  f    	� ���� n   ��� o    ���� 0 _key_comparator  �  f    ��  ��  � ���� I   $������ 0 set_item  � l   ������ n   � � o    ���� 0 _values     f    ��  ��  � ��
�� 
for  o    ���� 0 a_value   ����
�� 
at   l    ���� n     n     I     �������� 0 current_index  ��  ��   o    ���� 	0 _keys    f    ��  ��  ��  ��  � R      ����	
�� .ascrerr ****      � ****��  	 ��
��
�� 
errn
 m      �������  � k   , =  n  , 4 n  - 4 I   / 4������ 0 push   �� o   / 0���� 	0 a_key  ��  ��   o   - /���� 	0 _keys    f   , - �� n  5 = n  6 = I   8 =������ 0 push   �� o   8 9���� 0 a_value  ��  ��   o   6 8���� 0 _values    f   5 6��  �  l     ��������  ��  ��    l      �� ��   � �!
@abstruct
Chack whether a passed value is icluded as a key value or not.
@param a_key (anything) : a key to check
@result boolean : true if a value exists as a key value.
     �!!Z ! 
 @ a b s t r u c t 
 C h a c k   w h e t h e r   a   p a s s e d   v a l u e   i s   i c l u d e d   a s   a   k e y   v a l u e   o r   n o t . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   a   k e y   t o   c h e c k 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   a   v a l u e   e x i s t s   a s   a   k e y   v a l u e . 
 "#" i   O R$%$ I      ��&���� 0 has_key  & '��' o      ���� 	0 a_key  ��  ��  % Q     K()*( Z    $+,��-+ H    .. E   /0/ J    11 2��2 G    
343 m    ��
�� 
reco4 m    ��
�� 
list��  0 n    565 m    ��
�� 
pcls6 o    ���� 	0 a_key  , L    77 n   898 n   :;: I    ��<���� 0 has_item  < =��= o    ���� 	0 a_key  ��  ��  ; o    ���� 	0 _keys  9  f    ��  - R     $������
�� .ascrerr ****      � ****��  ��  ) R      ������
�� .ascrerr ****      � ****��  ��  * Q   , K>?@> k   / AAA BCB I   / >��D���� 0 search_value  D EFE o   0 1���� 	0 a_key  F GHG n  1 4IJI o   2 4���� 	0 _keys  J  f   1 2H KLK n  4 7MNM o   5 7���� 0 _values  N  f   4 5L O��O n  7 :PQP o   8 :���� 0 _key_comparator  Q  f   7 8��  ��  C R�R L   ? ASS m   ? @�~
�~ boovtrue�  ? R      �}�|T
�} .ascrerr ****      � ****�|  T �{U�z
�{ 
errnU m      �y�y��z  @ L   I KVV m   I J�x
�x boovfals# WXW l     �w�v�u�w  �v  �u  X YZY l      �t[\�t  [ � �!
@abstruct
Remove a specified key and a associated value.
@param a_key (anything) : a key to remove
@result boolean : true if removing a key and a value is succeeded.
   \ �]]P ! 
 @ a b s t r u c t 
 R e m o v e   a   s p e c i f i e d   k e y   a n d   a   a s s o c i a t e d   v a l u e . 
 @ p a r a m   a _ k e y   ( a n y t h i n g )   :   a   k e y   t o   r e m o v e 
 @ r e s u l t   b o o l e a n   :   t r u e   i f   r e m o v i n g   a   k e y   a n d   a   v a l u e   i s   s u c c e e d e d . 
Z ^_^ i   S V`a` I      �sb�r�s 0 remove_for_key  b c�qc o      �p�p 	0 a_key  �q  �r  a k     =dd efe l     �ogh�o  g  log "start removeItem"   h �ii , l o g   " s t a r t   r e m o v e I t e m "f jkj Q     lmnl r    opo I    �nq�m�n 0 search_value  q rsr o    �l�l 	0 a_key  s tut n   vwv o    �k�k 	0 _keys  w  f    u xyx n   z{z o   	 �j�j 0 _values  {  f    	y |�i| n   }~} o    �h�h 0 _key_comparator  ~  f    �i  �m  p o      �g�g 0 	old_value  m R      �f�e
�f .ascrerr ****      � ****�e   �d��c
�d 
errn� m      �b�b��c  n L    �� m    �a
�a boovfalsk ��� l   �`�_�^�`  �_  �^  � ��� r    (��� n   &��� n    &��� I   " &�]�\�[�] 0 current_index  �\  �[  � o     "�Z�Z 	0 _keys  �  f     � o      �Y�Y 0 an_index  � ��� n  ) 1��� n  * 1��� I   , 1�X��W�X 0 	delete_at  � ��V� o   , -�U�U 0 an_index  �V  �W  � o   * ,�T�T 	0 _keys  �  f   ) *� ��� n  2 :��� n  3 :��� I   5 :�S��R�S 0 	delete_at  � ��Q� o   5 6�P�P 0 an_index  �Q  �R  � o   3 5�O�O 0 _values  �  f   2 3� ��N� L   ; =�� m   ; <�M
�M boovtrue�N  _ ��� l     �L�K�J�L  �K  �J  � ��� i   W Z��� I      �I��H�I 0 remove_for_value  � ��G� o      �F�F 	0 a_val  �G  �H  � k     =�� ��� l     �E���E  �  log "start removeItem"   � ��� , l o g   " s t a r t   r e m o v e I t e m "� ��� Q     ���� r    ��� I    �D��C�D 0 search_value  � ��� o    �B�B 	0 a_val  � ��� n   ��� o    �A�A 0 _values  �  f    � ��� n   ��� o   	 �@�@ 	0 _keys  �  f    	� ��?� n   ��� o    �>�> 0 _value_comparator  �  f    �?  �C  � o      �=�= 0 	old_value  � R      �<�;�
�< .ascrerr ****      � ****�;  � �:��9
�: 
errn� m      �8�8��9  � L    �� m    �7
�7 boovfals� ��� l   �6�5�4�6  �5  �4  � ��� r    (��� n   &��� n    &��� I   " &�3�2�1�3 0 current_index  �2  �1  � o     "�0�0 0 _values  �  f     � o      �/�/ 0 an_index  � ��� n  ) 1��� n  * 1��� I   , 1�.��-�. 0 	delete_at  � ��,� o   , -�+�+ 0 an_index  �,  �-  � o   * ,�*�* 	0 _keys  �  f   ) *� ��� n  2 :��� n  3 :��� I   5 :�)��(�) 0 	delete_at  � ��'� o   5 6�&�& 0 an_index  �'  �(  � o   3 5�%�% 0 _values  �  f   2 3� ��$� L   ; =�� m   ; <�#
�# boovtrue�$  � ��� l     �"�!� �"  �!  �   � ��� l      ����  � 8 2!@abstruct Obtain all keys as a list
@result list
   � ��� d ! @ a b s t r u c t   O b t a i n   a l l   k e y s   a s   a   l i s t 
 @ r e s u l t   l i s t 
� ��� i   [ ^��� I      ���� 0 all_keys  �  �  � L     �� n    ��� n   ��� I    ���� 0 	all_items  �  �  � o    �� 	0 _keys  �  f     � ��� l     ����  �  �  � ��� l      ����  � : 4!@abstruct Obtain all values as a list
@result list
   � ��� h ! @ a b s t r u c t   O b t a i n   a l l   v a l u e s   a s   a   l i s t 
 @ r e s u l t   l i s t 
� ��� i   _ b��� I      ���� 0 
all_values  �  �  � L     �� n    ��� n   ��� I    ���� 0 	all_items  �  �  � o    �� 0 _values  �  f     �    l     ���
�  �  �
    l      �	�	   8 2!@abstruct Obtain all keys as a list
@result list
    � d ! @ a b s t r u c t   O b t a i n   a l l   k e y s   a s   a   l i s t 
 @ r e s u l t   l i s t 
  i   c f	
	 I      ���� 0 
count_keys  �  �  
 k       O     I   ���
� .corecnte****       ****�  �   n     o    �� 	0 _keys    f      � L     1    � 
�  
rslt�    l     ��������  ��  ��    l      ����   , &!@abstruct Remove all keys and values
    � L ! @ a b s t r u c t   R e m o v e   a l l   k e y s   a n d   v a l u e s 
  i   g j I      �������� 
0 forget  ��  ��   k       !  r     "#" I    	��$��
�� .corecrel****      � null$ o     ���� 0 xlist XList��  # n     %&% o   
 ���� 0 _values  &  f   	 
! '(' r    )*) I   ��+��
�� .corecrel****      � null+ o    ���� 0 xlist XList��  * n     ,-, o    ���� 	0 _keys  -  f    ( .��. L    //  f    ��   010 l     ��������  ��  ��  1 232 l      ��45��  4 . (!@group Setting and Getting Comparators    5 �66 P ! @ g r o u p   S e t t i n g   a n d   G e t t i n g   C o m p a r a t o r s  3 787 l     ��������  ��  ��  8 9:9 l      ��;<��  ;F@!
@abstruct Set a key comparator script to the instance.
@description
A key comparator script must have following specification.
* do handler which have two positional parameters.
* do handler return true if two argumetns are identical, otherwise return false.
@param a_script (script object)
@result script object : me
   < �==� ! 
 @ a b s t r u c t   S e t   a   k e y   c o m p a r a t o r   s c r i p t   t o   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 A   k e y   c o m p a r a t o r   s c r i p t   m u s t   h a v e   f o l l o w i n g   s p e c i f i c a t i o n . 
 *   d o   h a n d l e r   w h i c h   h a v e   t w o   p o s i t i o n a l   p a r a m e t e r s . 
 *   d o   h a n d l e r   r e t u r n   t r u e   i f   t w o   a r g u m e t n s   a r e   i d e n t i c a l ,   o t h e r w i s e   r e t u r n   f a l s e . 
 @ p a r a m   a _ s c r i p t   ( s c r i p t   o b j e c t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   m e 
: >?> i   k n@A@ I      ��B���� 0 set_key_comparator  B C��C o      ���� 0 a_script  ��  ��  A k     DD EFE r     GHG o     ���� 0 a_script  H n     IJI o    ���� 0 _key_comparator  J  f    F K��K L    LL  f    ��  ? MNM l     ��������  ��  ��  N OPO l      ��QR��  QHB!
@abstruct Set a value comparator script to the instance.
@description
A key comparator script must have following specification.
* do handler which have two positional parameters.
* do handler return true if two argumetns are identical, otherwise return false.
@param a_script (script object)
@result script object : me
   R �SS� ! 
 @ a b s t r u c t   S e t   a   v a l u e   c o m p a r a t o r   s c r i p t   t o   t h e   i n s t a n c e . 
 @ d e s c r i p t i o n 
 A   k e y   c o m p a r a t o r   s c r i p t   m u s t   h a v e   f o l l o w i n g   s p e c i f i c a t i o n . 
 *   d o   h a n d l e r   w h i c h   h a v e   t w o   p o s i t i o n a l   p a r a m e t e r s . 
 *   d o   h a n d l e r   r e t u r n   t r u e   i f   t w o   a r g u m e t n s   a r e   i d e n t i c a l ,   o t h e r w i s e   r e t u r n   f a l s e . 
 @ p a r a m   a _ s c r i p t   ( s c r i p t   o b j e c t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   m e 
P TUT i   o rVWV I      ��X���� 0 set_value_comparator  X Y��Y o      ���� 0 a_script  ��  ��  W k     ZZ [\[ r     ]^] o     ���� 0 a_script  ^ n     _`_ o    ���� 0 _value_comparator  `  f    \ a��a L    bb  f    ��  U cdc l     ��������  ��  ��  d efe l      ��gh��  g W Q!@abstruct Obrain the key comprator of the XDict instance.
@result script object
   h �ii � ! @ a b s t r u c t   O b r a i n   t h e   k e y   c o m p r a t o r   o f   t h e   X D i c t   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t 
f jkj i   s vlml I      �������� 0 key_comparator  ��  ��  m L     nn n    opo o    ���� 0 _key_comparator  p  f     k qrq l     ��������  ��  ��  r sts l      ��uv��  u Y S!@abstruct Obrain the value comprator of the XDict instance.
@result script object
   v �ww � ! @ a b s t r u c t   O b r a i n   t h e   v a l u e   c o m p r a t o r   o f   t h e   X D i c t   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t 
t xyx i   w zz{z I      �������� 0 value_comparator  ��  ��  { L     || n    }~} o    ���� 0 _value_comparator  ~  f     y � l     ��������  ��  ��  � ��� l      ������  � $ !@group Obtain Iterator Object   � ��� < ! @ g r o u p   O b t a i n   I t e r a t o r   O b j e c t� ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Make an iterator object of XDict. The iterator object return a pair list of key and a value i.e. {a_key, a_value} with ((<next>))() handler.
@result script object : An iterator
   � ���x ! @ a b s t r u c t 
 M a k e   a n   i t e r a t o r   o b j e c t   o f   X D i c t .   T h e   i t e r a t o r   o b j e c t   r e t u r n   a   p a i r   l i s t   o f   k e y   a n d   a   v a l u e   i . e .   { a _ k e y ,   a _ v a l u e }   w i t h   ( ( < n e x t > ) ) ( )   h a n d l e r . 
 @ r e s u l t   s c r i p t   o b j e c t   :   A n   i t e r a t o r 
� ��� i   { ~��� I      �������� 0 iterator  ��  ��  � k     $�� ��� r     ���  f     � o      ���� 
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
 	 	� ��� i    ��� I      �������� 0 next  ��  ��  � k     &�� ��� l     ������  � ! log "next in XDictIterator"   � ��� 6 l o g   " n e x t   i n   X D i c t I t e r a t o r "� ��� r     ��� n    	��� I    	�������� 0 next  ��  ��  � o     ���� 	0 _keys  � o      ���� 	0 a_key  � ��� r     ��� n   ��� I    ������� 0 item_at  � ���� n   ��� I    �������� 0 current_index  ��  ��  � o    ���� 	0 _keys  ��  ��  � o    ���� 0 _values  � o      ���� 0 a_value  � ���� L   ! &�� J   ! %�� ��� o   ! "���� 	0 a_key  � ���� o   " #���� 0 a_value  ��  ��  � ��� l     ����~��  �  �~  � ��� l      �}���}  � c ]!@abstruct
		Make a pair of a key and a value retuned by ((<next>))() revert to first one.
		   � ��� � ! @ a b s t r u c t 
 	 	 M a k e   a   p a i r   o f   a   k e y   a n d   a   v a l u e   r e t u n e d   b y   ( ( < n e x t > ) ) ( )   r e v e r t   t o   f i r s t   o n e . 
 	 	� ��|� i    ��� I      �{�z�y�{ 	0 reset  �z  �y  � n    	��� I    	�x�w�v�x 	0 reset  �w  �v  � o     �u�u 	0 _keys  �|  ��  � ��� l     �t�s�r�t  �s  �r  � ��� l      �q���q  � &  !@group Loop with Script Object    � �   @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  �  l     �p�o�n�p  �o  �n    l      �m�m  ��!
@abstruct
Perform do handler of given script object with passing pair lists of each key and value as a argument.
@description 
a_script must have a do handler which require only argument. The do handler must return true or false.

When the do handler return false, the process is stoped immediately.
@param a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
    �N ! 
 @ a b s t r u c t 
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t . 
 @ d e s c r i p t i o n   
 a _ s c r i p t   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e . 
 
 W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
 	 i    �

 I      �l�k�l 0 each   �j o      �i�i 0 a_script  �j  �k   k     /  r      I     �h�g�f�h 0 iterator  �g  �f   o      �e�e 0 an_iterator   �d V    / k    *  r     n    I    �c�b�a�c 0 next  �b  �a   o    �`�` 0 an_iterator   o      �_�_ 
0 a_pair   �^ Z    *�]�\ l   " �[�Z  =   "!"! n    #$# I     �Y%�X�Y 0 do  % &�W& o    �V�V 
0 a_pair  �W  �X  $ o    �U�U 0 a_script  " m     !�T
�T boovfals�[  �Z    S   % &�]  �\  �^   n   '(' I    �S�R�Q�S 0 has_next  �R  �Q  ( o    �P�P 0 an_iterator  �d  	 )*) l     �O�N�M�O  �N  �M  * +,+ l      �L-.�L  -��!
@abstruct 
Perform do handler of given script object with passing pair lists of each key and value as a argument.�@A ((<XList>)) consisting of the results of do handler is returned.
@description 
a_script must have a�@do handler which require only argument.
@param a_script(script object) : must have a do handler which require only argument.
@result script object : a XList instance
   . �//  ! 
 @ a b s t r u c t   
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t .0  A   ( ( < X L i s t > ) )   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 @ d e s c r i p t i o n   
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   X L i s t   i n s t a n c e 
, 010 i   � �232 I      �K4�J�K 0 map  4 5�I5 o      �H�H 0 a_script  �I  �J  3 k     66 787 r     9:9 I     �G;�F�G 0 map_as_list  ; <�E< o    �D�D 0 a_script  �E  �F  : o      �C�C 0 out_list  8 =�B= L   	 >> n  	 ?@? I    �AA�@�A 0 	make_with  A B�?B o    �>�> 0 out_list  �?  �@  @ o   	 �=�= 0 xlist XList�B  1 CDC l     �<�;�:�<  �;  �:  D EFE l      �9GH�9  G��!
@abstruct 
Almost same to ((<map>)), but a result of this method is AppleScript's list.
@description 
Perform do handler of given script object with passing pair lists of each key and value as a argument.�@A list consisting of the results of do handler is returned.

a_script must have a�@do handler which require only argument.
@param a_script(script object) : must have a do handler which require only argument.
@result list
   H �IIV ! 
 @ a b s t r u c t   
 A l m o s t   s a m e   t o   ( ( < m a p > ) ) ,   b u t   a   r e s u l t   o f   t h i s   m e t h o d   i s   A p p l e S c r i p t ' s   l i s t . 
 @ d e s c r i p t i o n   
 P e r f o r m   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   p a i r   l i s t s   o f   e a c h   k e y   a n d   v a l u e   a s   a   a r g u m e n t .0  A   l i s t   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   l i s t 
F JKJ i   � �LML I      �8N�7�8 0 map_as_list  N O�6O o      �5�5 0 a_script  �6  �7  M k     0PP QRQ r     STS J     �4�4  T o      �3�3 0 out_list  R UVU r    WXW I    
�2�1�0�2 0 iterator  �1  �0  X o      �/�/ 0 an_iterator  V YZY V    -[\[ k    (]] ^_^ r    `a` n   bcb I    �.�-�,�. 0 next  �-  �,  c o    �+�+ 0 an_iterator  a o      �*�* 
0 a_pair  _ d�)d r    (efe n   %ghg I     %�(i�'�( 0 do  i j�&j o     !�%�% 
0 a_pair  �&  �'  h o     �$�$ 0 a_script  f n      klk  ;   & 'l o   % &�#�# 0 out_list  �)  \ n   mnm I    �"�!� �" 0 has_next  �!  �   n o    �� 0 an_iterator  Z o�o L   . 0pp o   . /�� 0 out_list  �  K qrq l     ����  �  �  r sts l     ����  �  �  t uvu l      �wx�  w  !@group Debugging    x �yy $ ! @ g r o u p   D e b u g g i n g  v z{z l      �|}�  | � �!
@abstruct Dump keys and values in XDict as text. Use this method for debugging.
@description
If objects which can be coerce to string, error raise.
@result string

  "key1 -> Value1 
    key2 -> Value2
    ......."
 
   } �~~� ! 
 @ a b s t r u c t   D u m p   k e y s   a n d   v a l u e s   i n   X D i c t   a s   t e x t .   U s e   t h i s   m e t h o d   f o r   d e b u g g i n g . 
 @ d e s c r i p t i o n 
 I f   o b j e c t s   w h i c h   c a n   b e   c o e r c e   t o   s t r i n g ,   e r r o r   r a i s e . 
 @ r e s u l t   s t r i n g 
 
     " k e y 1   - >   V a l u e 1   
         k e y 2   - >   V a l u e 2 
         . . . . . . . " 
   
{ � i   � ���� I      ���� 0 dump  �  �  � k     9�� ��� r     ��� m     �� ���  � o      �� 
0 a_text  � ��� Y    6������ r    1��� b    /��� b    -��� b    $��� b    "��� b     ��� b    ��� o    �� 
0 a_text  � l   ���� n   ��� n   ��� I    ���
� 0 item_at  � ��	� o    �� 0 n  �	  �
  � o    �� 	0 _keys  �  f    �  �  � 1    �
� 
tab � m     !�� ���  - >� 1   " #�
� 
tab � l  $ ,���� n  $ ,��� n  % ,��� I   ' ,���� 0 item_at  � �� � o   ' (���� 0 n  �   �  � o   % '���� 0 _values  �  f   $ %�  �  � o   - .��
�� 
ret � o      ���� 
0 a_text  � 0 n  � m    ���� � l   ������ n   ��� n  	 ��� I    �������� 0 item_counts  ��  ��  � o   	 ���� 	0 _keys  �  f    	��  ��  �  � ���� L   7 9�� o   7 8���� 
0 a_text  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �  * private *   � ���  *   p r i v a t e   *� ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 	0 debug  ��  ��  � k     �� ��� r     ��� I     ������� 0 make_with_lists  � ��� J    �� ��� m    �� ���  k e y 1� ���� m    �� ���  k e y 2��  � ���� J    	�� ��� m    �� ���  v a l u e 1� ���� m    �� ���  v a l u e 2��  ��  ��  � o      ���� 
0 a_dict  � ��� l   ������  � % a_dict's remove_for_key("key1")   � ��� > a _ d i c t ' s   r e m o v e _ f o r _ k e y ( " k e y 1 " )� ��� I   �����
�� .ascrcmnt****      � ****� n   ��� I    �������� 0 dump  ��  ��  � o    ���� 
0 a_dict  ��  � ���� o    ���� 
0 a_dict  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I     ������
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
�� .miscactvnull��� ��� null��  ��  �  ��  I   %����
�� .sysodisAaleR        TEXT l   !���� b    ! b     o    ���� 0 msg   o    ��
�� 
ret  o     ���� 	0 errno  ��  ��  ��  ��  ��  � �� l     ��������  ��  ��  ��       "��	
  !"#$%��    ����������������������������������������������������������������
�� 
pimr�� 0 xlist XList
�� 
pnam
�� .corecrel****      � null�� 0 make_with_pairs  �� 0 make_with_lists  �� &0 defaultcomparator DefaultComparator�� 0 _key_comparator  �� 0 _value_comparator  �� 0 make_with_xlists  �� 0 search_value  �� 0 value_for_key  �� 0 key_for_value  �� 0 	set_value  �� 0 has_key  �� 0 remove_for_key  �� 0 remove_for_value  �� 0 all_keys  �� 0 
all_values  �� 0 
count_keys  �� 
0 forget  �� 0 set_key_comparator  �� 0 set_value_comparator  �� 0 key_comparator  �� 0 value_comparator  �� 0 iterator  �� 0 each  �� 0 map  �� 0 map_as_list  �� 0 dump  �� 	0 debug  
�� .aevtoappnull  �   � ****	 ��&�� &  '(' ��)��
�� 
cobj) **   �� 
�� 
scpt��  ( ��+��
�� 
cobj+ ,,   ��
�� 
osax��  
 --   �� 
�� 
scpt �� 2����./��
�� .corecrel****      � null��  ��  .  / ���� 0 make_with_lists  �� *jvjvl+   �� B����01���� 0 make_with_pairs  �� ��2�� 2  ���� 	0 pairs  ��  0 ������~�}�� 	0 pairs  �� 0 key_list  � 0 
value_list  �~ 0 	pair_list  �} 0 pairstolists PairsToLists1 �|�{�z _3�y�x
�| .corecrel****      � null�{ 0 	make_with  �z 0 pairstolists PairsToLists3 �w4�v�u56�t
�w .ascrinit****      � ****4 k     	77  a88  d�s�s  �v  �u  5 �r�q
�r 
pare�q 0 do  6 �p�o9
�p 
ascr
�o 
pare9 �n f�m�l:;�k�n 0 do  �m �j<�j <  �i�i 
0 a_pair  �l  : �h�h 
0 a_pair  ; �g�f
�g 
cobj�f 0 push  �k b  ��k/k+ Ob  ��l/k+ Oe�t 
�EN OL �y 0 each  �x 0 make_with_xlists  �� =b  j  E�Ob  j  E�Ob  �k+ E�O��K S�O��k+ O*��l+  �e ��d�c=>�b�e 0 make_with_lists  �d �a?�a ?  �`�_�` 0 key_list  �_ 0 
value_list  �c  = �^�]�^ 0 key_list  �] 0 
value_list  > �\�[�\ 0 	make_with  �[ 0 make_with_xlists  �b #b  �k+  E�Ob  �k+  E�O*��l+  �Z � @�Z &0 defaultcomparator DefaultComparator@  A�YBA �X�W
�X 
pare�W 0 do  �Y  B �V ��U�TCD�S�V 0 do  �U �RE�R E  �Q�P�Q 0 a_value  �P 0 target_value  �T  C �O�N�O 0 a_value  �N 0 target_value  D  ��S �g �� V �M ��L�KFG�J�M 0 make_with_xlists  �L �IH�I H  �H�G�H 0 key_list  �G 0 
value_list  �K  F �F�E�D�C�F 0 key_list  �E 0 
value_list  �D 0 a_parent  �C 0 xdict XDictG �B �I�B 0 xdict XDictI �AJ�@�?KL�>
�A .ascrinit****      � ****J k     "MM  �NN  �OO  �PP  �QQ  ��=�=  �@  �?  K �<�;�:�9�8
�< 
pare�; 	0 _keys  �: 0 _values  �9 0 _key_comparator  �8 0 _value_comparator  L �7�6�5�4�3
�7 
pare�6 	0 _keys  �5 0 _values  �4 0 _key_comparator  �3 0 _value_comparator  �> #b  N  Ob   �Ob  �O)�,E�O)�,E��J )E�O��K S�O� �2�1�0RS�/�2 0 search_value  �1 �.T�. T  �-�,�+�*�- 	0 a_key  �, 0 key_list  �+ 0 
value_list  �* 0 
comparator  �0  R 
�)�(�'�&�%�$�#�"�!� �) 	0 a_key  �( 0 key_list  �' 0 
value_list  �& 0 
comparator  �% 0 invalid_key_indexes  �$ 0 current_key  �# 0 msg  �" 	0 errno  �! 0 an_index  �  0 a_value  S �����U���V��W������� 	0 reset  � 0 has_next  � 0 next  
� 
pcnt� 0 msg  U ���
� 
errn� 	0 errno  �  � 0 do  � 0 current_index  � 0 item_at  V ���
� 
errn����  � 0 	delete_at  �  W ��
�	
� 
errn�
�?�	  
� 
utxt�  
� 
errn���/ �jvE�O�j+  O jh�j+ �j+ E�O 
��,E�W X  hO %���l+  �j+ E�O��k+ E�OY hW X  	�j+ E�O��k+ 
O��k+ 
OP[OY��O �W )X   ���&%E�W X  a E�O)a a l� ����XY�� 0 value_for_key  � �Z� Z  �� 	0 a_key  �  X �� 	0 a_key  Y �� ������� 	0 _keys  �  0 _values  �� 0 _key_comparator  �� �� 0 search_value  � *�)�,)�,)�,�+  �������[\���� 0 key_for_value  �� ��]�� ]  ���� 0 a_value  ��  [ ���� 0 a_value  \ ������������ 0 _values  �� 	0 _keys  �� 0 _value_comparator  �� �� 0 search_value  �� *�)�,)�,)�,�+  �������^_���� 0 	set_value  �� ��`�� `  ������ 	0 a_key  �� 0 a_value  ��  ^ ������ 	0 a_key  �� 0 a_value  _ ��������������������a���� 	0 _keys  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  
�� 
for 
�� 
at  �� 0 current_index  �� 0 set_item  ��  a ������
�� 
errn�����  �� 0 push  �� > &*�)�,)�,)�,�+ O)�,��)�,j+ � W X 	 
)�,�k+ O)�,�k+  ��%����bc���� 0 has_key  �� ��d�� d  ���� 	0 a_key  ��  b ���� 	0 a_key  c ������������������������e
�� 
reco
�� 
list
�� 
bool
�� 
pcls�� 	0 _keys  �� 0 has_item  ��  ��  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  e ������
�� 
errn�����  �� L &�
 ��&kv��, )�,�k+ Y )jhW &X   *�)�,)�,)�,�+ OeW 	X  f ��a����fg���� 0 remove_for_key  �� ��h�� h  ���� 	0 a_key  ��  f �������� 	0 a_key  �� 0 	old_value  �� 0 an_index  g 	������������i������ 	0 _keys  �� 0 _values  �� 0 _key_comparator  �� �� 0 search_value  ��  i ������
�� 
errn�����  �� 0 current_index  �� 0 	delete_at  �� > *�)�,)�,)�,�+ E�W 	X  fO)�,j+ E�O)�,�k+ O)�,�k+ Oe �������jk���� 0 remove_for_value  �� ��l�� l  ���� 	0 a_val  ��  j �������� 	0 a_val  �� 0 	old_value  �� 0 an_index  k 	������������m������ 0 _values  �� 	0 _keys  �� 0 _value_comparator  �� �� 0 search_value  ��  m ������
�� 
errn�����  �� 0 current_index  �� 0 	delete_at  �� > *�)�,)�,)�,�+ E�W 	X  fO)�,j+ E�O)�,�k+ O)�,�k+ Oe �������no���� 0 all_keys  ��  ��  n  o ������ 	0 _keys  �� 0 	all_items  �� 	)�,j+  �������pq���� 0 
all_values  ��  ��  p  q ������ 0 _values  �� 0 	all_items  �� 	)�,j+  ��
����rs���� 0 
count_keys  ��  ��  r  s �������� 	0 _keys  
�� .corecnte****       ****
�� 
rslt�� )�, *j UO�E ������tu���� 
0 forget  ��  ��  t  u ������
�� .corecrel****      � null�� 0 _values  �� 	0 _keys  �� b  j  )�,FOb  j  )�,FO) ��A���vw�~�� 0 set_key_comparator  �� �}x�} x  �|�| 0 a_script  �  v �{�{ 0 a_script  w �z�z 0 _key_comparator  �~ 	�)�,FO) �yW�x�wyz�v�y 0 set_value_comparator  �x �u{�u {  �t�t 0 a_script  �w  y �s�s 0 a_script  z �r�r 0 _value_comparator  �v 	�)�,FO) �qm�p�o|}�n�q 0 key_comparator  �p  �o  |  } �m�m 0 _key_comparator  �n )�,E �l{�k�j~�i�l 0 value_comparator  �k  �j  ~   �h�h 0 _value_comparator  �i )�,E �g��f�e���d�g 0 iterator  �f  �e  � �c�b�a�`�c 
0 a_dict  �b 0 key_list  �a 0 
value_list  �` 0 xdictiterator XDictIterator� �_�^�]�\�[���_ 	0 _keys  �^ 0 list_ref  �] 0 	make_with  �\ 0 _values  �[ 0 xdictiterator XDictIterator� �Z��Y�X���W
�Z .ascrinit****      � ****� k     �� ��� ��� ��� ��� ��� ��V�V  �Y  �X  � �U�T�S�R�Q�P
�U 
pare�T 0 _values  �S 	0 _keys  �R 0 has_next  �Q 0 next  �P 	0 reset  � �O�N�M�L���
�O 
ascr
�N 
pare�M 0 _values  �L 	0 _keys  � �K��J�I���H�K 0 has_next  �J  �I  �  � �G�G 0 has_next  �H b  j+  � �F��E�D���C�F 0 next  �E  �D  � �B�A�B 	0 a_key  �A 0 a_value  � �@�?�>�@ 0 next  �? 0 current_index  �> 0 item_at  �C 'b  j+  E�Ob  b  j+ k+ E�O��lv� �=��<�;���:�= 	0 reset  �<  �;  �  � �9�9 	0 reset  �: 
b  j+  �W  �EN Ob  �Ob  �OL OL OL �d %)E�Ob  )�,j+ k+ E�O)�,E�O��K S�  �8�7�6���5�8 0 each  �7 �4��4 �  �3�3 0 a_script  �6  � �2�1�0�2 0 a_script  �1 0 an_iterator  �0 
0 a_pair  � �/�.�-�,�/ 0 iterator  �. 0 has_next  �- 0 next  �, 0 do  �5 0*j+  E�O &h�j+ �j+ E�O��k+ f  Y h[OY��! �+3�*�)���(�+ 0 map  �* �'��' �  �&�& 0 a_script  �)  � �%�$�% 0 a_script  �$ 0 out_list  � �#�"�# 0 map_as_list  �" 0 	make_with  �( *�k+  E�Ob  �k+ " �!M� �����! 0 map_as_list  �  ��� �  �� 0 a_script  �  � ����� 0 a_script  � 0 out_list  � 0 an_iterator  � 
0 a_pair  � ����� 0 iterator  � 0 has_next  � 0 next  � 0 do  � 1jvE�O*j+  E�O h�j+ �j+ E�O��k+ �6F[OY��O�# �������� 0 dump  �  �  � ��� 
0 a_text  � 0 n  � �����
��	�� 	0 _keys  � 0 item_counts  � 0 item_at  
�
 
tab �	 0 _values  
� 
ret � :�E�O 1k)�,j+ kh �)�,�k+ %�%�%�%)�,�k+ %�%E�[OY��O�$ �������� 	0 debug  �  �  � �� 
0 a_dict  � ������� � 0 make_with_lists  � 0 dump  
�  .ascrcmnt****      � ****� *��lv��lvl+ E�O�j+ j O�% �����������
�� .aevtoappnull  �   � ****��  ��  � ������ 0 msg  �� 	0 errno  � ���������������
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg  � ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� & )j  �el W X  *j O��%�%j ascr  ��ޭ