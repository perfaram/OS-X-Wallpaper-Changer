FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

Script by Perceval FARAMAZ, November 2013 -- Based on the script by Philip Hutchison (http://pipwerks.com)
http://me.leapxl.com
Under MIT license

This script assumes:
1. You have a folder named "Wallpapers" in your Pictures folder
2. You have 4 subfolders into "Wallpapers", one for each season (Fall/Winter/Spring/Summer)
3. You have six subfolders inside each season folder, with names that match the variables below. 
4. You have images inside each folder

     � 	 	� 
 
 S c r i p t   b y   P e r c e v a l   F A R A M A Z ,   N o v e m b e r   2 0 1 3   - -   B a s e d   o n   t h e   s c r i p t   b y   P h i l i p   H u t c h i s o n   ( h t t p : / / p i p w e r k s . c o m ) 
 h t t p : / / m e . l e a p x l . c o m 
 U n d e r   M I T   l i c e n s e 
 
 T h i s   s c r i p t   a s s u m e s : 
 1 .   Y o u   h a v e   a   f o l d e r   n a m e d   " W a l l p a p e r s "   i n   y o u r   P i c t u r e s   f o l d e r 
 2 .   Y o u   h a v e   4   s u b f o l d e r s   i n t o   " W a l l p a p e r s " ,   o n e   f o r   e a c h   s e a s o n   ( F a l l / W i n t e r / S p r i n g / S u m m e r ) 
 3 .   Y o u   h a v e   s i x   s u b f o l d e r s   i n s i d e   e a c h   s e a s o n   f o l d e r ,   w i t h   n a m e s   t h a t   m a t c h   t h e   v a r i a b l e s   b e l o w .   
 4 .   Y o u   h a v e   i m a g e s   i n s i d e   e a c h   f o l d e r 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      BEGIN USER CONFIGURATION     �   2   B E G I N   U S E R   C O N F I G U R A T I O N      l     ��������  ��  ��        l     ��  ��      supply folder names     �   (   s u p p l y   f o l d e r   n a m e s      l     ����  r         m        �      M o r n i n g   E a r l y  o      ���� 0 morningearly morningEarly��  ��     ! " ! l    #���� # r     $ % $ m     & & � ' '  M o r n i n g   L a t e % o      ���� 0 morninglate morningLate��  ��   "  ( ) ( l    *���� * r     + , + m    	 - - � . .  A f t e r n o o n   E a r l y , o      ����  0 afternoonearly afternoonEarly��  ��   )  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5  A f t e r n o o n   L a t e 3 o      ���� 0 afternoonlate afternoonLate��  ��   0  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < <  E v e n i n g   E a r l y : o      ���� 0 eveningearly eveningEarly��  ��   7  = > = l    ?���� ? r     @ A @ m     B B � C C  E v e n i n g   L a t e A o      ���� 0 eveninglate eveningLate��  ��   >  D E D l    F���� F r     G H G m     I I � J J  F a l l H o      ���� 0 
seasonfall 
seasonFall��  ��   E  K L K l    M���� M r     N O N m     P P � Q Q  W i n t e r O o      ���� 0 seasonwinter seasonWinter��  ��   L  R S R l    ' T���� T r     ' U V U m     # W W � X X  S u m m e r V o      ���� 0 seasonsummer seasonSummer��  ��   S  Y Z Y l  ( / [���� [ r   ( / \ ] \ m   ( + ^ ^ � _ _  S p r i n g ] o      ���� 0 seasonspring seasonSpring��  ��   Z  ` a ` l     ��������  ��  ��   a  b c b l     �� d e��   d i c set to true to display the same image on all desktops, false to show unique images on each desktop    e � f f �   s e t   t o   t r u e   t o   d i s p l a y   t h e   s a m e   i m a g e   o n   a l l   d e s k t o p s ,   f a l s e   t o   s h o w   u n i q u e   i m a g e s   o n   e a c h   d e s k t o p c  g h g l  0 5 i���� i r   0 5 j k j m   0 1��
�� boovtrue k o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��   h  l m l l     ��������  ��  ��   m  n o n l     �� p q��   p   END USER CONFIGURATION    q � r r .   E N D   U S E R   C O N F I G U R A T I O N o  s t s l     ��������  ��  ��   t  u v u l     ��������  ��  ��   v  w x w l     ��������  ��  ��   x  y z y l     �� { |��   {   get current hour    | � } } "   g e t   c u r r e n t   h o u r z  ~  ~ l  6 C ����� � r   6 C � � � n   6 ? � � � 1   ; ?��
�� 
hour � l  6 ; ����� � I  6 ;������
�� .misccurdldt    ��� null��  ��  ��  ��   � o      ���� 0 h  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   get current season    � � � � &   g e t   c u r r e n t   s e a s o n �  � � � l  D Q ����� � r   D Q � � � n   D M � � � m   I M��
�� 
mnth � l  D I ����� � I  D I������
�� .misccurdldt    ��� null��  ��  ��  ��   � o      ���� 0 m  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 change value of periodOfDay based on current time    � � � � d   c h a n g e   v a l u e   o f   p e r i o d O f D a y   b a s e d   o n   c u r r e n t   t i m e �  � � � l  R � ����� � Z   R � � � ��� � l  R g ����� � F   R g � � � ?   R Y � � � o   R U���� 0 h   � m   U X����  � A   \ c � � � o   \ _���� 0 h   � m   _ b���� ��  ��   � r   j o � � � o   j k���� 0 morninglate morningLate � o      ���� 0 periodofday periodOfDay �  � � � l  r � ����� � F   r � � � � @   r y � � � o   r u���� 0 h   � m   u x����  � A   | � � � � o   | ���� 0 h   � m    ����� ��  ��   �  � � � r   � � � � � o   � �����  0 afternoonearly afternoonEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 afternoonlate afternoonLate � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 eveningearly eveningEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � @   � � � � � o   � ��� 0 h   � m   � ��~�~ ��  ��   �  ��} � r   � � � � � o   � ��|�| 0 eveninglate eveningLate � o      �{�{ 0 periodofday periodOfDay�}  ��  ��  ��   �  � � � l     �z�y�x�z  �y  �x   �  � � � l     �w � ��w   � 8 2 change value of periodOfDay based on current time    � � � � d   c h a n g e   v a l u e   o f   p e r i o d O f D a y   b a s e d   o n   c u r r e n t   t i m e �  � � � l  �� ��v�u � Z   �� � � ��t � l  �	 ��s�r � G   �	 � � � G   � � � � � =   � � � � � o   � ��q�q 0 m   � m   � ��p
�p 
jan  � =   � � � � � o   � ��o�o 0 m   � m   � ��n
�n 
feb  � =   � � � � o   ��m�m 0 m   � m  �l
�l 
mar �s  �r   � r   � � � o  �k�k 0 seasonwinter seasonWinter � o      �j�j 0 
seasonname 
seasonName �  � � � l 7 ��i�h � G  7 � � � G  ) � � � =   � � � o  �g�g 0 m   � m  �f
�f 
apr  � =  % � � � o  !�e�e 0 m   � m  !$�d
�d 
may  � =  ,3 �  � o  ,/�c�c 0 m    m  /2�b
�b 
jun �i  �h   �  r  :A o  :=�a�a 0 seasonspring seasonSpring o      �`�` 0 
seasonname 
seasonName  l Dg�_�^ G  Dg	 G  DY

 =  DK o  DG�]�] 0 m   m  GJ�\
�\ 
jul  =  NU o  NQ�[�[ 0 m   m  QT�Z
�Z 
aug 	 =  \c o  \_�Y�Y 0 m   m  _b�X
�X 
sep �_  �^    r  jq o  jm�W�W 0 seasonsummer seasonSummer o      �V�V 0 
seasonname 
seasonName  l t��U�T G  t� G  t� =  t{ o  tw�S�S 0 m   m  wz�R
�R 
oct  =  ~�  o  ~��Q�Q 0 m    m  ���P
�P 
nov  =  ��!"! o  ���O�O 0 m  " m  ���N
�N 
dec �U  �T   #�M# r  ��$%$ o  ���L�L 0 
seasonfall 
seasonFall% o      �K�K 0 
seasonname 
seasonName�M  �t  �v  �u   � &'& l     �J�I�H�J  �I  �H  ' ()( l ��*�G�F* r  ��+,+ b  ��-.- b  ��/0/ o  ���E�E 0 
seasonname 
seasonName0 m  ��11 �22  :. o  ���D�D 0 periodofday periodOfDay, o      �C�C 0 	intelpath 	intelPath�G  �F  ) 343 l     �B�A�@�B  �A  �@  4 565 l     �?78�?  7   debug :   8 �99    d e b u g   :6 :;: l     �><=�>  <   display dialog intelPath   = �>> 2   d i s p l a y   d i a l o g   i n t e l P a t h; ?@? l     �=�<�;�=  �<  �;  @ ABA l     �:CD�:  C ; 5 helper function ("handler") for getting random image   D �EE j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g eB FGF i     HIH I      �9J�8�9 0 getimage getImageJ K�7K o      �6�6 0 
foldername 
folderName�7  �8  I k     LL MNM l     �5�4�3�5  �4  �3  N OPO O     QRQ L    SS c    TUT n    VWV 3    �2
�2 
fileW n    XYX 4    �1Z
�1 
cfolZ l   [�0�/[ b    \]\ m    	^^ �__ & P i c t u r e s : W a l l p a p e r :] o   	 
�.�. 0 
foldername 
folderName�0  �/  Y 1    �-
�- 
homeU m    �,
�, 
ctxtR m     ``�                                                                                  MACS  alis    t  Macintosh HD               �i�H+  E@b
Finder.app                                                     Gep�``9        ����  	                CoreServices    �i�o      �`D    E@bE@_E@^  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  P a�+a l   �*�)�(�*  �)  �(  �+  G bcb l     �'�&�%�'  �&  �%  c ded l     �$�#�"�$  �#  �"  e fgf l �Ph�!� h O  �Piji k  �Okk lml l ������  �  �  m non l ���pq�  p 3 - wrapped in a try block for error suppression   q �rr Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o no sts Q  �Muv�u k  �Dww xyx l ������  �  �  y z{z l ���|}�  | 6 0 determine which picture to use for main display   } �~~ `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a y{ � r  ����� n ����� I  ������ 0 getimage getImage� ��� o  ���� 0 	intelpath 	intelPath�  �  �  f  ��� o      �� (0 maindisplaypicture mainDisplayPicture� ��� l ������  �  �  � ��� l ������  � = 7 set the picture for additional monitors, if applicable   � ��� n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l e� ��� O  �8��� k  �7�� ��� l ������  �  �  � ��� l ���
���
  � &   get a reference to all desktops   � ��� @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p s� ��� r  ����� N  ���� 2  ���	
�	 
dskp� o      �� 0 thedesktops theDesktops� ��� l ������  �  �  � ��� l ������  � !  handle additional desktops   � ��� 6   h a n d l e   a d d i t i o n a l   d e s k t o p s� ��� Z  �5����� l ����� � ?  ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 thedesktops theDesktops��  ��  ��  � m  ������ �  �   � k  �1�� ��� l ����������  ��  ��  � ��� l ��������  � D > loop through all desktops (beginning with the second desktop)   � ��� |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )� ��� Y  �/�������� k  �*�� ��� l ����������  ��  ��  � ��� l ��������  � #  determine which image to use   � ��� :   d e t e r m i n e   w h i c h   i m a g e   t o   u s e� ��� Z  ������� l �������� = ����� o  ������ <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays� m  ����
�� boovfals��  ��  � r  ���� n ���� I   ������� 0 getimage getImage� ���� o   ���� 0 periodofday periodOfDay��  ��  �  f  � � o      ���� 20 secondarydisplaypicture secondaryDisplayPicture��  � r  ��� n ��� o  ���� (0 maindisplaypicture mainDisplayPicture�  f  � o      ���� 20 secondarydisplaypicture secondaryDisplayPicture� ��� l ��������  ��  ��  � ��� l ������  �   apply image to desktop   � ��� .   a p p l y   i m a g e   t o   d e s k t o p� ��� r  (��� o  ���� 20 secondarydisplaypicture secondaryDisplayPicture� n      ��� 1  #'��
�� 
picP� n  #��� 4  #���
�� 
cobj� o  !"���� 0 x  � l ������ o  ���� 0 thedesktops theDesktops��  ��  � ���� l ))��������  ��  ��  ��  �� 0 x  � m  ������ � l �������� I �������
�� .corecnte****       ****� o  ������ 0 thedesktops theDesktops��  ��  ��  ��  � ���� l 00��������  ��  ��  ��  �  �  � ���� l 66��������  ��  ��  ��  � m  �����                                                                                  sevs  alis    �  Macintosh HD               �i�H+  E@bSystem Events.app                                              I>�A�Y        ����  	                CoreServices    �i�o      �A�9    E@bE@_E@^  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l 99��������  ��  ��  � ��� l 99������  � ( " set the primary monitor's picture   � ��� D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e� ��� l 99������  � R L due to a Finder quirk, this has to be done AFTER setting the other displays   � ��� �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y s� ��� l 99������  � 1 + this quirk has been corrected in Mavericks   � ��� V   t h i s   q u i r k   h a s   b e e n   c o r r e c t e d   i n   M a v e r i c k s� ��� r  9B   o  9<���� (0 maindisplaypicture mainDisplayPicture 1  <A��
�� 
dpic� �� l CC��������  ��  ��  ��  v R      ������
�� .ascrerr ****      � ****��  ��  �  t �� l NN��������  ��  ��  ��  j m  ���                                                                                  MACS  alis    t  Macintosh HD               �i�H+  E@b
Finder.app                                                     Gep�``9        ����  	                CoreServices    �i�o      �`D    E@bE@_E@^  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �!  �   g �� l     ��������  ��  ��  ��       "��  & - 4 ; B I P W ^������ 4 ^	������������������������������    ��������������������������������������������������������������~�� 0 getimage getImage
�� .aevtoappnull  �   � ****�� 0 morningearly morningEarly�� 0 morninglate morningLate��  0 afternoonearly afternoonEarly�� 0 afternoonlate afternoonLate�� 0 eveningearly eveningEarly�� 0 eveninglate eveningLate�� 0 
seasonfall 
seasonFall�� 0 seasonwinter seasonWinter�� 0 seasonsummer seasonSummer�� 0 seasonspring seasonSpring�� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays�� 0 h  �� 0 m  �� 0 periodofday periodOfDay�� 0 
seasonname 
seasonName�� 0 	intelpath 	intelPath��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  �  �~   �}I�|�{
�z�} 0 getimage getImage�| �y�y   �x�x 0 
foldername 
folderName�{  
 �w�w 0 
foldername 
folderName `�v�u^�t�s
�v 
home
�u 
cfol
�t 
file
�s 
ctxt�z � *�,��%/�.�&UOP �r�q�p�o
�r .aevtoappnull  �   � **** k    P    !  (  /  6  =  D  K  R  Y  g  ~  �  �  � (   f�n�n  �q  �p   �m�m 0 x   = �l &�k -�j 4�i ;�h B�g I�f P�e W�d ^�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I1�H�G�F��E�D�C�B�A�@�?�>�=�l 0 morningearly morningEarly�k 0 morninglate morningLate�j  0 afternoonearly afternoonEarly�i 0 afternoonlate afternoonLate�h 0 eveningearly eveningEarly�g 0 eveninglate eveningLate�f 0 
seasonfall 
seasonFall�e 0 seasonwinter seasonWinter�d 0 seasonsummer seasonSummer�c 0 seasonspring seasonSpring�b <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
�a .misccurdldt    ��� null
�` 
hour�_ 0 h  
�^ 
mnth�] 0 m  �\ �[ 
�Z 
bool�Y 0 periodofday periodOfDay�X �W �V 
�U 
jan 
�T 
feb 
�S 
mar �R 0 
seasonname 
seasonName
�Q 
apr 
�P 
may 
�O 
jun 
�N 
jul 
�M 
aug 
�L 
sep 
�K 
oct 
�J 
nov 
�I 
dec �H 0 	intelpath 	intelPath�G 0 getimage getImage�F (0 maindisplaypicture mainDisplayPicture
�E 
dskp�D 0 thedesktops theDesktops
�C .corecnte****       ****�B 20 secondarydisplaypicture secondaryDisplayPicture
�A 
cobj
�@ 
picP
�? 
dpic�>  �=  �oQ�E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�Oa E` Oa E` OeE` O*j a ,E` O*j a ,E` O_ a 	 _ a a & 
�E` Y u_ a 	 _ a a & 
�E` Y U_ a 	 _ a a & 
�E` Y 5_ a 	 _ a  a & 
�E` Y _ a   
�E` Y hO_ a ! 
 _ a " a &
 _ a # a & 
�E` $Y �_ a % 
 _ a & a &
 _ a ' a & _ E` $Y a_ a ( 
 _ a ) a &
 _ a * a & _ E` $Y 1_ a + 
 _ a , a &
 _ a - a & 
�E` $Y hO_ $a .%_ %E` /Oa 0 � �)_ /k+ 1E` 2Oa 3 i*a 4-E` 5O_ 5j 6k O Gl_ 5j 6kh  _ f  )_ k+ 1E` 7Y )a 2,E` 7O_ 7_ 5a 8�/a 9,FOP[OY��OPY hOPUO_ 2*a :,FOPW X ; <hOPU
�� boovtrue�� 
�� 
apr 	 �!! * S p r i n g : A f t e r n o o n   L a t e��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ