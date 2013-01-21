FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			15/12/2012     �   0 	 C r e a t e d   o n 	 	 	 1 5 / 1 2 / 2 0 1 2      l     ��  ��     	Last updated		20/01/2013     �   2 	 L a s t   u p d a t e d 	 	 2 0 / 0 1 / 2 0 1 3      l     ��  ��     	Version:			1.8     �    	 V e r s i o n : 	 	 	 1 . 8     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l      E F G E p       H H ������ $0 freshpagesfolder freshPagesFolder��   F . ( Where the newly created files are saved    G � I I P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d D  J K J l     L���� L r      M N M m      O O � P P j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : N o      ���� $0 freshpagesfolder freshPagesFolder��  ��   K  Q R Q l     ��������  ��  ��   R  S T S l      U V W U p       X X ������  0 masterdocument masterDocument��   V #  The InDesign master document    W � Y Y :   T h e   I n D e s i g n   m a s t e r   d o c u m e n t T  Z [ Z l    \���� \ r     ] ^ ] m     _ _ � ` ` p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d ^ o      ����  0 masterdocument masterDocument��  ��   [  a b a l     ��������  ��  ��   b  c d c l     ��������  ��  ��   d  e f e l     �� g h��   g   Running code --    h � i i     R u n n i n g   c o d e   - - f  j k j l    l m n l O    o p o r     q r q m    ��
�� elnteNvr r n       s t s 1    ��
�� 
UIAc t 1    ��
�� 
pScr p m    	 u u�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   m $  Suppresses dialogs and alerts    n � v v <   S u p p r e s s e s   d i a l o g s   a n d   a l e r t s k  w x w l    y z { y I    �� |���� 0 	genprompt 	genPrompt |  }�� } m     ~ ~ �    ��  ��   z h b Desk name (News, Features, Sport, Arts or Custom edition) goes in the quotes in this handler call    { � � � �   D e s k   n a m e   ( N e w s ,   F e a t u r e s ,   S p o r t ,   A r t s   o r   C u s t o m   e d i t i o n )   g o e s   i n   t h e   q u o t e s   i n   t h i s   h a n d l e r   c a l l x  � � � l   ( ����� � O   ( � � � r     ' � � � m     !��
�� elnteInA � n       � � � 1   $ &��
�� 
UIAc � 1   ! $��
�� 
pScr � m     � ��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��   �  � � � l  ) 9 ����� � O   ) 9 � � � k   - 8 � �  � � � I  - 2������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I  3 8�� ���
�� .aevtodocnull  �    alis � o   3 4���� $0 freshpagesfolder freshPagesFolder��  ��   � m   ) * � ��                                                                                  MACS  alis    Z  SSD                        �@��H+  ƹ
Finder.app                                                     ���ۢ        ����  	                CoreServices    �@��      �͒    ƹƳƲ  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i      � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k    5 � �  � � � Z      � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l    � � � � r     � � � c     � � � l    ����� � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � �  N e w s �  � � � m     � � � � �  F e a t u r e s �  � � � m    	 � � � � � 
 S p o r t �  � � � m   	 
 � � � � �  A r t s �  ��� � m   
  � � � � �  C u s t o m   e d i t i o n��   � �� � �
�� 
prmp � m     � � � � � & P l e a s e   p i c k   a   d e s k : � �� ���
�� 
appr � m     � � � � �  P a g e   g e n e r a t o r��  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 desk   � F @ Allows core.scpt to be used as a generator (useful for testing)    � � � � �   A l l o w s   c o r e . s c p t   t o   b e   u s e d   a s   a   g e n e r a t o r   ( u s e f u l   f o r   t e s t i n g )��  ��   �  � � � l   ��������  ��  ��   �  � � � r    D � � � J    B � �  � � � m     � � � � �  J a n u a r y �  � � � m      � � � � �  F e b r u a r y �  � � � m     # � � � � � 
 M a r c h �  � � � m   # & � � � � � 
 A p r i l �  � � � m   & ) � � � � �  M a y �  � � � m   ) , � � � � �  J u n e �  � � � m   , / � � � � �  J u l y �  � � � m   / 2   �  A u g u s t �  m   2 5 �  S e p t e m b e r  m   5 8 �		  O c t o b e r 

 m   8 ; �  N o v e m b e r �� m   ; > �  D e c e m b e r��   � o      ���� 0 months_list   �  r   E ] J   E [  m   E H �  M o n d a y  m   H K �  T u e s d a y  m   K N   �!!  W e d n e s d a y "#" m   N Q$$ �%%  T h u r s d a y# &'& m   Q T(( �))  F r i d a y' *��* m   T W++ �,,  S a t u r d a y��   o      ���� 0 	days_list   -.- l  ^ ^��������  ��  ��  . /0/ Z   ^�123��1 G   ^ {454 G   ^ o676 =  ^ c898 o   ^ _���� 0 desk  9 m   _ b:: �;;  N e w s7 =  f k<=< o   f g���� 0 desk  = m   g j>> �?? 
 S p o r t5 =  r w@A@ o   r s���� 0 desk  A m   s vBB �CC  C u s t o m   e d i t i o n2 l  ~DEFD Z   ~GHI��G =  ~ �JKJ o   ~ ���� 0 desk  K m    �LL �MM  N e w sH k   � �NN OPO l  � �QRSQ r   � �TUT m   � �VV �WW ( N e w s   p a g e s   g e n e r a t o rU o      ���� 0 thetitle theTitleR ) # Used to add a title to the prompts   S �XX F   U s e d   t o   a d d   a   t i t l e   t o   t h e   p r o m p t sP YZY r   � �[\[ J   � �]] ^_^ m   � �`` �aa  N e w s      s p l i t s_ bcb m   � �dd �ee * N e w s      2 - 3   a s   s i n g l e sc fgf m   � �hh �ii * N e w s      4 - 5   a s   s i n g l e sg jkj m   � �ll �mm * N e w s      6 - 7   a s   s i n g l e sk non m   � �pp �qq  T Vo r��r m   � �ss �tt  L e t t e r s��  \ o      ���� 0 weekday_pages  Z u��u r   � �vwv J   � �xx yzy m   � �{{ �||  N e w s      s p l i t sz }~} m   � � ��� * N e w s      2 - 3   a s   s i n g l e s~ ��� m   � ��� ��� * N e w s      4 - 5   a s   s i n g l e s� ��� m   � ��� ��� * N e w s      6 - 7   a s   s i n g l e s� ��� m   � ��� ���  T V� ��� m   � ��� ���  L e t t e r s� ��� m   � ��� ���  S t r u g g l e� ��� m   � ��� ��� , S i n g l e   s t r u g g l e   -   l e f t� ��� m   � ��� ��� . S i n g l e   s t r u g g l e   -   r i g h t� ���� m   � ��� ���  R e d   L i s t��  w o      ���� 0 weekend_pages  ��  I ��� =  � ���� o   � ����� 0 desk  � m   � ��� ��� 
 S p o r t� ��� k   ��� ��� r   � ���� m   � ��� ��� * S p o r t   p a g e s   g e n e r a t o r� o      ���� 0 thetitle theTitle� ��� r   � ���� J   � ��� ��� m   � ��� ���  T w o   p a g e s� ��� m   � ��� ���  T h r e e   p a g e s� ��� m   � ��� ��� , T h r e e   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  � o      ���� 0 weekday_pages  � ���� r   ���� J   �	�� ��� m   � ��� ���  F o u r   p a g e s� ��� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  R a c i n g   o n l y� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   ��� ���   E x t r a   r i g h t   p a g e� ���� m  �� ���  E x t r a   s p l i t��  � o      ���� 0 weekend_pages  ��  � ��� = ��� l ������ o  ���� 0 desk  ��  ��  � m  �� ���  C u s t o m   e d i t i o n� ���� r  ��� m  �� ���  C u s t o m   e d i t i o n� o      ���� 0 thetitle theTitle��  ��  E @ : This if block sets the page options presented to the user   F ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r3 ��� G  "3��� = "'��� o  "#���� 0 desk  � m  #&�� ���  F e a t u r e s� = */��� o  *+���� 0 desk  � m  +.�� ���  A r t s� ��� k  6�    l 6< r  6< m  69 �		 , N o   d a y      w o r k i n g   a h e a d l     
�~�}
 n        ;  :; o  9:�|�| 0 	days_list  �~  �}   > 8 Adds an extra day option that news and sport don't need    � p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d �{ Z  =��z = =B o  =>�y�y 0 desk   m  >A �  F e a t u r e s k  E�  r  EJ m  EH � 0 F e a t u r e s   p a g e s   g e n e r a t o r o      �x�x 0 thetitle theTitle  r  Kc  J  Ka!! "#" m  KN$$ �%%  S p r e a d# &'& m  NQ(( �))  1 0' *+* m  QT,, �-- 
 1 2 - 1 3+ ./. m  TW00 �11  L e t t e r s/ 232 m  WZ44 �55  A r t s3 6�w6 m  Z]77 �88  A r t s   s p l i t�w    o      �v�v 0 weekday_pages   9:9 r  d|;<; J  dz== >?> m  dg@@ �AA  S p r e a d? BCB m  gjDD �EE ( N e w s   r e v i e w s      s p l i tC FGF m  jmHH �II , N e w s   r e v i e w s      s i n g l e sG JKJ m  mpLL �MM  1 5K NON m  psPP �QQ 
 1 6 - 1 7O R�uR m  svSS �TT  L e t t e r s�u  < o      �t�t 0 weekend_pages  : U�sU r  }�VWV J  }�XX YZY m  }�[[ �\\  S p r e a dZ ]^] m  ��__ �``  1 0^ aba m  ��cc �dd 
 1 2 - 1 3b efe m  ��gg �hh ( N e w s   r e v i e w s      s p l i tf iji m  ��kk �ll , N e w s   r e v i e w s      s i n g l e sj mnm m  ��oo �pp  1 5n qrq m  ��ss �tt 
 1 6 - 1 7r uvu m  ��ww �xx  L e t t e r sv yzy m  ��{{ �||  A r t sz }�r} m  ��~~ �  A r t s   s p l i t�r  W o      �q�q 0 ahead_pages  �s   ��� = ����� o  ���p�p 0 desk  � m  ���� ���  A r t s� ��o� k  ���� ��� r  ����� m  ���� ��� ( A r t s   p a g e s   g e n e r a t o r� o      �n�n 0 thetitle theTitle� ��� r  ����� J  ���� ��� m  ���� ���  A r t s   ( p 1 1 )� ��m� m  ���� ���  A r t s   s p l i t�m  � o      �l�l 0 weekday_pages  � ��k� r  ����� J  ���� ��� m  ���� ���  A r t s   ( p 1 1 )� ��� m  ���� ���  A r t s   s p l i t� ��j� m  ���� ���  1 6 - 1 7   ( w e e k e n d )�j  � o      �i�i 0 ahead_pages  �k  �o  �z  �{  �  ��  0 ��� l ���h�g�f�h  �g  �f  � ��� l ���e���e  � F @ Get 'tomorrow' values to use as default answers in date prompts   � ��� �   G e t   ' t o m o r r o w '   v a l u e s   t o   u s e   a s   d e f a u l t   a n s w e r s   i n   d a t e   p r o m p t s� ��� l ������ r  ����� l ����d�c� [  ����� l ����b�a� l ����`�_� I ���^�]�\
�^ .misccurdldt    ��� null�]  �\  �`  �_  �b  �a  � m  ���[�[  Q��d  �c  � o      �Z�Z 0 tomorrow  �   60s * 60m * 24h   � ���     6 0 s   *   6 0 m   *   2 4 h� ��� l ������ r  ����� c  ����� n ����� m  ���Y
�Y 
wkdy� o  ���X�X 0 tomorrow  � m  ���W
�W 
TEXT� o      �V�V 0 tmday_r tmDay_r� ] W "Raw tmDay" to add to the tmDay list. String conversion necessary else default ignored   � ��� �   " R a w   t m D a y "   t o   a d d   t o   t h e   t m D a y   l i s t .   S t r i n g   c o n v e r s i o n   n e c e s s a r y   e l s e   d e f a u l t   i g n o r e d� ��� l ������ r  ����� J  ���� ��U� o  ���T�T 0 tmday_r tmDay_r�U  � o      �S�S 0 tmday tmDay� C = "Choose from list" requires a list for its default selection   � ��� z   " C h o o s e   f r o m   l i s t "   r e q u i r e s   a   l i s t   f o r   i t s   d e f a u l t   s e l e c t i o n� ��� r  ����� n ����� 1  ���R
�R 
day � o  ���Q�Q 0 tomorrow  � o      �P�P 0 tmdate tmDate� ��� r  � ��� c  ����� n ����� m  ���O
�O 
mnth� o  ���N�N 0 tomorrow  � m  ���M
�M 
TEXT� o      �L�L 0 	tmmonth_r 	tmMonth_r� ��� r  ��� J  �� ��K� o  �J�J 0 	tmmonth_r 	tmMonth_r�K  � o      �I�I 0 tmmonth tmMonth� ��� r  ��� n ��� 1  �H
�H 
year� o  �G�G 0 tomorrow  � o      �F�F 0 tmyear tmYear� ��� l �E�D�C�E  �D  �C  � ��� l �B���B  � ( " Prompt the user to enter the date   � ��� D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e� ��� r  $��� c  "��� l  ��A�@� I  �?��
�? .gtqpchltns    @   @ ns  � o  �>�> 0 	days_list  � �=��
�= 
prmp� m  �� �   8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :� �<
�< 
inSL o  �;�; 0 tmday tmDay �:�9
�: 
appr o  �8�8 0 thetitle theTitle�9  �A  �@  � m   !�7
�7 
TEXT� o      �6�6 0 theday theDay�  l %= Z %=	
�5�4	 = %, 1  %(�3
�3 
rslt m  (+ � 
 f a l s e
 R  /9�2�1
�2 .ascrerr ****      � ****�1   �0�/
�0 
errn m  36�.�.���/  �5  �4   9 3 So choosing "Cancel" in the dialog ends the script    � f   S o   c h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t  Z  >�- = >C o  >?�,�, 0 theday theDay m  ?B � , N o   d a y      w o r k i n g   a h e a d k  FU  r  FM m  FI   �!! * A   d a t e   n e e d s   e n t e r i n g o      �+�+ 0 pagedate pageDate "�*" r  NU#$# m  NQ%% �&& 
 A h e a d$ o      �)�) 0 filedate fileDate�*  �-   k  X'' ()( r  Xm*+* c  Xk,-, l Xi.�(�'. I Xi�&/0
�& .gtqpchltns    @   @ ns  / o  XY�%�% 0 months_list  0 �$12
�$ 
prmp1 m  Z]33 �44 , P l e a s e   p i c k   t h e   m o n t h :2 �#56
�# 
inSL5 o  `a�"�" 0 tmmonth tmMonth6 �!7� 
�! 
appr7 o  bc�� 0 thetitle theTitle�   �(  �'  - m  ij�
� 
TEXT+ o      �� 0 themonth theMonth) 898 Z n�:;��: = nu<=< 1  nq�
� 
rslt= m  qt>> �?? 
 f a l s e; R  x���@
� .ascrerr ****      � ****�  @ �A�
� 
errnA m  |�����  �  �  9 BCB r  ��DED c  ��FGF l ��H��H n  ��IJI 1  ���
� 
ttxtJ l ��K��K I ���LM
� .sysodlogaskr        TEXTL m  ��NN �OO * P l e a s e   t y p e   t h e   d a t e :M �PQ
� 
dtxtP o  ���� 0 tmdate tmDateQ �R�
� 
apprR o  ���
�
 0 thetitle theTitle�  �  �  �  �  G m  ���	
�	 
TEXTE o      �� 0 thedate theDateC STS Z ��UV��U = ��WXW 1  ���
� 
rsltX m  ��YY �ZZ 
 f a l s eV R  ����[
� .ascrerr ****      � ****�  [ �\�
� 
errn\ m  ��� � ���  �  �  T ]^] r  ��_`_ c  ��aba l ��c����c n  ��ded 1  ����
�� 
ttxte l ��f����f I ����gh
�� .sysodlogaskr        TEXTg m  ��ii �jj * P l e a s e   t y p e   t h e   y e a r :h ��kl
�� 
dtxtk o  ������ 0 tmyear tmYearl ��m��
�� 
apprm o  ������ 0 thetitle theTitle��  ��  ��  ��  ��  b m  ����
�� 
TEXT` o      ���� 0 theyear theYear^ non Z ��pq����p = ��rsr 1  ����
�� 
rslts m  ��tt �uu 
 f a l s eq R  ������v
�� .ascrerr ****      � ****��  v ��w��
�� 
errnw m  ����������  ��  ��  o xyx n ��z{z I  ����|���� "0 create_pagedate create_pageDate| }~} o  ������ 0 theday theDay~ � o  ������ 0 themonth theMonth� ��� o  ������ 0 thedate theDate� ��� o  ������ 0 theyear theYear� ���� o  ������ 0 months_list  ��  ��  {  f  ��y ���� n ���� I  �������� "0 create_filedate create_fileDate� ��� o  ������ 0 theday theDay� ��� o  ������ 0 themonth theMonth� ��� o  ������ 0 thedate theDate� ��� o  ����� 0 theyear theYear� ���� o  ���� 0 months_list  ��  ��  �  f  ����   ��� l ��������  ��  ��  � ��� l ������  �   Get the pages to create   � ��� 0   G e t   t h e   p a g e s   t o   c r e a t e� ���� Z  5������ = ��� l ������ o  ���� 0 desk  ��  ��  � m  �� ���  C u s t o m   e d i t i o n� l ���� n ��� I  �������� 0 customedition customEdition��  ��  �  f  � U O The customEdition function itself gets the pages to generate from TextWrangler   � ��� �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r��  � k  5�� ��� r  *��� l &������ b  &��� b  "��� b  ��� m  �� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ��
�� 
ret � o  !��
�� 
ret � m  "%�� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .��  ��  � o      ���� 0 
prompttext 
promptText� ��� Z  +������� = +0��� o  +,���� 0 theday theDay� m  ,/�� ��� , N o   d a y      w o r k i n g   a h e a d� k  3_�� ��� r  3H��� l 3D������ I 3D����
�� .gtqpchltns    @   @ ns  � o  34���� 0 ahead_pages  � ����
�� 
prmp� o  58���� 0 
prompttext 
promptText� ����
�� 
appr� o  9:���� 0 thetitle theTitle� �����
�� 
mlsl� m  =>��
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z I_������� = IN��� 1  IL��
�� 
rslt� m  LM��
�� boovfals� R  Q[�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  UX��������  ��  ��  ��  � ��� > bg��� o  bc���� 0 theday theDay� m  cf�� ���  S a t u r d a y� ��� k  j��� ��� r  j��� l j{������ I j{����
�� .gtqpchltns    @   @ ns  � o  jk���� 0 weekday_pages  � ����
�� 
prmp� o  lo���� 0 
prompttext 
promptText� ����
�� 
appr� o  pq���� 0 thetitle theTitle� �����
�� 
mlsl� m  tu��
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z ��������� = ����� 1  ����
�� 
rslt� m  ����
�� boovfals� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  ��  � ��� = ����� o  ������ 0 theday theDay� m  ���� ���  S a t u r d a y� ���� Z  �������� = ����� l �������� o  ������ 0 desk  ��  ��  � m  ���� �    A r t s� l �� r  �� J  �� �� m  �� �		  1 6 - 1 7   ( w e e k e n d )��   o      ���� &0 masterstogenerate mastersToGenerate ] W The arts desk only has one page on Saturday, so there's no point in prompting the user    �

 �   T h e   a r t s   d e s k   o n l y   h a s   o n e   p a g e   o n   S a t u r d a y ,   s o   t h e r e ' s   n o   p o i n t   i n   p r o m p t i n g   t h e   u s e r��  � k  ��  r  �� l ������ I ����
�� .gtqpchltns    @   @ ns   o  ������ 0 weekend_pages   ��
�� 
prmp o  ������ 0 
prompttext 
promptText ��
�� 
appr o  ������ 0 thetitle theTitle ����
�� 
mlsl m  ����
�� boovtrue��  ��  ��   o      ���� &0 masterstogenerate mastersToGenerate �� Z ������ = �� 1  ����
�� 
rslt m  ����
�� boovfals R  �����
�� .ascrerr ****      � ****�   �~�}
�~ 
errn m  ���|�|���}  ��  ��  ��  ��  ��  �   l ���{�z�y�{  �z  �y    !�x! Z  �5"#$�w" = ��%&% o  ���v�v 0 desk  & m  ��'' �((  N e w s# l ��)*+) n ��,-, I  ���u.�t�u 0 newsgen newsGen. /0/ o  ���s�s &0 masterstogenerate mastersToGenerate0 1�r1 o  ���q�q 0 theday theDay�r  �t  -  f  ��* S M theDay is passed to distinguish between, for example, Saturday & weekday TV    + �22 �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  $ 343 = ��565 o  ���p�p 0 desk  6 m  ��77 �88  F e a t u r e s4 9:9 n ;<; I  �o=�n�o 0 featsgen featsGen= >?> o  �m�m &0 masterstogenerate mastersToGenerate? @�l@ o  �k�k 0 theday theDay�l  �n  <  f  : ABA = CDC o  �j�j 0 desk  D m  EE �FF 
 S p o r tB GHG l IJKI n LML I  �iN�h�i 0 	sportsgen 	sportsGenN O�gO o  �f�f &0 masterstogenerate mastersToGenerate�g  �h  M  f  J   No day checks   K �PP    N o   d a y   c h e c k sH QRQ = !&STS o  !"�e�e 0 desk  T m  "%UU �VV  A r t sR W�dW l )1XYZX n )1[\[ I  *1�c]�b�c 0 artsgen artsGen] ^�a^ o  *-�`�` &0 masterstogenerate mastersToGenerate�a  �b  \  f  )*Y   No day checks   Z �__    N o   d a y   c h e c k s�d  �w  �x  ��   � `a` l     �_�^�]�_  �^  �]  a bcb l     �\�[�Z�\  �[  �Z  c ded l     �Yfg�Y  f I C list_position: Returns theItem's position in theList as an integer   g �hh �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e re iji i    klk I      �Xm�W�X 0 list_position  m non o      �V�V 0 	this_item  o p�Up o      �T�T 0 	this_list  �U  �W  l Y     "q�Srs�Rq Z   tu�Q�Pt =   vwv n    xyx 4    �Oz
�O 
cobjz o    �N�N 0 i  y o    �M�M 0 	this_list  w o    �L�L 0 	this_item  u L    {{ o    �K�K 0 i  �Q  �P  �S 0 i  r m    �J�J s I   	�I|�H
�I .corecnte****       ****| o    �G�G 0 	this_list  �H  �R  j }~} l     �F�E�D�F  �E  �D  ~ � l     �C�B�A�C  �B  �A  � ��� l     �@���@  � l f create_pageDate: Assembles the date used on the InDesign pages, and deals with some Saturday oddities   � ��� �   c r e a t e _ p a g e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l s   w i t h   s o m e   S a t u r d a y   o d d i t i e s� ��� i    ��� I      �?��>�? "0 create_pagedate create_pageDate� ��� o      �=�= 0 theday theDay� ��� o      �<�< 0 themonth theMonth� ��� o      �;�; 0 thedate theDate� ��� o      �:�: 0 theyear theYear� ��9� o      �8�8 0 months_list  �9  �>  � k    ��� ��� r     
��� J     �� ��� m     �� ���  J a n u a r y� ��� m    �� ��� 
 M a r c h� ��� m    �� ���  M a y� ��� m    �� ���  J u l y� ��� m    �� ���  A u g u s t� ��7� m    �� ���  O c t o b e r�7  � o      �6�6 (0 thirtyonedaymonths ThirtyOneDayMonths� ��� r    ��� J    �� ��� m    �� ��� 
 A p r i l� ��� m    �� ���  J u n e� ��� m    �� ���  S e p t e m b e r� ��5� m    �� ���  N o v e m b e r�5  � o      �4�4 "0 thirtydaymonths ThirtyDayMonths� ��� l   �3�2�1�3  �2  �1  � ��0� Z   �����/� >   ��� o    �.�. 0 theday theDay� m    �� ���  S a t u r d a y� l   -���� k    -�� ��� r    +��� l   '��-�,� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� o    �+�+ 0 theday theDay� m    �� ���   � o    �*�* 0 themonth theMonth� m     �� ���   � o   ! "�)�) 0 thedate theDate� m   # $�� ���   � o   % &�(�( 0 theyear theYear�-  �,  � o      �'�' 0 pagedate pageDate� ��&� l  , ,�%�$�#�%  �$  �#  �&  � + % Does the page date for every weekday   � ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y� ��� F   0 K��� F   0 A��� =  0 5��� o   0 1�"�" 0 theday theDay� m   1 4�� ���  S a t u r d a y� =  8 =��� o   8 9�!�! 0 thedate theDate� m   9 <�� ���  3 0� E  D G��� o   D E� �  "0 thirtydaymonths ThirtyDayMonths� o   E F�� 0 themonth theMonth� ��� l  N ��� � k   N �  Y   N z�� l  \ u	 Z  \ u
��
 =  \ d n   \ b 4   ] b�
� 
cobj o   ` a�� 0 i   o   \ ]�� 0 months_list   o   b c�� 0 themonth theMonth r   g q l  g o�� n   g o 4   h o�
� 
cobj l  k n�� [   k n o   k l�� 0 i   m   l m�� �  �   o   g h�� 0 months_list  �  �   o      �� 0 secondmonth secondMonth�  �   V P This repeat block here grabs the name of the next month to use in the page date   	 � �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e� 0 i   m   Q R��  I  R W��
� .corecnte****       **** o   R S�
�
 0 months_list  �  �    l  { �  r   { �!"! l  { �#�	�# b   { �$%$ b   { �&'& b   { �()( b   { �*+* b   { �,-, m   { ~.. �//   S a t u r d a y / S u n d a y  - o   ~ �� 0 themonth theMonth+ m   � �00 �11    3 0 -) o   � ��� 0 secondmonth secondMonth' m   � �22 �33    1  % o   � ��� 0 theyear theYear�	  �  " o      �� 0 pagedate pageDate P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"     �44 �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 " 5�5 l  � ���� �  �  �   �  � 7 1 Deals with Saturdays at the end of 30-day months     �66 b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s� 787 F   � �9:9 F   � �;<; =  � �=>= o   � ����� 0 theday theDay> m   � �?? �@@  S a t u r d a y< =  � �ABA o   � ����� 0 thedate theDateB m   � �CC �DD  3 1: E  � �EFE o   � ����� (0 thirtyonedaymonths ThirtyOneDayMonthsF o   � ����� 0 themonth theMonth8 GHG l  � �IJKI k   � �LL MNM Y   � �O��PQ��O Z  � �RS����R =  � �TUT n   � �VWV 4   � ���X
�� 
cobjX o   � ����� 0 i  W o   � ����� 0 months_list  U o   � ����� 0 themonth theMonthS r   � �YZY l  � �[����[ n   � �\]\ 4   � ���^
�� 
cobj^ l  � �_����_ [   � �`a` o   � ����� 0 i  a m   � ����� ��  ��  ] o   � ����� 0 months_list  ��  ��  Z o      ���� 0 secondmonth secondMonth��  ��  �� 0 i  P m   � ����� Q I  � ���b��
�� .corecnte****       ****b o   � ����� 0 months_list  ��  ��  N cdc r   � �efe l  � �g����g b   � �hih b   � �jkj b   � �lml b   � �non b   � �pqp m   � �rr �ss   S a t u r d a y / S u n d a y  q o   � ����� 0 themonth theMontho m   � �tt �uu    3 1 -m o   � ����� 0 secondmonth secondMonthk m   � �vv �ww    1  i o   � ����� 0 theyear theYear��  ��  f o      ���� 0 pagedate pageDated x��x l  � ���������  ��  ��  ��  J 7 1 Deals with Saturdays at the end of 31-day months   K �yy b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h sH z{z F   �|}| F   �~~ =  � ���� o   � ����� 0 theday theDay� m   � ��� ���  S a t u r d a y ? ��� o  ���� 0 thedate theDate� m  �� ���  2 7} = ��� o  ���� 0 themonth theMonth� m  �� ���  F e b r u a r y{ ��� l +���� k  +�� ��� r  )��� l %������ b  %��� b  #��� b  ��� m  �� ��� 2 S a t u r d a y / S u n d a y   F e b r u a r y  � o  ���� 0 thedate theDate� m  "�� ���  - M a r c h   1  � o  #$���� 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l **��������  ��  ��  ��  � N H Deals with Saturdays at the end of February. Blunt but right until 2032   � ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   B l u n t   b u t   r i g h t   u n t i l   2 0 3 2� ��� F  .K��� F  .?��� = .3��� o  ./���� 0 theday theDay� m  /2�� ���  S a t u r d a y� = 6;��� o  67���� 0 thedate theDate� m  7:�� ���  3 1� = BG��� o  BC���� 0 themonth theMonth� m  CF�� ���  D e c e m b e r� ��� l Na���� k  Na�� ��� r  N_��� l N[������ b  N[��� b  NW��� b  NS��� m  NQ�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  QR���� 0 theyear theYear� m  SV�� ���  -� l WZ������ [  WZ��� o  WX���� 0 theyear theYear� m  XY���� ��  ��  ��  ��  � o      ���� 0 pagedate pageDate� ���� l ``��������  ��  ��  ��  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = di��� o  de���� 0 theday theDay� m  eh�� ���  S a t u r d a y� ���� l l����� k  l��� ��� r  l���� l l������� b  l���� b  l���� b  l��� b  l{��� b  lw��� b  lu��� b  lq��� m  lo�� ���   S a t u r d a y / S u n d a y  � o  op���� 0 themonth theMonth� m  qt�� ���   � o  uv���� 0 thedate theDate� m  wz�� ���  -� l {~������ [  {~��� o  {|���� 0 thedate theDate� m  |}���� ��  ��  � m  ��� ���   � o  ������ 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l ����������  ��  ��  ��  � Z T Does the page date for every normal Saturday. At the end to avoid the special cases   � ��� �   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y .   A t   t h e   e n d   t o   a v o i d   t h e   s p e c i a l   c a s e s��  �/  �0  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     �� ��    J D create_fileDate: Assembles the date used in the InDesign file names    � �   c r e a t e _ f i l e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   i n   t h e   I n D e s i g n   f i l e   n a m e s�  i     I      ������ "0 create_filedate create_fileDate 	 o      ���� 0 theday theDay	 

 o      ���� 0 themonth theMonth  o      ���� 0 thedate theDate  o      ���� 0 theyear theYear �� o      ���� 0 months_list  ��  ��   k     [  Z     �� A     c      o     ���� 0 thedate theDate m    ��
�� 
long m     �  1 0 l    r     !  l   "����" b    #$# m    	%% �&&  0$ o   	 
���� 0 thedate theDate��  ��  ! o      ���� 0 numdate numDate J D If the date is 1-9 this adds a leading zero to use in the file name    �'' �   I f   t h e   d a t e   i s   1 - 9   t h i s   a d d s   a   l e a d i n g   z e r o   t o   u s e   i n   t h e   f i l e   n a m e��   r    ()( o    ���� 0 thedate theDate) o      ���� 0 numdate numDate *+* l   ��������  ��  ��  + ,-, Y    7.��/0��. l  " 21231 Z  " 245����4 =  " (676 n   " &898 4   # &��:
�� 
cobj: o   $ %���� 0 i  9 o   " #���� 0 months_list  7 o   & '���� 0 themonth theMonth5 r   + .;<; o   + ,���� 0 i  < o      ���� 0 raw_nummonth raw_numMonth��  ��  2 F @ Gets the month number and, if less than 10, adds a leading zero   3 �== �   G e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a   l e a d i n g   z e r o�� 0 i  / m    ���� 0 I   ��>��
�� .corecnte****       ****> o    ���� 0 months_list  ��  ��  - ?@? Z   8 IAB��CA A  8 ;DED o   8 9���� 0 raw_nummonth raw_numMonthE m   9 :���� 
B r   > CFGF l  > AH����H b   > AIJI m   > ?KK �LL  0J o   ? @���� 0 raw_nummonth raw_numMonth��  ��  G o      ���� 0 nummonth numMonth��  C r   F IMNM o   F G���� 0 raw_nummonth raw_numMonthN o      ���� 0 nummonth numMonth@ OPO l  J J��~�}�  �~  �}  P Q�|Q l  J [RSTR r   J [UVU l  J YW�{�zW b   J YXYX b   J MZ[Z o   J K�y�y 0 numdate numDate[ o   K L�x�x 0 nummonth numMonthY l  M X\�w�v\ n   M X]^] 7 N X�u_`
�u 
ctxt_ m   R T�t�t ` m   U W�s�s ^ o   M N�r�r 0 theyear theYear�w  �v  �{  �z  V o      �q�q 0 filedate fileDateS ? 9 Combines the date, month and last two digits of the year   T �aa r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r�|   bcb l     �p�o�n�p  �o  �n  c ded l     �m�l�k�m  �l  �k  e fgf l     �jhi�j  h Y S pageGen: Opens the master file and calls functions to construct the requested page   i �jj �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g eg klk l     �imn�i  m ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   n �oo �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e rl pqp l     �hrs�h  r @ : The page number is that of the left-hand page for spreads   s �tt t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d sq uvu i    wxw I      �gy�f�g 0 pagegen pageGeny z{z o      �e�e 0 pagetype pageType{ |}| o      �d�d 0 	themaster 	theMaster} ~~ o      �c�c 0 theslug theSlug ��b� o      �a�a 0 
pagenumber 
pageNumber�b  �f  x O     T��� k    S�� ��� I   	�`��_
�` .aevtodocnull  �    alis� o    �^�^  0 masterdocument masterDocument�_  � ��� n  
 ��� I    �]��\�] 0 applymaster applyMaster� ��� o    �[�[ 0 	themaster 	theMaster� ��� o    �Z�Z 0 pagetype pageType� ��Y� o    �X�X 0 
pagenumber 
pageNumber�Y  �\  �  f   
 � ��� l   �W�V�U�W  �V  �U  � ��� Z    #���T�S� E    ��� o    �R�R 0 	themaster 	theMaster� m    �� ��� 
 N e w s -� l   ���� n   ��� I    �Q��P�Q  0 drawembargobox drawEmbargoBox� ��O� o    �N�N 0 pagetype pageType�O  �P  �  f    � 2 , Hyphen needed to exclude Feat-NewsReviews-*   � ��� X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *�T  �S  � ��� l  $ $�M�L�K�M  �L  �K  � ��� Z   $ <���J�I� G   $ /��� =  $ '��� o   $ %�H�H 0 	themaster 	theMaster� m   % &�� ���  F e a t - T V� =  * -��� o   * +�G�G 0 	themaster 	theMaster� m   + ,�� ���  F e a t - R e d L i s t� n  2 8��� I   3 8�F��E�F "0 changelegaldate changeLegalDate� ��D� o   3 4�C�C 0 	themaster 	theMaster�D  �E  �  f   2 3�J  �I  � ��� l  = =�B�A�@�B  �A  �@  � ��� n  = D��� I   > D�?��>�? 0 	cleansave 	cleanSave� ��� o   > ?�=�= 0 
pagenumber 
pageNumber� ��<� o   ? @�;�; 0 theslug theSlug�<  �>  �  f   = >� ��:� O  E S��� I  K R�9�8�
�9 .CoReclosnull���     obj �8  � �7��6
�7 
svop� m   M N�5
�5 savoyes �6  � l  E H��4�3� 1   E H�2
�2 
pacd�4  �3  �:  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  v ��� l     �1�0�/�1  �0  �/  � ��� l     �.�-�,�.  �-  �,  � ��� l     �+���+  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    ��� I      �*��)�* 0 applymaster applyMaster� ��� o      �(�( 0 	themaster 	theMaster� ��� o      �'�' 0 pagetype pageType� ��&� o      �%�% 0 
pagenumber 
pageNumber�&  �)  � O    ���� O   ���� Z   
�����$� =  
 ��� o   
 �#�# 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    �"�
�" 
mspr� o    �!�! 0 	themaster 	theMaster� n      ��� 1    � 
�  
pmas� 4    ��
� 
page� m    �� � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ��� Z    ������ H     �� E    ��� o    �� 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� � � I  # 3�
� .InESovrrobj         obj  n   # * 4   ' *�
� 
txtf m   ( ) �  E d i t i o n   d a t e 4   # '�
� 
mspr o   % &�� 0 	themaster 	theMaster �	�
� 
dPge	 4   + /�

� 
page
 m   - .�� �     l  4 ? r   4 ? o   4 5�� 0 pagedate pageDate l     �� n       1   < >�
� 
pcnt n   5 < 4   9 <�
� 
txtf m   : ; �  E d i t i o n   d a t e 4   5 9�
� 
page m   7 8�� �  �     Sets the date    �    S e t s   t h e   d a t e  Q   @ p�
 l  C g !"  I  C g�	#$
�	 .InESovrrobj         obj # l  C ^%��% 6  C ^&'& n   C K()( 2   I K�
� 
cobj) n   C I*+* 1   G I�
� 
mpgs+ 4   C G�,
� 
page, m   E F�� ' =  N ]-.- n  O W/0/ 1   S W�
� 
pnam0 1   O S�
� 
pilr. m   X \11 �22  W o r k�  �  $ � 3��
�  
dPge3 4   _ c��4
�� 
page4 m   a b���� ��  ! o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items   " �55 �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s R      ������
�� .ascrerr ****      � ****��  ��  �
   6��6 Z   q �78����7 >  q v9:9 o   q r���� 0 
pagenumber 
pageNumber: m   r u;; �<<  8 l  y �=>?= k   y �@@ ABA I  y ���CD
�� .InESovrrobj         obj C n   y �EFE 4   } ���G
�� 
txtfG m   ~ �HH �II  P a g e   n u m b e rF 4   y }��J
�� 
msprJ o   { |���� 0 	themaster 	theMasterD ��K��
�� 
dPgeK 4   � ���L
�� 
pageL m   � ����� ��  B M��M r   � �NON o   � ����� 0 
pagenumber 
pageNumberO l     P����P n      QRQ 1   � ���
�� 
pcntR n   � �STS 4   � ���U
�� 
txtfU m   � �VV �WW  P a g e   n u m b e rT 4   � ���X
�� 
pageX m   � ����� ��  ��  ��  > G A Mostly to skip the front, which doesn't have a page number frame   ? �YY �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��  � 6 0 The X-Blanks have no page number or date frames   � �ZZ `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s�  �  �  � [\[ =  � �]^] o   � ����� 0 pagetype pageType^ m   � �__ �``  s p r e a d\ a��a k   ��bb cdc l  � �efge I  � �����h
�� .corecrel****      � null��  h ��ij
�� 
kocli m   � ���
�� 
sprdj ��k��
�� 
prdtk K   � �ll ��m��
�� 
pmasm 4   � ���n
�� 
msprn o   � ����� 0 	themaster 	theMaster��  ��  f G A Creates a two-page spread at pages 2 & 3 with the master applied   g �oo �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e dd p��p Z   ��qr����q H   � �ss E   � �tut o   � ����� 0 	themaster 	theMasteru m   � �vv �ww  X - B l a n kr k   ��xx yzy I  � ���{|
�� .InESovrrobj         obj { n   � �}~} 4   � ���
�� 
txtf m   � ��� ���  L - E d i t i o n   d a t e~ 4   � ����
�� 
mspr� o   � ����� 0 	themaster 	theMaster| �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  z ��� I  � �����
�� .InESovrrobj         obj � n   � ���� 4   � ����
�� 
txtf� m   � ��� ���  R - E d i t i o n   d a t e� 4   � ����
�� 
mspr� o   � ����� 0 	themaster 	theMaster� �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  � ��� l  � ���� r   � ��� o   � ����� 0 pagedate pageDate� l     ������ n      ��� 1   � ���
�� 
pcnt� n   � ���� 4   � ����
�� 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ����
�� 
page� m   � ����� ��  ��  � * $ Sets the date on the left-hand page   � ��� H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e� ��� l ���� r  ��� o  ���� 0 pagedate pageDate� l     ������ n      ��� 1  ��
�� 
pcnt� n  ��� 4  ���
�� 
txtf� m  
�� ���  R - E d i t i o n   d a t e� 4  ���
�� 
page� m  ���� ��  ��  � + % Sets the date on the right-hand page   � ��� J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e� ��� Q  d����� k  [�� ��� I 6����
�� .InESovrrobj         obj � l -������ 6 -��� n  ��� 2  ��
�� 
cobj� n  ��� 1  ��
�� 
mpgs� 4  ���
�� 
page� m  ���� � = ,��� n &��� 1  "&��
�� 
pnam� 1  "��
�� 
pilr� m  '+�� ���  W o r k��  ��  � �����
�� 
dPge� 4  .2���
�� 
page� m  01���� ��  � ���� I 7[����
�� .InESovrrobj         obj � l 7R������ 6 7R��� n  7?��� 2  =?��
�� 
cobj� n  7=��� 1  ;=��
�� 
mpgs� 4  7;���
�� 
page� m  9:���� � = BQ��� n CK��� 1  GK��
�� 
pnam� 1  CG��
�� 
pilr� m  LP�� ���  W o r k��  ��  � �����
�� 
dPge� 4  SW���
�� 
page� m  UV���� ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� Z  e�������� > ej��� o  ef���� 0 
pagenumber 
pageNumber� m  fi�� ���  � k  m��� ��� I m����
�� .InESovrrobj         obj � n  mv��� 4  qv���
�� 
txtf� m  ru�� ���  L - P a g e   n u m b e r� 4  mq���
�� 
mspr� o  op���� 0 	themaster 	theMaster� �����
�� 
dPge� 4  w{���
�� 
page� m  yz���� ��  � ��� I ������
�� .InESovrrobj         obj � n  ����� 4  �����
�� 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  �����
�� 
mspr� o  ������ 0 	themaster 	theMaster� �����
�� 
dPge� 4  �����
�� 
page� m  ������ ��  � � � r  �� o  ������ 0 
pagenumber 
pageNumber l     ���� n       1  ����
�� 
pcnt n  �� 4  ����
�� 
txtf m  ��		 �

  L - P a g e   n u m b e r 4  ���
� 
page m  ���~�~ ��  ��    �} r  �� l ���|�{ c  �� l ���z�y [  �� o  ���x�x 0 
pagenumber 
pageNumber m  ���w�w �z  �y   m  ���v
�v 
TEXT�|  �{   l     �u�t n       1  ���s
�s 
pcnt n  �� 4  ���r
�r 
txtf m  �� �  R - P a g e   n u m b e r 4  ���q
�q 
page m  ���p�p �u  �t  �}  ��  ��  ��  ��  ��  ��  ��  �$  � l   �o�n 1    �m
�m 
pacd�o  �n  � m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  !  l     �l�k�j�l  �k  �j  ! "#" l     �i�h�g�i  �h  �g  # $%$ l     �f&'�f  & X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List   ' �(( �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t% )*) i    +,+ I      �e-�d�e "0 changelegaldate changeLegalDate- .�c. o      �b�b 0 	themaster 	theMaster�c  �d  , O     W/0/ O    V121 Z   
 U345�a3 =  
 676 o   
 �`�` 0 	themaster 	theMaster7 m    88 �99  F e a t - R e d L i s t4 k    ,:: ;<; I    �_=>
�_ .InESovrrobj         obj = n    ?@? 4    �^A
�^ 
txtfA m    BB �CC  L e g a l   d a t e@ 4    �]D
�] 
msprD o    �\�\ 0 	themaster 	theMaster> �[E�Z
�[ 
dPgeE 4    �YF
�Y 
pageF m    �X�X �Z  < G�WG r   ! ,HIH o   ! "�V�V 0 pagedate pageDateI l     J�U�TJ n      KLK 1   ) +�S
�S 
pcntL n   " )MNM 4   & )�RO
�R 
txtfO m   ' (PP �QQ  L e g a l   d a t eN 4   " &�QR
�Q 
pageR m   $ %�P�P �U  �T  �W  5 STS =  / 2UVU o   / 0�O�O 0 	themaster 	theMasterV m   0 1WW �XX  F e a t - T VT Y�NY k   5 QZZ [\[ I  5 E�M]^
�M .InESovrrobj         obj ] n   5 <_`_ 4   9 <�La
�L 
txtfa m   : ;bb �cc  L e g a l   d a t e` 4   5 9�Kd
�K 
msprd o   7 8�J�J 0 	themaster 	theMaster^ �Ie�H
�I 
dPgee 4   = A�Gf
�G 
pagef m   ? @�F�F �H  \ g�Eg r   F Qhih o   F G�D�D 0 pagedate pageDatei l     j�C�Bj n      klk 1   N P�A
�A 
pcntl n   G Nmnm 4   K N�@o
�@ 
txtfo m   L Mpp �qq  L e g a l   d a t en 4   G K�?r
�? 
pager m   I J�>�> �C  �B  �E  �N  �a  2 l   s�=�<s 1    �;
�; 
pacd�=  �<  0 m     tt�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  * uvu l     �:�9�8�:  �9  �8  v wxw l     �7�6�5�7  �6  �5  x yzy l     �4{|�4  { c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   | �}} �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g ez ~~ i    ��� I      �3��2�3  0 drawembargobox drawEmbargoBox� ��1� o      �0�0 0 pagetype pageType�1  �2  � O     ���� O    ���� Z    �����/� =   ��� o    �.�. 0 pagetype pageType� m    �� ���  s i n g l e� k    E�� ��� O    .��� r    -��� I   +�-�,�
�- .corecrel****      � null�,  � �+��
�+ 
kocl� m    �*
�* 
txtf� �)��(
�) 
prdt� K    '�� �'��
�' 
gbnd� J    #�� ��� m    �� @,      � ��� m    �� �b�     � ��� m     �� @\�     � ��&� m     !�� �I      �&  � �%��$
�% 
pcnt� m   $ %�� ��� " E m b a r g o e d   s t o r i e s�$  �(  � o      �#�# 0 ebox eBox� 4    �"�
�" 
page� m    �!�! � ��� l  / =���� r   / =��� 4   / 7� �
�  
ObSt� m   3 6�� ��� " N e w s   N I B   b o x   t i n t� l     ���� n      ��� 1   8 <�
� 
aobs� o   7 8�� 0 ebox eBox�  �  � K E Set separately as it throws an error if you try to do it on creation   � ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n� ��� r   > E��� m   > ?�
� boovtrue� n      ��� 1   @ D�
� 
plck� o   ? @�� 0 ebox eBox�  � ��� =  H M��� o   H I�� 0 pagetype pageType� m   I L�� ���  s p r e a d� ��� k   P ��� ��� O   P o��� r   W n��� I  W l���
� .corecrel****      � null�  � ���
� 
kocl� m   Y Z�
� 
txtf� ���
� 
prdt� K   [ h�� ���
� 
gbnd� J   \ b�� ��� m   \ ]�� @,      � ��� m   ] ^�� �b�     � ��� m   ^ _�� @\�     � ��� m   _ `�� �I      �  � ���
� 
pcnt� m   c f�� ��� " E m b a r g o e d   s t o r i e s�  �  � o      �� 0 ebox eBox� 4   P T�
�
�
 
page� m   R S�	�	 � ��� r   p ~��� 4   p x��
� 
ObSt� m   t w�� ��� " N e w s   N I B   b o x   t i n t� l     ���� n      ��� 1   y }�
� 
aobs� o   x y�� 0 ebox eBox�  �  � ��� r    ���� m    ��
� boovtrue� n      ��� 1   � ��
� 
plck� o   � �� �  0 ebox eBox�  �  �/  � l   ������ 4   ���
�� 
docu� m    ���� ��  ��  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� 	 		  i     #			 I      ��	���� 0 	cleansave 	cleanSave	 			 o      ���� 0 
pagenumber 
pageNumber	 	��	 o      ���� 0 theslug theSlug��  ��  	 O     ]				 O    \	
		
 k   
 [		 			 r   
 			 m   
 ��
�� boovtrue	 n      			 1    ��
�� 
plck	 4    ��	
�� 
layr	 m    		 �		 ( D a t e   a n d   p a g e   n u m b e r	 			 r    			 m    ��
�� boovtrue	 n      			 1    ��
�� 
plck	 4    ��	
�� 
layr	 m    		 �		  F u r n i t u r e	 		 	 r    !	!	"	! m    	#	# �	$	$  W o r k	" 1     ��
�� 
pacl	  	%	&	% l  " "��������  ��  ��  	& 	'	(	' Z   " I	)	*	+��	) l  " '	,����	, =  " '	-	.	- `   " %	/	0	/ o   " #���� 0 
pagenumber 
pageNumber	0 m   # $���� 	. m   % &����  ��  ��  	* l  * 2	1	2	3	1 r   * 2	4	5	4 J   * .	6	6 	7	8	7 m   * +	9	9 @.      	8 	:��	: m   + ,	;	; @&      ��  	5 l     	<����	< 1   . 1��
�� 
zero��  ��  	2 ( " For left-hand singles and spreads   	3 �	=	= D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s	+ 	>	?	> l  5 :	@����	@ =  5 :	A	B	A `   5 8	C	D	C o   5 6���� 0 
pagenumber 
pageNumber	D m   6 7���� 	B m   8 9���� ��  ��  	? 	E��	E l  = E	F	G	H	F r   = E	I	J	I J   = A	K	K 	L	M	L m   = >	N	N @"      	M 	O��	O m   > ?	P	P @&      ��  	J l     	Q����	Q 1   A D��
�� 
zero��  ��  	G   For right-hand singles   	H �	R	R .   F o r   r i g h t - h a n d   s i n g l e s��  ��  	( 	S	T	S l  J J��������  ��  ��  	T 	U��	U I  J [����	V
�� .CoResavedocu        obj ��  	V ��	W��
�� 
kfil	W b   L W	X	Y	X b   L S	Z	[	Z b   L Q	\	]	\ b   L O	^	_	^ o   L M���� $0 freshpagesfolder freshPagesFolder	_ o   M N���� 0 theslug theSlug	] m   O P	`	` �	a	a  _	[ o   Q R���� 0 filedate fileDate	Y m   S V	b	b �	c	c 
 . i n d d��  ��  	 l   	d����	d 1    ��
�� 
pacd��  ��  		 m     	e	e�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  	 	f	g	f l     ��������  ��  ��  	g 	h	i	h l     ��������  ��  ��  	i 	j	k	j l     ��	l	m��  	l f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	m �	n	n �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	k 	o	p	o i   $ '	q	r	q I      �������� 0 customedition customEdition��  ��  	r k    �	s	s 	t	u	t l     ��������  ��  ��  	u 	v	w	v l     ��	x	y��  	x | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	y �	z	z �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	w 	{	|	{ l     ��	}	~��  	} a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	~ �		 �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	| 	�	�	� l     ��	�	���  	� [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	� �	�	� �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	� > 8 The human-friendly names used in the TextWrangler file	   	� �	�	� p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		� 	�	�	� r     U	�	�	� J     S	�	� 	�	�	� m     	�	� �	�	� 
 F r o n t	� 	�	�	� m    	�	� �	�	�  S a t F r o n t	� 	�	�	� m    	�	� �	�	�  H o m e _ S	� 	�	�	� m    	�	� �	�	�  H o m e _ L	� 	�	�	� m    	�	� �	�	�  H o m e _ R	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ S	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ L	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ R	� 	�	�	� m    		�	� �	�	�  S t r u g g l e _ S	� 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �
 
   A r t s _ R	� 


 m   4 7

 �

  B a c k
 


 m   7 :

 �

  S p o r t _ S
 
	


	 m   : =

 �

  S p o r t _ L

 


 m   = @

 �

  S p o r t _ R
 


 m   @ C

 �

  R a c i n g _ L
 


 m   C F

 �

  R a c i n g _ R
 


 m   F I

 �

  B l a n k _ S
 


 m   I L

 �
 
   B l a n k _ L
 
!��
! m   L O
"
" �
#
#  B l a n k _ R��  	� o      ���� 0 
human_list  	� 
$
%
$ l  V V��
&
'��  
&    The InDesign master names   
' �
(
( 4   T h e   I n D e s i g n   m a s t e r   n a m e s
% 
)
*
) r   V �
+
,
+ J   V �
-
- 
.
/
. m   V Y
0
0 �
1
1  N e w s - F r o n t
/ 
2
3
2 m   Y \
4
4 �
5
5  N e w s - S a t F r o n t
3 
6
7
6 m   \ _
8
8 �
9
9  N e w s - H o m e - S p l i t
7 
:
;
: m   _ b
<
< �
=
=  N e w s - H o m e - L
; 
>
?
> m   b e
@
@ �
A
A  N e w s - H o m e - R
? 
B
C
B m   e h
D
D �
E
E $ N e w s - F o r e i g n - S p l i t
C 
F
G
F m   h k
H
H �
I
I  N e w s - F o r e i g n - L
G 
J
K
J m   k n
L
L �
M
M  N e w s - F o r e i g n - R
K 
N
O
N m   n q
P
P �
Q
Q & F e a t - S t r u g g l e - S p l i t
O 
R
S
R m   q t
T
T �
U
U  F e a t - S t r u g g l e - L
S 
V
W
V m   t w
X
X �
Y
Y  F e a t - S t r u g g l e - R
W 
Z
[
Z m   w z
\
\ �
]
] * F e a t - N e w s R e v i e w - S p l i t
[ 
^
_
^ m   z }
`
` �
a
a " F e a t - N e w s R e v i e w - L
_ 
b
c
b m   } �
d
d �
e
e " F e a t - N e w s R e v i e w - R
c 
f
g
f m   � �
h
h �
i
i  F e a t - S p r e a d
g 
j
k
j m   � �
l
l �
m
m  F e a t - T V
k 
n
o
n m   � �
p
p �
q
q  F e a t - S a t T V
o 
r
s
r m   � �
t
t �
u
u $ F e a t - L e t t e r s - S p l i t
s 
v
w
v m   � �
x
x �
y
y  F e a t - L e t t e r s - L
w 
z
{
z m   � �
|
| �
}
}  F e a t - L e t t e r s - R
{ 
~

~ m   � �
�
� �
�
�  F e a t - R e d L i s t
 
�
�
� m   � �
�
� �
�
�   F e a t - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  F e a t - B l a n k - L
� 
�
�
� m   � �
�
� �
�
�  F e a t - B l a n k - R
� 
�
�
� m   � �
�
� �
�
�  A r t s - E n t s - S p l i t
� 
�
�
� m   � �
�
� �
�
�   A r t s - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  A r t s - B l a n k - L
� 
�
�
� m   � �
�
� �
�
�  A r t s - B l a n k - R
� 
�
�
� m   � �
�
� �
�
�  S p r t - B a c k
� 
�
�
� m   � �
�
� �
�
�   S p r t - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  S p r t - B l a n k - L
� 
�
�
� m   � �
�
� �
�
�  S p r t - B l a n k - R
� 
�
�
� m   � �
�
� �
�
�  S p r t - R a c i n g - L
� 
�
�
� m   � �
�
� �
�
�  S p r t - R a c i n g - R
� 
�
�
� m   � �
�
� �
�
�  X - B l a n k - S p l i t
� 
�
�
� m   � �
�
� �
�
�  X - B l a n k - L
� 
���
� m   � �
�
� �
�
�  X - B l a n k - R��  
, o      ���� 0 masters_list  
* 
�
�
� l  � ���
�
���  
� $  Slugs to use in the file name   
� �
�
� <   S l u g s   t o   u s e   i n   t h e   f i l e   n a m e
� 
�
�
� r   �A
�
�
� J   �?
�
� 
�
�
� m   � �
�
� �
�
� 
 F r o n t
� 
�
�
� m   � �
�
� �
�
� 
 F r o n t
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  H o m e
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  F o r e i g n
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  S t r u g g l e
� 
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w s
� 
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w
� 
� 
� m   � � �  N e w s R e v i e w   m   � � �  S p r e a d  m   � �		 �

  T V  m   � � �  T V  m   � �  L e t t e r s  m   �  L e t t e r s  m   �  L e t t e r s  m   �  R e d L i s t   m  !! �""  F e a t u r e s  #$# m  %% �&&  F e a t u r e$ '(' m  )) �**  F e a t u r e( +,+ m  -- �..  A r t s - E n t s, /0/ m  11 �22  A r t s0 343 m  55 �66  A r t s4 787 m   99 �::  A r t s8 ;<; m   #== �>>  B a c k< ?@? m  #&AA �BB 
 S p o r t@ CDC m  &)EE �FF 
 S p o r tD GHG m  ),II �JJ 
 S p o r tH KLK m  ,/MM �NN  R a c i n gL OPO m  /2QQ �RR  R a c i n gP STS m  25UU �VV 
 B L A N KT WXW m  58YY �ZZ 
 B L A N KX [��[ m  8;\\ �]] 
 B L A N K��  
� o      ���� 0 
slugs_list  
� ^_^ l BB��������  ��  ��  _ `a` l BB��bc��  b 1 + Single-page masters (used to set pageType)   c �dd V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )a efe r  B�ghg J  B�ii jkj m  BEll �mm  N e w s - F r o n tk non m  EHpp �qq  N e w s - S a t F r o n to rsr m  HKtt �uu  N e w s - H o m e - Ls vwv m  KNxx �yy  N e w s - H o m e - Rw z{z m  NQ|| �}}  N e w s - F o r e i g n - L{ ~~ m  QT�� ���  N e w s - F o r e i g n - R ��� m  TW�� ���  F e a t - S t r u g g l e - L� ��� m  WZ�� ���  F e a t - S t r u g g l e - R� ��� m  Z]�� ��� " F e a t - N e w s R e v i e w - L� ��� m  ]`�� ��� " F e a t - N e w s R e v i e w - R� ��� m  `c�� ���  F e a t - L e t t e r s - L� ��� m  cf�� ���  F e a t - L e t t e r s - R� ��� m  fi�� ���  F e a t - R e d L i s t� ��� m  il�� ���  F e a t - B l a n k - L� ��� m  lo�� ���  F e a t - B l a n k - R� ��� m  or�� ���  A r t s - B l a n k - L� ��� m  ru�� ���  A r t s - B l a n k - R� ��� m  ux�� ���  S p r t - B a c k� ��� m  x{�� ���  S p r t - B l a n k - L� ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ���� m  ���� ���  X - B l a n k - R��  h o      ���� 0 singles_list  f ��� l ��������  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� � � m  �� �   S p r t - B l a n k - S p l i t  �� m  �� �  X - B l a n k - S p l i t��  � o      ���� 0 spreads_list  �  l ����������  ��  ��   �� O  ��	
	 O  �� k  ��  l �� r  �� l ������ I ����
�� .R*chFindMtch���     TEXT m  �� �  ^ # S t a r t s   h e r e # $ ����
�� 
Opts K  �� ��
�� 
SMod m  ����
�� SModGrep ����
�� 
STop m  ����
�� boovtrue��  ��  ��  ��   o      ���� 0 hashline hashLine   Finds the beginning line    � 2   F i n d s   t h e   b e g i n n i n g   l i n e  !  l ��"#$" r  ��%&% l ��'����' [  ��()( l ��*����* l ��+����+ n  ��,-, 1  ����
�� 
SLin- l ��.����. n  ��/0/ 1  ����
�� 
MSpc0 o  ������ 0 hashline hashLine��  ��  ��  ��  ��  ��  ) m  ������ ��  ��  & o      ���� 0 thestart theStart# : 4 The first instruction is on the line after hashLine   $ �11 h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e! 232 l �4564 r  �787 l �9����9 1  ���
�� 
ELin��  ��  8 o      �� 0 theend theEnd5 @ : The last instruction must be on the last line of the file   6 �:: t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e3 ;<; l �~�}�|�~  �}  �|  < =>= Y  �?�{@A�z? l �BCDB k  �EE FGF l -HIJH r  -KLK l +M�y�xM I +�wNO
�w .R*chFindMtch���     TEXTN m  PP �QQ  ^ ( . + ) \ t ( . + ) $O �vRS
�v 
FnInR 4  �uT
�u 
clinT o  �t�t 0 x  S �sU�r
�s 
OptsU K  %VV �qW�p
�q 
SModW m   #�o
�o SModGrep�p  �r  �y  �x  L o      �n�n 0 searchresult searchResultI 9 3 Finds characters, then a tab, then more characters   J �XX f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r sG YZY l ..�m�l�k�m  �l  �k  Z [\[ l .;]^_] r  .;`a` l .9b�j�ib I .9�h�gc
�h .R*chGSubutxt    ��� null�g  c �fd�e
�f 
RplPd m  25ee �ff  \ 1�e  �j  �i  a o      �d�d 0 
pagenumber 
pageNumber^ < 6 The page number (or a spread's left-hand page number)   _ �gg l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )\ hih l <Ijklj r  <Imnm l <Go�c�bo I <G�a�`p
�a .R*chGSubutxt    ��� null�`  p �_q�^
�_ 
RplPq m  @Crr �ss  \ 2�^  �c  �b  n o      �]�] 0 hmaster hMasterk = 7 Human-friendly master name, as contained in human_list   l �tt n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s ti uvu l JJ�\�[�Z�\  �[  �Z  v w�Yw Z  J�xy�X�Wx H  JTzz E  JS{|{ l JO}�V�U} n  JO~~ 1  KO�T
�T 
MTxt o  JK�S�S 0 searchresult searchResult�V  �U  | m  OR�� ���  - 	 -y l W����� k  W��� ��� l W`���� r  W`��� l W^��R�Q� n W^��� I  X^�P��O�P 0 list_position  � ��� o  XY�N�N 0 hmaster hMaster� ��M� o  YZ�L�L 0 
human_list  �M  �O  �  f  WX�R  �Q  � o      �K�K 0 listpos listPos� Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   � ��� �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s t� ��� l ai���� r  ai��� l ag��J�I� n  ag��� 4  bg�H�
�H 
cobj� o  ef�G�G 0 listpos listPos� o  ab�F�F 0 masters_list  �J  �I  � o      �E�E 0 	themaster 	theMaster� 1 + Sets theMaster to the InDesign master name   � ��� V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m e� ��� l jj�D�C�B�D  �C  �B  � ��� Z  j�����A� E jm��� o  jk�@�@ 0 singles_list  � o  kl�?�? 0 	themaster 	theMaster� r  pu��� m  ps�� ���  s i n g l e� o      �>�> 0 pagetype pageType� ��� E x{��� o  xy�=�= 0 spreads_list  � o  yz�<�< 0 	themaster 	theMaster� ��;� r  ~���� m  ~��� ���  s p r e a d� o      �:�: 0 pagetype pageType�;  �A  � ��� l ���9�8�7�9  �8  �7  � ��� Z  ������6� = ����� o  ���5�5 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l ����4�3� b  ����� b  ����� o  ���2�2 0 
pagenumber 
pageNumber� m  ���� ���  _� l ����1�0� n  ����� 4  ���/�
�/ 
cobj� o  ���.�. 0 listpos listPos� o  ���-�- 0 
slugs_list  �1  �0  �4  �3  � o      �,�, 0 theslug theSlug� 2 , Block to set the slug used to name the file   � ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l e� ��� = ����� o  ���+�+ 0 pagetype pageType� m  ���� ���  s p r e a d� ��*� r  ����� l ����)�(� b  ����� b  ����� b  ����� b  ����� o  ���'�' 0 
pagenumber 
pageNumber� m  ���� ���  -� l ����&�%� [  ����� o  ���$�$ 0 
pagenumber 
pageNumber� m  ���#�# �&  �%  � m  ���� ���  _� l ����"�!� n  ����� 4  ��� �
�  
cobj� o  ���� 0 listpos listPos� o  ���� 0 
slugs_list  �"  �!  �)  �(  � o      �� 0 theslug theSlug�*  �6  � ��� l ������  �  �  � ��� Z  ������� G  ����� = ����� o  ���� 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ���� 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ��   r  �� m  �� �   o      �� 0 
pagenumber 
pageNumber H B So applyMaster doesn't try to set a page number, which would fail    � �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l�  �  � 	 l ������  �  �  	 

 l �� n �� I  ����� 0 pagegen pageGen  o  ���� 0 pagetype pageType  o  ���� 0 	themaster 	theMaster  o  ���� 0 theslug theSlug � o  ���� 0 
pagenumber 
pageNumber�  �    f  �� ' ! Calls pageGen to create the page    � B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e �
 l ���	���	  �  �  �
  � : 4 Lines consisting of "hyphen tab hyphen" are skipped   � � h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�X  �W  �Y  C P J Goes through each line from the one after hashLine to the end of the file   D � �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�{ 0 x  @ o  �� 0 thestart theStartA o  	�� 0 theend theEnd�z  > � l ������  �  �  �   n  �� 4  ���  
�  
ctxt  m  ������  4  ����!
�� 
TxtW! m  ������ 
 m  ��""�                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                                ±	��u}        ����  	                Applications    �@��      ��gm    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  ��  	p #$# l     ��������  ��  ��  $ %&% l     ��'(��  ' , & newsGen: News-page generation routine   ( �)) L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e& *+* i   ( +,-, I      ��.���� 0 newsgen newsGen. /0/ o      ���� &0 masterstogenerate mastersToGenerate0 1��1 o      ���� 0 theday theDay��  ��  - k    22 343 Z     �56����5 E    787 o     ���� &0 masterstogenerate mastersToGenerate8 m    99 �::  N e w s      s p l i t s6 k    �;; <=< Z    +>?@��> >   	ABA o    ���� 0 theday theDayB m    CC �DD  S a t u r d a y? l   EFGE I    ��H���� 0 pagegen pageGenH IJI m    KK �LL  s i n g l eJ MNM m    OO �PP  N e w s - F r o n tN QRQ m    SS �TT  1 _ F r o n tR U��U m    VV �WW  ��  ��  F ; 5 If block to create the weekday or weekend front page   G �XX j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e@ YZY =   [\[ o    ���� 0 theday theDay\ m    ]] �^^  S a t u r d a yZ _��_ I    '��`���� 0 pagegen pageGen` aba m     cc �dd  s i n g l eb efe m     !gg �hh  N e w s - S a t F r o n tf iji m   ! "kk �ll  1 _ F r o n tj m��m m   " #nn �oo  ��  ��  ��  ��  = pqp l  , ,��������  ��  ��  q rsr Z   , etu��vt E  , /wxw o   , -���� &0 masterstogenerate mastersToGeneratex m   - .yy �zz * N e w s      2 - 3   a s   s i n g l e su l  2 Q{|}{ k   2 Q~~ � I   2 ?������� 0 pagegen pageGen� ��� m   3 4�� ���  s i n g l e� ��� m   4 5�� ���  N e w s - H o m e - L� ��� m   5 8�� ���  2 _ H o m e� ���� m   8 ;�� ���  2��  ��  � ���� I   @ Q������� 0 pagegen pageGen� ��� m   A D�� ���  s i n g l e� ��� m   D G�� ���  N e w s - H o m e - R� ��� m   G J�� ���  3 _ H o m e� ���� m   J M�� ���  3��  ��  ��  | 3 - If block to create 2-3 as singles or a split   } ��� Z   I f   b l o c k   t o   c r e a t e   2 - 3   a s   s i n g l e s   o r   a   s p l i t��  v I   T e������� 0 pagegen pageGen� ��� m   U X�� ���  s p r e a d� ��� m   X [�� ���  N e w s - H o m e - S p l i t� ��� m   [ ^�� ���  2 - 3 _ H o m e� ���� m   ^ a�� ���  2��  ��  s ��� l  f f��������  ��  ��  � ��� Z   f ������� E  f k��� o   f g���� &0 masterstogenerate mastersToGenerate� m   g j�� ��� * N e w s      4 - 5   a s   s i n g l e s� l  n ����� k   n ��� ��� I   n ������� 0 pagegen pageGen� ��� m   o r�� ���  s i n g l e� ��� m   r u�� ���  N e w s - H o m e - L� ��� m   u x�� ���  4 _ H o m e� ���� m   x {�� ���  4��  ��  � ���� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  N e w s - H o m e - R� ��� m   � ��� ���  5 _ H o m e� ���� m   � ��� ���  5��  ��  ��  � 3 - If block to create 4-5 as singles or a split   � ��� Z   I f   b l o c k   t o   c r e a t e   4 - 5   a s   s i n g l e s   o r   a   s p l i t��  � I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  N e w s - H o m e - S p l i t� ��� m   � ��� ���  4 - 5 _ H o m e� ���� m   � ��� ���  4��  ��  � ��� l  � ���������  ��  ��  � ���� Z   � ������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ��� * N e w s      6 - 7   a s   s i n g l e s� l  � �   k   � �  I   � ������� 0 pagegen pageGen  m   � �		 �

  s i n g l e  m   � � �  N e w s - F o r e i g n - L  m   � � �  6 _ F o r e i g n �� m   � � �  6��  ��   �� I   � ������� 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �  N e w s - F o r e i g n - R  !  m   � �"" �##  7 _ F o r e i g n! $��$ m   � �%% �&&  7��  ��  ��   3 - If block to create 6-7 as singles or a split    �'' Z   I f   b l o c k   t o   c r e a t e   6 - 7   a s   s i n g l e s   o r   a   s p l i t��  � I   � ���(���� 0 pagegen pageGen( )*) m   � �++ �,,  s p r e a d* -.- m   � �// �00 $ N e w s - F o r e i g n - S p l i t. 121 m   � �33 �44  6 - 7 _ F o r e i g n2 5��5 m   � �66 �77  6��  ��  ��  ��  ��  4 898 l  � ���������  ��  ��  9 :;: Z   �/<=����< E  � �>?> o   � ����� &0 masterstogenerate mastersToGenerate? m   � �@@ �AA  T V= Z   �+BCD��B >  � �EFE o   � ����� 0 theday theDayF m   � �GG �HH  S a t u r d a yC I   ���I���� 0 pagegen pageGenI JKJ m   � �LL �MM  s p r e a dK NON m   �PP �QQ  F e a t - T VO RSR m  TT �UU  1 2 - 1 3 _ T VS V��V m  WW �XX  1 2��  ��  D YZY = [\[ o  ���� 0 theday theDay\ m  ]] �^^  S a t u r d a yZ _��_ I  '��`���� 0 pagegen pageGen` aba m  cc �dd  s p r e a db efe m  gg �hh  F e a t - S a t T Vf iji m   kk �ll  1 8 - 1 9 _ T Vj m��m m   #nn �oo  1 8��  ��  ��  ��  ��  ��  ; pqp l 00��������  ��  ��  q rsr Z  0�tu����t E 05vwv o  01���� &0 masterstogenerate mastersToGeneratew m  14xx �yy  L e t t e r su k  8�zz {|{ l 8B}~} r  8B��� J  8@�� ��� m  8;�� ���  M o n d a y� ���� m  ;>�� ���  W e d n e s d a y��  � o      ���� 0 p10_days  ~ = 7 These two lists determine what the page number will be    ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e| ��� r  CS��� J  CQ�� ��� m  CF�� ���  T u e s d a y� ��� m  FI�� ���  T h u r s d a y� ��� m  IL�� ���  F r i d a y� ���� m  LO�� ���  S a t u r d a y��  � o      ���� 0 p14_days  � ��� l TT��������  ��  ��  � ���� Z  T������� E TW��� o  TU���� 0 p10_days  � o  UV���� 0 theday theDay� I  Zk������� 0 pagegen pageGen� ��� m  [^�� ���  s i n g l e� ��� m  ^a�� ���  F e a t - L e t t e r s - L� ��� m  ad�� ���  1 0 _ L e t t e r s� ���� m  dg�� ���  1 0��  ��  � ��� E nq��� o  no���� 0 p14_days  � o  op���� 0 theday theDay� ���� I  t�������� 0 pagegen pageGen� ��� m  ux�� ���  s i n g l e� ��� m  x{�� ���  F e a t - L e t t e r s - L� ��� m  {~�� ���  1 4 _ L e t t e r s� ���� m  ~��� ���  1 4��  ��  ��  ��  ��  ��  ��  s ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  S t r u g g l e� I  ��������� 0 pagegen pageGen� ��� m  ���� ���  s p r e a d� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ���  1 0 - 1 1 _ S t r u g g l e� ���� m  ���� ���  1 0��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� , S i n g l e   s t r u g g l e   -   l e f t� I  �����~� 0 pagegen pageGen� ��� m  ���� ���  s i n g l e� ��� m  ���� ���  F e a t - S t r u g g l e - L� ��� m  ���� ���  1 0 _ S t r u g g l e� ��}� m  ���� ���  1 0�}  �~  ��  ��  �    l ���|�{�z�|  �{  �z    Z  ���y�x E �� o  ���w�w &0 masterstogenerate mastersToGenerate m  �� �		 . S i n g l e   s t r u g g l e   -   r i g h t I  ���v
�u�v 0 pagegen pageGen
  m  �� �  s i n g l e  m  �� �  F e a t - S t r u g g l e - R  m  �� �  1 1 _ S t r u g g l e �t m  �� �  1 1�t  �u  �y  �x    l ���s�r�q�s  �r  �q   �p Z  ��o�n E ��  o  ���m�m &0 masterstogenerate mastersToGenerate  m  ��!! �""  R e d   L i s t I  ��l#�k�l 0 pagegen pageGen# $%$ m  ��&& �''  s i n g l e% ()( m  ��** �++  F e a t - R e d L i s t) ,-, m  ��.. �//  2 0 _ R e d L i s t- 0�j0 m  ��11 �22  2 0�j  �k  �o  �n  �p  + 343 l     �i�h�g�i  �h  �g  4 565 l     �f�e�d�f  �e  �d  6 787 l     �c9:�c  9 1 + featsGen: Features-page generation routine   : �;; V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e8 <=< i   , />?> I      �b@�a�b 0 featsgen featsGen@ ABA o      �`�` &0 masterstogenerate mastersToGenerateB C�_C o      �^�^ 0 theday theDay�_  �a  ? k    �DD EFE Z     %GH�]�\G E    IJI o     �[�[ &0 masterstogenerate mastersToGenerateJ m    KK �LL  S p r e a dH Z    !MN�ZOM =   	PQP o    �Y�Y 0 theday theDayQ m    RR �SS  S a t u r d a yN I    �XT�W�X 0 pagegen pageGenT UVU m    WW �XX  s p r e a dV YZY m    [[ �\\  F e a t - S p r e a dZ ]^] m    __ �``  1 2 - 1 3 _ F e a t u r e s^ a�Va m    bb �cc  1 2�V  �W  �Z  O I    !�Ud�T�U 0 pagegen pageGend efe m    gg �hh  s p r e a df iji m    kk �ll  F e a t - S p r e a dj mnm m    oo �pp  8 - 9 _ F e a t u r e sn q�Sq m    rr �ss  8�S  �T  �]  �\  F tut l  & &�R�Q�P�R  �Q  �P  u vwv Z   & ;xy�O�Nx E  & )z{z o   & '�M�M &0 masterstogenerate mastersToGenerate{ m   ' (|| �}}  1 0y I   , 7�L~�K�L 0 pagegen pageGen~ � m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ��J� m   0 3�� ���  1 0�J  �K  �O  �N  w ��� l  < <�I�H�G�I  �H  �G  � ��� Z   < Y���F�E� E  < A��� o   < =�D�D &0 masterstogenerate mastersToGenerate� m   = @�� ��� 
 1 2 - 1 3� I   D U�C��B�C 0 pagegen pageGen� ��� m   E H�� ���  s p r e a d� ��� m   H K�� ���  F e a t - T V� ��� m   K N�� ���  1 2 - 1 3 _ T V� ��A� m   N Q�� ���  1 2�A  �B  �F  �E  � ��� l  Z Z�@�?�>�@  �?  �>  � ��� Z   Z w���=�<� E  Z _��� o   Z [�;�; &0 masterstogenerate mastersToGenerate� m   [ ^�� ��� ( N e w s   r e v i e w s      s p l i t� I   b s�:��9�: 0 pagegen pageGen� ��� m   c f�� ���  s p r e a d� ��� m   f i�� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m   i l�� ���  8 - 9 _ N e w s R e v i e w� ��8� m   l o�� ���  8�8  �9  �=  �<  � ��� Z   x ����7�6� E  x }��� o   x y�5�5 &0 masterstogenerate mastersToGenerate� m   y |�� ��� , N e w s   r e v i e w s      s i n g l e s� k   � ��� ��� I   � ��4��3�4 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - L� ��� m   � ��� ���  8 _ N e w s R e v i e w� ��2� m   � ��� ���  8�2  �3  � ��1� I   � ��0��/�0 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - R� ��� m   � ��� ���  9 _ N e w s R e v i e w� ��.� m   � ��� ���  9�.  �/  �1  �7  �6  � ��� l  � ��-�,�+�-  �,  �+  � ��� Z   � ����*�)� E  � ���� o   � ��(�( &0 masterstogenerate mastersToGenerate� m   � ��� ���  1 5� I   � ��'��&�' 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� �    F e a t - B l a n k - R�  m   � � �  1 5 _ F e a t u r e s �% m   � � �  1 5�%  �&  �*  �)  � 	 l  � ��$�#�"�$  �#  �"  	 

 Z   � ��!�  E  � � o   � ��� &0 masterstogenerate mastersToGenerate m   � � � 
 1 6 - 1 7 l  � � I   � ���� 0 pagegen pageGen  m   � � �  s p r e a d  m   � � �  A r t s - E n t s - S p l i t  m   � �   �!!  1 6 - 1 7 _ E n t s - A r t s "�" m   � �## �$$  1 6�  �   ( " Create the weekend Ents/Arts page    �%% D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�!  �    &'& l  � �����  �  �  ' ()( Z   �F*+��* E  � �,-, o   � ��� &0 masterstogenerate mastersToGenerate- m   � �.. �//  L e t t e r s+ k   �B00 121 l  � �3453 r   � �676 J   � �88 9:9 m   � �;; �<<  M o n d a y: =�= m   � �>> �??  W e d n e s d a y�  7 o      �� 0 p10_days  4 = 7 These two lists determine what the page number will be   5 �@@ n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e2 ABA r   �CDC J   �
EE FGF m   � �HH �II  T u e s d a yG JKJ m   � �LL �MM  T h u r s d a yK NON m   � PP �QQ  F r i d a yO RSR m   TT �UU  S a t u r d a yS V�V m  WW �XX , N o   d a y      w o r k i n g   a h e a d�  D o      �� 0 p14_days  B YZY l ����  �  �  Z [�[ Z  B\]^�\ E _`_ o  �� 0 p10_days  ` o  �� 0 theday theDay] I  $�
a�	�
 0 pagegen pageGena bcb m  dd �ee  s i n g l ec fgf m  hh �ii  F e a t - L e t t e r s - Lg jkj m  ll �mm  1 0 _ L e t t e r sk n�n m   oo �pp  1 0�  �	  ^ qrq E '*sts o  '(�� 0 p14_days  t o  ()�� 0 theday theDayr u�u I  ->�v�� 0 pagegen pageGenv wxw m  .1yy �zz  s i n g l ex {|{ m  14}} �~~  F e a t - L e t t e r s - L| � m  47�� ���  1 4 _ L e t t e r s� ��� m  7:�� ���  1 4�  �  �  �  �  �  �  ) ��� l GG�� ���  �   ��  � ��� Z  Gd������� E GL��� o  GH���� &0 masterstogenerate mastersToGenerate� m  HK�� ���  A r t s� l O`���� I  O`������� 0 pagegen pageGen� ��� m  PS�� ���  s i n g l e� ��� m  SV�� ���  A r t s - B l a n k - R� ��� m  VY�� ���  1 1 _ A r t s� ���� m  Y\�� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  � ��� l ee��������  ��  ��  � ���� Z  e�������� E ej��� o  ef���� &0 masterstogenerate mastersToGenerate� m  fi�� ���  A r t s   s p l i t� I  m~������� 0 pagegen pageGen� ��� m  nq�� ���  s p r e a d� ��� m  qt�� ���   A r t s - B l a n k - S p l i t� ��� m  tw�� ���  1 0 - 1 1 _ A r t s� ���� m  wz�� ���  1 0��  ��  ��  ��  ��  = ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � , & artsGen: Arts-page generation routine   � ��� L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   0 3��� I      ������� 0 artsgen artsGen� ���� o      ���� &0 masterstogenerate mastersToGenerate��  ��  � k     =�� ��� Z     ������� E    ��� o     ���� &0 masterstogenerate mastersToGenerate� m    �� ���  1 6 - 1 7   ( w e e k e n d )� l   ���� I    ������� 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    	�� ���  A r t s - E n t s - S p l i t� ��� m   	 
�� ���  1 6 - 1 7 _ E n t s - A r t s� ���� m   
 �� ���  1 6��  ��  � ( " Create the weekend Ents/Arts page   � ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  � ��� l   ��������  ��  ��  � ��� Z    '������� E   ��� o    ���� &0 masterstogenerate mastersToGenerate� m    �� ���  A r t s   ( p 1 1 )� l   #���� I    #������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  A r t s - B l a n k - R� � � m     �  1 1 _ A r t s  �� m     �  1 1��  ��  � ( " Create the weekday Arts page (11)   � � D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  �  l  ( (��������  ��  ��   	��	 Z   ( =
����
 E  ( + o   ( )���� &0 masterstogenerate mastersToGenerate m   ) * �  A r t s   s p l i t l  . 9 I   . 9������ 0 pagegen pageGen  m   / 0 �  s p r e a d  m   0 1 �   A r t s - B l a n k - S p l i t  m   1 2 �  1 0 - 1 1 _ A r t s  ��  m   2 5!! �""  1 0��  ��   + % Creates an Arts split-spread (10-11)    �## J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  ��  � $%$ l     ��������  ��  ��  % &'& l     ��������  ��  ��  ' ()( l     ��*+��  * 0 * sportsGen: Sports-page generation routine   + �,, T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e) -��- i   4 7./. I      ��0���� 0 	sportsgen 	sportsGen0 1��1 o      ���� &0 masterstogenerate mastersToGenerate��  ��  / k    �22 343 Z     56����5 E    787 o     ���� &0 masterstogenerate mastersToGenerate8 m    99 �::  T w o   p a g e s6 k    ;; <=< I    ��>���� 0 pagegen pageGen> ?@? m    AA �BB  s i n g l e@ CDC m    	EE �FF  S p r t - B a c kD GHG m   	 
II �JJ  1 6 _ B a c kH K��K m   
 LL �MM  1 6��  ��  = N��N I    ��O���� 0 pagegen pageGenO PQP m    RR �SS  s i n g l eQ TUT m    VV �WW  S p r t - B l a n k - RU XYX m    ZZ �[[  1 5 _ S p o r tY \��\ m    ]] �^^  1 5��  ��  ��  ��  ��  4 _`_ l   ��������  ��  ��  ` aba Z    Ucd����c E   !efe o    ���� &0 masterstogenerate mastersToGeneratef m     gg �hh  T h r e e   p a g e sd k   $ Qii jkj I   $ -��l���� 0 pagegen pageGenl mnm m   % &oo �pp  s i n g l en qrq m   & 'ss �tt  S p r t - B a c kr uvu m   ' (ww �xx  1 6 _ B a c kv y��y m   ( )zz �{{  1 6��  ��  k |}| I   . ?��~���� 0 pagegen pageGen~ � m   / 2�� ���  s i n g l e� ��� m   2 5�� ���  S p r t - B l a n k - R� ��� m   5 8�� ���  1 5 _ S p o r t� ���� m   8 ;�� ���  1 5��  ��  } ���� I   @ Q������� 0 pagegen pageGen� ��� m   A D�� ���  s i n g l e� ��� m   D G�� ���  S p r t - B l a n k - L� ��� m   G J�� ���  1 4 _ S p o r t� ���� m   J M�� ���  1 4��  ��  ��  ��  ��  b ��� l  V V��������  ��  ��  � ��� Z   V �������� E  V [��� o   V W���� &0 masterstogenerate mastersToGenerate� m   W Z�� ��� , T h r e e   p a g e s   w i t h   s p l i t� k   ^ ��� ��� I   ^ o������� 0 pagegen pageGen� ��� m   _ b�� ���  s i n g l e� ��� m   b e�� ���  S p r t - B a c k� ��� m   e h�� ���  1 6 _ B a c k� ���� m   h k�� ���  1 6��  ��  � ���� I   p �������� 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���   S p r t - B l a n k - S p l i t� ��� m   w z�� ���  1 4 - 1 5 _ S p o r t� ���� m   z }�� ���  1 4��  ��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� Z   � �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  F o u r   p a g e s� k   � ��� ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ���� m   � ��� ���  2 4��  ��  � ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - R� ��� m   � ��� ���  2 3 _ S p o r t� ���� m   � ��� ���  2 3��  ��  � ��� I   � �������� 0 pagegen pageGen� � � m   � � �  s i n g l e   m   � � �  S p r t - B l a n k - L  m   � �		 �

  2 2 _ S p o r t �� m   � � �  2 2��  ��  � �� I   � ������� 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �  S p r t - R a c i n g - R  m   � � �  2 1 _ R a c i n g �� m   � � �  2 1��  ��  ��  ��  ��  �   l  � ���������  ��  ��    !"! Z   �#$����# E  � �%&% o   � ��� &0 masterstogenerate mastersToGenerate& m   � �'' �(( * F o u r   p a g e s   w i t h   s p l i t$ k   �)) *+* I   � ��~,�}�~ 0 pagegen pageGen, -.- m   � �// �00  s i n g l e. 121 m   � �33 �44  S p r t - B a c k2 565 m   � �77 �88  2 4 _ B a c k6 9�|9 m   � �:: �;;  2 4�|  �}  + <=< I   ��{>�z�{ 0 pagegen pageGen> ?@? m   � �AA �BB  s p r e a d@ CDC m   � �EE �FF   S p r t - B l a n k - S p l i tD GHG m   � �II �JJ  2 2 - 2 3 _ S p o r tH K�yK m   �LL �MM  2 2�y  �z  = N�xN I  �wO�v�w 0 pagegen pageGenO PQP m  
RR �SS  s i n g l eQ TUT m  
VV �WW  S p r t - R a c i n g - RU XYX m  ZZ �[[  2 1 _ R a c i n gY \�u\ m  ]] �^^  2 1�u  �v  �x  ��  ��  " _`_ l �t�s�r�t  �s  �r  ` aba Z  9cd�q�pc E !efe o  �o�o &0 masterstogenerate mastersToGeneratef m   gg �hh  R a c i n g   o n l yd I  $5�ni�m�n 0 pagegen pageGeni jkj m  %(ll �mm  s i n g l ek non m  (+pp �qq  S p r t - R a c i n g - Ro rsr m  +.tt �uu  2 1 _ R a c i n gs v�lv m  .1ww �xx  2 1�l  �m  �q  �p  b yzy l ::�k�j�i�k  �j  �i  z {|{ Z  :W}~�h�g} E :?� o  :;�f�f &0 masterstogenerate mastersToGenerate� m  ;>�� ���  E x t r a   l e f t   p a g e~ I  BS�e��d�e 0 pagegen pageGen� ��� m  CF�� ���  s i n g l e� ��� m  FI�� ���  S p r t - B l a n k - L� ��� m  IL�� ���  L _ X X _ S p o r t� ��c� m  LO�� ���  0 0�c  �d  �h  �g  | ��� l XX�b�a�`�b  �a  �`  � ��� Z  Xu���_�^� E X]��� o  XY�]�] &0 masterstogenerate mastersToGenerate� m  Y\�� ���   E x t r a   r i g h t   p a g e� I  `q�\��[�\ 0 pagegen pageGen� ��� m  ad�� ���  s i n g l e� ��� m  dg�� ���  S p r t - B l a n k - R� ��� m  gj�� ���  R _ X X _ S p o r t� ��Z� m  jm�� ���  0 0�Z  �[  �_  �^  � ��� l vv�Y�X�W�Y  �X  �W  � ��V� Z  v����U�T� E v{��� o  vw�S�S &0 masterstogenerate mastersToGenerate� m  wz�� ���  E x t r a   s p l i t� I  ~��R��Q�R 0 pagegen pageGen� ��� m  ��� ���  s p r e a d� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��� m  ���� ��� " S p l i t _ X X - X X _ S p o r t� ��P� m  ���� ���  0 0�P  �Q  �U  �T  �V  ��       �O�����������������O  � �N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�N 0 	genprompt 	genPrompt�M 0 list_position  �L "0 create_pagedate create_pageDate�K "0 create_filedate create_fileDate�J 0 pagegen pageGen�I 0 applymaster applyMaster�H "0 changelegaldate changeLegalDate�G  0 drawembargobox drawEmbargoBox�F 0 	cleansave 	cleanSave�E 0 customedition customEdition�D 0 newsgen newsGen�C 0 featsgen featsGen�B 0 artsgen artsGen�A 0 	sportsgen 	sportsGen
�@ .aevtoappnull  �   � ****� �? ��>�=���<�? 0 	genprompt 	genPrompt�> �;��; �  �:�: 0 desk  �=  � �9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�9 0 desk  �8 0 months_list  �7 0 	days_list  �6 0 thetitle theTitle�5 0 weekday_pages  �4 0 weekend_pages  �3 0 ahead_pages  �2 0 tomorrow  �1 0 tmday_r tmDay_r�0 0 tmday tmDay�/ 0 tmdate tmDate�. 0 	tmmonth_r 	tmMonth_r�- 0 tmmonth tmMonth�, 0 tmyear tmYear�+ 0 theday theDay�* 0 themonth theMonth�) 0 thedate theDate�( 0 theyear theYear�' 0 
prompttext 
promptText�& &0 masterstogenerate mastersToGenerate� � � � � � � ��%�$ ��# ��"�!�  � � � � � � � � $(+�:>�BLV`dhlps{���������������������������$(,047@DHLPS[_cgkosw{~������������������ �%�3>N���Yit����
��	������'�7�E�U��% 
�$ 
prmp
�# 
appr�" 
�! .gtqpchltns    @   @ ns  
�  
TEXT� � 
� 
bool� 

� .misccurdldt    ��� null�  Q�
� 
wkdy
� 
day 
� 
mnth
� 
year
� 
inSL
� 
rslt
� 
errn���� 0 pagedate pageDate� 0 filedate fileDate
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt� "0 create_pagedate create_pageDate� "0 create_filedate create_fileDate�
 0 customedition customEdition
�	 
ret 
� 
mlsl� 0 newsgen newsGen� 0 featsgen featsGen� 0 	sportsgen 	sportsGen� 0 artsgen artsGen�<6��  ������v����� �&E�Y hO��a a a a a a a a a a a vE�Oa a a a a a  a !vE�O�a " 
 �a # a $&
 �a % a $& ��a &  Ha 'E�Oa (a )a *a +a ,a -a !vE�Oa .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8vE�Y U�a 9  <a :E�Oa ;a <a =a >a ?a @a !vE�Oa Aa Ba Ca Da Ea Fa !vE�Y �a G  
a HE�Y hY ��a I 
 �a J a $& �a K�6FO�a L  aa ME�Oa Na Oa Pa Qa Ra Sa !vE�Oa Ta Ua Va Wa Xa Ya !vE�Oa Za [a \a ]a ^a _a `a aa ba ca 8vE�Y ,�a d  #a eE�Oa fa glvE�Oa ha ia jmvE�Y hY hO*j ka lE�O�a m,�&E�O�kvE�O�a n,E�O�a o,�&E�O�kvE�O�a p,E�O��a qa r��a ! �&E�O_ sa t  )a ua vlhY hO�a w  a xE` yOa zE` {Y ���a |a r��a ! �&E�O_ sa }  )a ua vlhY hOa ~a ��� �a �,�&E^ O_ sa �  )a ua vlhY hOa �a ��� �a �,�&E^ O_ sa �  )a ua vlhY hO)��] ] ��+ �O)��] ] ��+ �O�a �  
)j+ �Y a �_ �%_ �%a �%E^ O�a �  1��] �a �ea ! E^ O_ sf  )a ua vlhY hY ��a � 1��] �a �ea ! E^ O_ sf  )a ua vlhY hY N�a �  E�a �  a �kvE^ Y .��] �a �ea ! E^ O_ sf  )a ua vlhY hY hO�a �  )] �l+ �Y =�a �  )] �l+ �Y )�a �  )] k+ �Y �a �  )] k+ �Y h� �l����� � 0 list_position  � ����� �  ������ 0 	this_item  �� 0 	this_list  �  � �������� 0 	this_item  �� 0 	this_list  �� 0 i  � ����
�� .corecnte****       ****
�� 
cobj�  # !k�j  kh ��/�  �Y h[OY��� ������������� "0 create_pagedate create_pageDate�� ����� �  ������������ 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  ��  � 	�������������������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  �� (0 thirtyonedaymonths ThirtyOneDayMonths�� "0 thirtydaymonths ThirtyDayMonths�� 0 i  �� 0 secondmonth secondMonth� -����������������������������.02?Crtv����������������� �� �� 0 pagedate pageDate
�� 
bool
�� .corecnte****       ****
�� 
cobj����������vE�O�����vE�O�� ��%�%�%�%�%�%E` OPYa�a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a a &	 �a   a & a !�%a "%�%E` OPY c�a # 	 �a $ a &	 �a % a & a &�%a '%�k%E` OPY -�a (  $a )�%a *%�%a +%�k%a ,%�%E` OPY h� ������������ "0 create_filedate create_fileDate�� ����� �  ������������ 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  ��  � 	�������������������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  �� 0 numdate numDate�� 0 i  �� 0 raw_nummonth raw_numMonth�� 0 nummonth numMonth� 
��%������K������
�� 
long
�� .corecnte****       ****
�� 
cobj�� 

�� 
ctxt�� �� 0 filedate fileDate�� \��&� 
�%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�� ��x���������� 0 pagegen pageGen�� ����� �  ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber��  � ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber� ����������������������������  0 masterdocument masterDocument
�� .aevtodocnull  �    alis�� 0 applymaster applyMaster��  0 drawembargobox drawEmbargoBox
�� 
bool�� "0 changelegaldate changeLegalDate�� 0 	cleansave 	cleanSave
�� 
pacd
�� 
svop
�� savoyes 
�� .CoReclosnull���     obj �� U� Q�j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ 	Y hO)��l+ 
O*�, 	*��l UU� ������������� 0 applymaster applyMaster�� ����� �  �������� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 
pagenumber 
pageNumber��  � �������� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 
pagenumber 
pageNumber� ,�����������������������������1����;HV_����������v���������	��
�� 
pacd
�� 
mspr
�� 
page
�� 
pmas
�� 
txtf
�� 
dPge
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt
�� 
mpgs
�� 
cobj�  
�� 
pilr
�� 
pnam��  ��  
�� 
kocl
�� 
sprd
�� 
prdt�� 
�� .corecrel****      � null
�� 
TEXT�����*�,���  �*�/*�k/�,FO�� *�/��/�*�k/l 
O�*�k/��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�l/�a "/�,FO�*�m/�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU� ��,���������� "0 changelegaldate changeLegalDate�� ����� �  ���� 0 	themaster 	theMaster��  � ���� 0 	themaster 	theMaster� t��8����B�������P�~Wbp
�� 
pacd
�� 
mspr
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj � 0 pagedate pageDate
�~ 
pcnt�� X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUU� �}��|�{���z�}  0 drawembargobox drawEmbargoBox�| �y��y �  �x�x 0 pagetype pageType�{  � �w�v�w 0 pagetype pageType�v 0 ebox eBox� ��u��t�s�r�q�p�����o�n��m�l��k�j���
�u 
docu
�t 
page
�s 
kocl
�r 
txtf
�q 
prdt
�p 
gbnd�o 
�n 
pcnt
�m .corecrel****      � null
�l 
ObSt
�k 
aobs
�j 
plck�z �� �*�k/ ���  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY D�a   ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU� �i	�h�g���f�i 0 	cleansave 	cleanSave�h �e��e �  �d�c�d 0 
pagenumber 
pageNumber�c 0 theslug theSlug�g  � �b�a�b 0 
pagenumber 
pageNumber�a 0 theslug theSlug� 	e�`�_	�^		#�]	9	;�\	N�[�Z	`�Y	b�X
�` 
pacd
�_ 
layr
�^ 
plck
�] 
pacl
�\ 
zero
�[ 
kfil�Z $0 freshpagesfolder freshPagesFolder�Y 0 filedate fileDate
�X .CoResavedocu        obj �f ^� Z*�, Se*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�͡%�%�%a %l UU� �W	r�V�U���T�W 0 customedition customEdition�V  �U  � �S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�S 0 
human_list  �R 0 masters_list  �Q 0 
slugs_list  �P 0 singles_list  �O 0 spreads_list  �N 0 hashline hashLine�M 0 thestart theStart�L 0 theend theEnd�K 0 x  �J 0 searchresult searchResult�I 0 
pagenumber 
pageNumber�H 0 hmaster hMaster�G 0 listpos listPos�F 0 	themaster 	theMaster�E 0 pagetype pageType�D 0 theslug theSlug� �	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�








"�C
0
4
8
<
@
D
H
L
P
T
X
\
`
d
h
l
p
t
x
|
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�
�	!%)-159=AEIMQUY\lptx|��������������������B������������A"�@�?�>�=�<�;�:�9�8�7�6P�5�4�3e�2r�1��0�/����������.�-�C %�B �A 
�@ 
TxtW
�? 
ctxt
�> 
Opts
�= 
SMod
�< SModGrep
�; 
STop�: 
�9 .R*chFindMtch���     TEXT
�8 
MSpc
�7 
SLin
�6 
ELin
�5 
FnIn
�4 
clin
�3 
RplP
�2 .R*chGSubutxt    ��� null
�1 
MTxt�0 0 list_position  
�/ 
cobj
�. 
bool�- 0 pagegen pageGen�T�����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �8*a �k/a �k/)a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�O �kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPY h[OY�OPUU� �,-�+�*���)�, 0 newsgen newsGen�+ �(��( �  �'�&�' &0 masterstogenerate mastersToGenerate�& 0 theday theDay�*  � �%�$�#�"�% &0 masterstogenerate mastersToGenerate�$ 0 theday theDay�# 0 p10_days  �" 0 p14_days  � b9CKOSV�!� ]cgkny��������������������������	"%+/36@GLPTW]cgknx������������������������!&*.1�! �  0 pagegen pageGen�)�� �� *�����+ Y ��  *�����+ Y hO�� $*��a a �+ O*a a a a �+ Y *a a a a �+ O�a  (*a a a a �+ O*a a  a !a "�+ Y *a #a $a %a &�+ O�a ' (*a (a )a *a +�+ O*a ,a -a .a /�+ Y *a 0a 1a 2a 3�+ Y hO�a 4 >�a 5 *a 6a 7a 8a 9�+ Y �a :  *a ;a <a =a >�+ Y hY hO�a ? Va @a AlvE�Oa Ba Ca Da E�vE�O�� *a Fa Ga Ha I�+ Y �� *a Ja Ka La M�+ Y hY hO�a N *a Oa Pa Qa R�+ Y hO�a S *a Ta Ua Va W�+ Y hO�a X *a Ya Za [a \�+ Y hO�a ] *a ^a _a `a a�+ Y h� �?������ 0 featsgen featsGen� ��� �  ��� &0 masterstogenerate mastersToGenerate� 0 theday theDay�  � ����� &0 masterstogenerate mastersToGenerate� 0 theday theDay� 0 p10_days  � 0 p14_days  � IKRW[_b��gkor|�������������������������� #.;>HLPTW�dhloy}������������� � 0 pagegen pageGen� ����  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . [a /a 0lvE�Oa 1a 2a 3a 4a 5a 6vE�O�� *a 7a 8a 9a :�+ Y �� *a ;a <a =a >�+ Y hY hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y h� �������� 0 artsgen artsGen� ��� �  �� &0 masterstogenerate mastersToGenerate�  � �� &0 masterstogenerate mastersToGenerate� ������
�	���!�
 �	 0 pagegen pageGen� >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h� �/������ 0 	sportsgen 	sportsGen� ��� �  �� &0 masterstogenerate mastersToGenerate�  � �� &0 masterstogenerate mastersToGenerate� S9AEIL�� RVZ]goswz��������������������������	'/37:AEILRVZ]glptw���������������� �  0 pagegen pageGen���� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h� �� ������
�� .aevtoappnull  �   � ****  k     9  J  Z  j  w  �  �����  ��  ��      O�� _�� u������ ~���� ������� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument
�� elnteNvr
�� 
pScr
�� 
UIAc�� 0 	genprompt 	genPrompt
�� elnteInA
�� .miscactvnull��� ��� obj 
�� .aevtodocnull  �    alis�� :�E�O�E�O� 	�*�,�,FUO*�k+ 	O� 	�*�,�,FUO� *j O�j U ascr  ��ޭ