FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			15/12/2012     �   0 	 C r e a t e d   o n 	 	 	 1 5 / 1 2 / 2 0 1 2      l     ��  ��     	Last updated		22/12/2012     �   2 	 L a s t   u p d a t e d 	 	 2 2 / 1 2 / 2 0 1 2      l     ��  ��     	Version:			1.7     �    	 V e r s i o n : 	 	 	 1 . 7     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l      E F G E p       H H ������ $0 freshpagesfolder freshPagesFolder��   F . ( Where the newly created files are saved    G � I I P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d D  J K J l     L���� L r      M N M m      O O � P P j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : N o      ���� $0 freshpagesfolder freshPagesFolder��  ��   K  Q R Q l     ��������  ��  ��   R  S T S l      U V W U p       X X ������  0 masterdocument masterDocument��   V #  The InDesign master document    W � Y Y :   T h e   I n D e s i g n   m a s t e r   d o c u m e n t T  Z [ Z l    \���� \ r     ] ^ ] m     _ _ � ` ` p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d ^ o      ����  0 masterdocument masterDocument��  ��   [  a b a l     ��������  ��  ��   b  c d c l     ��������  ��  ��   d  e f e l     �� g h��   g   Running code --    h � i i     R u n n i n g   c o d e   - - f  j k j l    l m n l O    o p o r     q r q m    ��
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
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i      � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k    � � �  � � � Z      � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l    � � � � r     � � � c     � � � l    ����� � I   �� � �
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
 1 6 - 1 7r uvu m  ��ww �xx  L e t t e r sv yzy m  ��{{ �||  A r t sz }�r} m  ��~~ �  A r t s   s p l i t�r  W o      �q�q 0 ahead_pages  �s   ��� = ����� o  ���p�p 0 desk  � m  ���� ���  A r t s� ��o� k  ���� ��� r  ����� m  ���� ��� ( A r t s   p a g e s   g e n e r a t o r� o      �n�n 0 thetitle theTitle� ��� r  ����� J  ���� ��� m  ���� ���  A r t s   ( p 1 1 )� ��m� m  ���� ���  A r t s   s p l i t�m  � o      �l�l 0 weekday_pages  � ��k� r  ����� J  ���� ��� m  ���� ���  A r t s   ( p 1 1 )� ��� m  ���� ���  A r t s   s p l i t� ��j� m  ���� ���  1 6 - 1 7   ( w e e k e n d )�j  � o      �i�i 0 ahead_pages  �k  �o  �z  �{  �  ��  0 ��� l ���h�g�f�h  �g  �f  � ��� l ���e���e  �   Get the date   � ���    G e t   t h e   d a t e� ��� r  ����� c  ����� l ����d�c� I ���b��
�b .gtqpchltns    @   @ ns  � o  ���a�a 0 	days_list  � �`��
�` 
prmp� m  ���� ��� 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :� �_��^
�_ 
appr� o  ���]�] 0 thetitle theTitle�^  �d  �c  � m  ���\
�\ 
TEXT� o      �[�[ 0 theday theDay� ��� l ������ Z �����Z�Y� = ����� 1  ���X
�X 
rslt� m  ���� ��� 
 f a l s e� R  ���W�V�
�W .ascrerr ****      � ****�V  � �U��T
�U 
errn� m  ���S�S���T  �Z  �Y  � 9 3 So choosing "Cancel" in the dialog ends the script   � ��� f   S o   c h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� Z  �����R�� = ���� o  ���Q�Q 0 theday theDay� m  � �� ��� , N o   d a y      w o r k i n g   a h e a d� k  �� ��� r  ��� m  �� ��� * A   d a t e   n e e d s   e n t e r i n g� o      �P�P 0 pagedate pageDate� ��O� r  ��� m  �� ��� 
 A h e a d� o      �N�N 0 filedate fileDate�O  �R  � k  ��� ��� r  %��� c  #��� l !��M�L� I !�K��
�K .gtqpchltns    @   @ ns  � o  �J�J 0 months_list  � �I��
�I 
prmp� m  �� ��� , P l e a s e   p i c k   t h e   m o n t h :� �H��G
�H 
appr� o  �F�F 0 thetitle theTitle�G  �M  �L  � m  !"�E
�E 
TEXT� o      �D�D 0 themonth theMonth� ��� Z &>���C�B� = &-��� 1  &)�A
�A 
rslt� m  ),�� ��� 
 f a l s e� R  0:�@�?�
�@ .ascrerr ****      � ****�?  � �>��=
�> 
errn� m  47�<�<���=  �C  �B  � ��� r  ?V��� c  ?T��� l ?R �;�:  n  ?R 1  NR�9
�9 
ttxt l ?N�8�7 I ?N�6
�6 .sysodlogaskr        TEXT m  ?B � * P l e a s e   t y p e   t h e   d a t e : �5	
�5 
dtxt m  EH

 �  	 �4�3
�4 
appr o  IJ�2�2 0 thetitle theTitle�3  �8  �7  �;  �:  � m  RS�1
�1 
TEXT� o      �0�0 0 thedate theDate�  Z Wo�/�. = W^ 1  WZ�-
�- 
rslt m  Z] � 
 f a l s e R  ak�,�+
�, .ascrerr ****      � ****�+   �*�)
�* 
errn m  eh�(�(���)  �/  �.    r  p� c  p� l p��'�& n  p� 1  ��%
�% 
ttxt l p �$�#  I p�"!"
�" .sysodlogaskr        TEXT! m  ps## �$$ * P l e a s e   t y p e   t h e   y e a r :" �!%&
�! 
dtxt% m  vy'' �((  & � )�
�  
appr) o  z{�� 0 thetitle theTitle�  �$  �#  �'  �&   m  ���
� 
TEXT o      �� 0 theyear theYear *+* Z ��,-��, = ��./. 1  ���
� 
rslt/ m  ��00 �11 
 f a l s e- R  ����2
� .ascrerr ****      � ****�  2 �3�
� 
errn3 m  �������  �  �  + 454 n ��676 I  ���8�� "0 create_pagedate create_pageDate8 9:9 o  ���� 0 theday theDay: ;<; o  ���� 0 themonth theMonth< =>= o  ���� 0 thedate theDate> ?@? o  ���� 0 theyear theYear@ A�A o  ���� 0 months_list  �  �  7  f  ��5 B�B n ��CDC I  ���
E�	�
 "0 create_filedate create_fileDateE FGF o  ���� 0 theday theDayG HIH o  ���� 0 themonth theMonthI JKJ o  ���� 0 thedate theDateK LML o  ���� 0 theyear theYearM N�N o  ���� 0 months_list  �  �	  D  f  ���  � OPO l ����� �  �  �   P QRQ l ����ST��  S   Get the pages to create   T �UU 0   G e t   t h e   p a g e s   t o   c r e a t eR V��V Z  ��WX��YW = ��Z[Z l ��\����\ o  ������ 0 desk  ��  ��  [ m  ��]] �^^  C u s t o m   e d i t i o nX l ��_`a_ n ��bcb I  ���������� 0 customedition customEdition��  ��  c  f  ��` U O The customEdition function itself gets the pages to generate from TextWrangler   a �dd �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r��  Y k  ��ee fgf r  ��hih l ��j����j b  ��klk b  ��mnm b  ��opo m  ��qq �rr D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?p o  ����
�� 
ret n o  ����
�� 
ret l m  ��ss �tt X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .��  ��  i o      ���� 0 
prompttext 
promptTextg uvu Z  ��wxy��w = ��z{z o  ������ 0 theday theDay{ m  ��|| �}} , N o   d a y      w o r k i n g   a h e a dx k  �	~~ � r  ����� l �������� I ������
�� .gtqpchltns    @   @ ns  � o  ������ 0 ahead_pages  � ����
�� 
prmp� o  ������ 0 
prompttext 
promptText� ����
�� 
appr� o  ������ 0 thetitle theTitle� �����
�� 
mlsl� m  ����
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z �	������� = ����� 1  ����
�� 
rslt� m  ����
�� boovfals� R  ������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ���������  ��  ��  ��  y ��� > ��� o  ���� 0 theday theDay� m  �� ���  S a t u r d a y� ��� k  <�� ��� r  %��� l #������ I #����
�� .gtqpchltns    @   @ ns  � o  ���� 0 weekday_pages  � ����
�� 
prmp� o  ���� 0 
prompttext 
promptText� ����
�� 
appr� o  ���� 0 thetitle theTitle� �����
�� 
mlsl� m  ��
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z &<������� = &+��� 1  &)��
�� 
rslt� m  )*��
�� boovfals� R  .8�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  25��������  ��  ��  ��  � ��� = ?D��� o  ?@���� 0 theday theDay� m  @C�� ���  S a t u r d a y� ���� Z  G������� = GL��� l GH������ o  GH���� 0 desk  ��  ��  � m  HK�� ���  A r t s� l OV���� r  OV��� J  OT�� ���� m  OR�� ���  1 6 - 1 7   ( w e e k e n d )��  � o      ���� &0 masterstogenerate mastersToGenerate� ] W The arts desk only has one page on Saturday, so there's no point in prompting the user   � ��� �   T h e   a r t s   d e s k   o n l y   h a s   o n e   p a g e   o n   S a t u r d a y ,   s o   t h e r e ' s   n o   p o i n t   i n   p r o m p t i n g   t h e   u s e r��  � k  Y��� ��� r  Yj��� l Yh������ I Yh����
�� .gtqpchltns    @   @ ns  � o  YZ���� 0 weekend_pages  � ����
�� 
prmp� o  [\���� 0 
prompttext 
promptText� ����
�� 
appr� o  ]^���� 0 thetitle theTitle� �����
�� 
mlsl� m  ab��
�� boovtrue��  ��  ��  � o      ���� &0 masterstogenerate mastersToGenerate� ���� Z k�������� = kp��� 1  kn��
�� 
rslt� m  no��
�� boovfals� R  s}�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  wz��������  ��  ��  ��  ��  ��  v ��� l ����������  ��  ��  � ���� Z  �������� = ����� o  ������ 0 desk  � m  ���� ���  N e w s� l ������ n ����� I  ��������� 0 newsgen newsGen� ��� o  ������ &0 masterstogenerate mastersToGenerate� ���� o  ������ 0 theday theDay��  ��  �  f  ��� S M theDay is passed to distinguish between, for example, Saturday & weekday TV    � ��� �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  � ��� = ����� o  ������ 0 desk  � m  ���� ���  F e a t u r e s� ��� n ����� I  ��������� 0 featsgen featsGen� ��� o  ������ &0 masterstogenerate mastersToGenerate� ���� o  ������ 0 theday theDay��  ��  �  f  ��� ��� = ��� � o  ������ 0 desk    m  �� � 
 S p o r t�  l �� n ��	 I  ����
���� 0 	sportsgen 	sportsGen
 �� o  ������ &0 masterstogenerate mastersToGenerate��  ��  	  f  ��   No day checks    �    N o   d a y   c h e c k s  = �� o  ������ 0 desk   m  �� �  A r t s �� l �� n �� I  �������� 0 artsgen artsGen �� o  ������ &0 masterstogenerate mastersToGenerate��  ��    f  ��   No day checks    �    N o   d a y   c h e c k s��  ��  ��  ��   �  l     ��������  ��  ��    l     ��������  ��  ��    !  l     ��"#��  " I C list_position: Returns theItem's position in theList as an integer   # �$$ �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e r! %&% i    '(' I      ��)���� 0 list_position  ) *+* o      �� 0 	this_item  + ,�~, o      �}�} 0 	this_list  �~  ��  ( Y     "-�|./�{- Z   01�z�y0 =   232 n    454 4    �x6
�x 
cobj6 o    �w�w 0 i  5 o    �v�v 0 	this_list  3 o    �u�u 0 	this_item  1 L    77 o    �t�t 0 i  �z  �y  �| 0 i  . m    �s�s / I   	�r8�q
�r .corecnte****       ****8 o    �p�p 0 	this_list  �q  �{  & 9:9 l     �o�n�m�o  �n  �m  : ;<; l     �l�k�j�l  �k  �j  < =>= l     �i?@�i  ? l f create_pageDate: Assembles the date used on the InDesign pages, and deals with some Saturday oddities   @ �AA �   c r e a t e _ p a g e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l s   w i t h   s o m e   S a t u r d a y   o d d i t i e s> BCB i    DED I      �hF�g�h "0 create_pagedate create_pageDateF GHG o      �f�f 0 theday theDayH IJI o      �e�e 0 themonth theMonthJ KLK o      �d�d 0 thedate theDateL MNM o      �c�c 0 theyear theYearN O�bO o      �a�a 0 months_list  �b  �g  E k    �PP QRQ r     
STS J     UU VWV m     XX �YY  J a n u a r yW Z[Z m    \\ �]] 
 M a r c h[ ^_^ m    `` �aa  M a y_ bcb m    dd �ee  J u l yc fgf m    hh �ii  A u g u s tg j�`j m    kk �ll  O c t o b e r�`  T o      �_�_ (0 thirtyonedaymonths ThirtyOneDayMonthsR mnm r    opo J    qq rsr m    tt �uu 
 A p r i ls vwv m    xx �yy  J u n ew z{z m    || �}}  S e p t e m b e r{ ~�^~ m     ���  N o v e m b e r�^  p o      �]�] "0 thirtydaymonths ThirtyDayMonthsn ��� l   �\�[�Z�\  �[  �Z  � ��Y� Z   �����X� >   ��� o    �W�W 0 theday theDay� m    �� ���  S a t u r d a y� l   -���� k    -�� ��� r    +��� l   '��V�U� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� o    �T�T 0 theday theDay� m    �� ���   � o    �S�S 0 themonth theMonth� m     �� ���   � o   ! "�R�R 0 thedate theDate� m   # $�� ���   � o   % &�Q�Q 0 theyear theYear�V  �U  � o      �P�P 0 pagedate pageDate� ��O� l  , ,�N�M�L�N  �M  �L  �O  � + % Does the page date for every weekday   � ��� J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y� ��� F   0 K��� F   0 A��� =  0 5��� o   0 1�K�K 0 theday theDay� m   1 4�� ���  S a t u r d a y� =  8 =��� o   8 9�J�J 0 thedate theDate� m   9 <�� ���  3 0� E  D G��� o   D E�I�I "0 thirtydaymonths ThirtyDayMonths� o   E F�H�H 0 themonth theMonth� ��� l  N ����� k   N ��� ��� Y   N z��G���F� l  \ u���� Z  \ u���E�D� =  \ d��� n   \ b��� 4   ] b�C�
�C 
cobj� o   ` a�B�B 0 i  � o   \ ]�A�A 0 months_list  � o   b c�@�@ 0 themonth theMonth� r   g q��� l  g o��?�>� n   g o��� 4   h o�=�
�= 
cobj� l  k n��<�;� [   k n��� o   k l�:�: 0 i  � m   l m�9�9 �<  �;  � o   g h�8�8 0 months_list  �?  �>  � o      �7�7 0 secondmonth secondMonth�E  �D  � V P This repeat block here grabs the name of the next month to use in the page date   � ��� �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�G 0 i  � m   Q R�6�6 � I  R W�5��4
�5 .corecnte****       ****� o   R S�3�3 0 months_list  �4  �F  � ��� l  { ����� r   { ���� l  { ���2�1� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� m   { ~�� ���   S a t u r d a y / S u n d a y  � o   ~ �0�0 0 themonth theMonth� m   � ��� ���    3 0 -� o   � ��/�/ 0 secondmonth secondMonth� m   � ��� ���    1  � o   � ��.�. 0 theyear theYear�2  �1  � o      �-�- 0 pagedate pageDate� P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"   � ��� �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 "� ��,� l  � ��+�*�)�+  �*  �)  �,  � 7 1 Deals with Saturdays at the end of 30-day months   � ��� b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s� ��� F   � ���� F   � ���� =  � ���� o   � ��(�( 0 theday theDay� m   � ��� ���  S a t u r d a y� =  � ���� o   � ��'�' 0 thedate theDate� m   � ��� �    3 1� E  � � o   � ��&�& (0 thirtyonedaymonths ThirtyOneDayMonths o   � ��%�% 0 themonth theMonth�  l  � � k   � � 	
	 Y   � ��$�# Z  � ��"�! =  � � n   � � 4   � �� 
�  
cobj o   � ��� 0 i   o   � ��� 0 months_list   o   � ��� 0 themonth theMonth r   � � l  � ��� n   � � 4   � ��
� 
cobj l  � ��� [   � � o   � ��� 0 i   m   � ��� �  �   o   � ��� 0 months_list  �  �   o      �� 0 secondmonth secondMonth�"  �!  �$ 0 i   m   � ���  I  � ���
� .corecnte****       **** o   � ��� 0 months_list  �  �#  
   r   � �!"! l  � �#��# b   � �$%$ b   � �&'& b   � �()( b   � �*+* b   � �,-, m   � �.. �//   S a t u r d a y / S u n d a y  - o   � ��� 0 themonth theMonth+ m   � �00 �11    3 1 -) o   � ��� 0 secondmonth secondMonth' m   � �22 �33    1  % o   � ��� 0 theyear theYear�  �  " o      �
�
 0 pagedate pageDate  4�	4 l  � �����  �  �  �	   7 1 Deals with Saturdays at the end of 31-day months    �55 b   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s 676 F   �898 F   �:;: =  � �<=< o   � ��� 0 theday theDay= m   � �>> �??  S a t u r d a y; ? @A@ o  �� 0 thedate theDateA m  BB �CC  2 79 = DED o  �� 0 themonth theMonthE m  FF �GG  F e b r u a r y7 HIH l +JKLJ k  +MM NON r  )PQP l %R��R b  %STS b  #UVU b  WXW m  YY �ZZ 2 S a t u r d a y / S u n d a y   F e b r u a r y  X o  � �  0 thedate theDateV m  "[[ �\\  - M a r c h   1  T o  #$���� 0 theyear theYear�  �  Q o      ���� 0 pagedate pageDateO ]��] l **��������  ��  ��  ��  K N H Deals with Saturdays at the end of February. Blunt but right until 2032   L �^^ �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   B l u n t   b u t   r i g h t   u n t i l   2 0 3 2I _`_ F  .Kaba F  .?cdc = .3efe o  ./���� 0 theday theDayf m  /2gg �hh  S a t u r d a yd = 6;iji o  67���� 0 thedate theDatej m  7:kk �ll  3 1b = BGmnm o  BC���� 0 themonth theMonthn m  CFoo �pp  D e c e m b e r` qrq l Nastus k  Navv wxw r  N_yzy l N[{����{ b  N[|}| b  NW~~ b  NS��� m  NQ�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  QR���� 0 theyear theYear m  SV�� ���  -} l WZ������ [  WZ��� o  WX���� 0 theyear theYear� m  XY���� ��  ��  ��  ��  z o      ���� 0 pagedate pageDatex ���� l ``��������  ��  ��  ��  t 2 , Deals with Saturdays at the end of December   u ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e rr ��� = di��� o  de���� 0 theday theDay� m  eh�� ���  S a t u r d a y� ���� l l����� k  l��� ��� r  l���� l l������� b  l���� b  l���� b  l��� b  l{��� b  lw��� b  lu��� b  lq��� m  lo�� ���   S a t u r d a y / S u n d a y  � o  op���� 0 themonth theMonth� m  qt�� ���   � o  uv���� 0 thedate theDate� m  wz�� ���  -� l {~������ [  {~��� o  {|���� 0 thedate theDate� m  |}���� ��  ��  � m  ��� ���   � o  ������ 0 theyear theYear��  ��  � o      ���� 0 pagedate pageDate� ���� l ����������  ��  ��  ��  � Z T Does the page date for every normal Saturday. At the end to avoid the special cases   � ��� �   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y .   A t   t h e   e n d   t o   a v o i d   t h e   s p e c i a l   c a s e s��  �X  �Y  C ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � J D create_fileDate: Assembles the date used in the InDesign file names   � ��� �   c r e a t e _ f i l e D a t e :   A s s e m b l e s   t h e   d a t e   u s e d   i n   t h e   I n D e s i g n   f i l e   n a m e s� ��� i    ��� I      ������� "0 create_filedate create_fileDate� ��� o      ���� 0 theday theDay� ��� o      ���� 0 themonth theMonth� ��� o      ���� 0 thedate theDate� ��� o      ���� 0 theyear theYear� ���� o      ���� 0 months_list  ��  ��  � k     [�� ��� Z     ������ A    ��� c     ��� o     ���� 0 thedate theDate� m    ��
�� 
long� m    �� ���  1 0� l   ���� r    ��� l   ������ b    ��� m    	�� ���  0� o   	 
���� 0 thedate theDate��  ��  � o      ���� 0 numdate numDate� J D If the date is 1-9 this adds a leading zero to use in the file name   � ��� �   I f   t h e   d a t e   i s   1 - 9   t h i s   a d d s   a   l e a d i n g   z e r o   t o   u s e   i n   t h e   f i l e   n a m e��  � r    ��� o    ���� 0 thedate theDate� o      ���� 0 numdate numDate� ��� l   ��������  ��  ��  � ��� Y    7�������� l  " 2���� Z  " 2������� =  " (��� n   " &��� 4   # &���
�� 
cobj� o   $ %���� 0 i  � o   " #���� 0 months_list  � o   & '���� 0 themonth theMonth� r   + .��� o   + ,���� 0 i  � o      ���� 0 raw_nummonth raw_numMonth��  ��  � F @ Gets the month number and, if less than 10, adds a leading zero   � ��� �   G e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a   l e a d i n g   z e r o�� 0 i  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 months_list  ��  ��  � ��� Z   8 I������ A  8 ;   o   8 9���� 0 raw_nummonth raw_numMonth m   9 :���� 
� r   > C l  > A���� b   > A m   > ? �  0 o   ? @���� 0 raw_nummonth raw_numMonth��  ��   o      ���� 0 nummonth numMonth��  � r   F I	
	 o   F G���� 0 raw_nummonth raw_numMonth
 o      ���� 0 nummonth numMonth�  l  J J��������  ��  ��   �� l  J [ r   J [ l  J Y���� b   J Y b   J M o   J K���� 0 numdate numDate o   K L���� 0 nummonth numMonth l  M X���� n   M X 7 N X��
�� 
ctxt m   R T����  m   U W����  o   M N���� 0 theyear theYear��  ��  ��  ��   o      ���� 0 filedate fileDate ? 9 Combines the date, month and last two digits of the year    � r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r��  �  l     ��������  ��  ��    !  l     ��������  ��  ��  ! "#" l     ��$%��  $ Y S pageGen: Opens the master file and calls functions to construct the requested page   % �&& �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g e# '(' l     ��)*��  ) ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   * �++ �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e r( ,-, l     ��./��  . @ : The page number is that of the left-hand page for spreads   / �00 t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d s- 121 i    343 I      ��5���� 0 pagegen pageGen5 676 o      ���� 0 pagetype pageType7 898 o      ���� 0 	themaster 	theMaster9 :;: o      ���� 0 theslug theSlug; <��< o      ���� 0 
pagenumber 
pageNumber��  ��  4 O     T=>= k    S?? @A@ I   	��B��
�� .aevtodocnull  �    alisB o    ����  0 masterdocument masterDocument��  A CDC n  
 EFE I    ��G���� 0 applymaster applyMasterG HIH o    ���� 0 	themaster 	theMasterI JKJ o    ���� 0 pagetype pageTypeK L��L o    ���� 0 
pagenumber 
pageNumber��  ��  F  f   
 D MNM l   ����~��  �  �~  N OPO Z    #QR�}�|Q E    STS o    �{�{ 0 	themaster 	theMasterT m    UU �VV 
 N e w s -R l   WXYW n   Z[Z I    �z\�y�z  0 drawembargobox drawEmbargoBox\ ]�x] o    �w�w 0 pagetype pageType�x  �y  [  f    X 2 , Hyphen needed to exclude Feat-NewsReviews-*   Y �^^ X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *�}  �|  P _`_ l  $ $�v�u�t�v  �u  �t  ` aba Z   $ <cd�s�rc G   $ /efe =  $ 'ghg o   $ %�q�q 0 	themaster 	theMasterh m   % &ii �jj  F e a t - T Vf =  * -klk o   * +�p�p 0 	themaster 	theMasterl m   + ,mm �nn  F e a t - R e d L i s td n  2 8opo I   3 8�oq�n�o "0 changelegaldate changeLegalDateq r�mr o   3 4�l�l 0 	themaster 	theMaster�m  �n  p  f   2 3�s  �r  b sts l  = =�k�j�i�k  �j  �i  t uvu n  = Dwxw I   > D�hy�g�h 0 	cleansave 	cleanSavey z{z o   > ?�f�f 0 
pagenumber 
pageNumber{ |�e| o   ? @�d�d 0 theslug theSlug�e  �g  x  f   = >v }�c} O  E S~~ I  K R�b�a�
�b .CoReclosnull���     obj �a  � �`��_
�` 
svop� m   M N�^
�^ savoyes �_   l  E H��]�\� 1   E H�[
�[ 
pacd�]  �\  �c  > m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  2 ��� l     �Z�Y�X�Z  �Y  �X  � ��� l     �W�V�U�W  �V  �U  � ��� l     �T���T  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    ��� I      �S��R�S 0 applymaster applyMaster� ��� o      �Q�Q 0 	themaster 	theMaster� ��� o      �P�P 0 pagetype pageType� ��O� o      �N�N 0 
pagenumber 
pageNumber�O  �R  � O    ���� O   ���� Z   
�����M� =  
 ��� o   
 �L�L 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    �K�
�K 
mspr� o    �J�J 0 	themaster 	theMaster� n      ��� 1    �I
�I 
pmas� 4    �H�
�H 
page� m    �G�G � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ��F� Z    ����E�D� H     �� E    ��� o    �C�C 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� ��� I  # 3�B��
�B .InESovrrobj         obj � n   # *��� 4   ' *�A�
�A 
txtf� m   ( )�� ���  E d i t i o n   d a t e� 4   # '�@�
�@ 
mspr� o   % &�?�? 0 	themaster 	theMaster� �>��=
�> 
dPge� 4   + /�<�
�< 
page� m   - .�;�; �=  � ��� l  4 ?���� r   4 ?��� o   4 5�:�: 0 pagedate pageDate� l     ��9�8� n      ��� 1   < >�7
�7 
pcnt� n   5 <��� 4   9 <�6�
�6 
txtf� m   : ;�� ���  E d i t i o n   d a t e� 4   5 9�5�
�5 
page� m   7 8�4�4 �9  �8  �   Sets the date   � ���    S e t s   t h e   d a t e� ��� Q   @ p���3� l  C g���� I  C g�2��
�2 .InESovrrobj         obj � l  C ^��1�0� 6  C ^��� n   C K��� 2   I K�/
�/ 
cobj� n   C I��� 1   G I�.
�. 
mpgs� 4   C G�-�
�- 
page� m   E F�,�, � =  N ]��� n  O W��� 1   S W�+
�+ 
pnam� 1   O S�*
�* 
pilr� m   X \�� ���  W o r k�1  �0  � �)��(
�) 
dPge� 4   _ c�'�
�' 
page� m   a b�&�& �(  � o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items   � ��� �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s� R      �%�$�#
�% .ascrerr ****      � ****�$  �#  �3  � ��"� Z   q ����!� � >  q v��� o   q r�� 0 
pagenumber 
pageNumber� m   r u�� ���  � l  y ����� k   y ��� ��� I  y ��� 
� .InESovrrobj         obj � n   y � 4   } ��
� 
txtf m   ~ � �  P a g e   n u m b e r 4   y }�
� 
mspr o   { |�� 0 	themaster 	theMaster  ��
� 
dPge 4   � ��
� 
page m   � ��� �  � 	�	 r   � �

 o   � ��� 0 
pagenumber 
pageNumber l     �� n       1   � ��
� 
pcnt n   � � 4   � ��
� 
txtf m   � � �  P a g e   n u m b e r 4   � ��
� 
page m   � ��� �  �  �  � G A Mostly to skip the front, which doesn't have a page number frame   � � �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e�!  �   �"  � 6 0 The X-Blanks have no page number or date frames   � � `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s�E  �D  �F  �  =  � � o   � ��� 0 pagetype pageType m   � � �  s p r e a d � k   ��   l  � �!"#! I  � ���$
� .corecrel****      � null�  $ �
%&
�
 
kocl% m   � ��	
�	 
sprd& �'�
� 
prdt' K   � �(( �)�
� 
pmas) 4   � ��*
� 
mspr* o   � ��� 0 	themaster 	theMaster�  �  " G A Creates a two-page spread at pages 2 & 3 with the master applied   # �++ �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e d  ,�, Z   ��-.�� - H   � �// E   � �010 o   � ����� 0 	themaster 	theMaster1 m   � �22 �33  X - B l a n k. k   ��44 565 I  � ���78
�� .InESovrrobj         obj 7 n   � �9:9 4   � ���;
�� 
txtf; m   � �<< �==  L - E d i t i o n   d a t e: 4   � ���>
�� 
mspr> o   � ����� 0 	themaster 	theMaster8 ��?��
�� 
dPge? 4   � ���@
�� 
page@ m   � ����� ��  6 ABA I  � ���CD
�� .InESovrrobj         obj C n   � �EFE 4   � ���G
�� 
txtfG m   � �HH �II  R - E d i t i o n   d a t eF 4   � ���J
�� 
msprJ o   � ����� 0 	themaster 	theMasterD ��K��
�� 
dPgeK 4   � ���L
�� 
pageL m   � ����� ��  B MNM l  � OPQO r   � RSR o   � ����� 0 pagedate pageDateS l     T����T n      UVU 1   � ���
�� 
pcntV n   � �WXW 4   � ���Y
�� 
txtfY m   � �ZZ �[[  L - E d i t i o n   d a t eX 4   � ���\
�� 
page\ m   � ����� ��  ��  P * $ Sets the date on the left-hand page   Q �]] H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g eN ^_^ l `ab` r  cdc o  ���� 0 pagedate pageDated l     e����e n      fgf 1  ��
�� 
pcntg n  hih 4  ��j
�� 
txtfj m  
kk �ll  R - E d i t i o n   d a t ei 4  ��m
�� 
pagem m  ���� ��  ��  a + % Sets the date on the right-hand page   b �nn J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e_ opo Q  dqr��q k  [ss tut I 6��vw
�� .InESovrrobj         obj v l -x����x 6 -yzy n  {|{ 2  ��
�� 
cobj| n  }~} 1  ��
�� 
mpgs~ 4  ��
�� 
page m  ���� z = ,��� n &��� 1  "&��
�� 
pnam� 1  "��
�� 
pilr� m  '+�� ���  W o r k��  ��  w �����
�� 
dPge� 4  .2���
�� 
page� m  01���� ��  u ���� I 7[����
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
page� m  UV���� ��  ��  r R      ������
�� .ascrerr ****      � ****��  ��  ��  p ���� Z  e�������� > ej��� o  ef���� 0 
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
page� m  ������ ��  � ��� r  ����� o  ������ 0 
pagenumber 
pageNumber� l     ������ n      ��� 1  ����
�� 
pcnt� n  ����� 4  �����
�� 
txtf� m  ���� ���  L - P a g e   n u m b e r� 4  �����
�� 
page� m  ������ ��  ��  � ���� r  ����� l �������� c  ����� l �������� [  ����� o  ������ 0 
pagenumber 
pageNumber� m  ������ ��  ��  � m  ����
�� 
TEXT��  ��  � l     ������ n      ��� 1  ����
�� 
pcnt� n  ����� 4  �����
�� 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  �����
�� 
page� m  ������ ��  ��  ��  ��  ��  ��  �  �   �  �  �M  � l   ������ 1    ��
�� 
pacd��  ��  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List   � ��� �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t� ��� i    ��� I      ������� "0 changelegaldate changeLegalDate� ���� o      ���� 0 	themaster 	theMaster��  ��  � O     W��� O    V��� Z   
 U������ =  
 ��� o   
 ���� 0 	themaster 	theMaster� m    �� ���  F e a t - R e d L i s t� k    ,�� ��� I    ����
�� .InESovrrobj         obj � n    ��� 4    ���
�� 
txtf� m    �� ���  L e g a l   d a t e� 4    �� 
�� 
mspr  o    ���� 0 	themaster 	theMaster� ����
�� 
dPge 4    ��
�� 
page m    ���� ��  � �� r   ! , o   ! "�� 0 pagedate pageDate l     �~�} n       1   ) +�|
�| 
pcnt n   " )	
	 4   & )�{
�{ 
txtf m   ' ( �  L e g a l   d a t e
 4   " &�z
�z 
page m   $ %�y�y �~  �}  ��  �  =  / 2 o   / 0�x�x 0 	themaster 	theMaster m   0 1 �  F e a t - T V �w k   5 Q  I  5 E�v
�v .InESovrrobj         obj  n   5 < 4   9 <�u
�u 
txtf m   : ; �  L e g a l   d a t e 4   5 9�t 
�t 
mspr  o   7 8�s�s 0 	themaster 	theMaster �r!�q
�r 
dPge! 4   = A�p"
�p 
page" m   ? @�o�o �q   #�n# r   F Q$%$ o   F G�m�m 0 pagedate pageDate% l     &�l�k& n      '(' 1   N P�j
�j 
pcnt( n   G N)*) 4   K N�i+
�i 
txtf+ m   L M,, �--  L e g a l   d a t e* 4   G K�h.
�h 
page. m   I J�g�g �l  �k  �n  �w  ��  � l   /�f�e/ 1    �d
�d 
pacd�f  �e  � m     00�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 121 l     �c�b�a�c  �b  �a  2 343 l     �`�_�^�`  �_  �^  4 565 l     �]78�]  7 c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   8 �99 �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e6 :;: i    <=< I      �\>�[�\  0 drawembargobox drawEmbargoBox> ?�Z? o      �Y�Y 0 pagetype pageType�Z  �[  = O     �@A@ O    �BCB Z    �DEF�XD =   GHG o    �W�W 0 pagetype pageTypeH m    II �JJ  s i n g l eE k    EKK LML O    .NON r    -PQP I   +�V�UR
�V .corecrel****      � null�U  R �TST
�T 
koclS m    �S
�S 
txtfT �RU�Q
�R 
prdtU K    'VV �PWX
�P 
gbndW J    #YY Z[Z m    \\ @,      [ ]^] m    __ �b�     ^ `a` m     bb @\�     a c�Oc m     !dd �I      �O  X �Ne�M
�N 
pcnte m   $ %ff �gg " E m b a r g o e d   s t o r i e s�M  �Q  Q o      �L�L 0 ebox eBoxO 4    �Kh
�K 
pageh m    �J�J M iji l  / =klmk r   / =non 4   / 7�Ip
�I 
ObStp m   3 6qq �rr " N e w s   N I B   b o x   t i n to l     s�H�Gs n      tut 1   8 <�F
�F 
aobsu o   7 8�E�E 0 ebox eBox�H  �G  l K E Set separately as it throws an error if you try to do it on creation   m �vv �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o nj w�Dw r   > Exyx m   > ?�C
�C boovtruey n      z{z 1   @ D�B
�B 
plck{ o   ? @�A�A 0 ebox eBox�D  F |}| =  H M~~ o   H I�@�@ 0 pagetype pageType m   I L�� ���  s p r e a d} ��?� k   P ��� ��� O   P o��� r   W n��� I  W l�>�=�
�> .corecrel****      � null�=  � �<��
�< 
kocl� m   Y Z�;
�; 
txtf� �:��9
�: 
prdt� K   [ h�� �8��
�8 
gbnd� J   \ b�� ��� m   \ ]�� @,      � ��� m   ] ^�� �b�     � ��� m   ^ _�� @\�     � ��7� m   _ `�� �I      �7  � �6��5
�6 
pcnt� m   c f�� ��� " E m b a r g o e d   s t o r i e s�5  �9  � o      �4�4 0 ebox eBox� 4   P T�3�
�3 
page� m   R S�2�2 � ��� r   p ~��� 4   p x�1�
�1 
ObSt� m   t w�� ��� " N e w s   N I B   b o x   t i n t� l     ��0�/� n      ��� 1   y }�.
�. 
aobs� o   x y�-�- 0 ebox eBox�0  �/  � ��,� r    ���� m    ��+
�+ boovtrue� n      ��� 1   � ��*
�* 
plck� o   � ��)�) 0 ebox eBox�,  �?  �X  C l   ��(�'� 4   �&�
�& 
docu� m    �%�% �(  �'  A m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ; ��� l     �$�#�"�$  �#  �"  � ��� l     �!� ��!  �   �  � ��� l     ����  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i     #��� I      ���� 0 	cleansave 	cleanSave� ��� o      �� 0 
pagenumber 
pageNumber� ��� o      �� 0 theslug theSlug�  �  � O     ]��� O    \��� k   
 [�� ��� r   
 ��� m   
 �
� boovtrue� n      ��� 1    �
� 
plck� 4    ��
� 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    �
� boovtrue� n      ��� 1    �
� 
plck� 4    ��
� 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     �
� 
pacl� ��� l  " "����  �  �  � ��� Z   " I����� l  " '���� =  " '��� `   " %��� o   " #�� 0 
pagenumber 
pageNumber� m   # $�
�
 � m   % &�	�	  �  �  � l  * 2���� r   * 2��� J   * .�� ��� m   * +�� @.      � ��� m   + ,�� @&      �  � l     ���� 1   . 1�
� 
zero�  �  � ( " For left-hand singles and spreads   � ��� D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s� ��� l  5 :���� =  5 :��� `   5 8�	 � o   5 6�� 0 
pagenumber 
pageNumber	  m   6 7�� � m   8 9� �  �  �  � 	��	 l  = E				 r   = E			 J   = A		 				 m   = >	
	
 @"      		 	��	 m   > ?		 @&      ��  	 l     	����	 1   A D��
�� 
zero��  ��  	   For right-hand singles   	 �		 .   F o r   r i g h t - h a n d   s i n g l e s��  �  � 			 l  J J��������  ��  ��  	 	��	 I  J [����	
�� .CoResavedocu        obj ��  	 ��	��
�� 
kfil	 b   L W			 b   L S			 b   L Q			 b   L O			 o   L M���� $0 freshpagesfolder freshPagesFolder	 o   M N���� 0 theslug theSlug	 m   O P		 �		  _	 o   Q R���� 0 filedate fileDate	 m   S V		 �		 
 . i n d d��  ��  � l   	 ����	  1    ��
�� 
pacd��  ��  � m     	!	!�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	"	#	" l     ��������  ��  ��  	# 	$	%	$ l     ��������  ��  ��  	% 	&	'	& l     ��	(	)��  	( f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	) �	*	* �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	' 	+	,	+ i   $ '	-	.	- I      �������� 0 customedition customEdition��  ��  	. k    �	/	/ 	0	1	0 l     ��������  ��  ��  	1 	2	3	2 l     ��	4	5��  	4 | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	5 �	6	6 �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	3 	7	8	7 l     ��	9	:��  	9 a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	: �	;	; �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	8 	<	=	< l     ��	>	?��  	> [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	? �	@	@ �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	= 	A	B	A l     ��������  ��  ��  	B 	C	D	C l     ��	E	F��  	E > 8 The human-friendly names used in the TextWrangler file	   	F �	G	G p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		D 	H	I	H r     U	J	K	J J     S	L	L 	M	N	M m     	O	O �	P	P 
 F r o n t	N 	Q	R	Q m    	S	S �	T	T  S a t F r o n t	R 	U	V	U m    	W	W �	X	X  H o m e _ S	V 	Y	Z	Y m    	[	[ �	\	\  H o m e _ L	Z 	]	^	] m    	_	_ �	`	`  H o m e _ R	^ 	a	b	a m    	c	c �	d	d  F o r e i g n _ S	b 	e	f	e m    	g	g �	h	h  F o r e i g n _ L	f 	i	j	i m    	k	k �	l	l  F o r e i g n _ R	j 	m	n	m m    		o	o �	p	p  S t r u g g l e _ S	n 	q	r	q m   	 
	s	s �	t	t  S t r u g g l e _ L	r 	u	v	u m   
 	w	w �	x	x  S t r u g g l e _ R	v 	y	z	y m    	{	{ �	|	|  N e w s R e v i e w s _ S	z 	}	~	} m    		 �	�	�  N e w s R e v i e w s _ L	~ 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ R	� 	�	�	� m   @ C	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   F I	�	� �	�	�  B l a n k _ S	� 	�	�	� m   I L	�	� �	�	�  B l a n k _ L	� 	���	� m   L O	�	� �	�	�  B l a n k _ R��  	K o      ���� 0 
human_list  	I 	�	�	� l  V V��	�	���  	�    The InDesign master names   	� �	�	� 4   T h e   I n D e s i g n   m a s t e r   n a m e s	� 	�	�	� r   V �	�	�	� J   V �	�	� 	�	�	� m   V Y	�	� �	�	�  N e w s - F r o n t	� 	�	�	� m   Y \	�	� �	�	�  N e w s - S a t F r o n t	� 	�	�	� m   \ _	�	� �	�	�  N e w s - H o m e - S p l i t	� 	�	�	� m   _ b	�	� �	�	�  N e w s - H o m e - L	� 	�	�	� m   b e	�	� �	�	�  N e w s - H o m e - R	� 	�	�	� m   e h
 
  �

 $ N e w s - F o r e i g n - S p l i t	� 


 m   h k

 �

  N e w s - F o r e i g n - L
 


 m   k n

 �
	
	  N e w s - F o r e i g n - R
 




 m   n q

 �

 & F e a t - S t r u g g l e - S p l i t
 


 m   q t

 �

  F e a t - S t r u g g l e - L
 


 m   t w

 �

  F e a t - S t r u g g l e - R
 


 m   w z

 �

 * F e a t - N e w s R e v i e w - S p l i t
 


 m   z }

 �

 " F e a t - N e w s R e v i e w - L
 


 m   } �
 
  �
!
! " F e a t - N e w s R e v i e w - R
 
"
#
" m   � �
$
$ �
%
%  F e a t - S p r e a d
# 
&
'
& m   � �
(
( �
)
)  F e a t - T V
' 
*
+
* m   � �
,
, �
-
-  F e a t - S a t T V
+ 
.
/
. m   � �
0
0 �
1
1 $ F e a t - L e t t e r s - S p l i t
/ 
2
3
2 m   � �
4
4 �
5
5  F e a t - L e t t e r s - L
3 
6
7
6 m   � �
8
8 �
9
9  F e a t - L e t t e r s - R
7 
:
;
: m   � �
<
< �
=
=  F e a t - R e d L i s t
; 
>
?
> m   � �
@
@ �
A
A   F e a t - B l a n k - S p l i t
? 
B
C
B m   � �
D
D �
E
E  F e a t - B l a n k - L
C 
F
G
F m   � �
H
H �
I
I  F e a t - B l a n k - R
G 
J
K
J m   � �
L
L �
M
M  A r t s - E n t s - S p l i t
K 
N
O
N m   � �
P
P �
Q
Q   A r t s - B l a n k - S p l i t
O 
R
S
R m   � �
T
T �
U
U  A r t s - B l a n k - L
S 
V
W
V m   � �
X
X �
Y
Y  A r t s - B l a n k - R
W 
Z
[
Z m   � �
\
\ �
]
]  S p r t - B a c k
[ 
^
_
^ m   � �
`
` �
a
a   S p r t - B l a n k - S p l i t
_ 
b
c
b m   � �
d
d �
e
e  S p r t - B l a n k - L
c 
f
g
f m   � �
h
h �
i
i  S p r t - B l a n k - R
g 
j
k
j m   � �
l
l �
m
m  S p r t - R a c i n g - L
k 
n
o
n m   � �
p
p �
q
q  S p r t - R a c i n g - R
o 
r
s
r m   � �
t
t �
u
u  X - B l a n k - S p l i t
s 
v
w
v m   � �
x
x �
y
y  X - B l a n k - L
w 
z��
z m   � �
{
{ �
|
|  X - B l a n k - R��  	� o      ���� 0 masters_list  	� 
}
~
} l  � ���

���  
 $  Slugs to use in the file name   
� �
�
� <   S l u g s   t o   u s e   i n   t h e   f i l e   n a m e
~ 
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
�
�
� m   � �
�
� �
�
�  N e w s R e v i e w
� 
�
�
� m   � �
�
� �
�
�  S p r e a d
� 
�
�
� m   � �
�
� �
�
�  T V
� 
�
�
� m   � �
�
� �
�
�  T V
� 
�
�
� m   �
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  R e d L i s t
� 
�
�
� m  
�
� �
�
�  F e a t u r e s
� 
�
�
� m  
�
� �
�
�  F e a t u r e
� 
�
�
� m  
�
� �
�
�  F e a t u r e
� 
�
�
� m  
�
� �
�
�  A r t s - E n t s
� 
�
�
� m  
�
� �
�
�  A r t s
� 
�
�
� m  
�
� �
�
�  A r t s
� 
�
�
� m   
�
� �
�
�  A r t s
� 
�
�
� m   #
�
� �
�
�  B a c k
� 
�
�
� m  #&
�
� �
�
� 
 S p o r t
� 
� 
� m  &) � 
 S p o r t   m  ), � 
 S p o r t  m  ,/		 �

  R a c i n g  m  /2 �  R a c i n g  m  25 � 
 B L A N K  m  58 � 
 B L A N K �� m  8; � 
 B L A N K��  
� o      ���� 0 
slugs_list  
�  l BB��������  ��  ��    l BB����   1 + Single-page masters (used to set pageType)    �   V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e ) !"! r  B�#$# J  B�%% &'& m  BE(( �))  N e w s - F r o n t' *+* m  EH,, �--  N e w s - S a t F r o n t+ ./. m  HK00 �11  N e w s - H o m e - L/ 232 m  KN44 �55  N e w s - H o m e - R3 676 m  NQ88 �99  N e w s - F o r e i g n - L7 :;: m  QT<< �==  N e w s - F o r e i g n - R; >?> m  TW@@ �AA  F e a t - S t r u g g l e - L? BCB m  WZDD �EE  F e a t - S t r u g g l e - RC FGF m  Z]HH �II " F e a t - N e w s R e v i e w - LG JKJ m  ]`LL �MM " F e a t - N e w s R e v i e w - RK NON m  `cPP �QQ  F e a t - L e t t e r s - LO RSR m  cfTT �UU  F e a t - L e t t e r s - RS VWV m  fiXX �YY  F e a t - R e d L i s tW Z[Z m  il\\ �]]  F e a t - B l a n k - L[ ^_^ m  lo`` �aa  F e a t - B l a n k - R_ bcb m  ordd �ee  A r t s - B l a n k - Lc fgf m  ruhh �ii  A r t s - B l a n k - Rg jkj m  uxll �mm  S p r t - B a c kk non m  x{pp �qq  S p r t - B l a n k - Lo rsr m  {~tt �uu  S p r t - B l a n k - Rs vwv m  ~�xx �yy  S p r t - R a c i n g - Lw z{z m  ��|| �}}  S p r t - R a c i n g - R{ ~~ m  ���� ���  X - B l a n k - L ���� m  ���� ���  X - B l a n k - R��  $ o      ���� 0 singles_list  " ��� l ��������  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ���� m  ���� ���  X - B l a n k - S p l i t��  � o      ���� 0 spreads_list  � ��� l ����������  ��  ��  � ���� O  ����� O  ����� k  ���� ��� l ������ r  ����� l �������� I ������
�� .R*chFindMtch���     TEXT� m  ���� ���  ^ # S t a r t s   h e r e # $� �����
�� 
Opts� K  ���� ����
�� 
SMod� m  ����
�� SModGrep� �����
�� 
STop� m  ����
�� boovtrue��  ��  ��  ��  � o      ���� 0 hashline hashLine�   Finds the beginning line   � ��� 2   F i n d s   t h e   b e g i n n i n g   l i n e� ��� l ������ r  ����� l �������� [  ����� l �������� l �������� n  ����� 1  ����
�� 
SLin� l �������� n  ����� 1  ����
�� 
MSpc� o  ������ 0 hashline hashLine��  ��  ��  ��  ��  ��  � m  ������ ��  ��  � o      ���� 0 thestart theStart� : 4 The first instruction is on the line after hashLine   � ��� h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e� ��� l ����� r  ���� l ������� 1  ���
�� 
ELin��  ��  � o      ���� 0 theend theEnd� @ : The last instruction must be on the last line of the file   � ��� t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e� ��� l ��������  ��  ��  � ��� Y  ��������� l ��� � k  �  l - r  - l +	����	 I +��

�� .R*chFindMtch���     TEXT
 m   �  ^ ( . + ) \ t ( . + ) $ ��
�� 
FnIn 4  ��
�� 
clin o  ���� 0 x   ����
�� 
Opts K  % ����
�� 
SMod m   #��
�� SModGrep��  ��  ��  ��   o      ���� 0 searchresult searchResult 9 3 Finds characters, then a tab, then more characters    � f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s  l ..��������  ��  ��    l .; r  .; l .9���� I .9����
�� .R*chGSubutxt    ��� null��   �� ��
�� 
RplP  m  25!! �""  \ 1��  ��  ��   o      ���� 0 
pagenumber 
pageNumber < 6 The page number (or a spread's left-hand page number)    �## l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r ) $%$ l <I&'(& r  <I)*) l <G+����+ I <G����,
�� .R*chGSubutxt    ��� null��  , ��-��
�� 
RplP- m  @C.. �//  \ 2��  ��  ��  * o      ���� 0 hmaster hMaster' = 7 Human-friendly master name, as contained in human_list   ( �00 n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t% 121 l JJ��������  ��  ��  2 3��3 Z  J�45����4 H  JT66 E  JS787 l JO9��~9 n  JO:;: 1  KO�}
�} 
MTxt; o  JK�|�| 0 searchresult searchResult�  �~  8 m  OR<< �==  - 	 -5 l W�>?@> k  W�AA BCB l W`DEFD r  W`GHG l W^I�{�zI n W^JKJ I  X^�yL�x�y 0 list_position  L MNM o  XY�w�w 0 hmaster hMasterN O�vO o  YZ�u�u 0 
human_list  �v  �x  K  f  WX�{  �z  H o      �t�t 0 listpos listPosE Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   F �PP �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s tC QRQ l aiSTUS r  aiVWV l agX�s�rX n  agYZY 4  bg�q[
�q 
cobj[ o  ef�p�p 0 listpos listPosZ o  ab�o�o 0 masters_list  �s  �r  W o      �n�n 0 	themaster 	theMasterT 1 + Sets theMaster to the InDesign master name   U �\\ V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m eR ]^] l jj�m�l�k�m  �l  �k  ^ _`_ Z  j�abc�ja E jmded o  jk�i�i 0 singles_list  e o  kl�h�h 0 	themaster 	theMasterb r  pufgf m  pshh �ii  s i n g l eg o      �g�g 0 pagetype pageTypec jkj E x{lml o  xy�f�f 0 spreads_list  m o  yz�e�e 0 	themaster 	theMasterk n�dn r  ~�opo m  ~�qq �rr  s p r e a dp o      �c�c 0 pagetype pageType�d  �j  ` sts l ���b�a�`�b  �a  �`  t uvu Z  ��wxy�_w = ��z{z o  ���^�^ 0 pagetype pageType{ m  ��|| �}}  s i n g l ex l ��~�~ r  ����� l ����]�\� b  ����� b  ����� o  ���[�[ 0 
pagenumber 
pageNumber� m  ���� ���  _� l ����Z�Y� n  ����� 4  ���X�
�X 
cobj� o  ���W�W 0 listpos listPos� o  ���V�V 0 
slugs_list  �Z  �Y  �]  �\  � o      �U�U 0 theslug theSlug 2 , Block to set the slug used to name the file   � ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l ey ��� = ����� o  ���T�T 0 pagetype pageType� m  ���� ���  s p r e a d� ��S� r  ����� l ����R�Q� b  ����� b  ����� b  ����� b  ����� o  ���P�P 0 
pagenumber 
pageNumber� m  ���� ���  -� l ����O�N� [  ����� o  ���M�M 0 
pagenumber 
pageNumber� m  ���L�L �O  �N  � m  ���� ���  _� l ����K�J� n  ����� 4  ���I�
�I 
cobj� o  ���H�H 0 listpos listPos� o  ���G�G 0 
slugs_list  �K  �J  �R  �Q  � o      �F�F 0 theslug theSlug�S  �_  v ��� l ���E�D�C�E  �D  �C  � ��� Z  �����B�A� G  ����� = ����� o  ���@�@ 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ���?�? 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      �>�> 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l�B  �A  � ��� l ���=�<�;�=  �<  �;  � ��� l ������ n ����� I  ���:��9�: 0 pagegen pageGen� ��� o  ���8�8 0 pagetype pageType� ��� o  ���7�7 0 	themaster 	theMaster� ��� o  ���6�6 0 theslug theSlug� ��5� o  ���4�4 0 
pagenumber 
pageNumber�5  �9  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ��3� l ���2�1�0�2  �1  �0  �3  ? : 4 Lines consisting of "hyphen tab hyphen" are skipped   @ ��� h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d��  ��  ��  � P J Goes through each line from the one after hashLine to the end of the file     ��� �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�� 0 x  � o  �/�/ 0 thestart theStart� o  	�.�. 0 theend theEnd��  � ��-� l ���,�+�*�,  �+  �*  �-  � n  ����� 4  ���)�
�) 
ctxt� m  ���(�( � 4  ���'�
�' 
TxtW� m  ���&�& � m  �����                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                                ±	��u}        ����  	                Applications    �@��      ��gm    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  ��  	, ��� l     �%�$�#�%  �$  �#  � ��� l     �"���"  � , & newsGen: News-page generation routine   � ��� L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   ( +��� I      �!�� �! 0 newsgen newsGen� ��� o      �� &0 masterstogenerate mastersToGenerate� ��� o      �� 0 theday theDay�  �   � k    �� ��� Z     ������ E    ��� o     �� &0 masterstogenerate mastersToGenerate� m    �� ���  N e w s      s p l i t s� k    ��� ��� Z    +����� >   	��� o    �� 0 theday theDay� m    �� �    S a t u r d a y� l    I    ��� 0 pagegen pageGen  m     �  s i n g l e 	
	 m     �  N e w s - F r o n t
  m     �  1 _ F r o n t � m     �  �  �   ; 5 If block to create the weekday or weekend front page    � j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e�  =    o    �� 0 theday theDay m     �  S a t u r d a y � I    '��� 0 pagegen pageGen  m      �    s i n g l e !"! m     !## �$$  N e w s - S a t F r o n t" %&% m   ! "'' �((  1 _ F r o n t& )�) m   " #** �++  �  �  �  �  � ,-, l  , ,����  �  �  - ./. Z   , e01�20 E  , /343 o   , -�� &0 masterstogenerate mastersToGenerate4 m   - .55 �66 * N e w s      2 - 3   a s   s i n g l e s1 l  2 Q7897 k   2 Q:: ;<; I   2 ?�
=�	�
 0 pagegen pageGen= >?> m   3 4@@ �AA  s i n g l e? BCB m   4 5DD �EE  N e w s - H o m e - LC FGF m   5 8HH �II  2 _ H o m eG J�J m   8 ;KK �LL  2�  �	  < M�M I   @ Q�N�� 0 pagegen pageGenN OPO m   A DQQ �RR  s i n g l eP STS m   D GUU �VV  N e w s - H o m e - RT WXW m   G JYY �ZZ  3 _ H o m eX [�[ m   J M\\ �]]  3�  �  �  8 3 - If block to create 2-3 as singles or a split   9 �^^ Z   I f   b l o c k   t o   c r e a t e   2 - 3   a s   s i n g l e s   o r   a   s p l i t�  2 I   T e�_�� 0 pagegen pageGen_ `a` m   U Xbb �cc  s p r e a da ded m   X [ff �gg  N e w s - H o m e - S p l i te hih m   [ ^jj �kk  2 - 3 _ H o m ei l�l m   ^ amm �nn  2�  �  / opo l  f f� �����   ��  ��  p qrq Z   f �st��us E  f kvwv o   f g���� &0 masterstogenerate mastersToGeneratew m   g jxx �yy * N e w s      4 - 5   a s   s i n g l e st l  n �z{|z k   n �}} ~~ I   n ������� 0 pagegen pageGen� ��� m   o r�� ���  s i n g l e� ��� m   r u�� ���  N e w s - H o m e - L� ��� m   u x�� ���  4 _ H o m e� ���� m   x {�� ���  4��  ��   ���� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  N e w s - H o m e - R� ��� m   � ��� ���  5 _ H o m e� ���� m   � ��� ���  5��  ��  ��  { 3 - If block to create 4-5 as singles or a split   | ��� Z   I f   b l o c k   t o   c r e a t e   4 - 5   a s   s i n g l e s   o r   a   s p l i t��  u I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  N e w s - H o m e - S p l i t� ��� m   � ��� ���  4 - 5 _ H o m e� ���� m   � ��� ���  4��  ��  r ��� l  � ���������  ��  ��  � ���� Z   � ������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ��� * N e w s      6 - 7   a s   s i n g l e s� l  � ����� k   � ��� ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  N e w s - F o r e i g n - L� ��� m   � ��� ���  6 _ F o r e i g n� ���� m   � ��� ���  6��  ��  � ���� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  N e w s - F o r e i g n - R� ��� m   � ��� ���  7 _ F o r e i g n� ���� m   � ��� ���  7��  ��  ��  � 3 - If block to create 6-7 as singles or a split   � ��� Z   I f   b l o c k   t o   c r e a t e   6 - 7   a s   s i n g l e s   o r   a   s p l i t��  � I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ��� $ N e w s - F o r e i g n - S p l i t� ��� m   � ��� ���  6 - 7 _ F o r e i g n� ���� m   � ��� ���  6��  ��  ��  �  �  � ��� l  � ���������  ��  ��  � ��� Z   �/������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  T V� Z   �+�� ��� >  � � o   � ����� 0 theday theDay m   � � �  S a t u r d a y� I   ������� 0 pagegen pageGen  m   � � �		  s p r e a d 

 m   � �  F e a t - T V  m   �  1 2 - 1 3 _ T V �� m   �  1 2��  ��     =  o  ���� 0 theday theDay m   �  S a t u r d a y �� I  '������ 0 pagegen pageGen  m   �    s p r e a d !"! m  ## �$$  F e a t - S a t T V" %&% m   '' �((  1 8 - 1 9 _ T V& )��) m   #** �++  1 8��  ��  ��  ��  ��  ��  � ,-, l 00��������  ��  ��  - ./. Z  0�01����0 E 05232 o  01���� &0 masterstogenerate mastersToGenerate3 m  1444 �55  L e t t e r s1 k  8�66 787 l 8B9:;9 r  8B<=< J  8@>> ?@? m  8;AA �BB  M o n d a y@ C��C m  ;>DD �EE  W e d n e s d a y��  = o      ���� 0 p10_days  : = 7 These two lists determine what the page number will be   ; �FF n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e8 GHG r  CSIJI J  CQKK LML m  CFNN �OO  T u e s d a yM PQP m  FIRR �SS  T h u r s d a yQ TUT m  ILVV �WW  F r i d a yU X��X m  LOYY �ZZ  S a t u r d a y��  J o      ���� 0 p14_days  H [\[ l TT��������  ��  ��  \ ]��] Z  T�^_`��^ E TWaba o  TU���� 0 p10_days  b o  UV���� 0 theday theDay_ I  Zk��c���� 0 pagegen pageGenc ded m  [^ff �gg  s i n g l ee hih m  ^ajj �kk  F e a t - L e t t e r s - Li lml m  adnn �oo  1 0 _ L e t t e r sm p��p m  dgqq �rr  1 0��  ��  ` sts E nquvu o  no���� 0 p14_days  v o  op���� 0 theday theDayt w��w I  t���x���� 0 pagegen pageGenx yzy m  ux{{ �||  s i n g l ez }~} m  x{ ���  F e a t - L e t t e r s - L~ ��� m  {~�� ���  1 4 _ L e t t e r s� ���� m  ~��� ���  1 4��  ��  ��  ��  ��  ��  ��  / ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  S t r u g g l e� I  ��������� 0 pagegen pageGen� ��� m  ���� ���  s p r e a d� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ���  1 0 - 1 1 _ S t r u g g l e� ���� m  ���� ���  1 0��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� , S i n g l e   s t r u g g l e   -   l e f t� I  ��������� 0 pagegen pageGen� ��� m  ���� ���  s i n g l e� ��� m  ���� ���  F e a t - S t r u g g l e - L� ��� m  ���� ���  1 0 _ S t r u g g l e� ���� m  ���� ���  1 0��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ��� . S i n g l e   s t r u g g l e   -   r i g h t� I  ��������� 0 pagegen pageGen� ��� m  ���� ���  s i n g l e� ��� m  ���� ���  F e a t - S t r u g g l e - R� ��� m  ���� ���  1 1 _ S t r u g g l e� ���� m  ���� ���  1 1��  ��  ��  ��  � ��� l ����������  ��  ��  � ���� Z  �������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  R e d   L i s t� I  �������� 0 pagegen pageGen� ��� m  ���� ���  s i n g l e� ��� m  ���� ���  F e a t - R e d L i s t� ��� m  ���� ���  2 0 _ R e d L i s t� ���� m  ���� ���  2 0��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 1 + featsGen: Features-page generation routine   � ��� V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   , /��� I      ������� 0 featsgen featsGen� ��� o      ���� &0 masterstogenerate mastersToGenerate� ���� o      ���� 0 theday theDay��  ��  � k    �    Z     %���� E     o     ���� &0 masterstogenerate mastersToGenerate m     �  S p r e a d Z    !	
��	 =   	 o    ���� 0 theday theDay m     �  S a t u r d a y
 I    ������ 0 pagegen pageGen  m     �  s p r e a d  m     �  F e a t - S p r e a d  m     �  1 2 - 1 3 _ F e a t u r e s � m     �  1 2�  ��  ��   I    !�~ �}�~ 0 pagegen pageGen  !"! m    ## �$$  s p r e a d" %&% m    '' �((  F e a t - S p r e a d& )*) m    ++ �,,  8 - 9 _ F e a t u r e s* -�|- m    .. �//  8�|  �}  ��  ��   010 l  & &�{�z�y�{  �z  �y  1 232 Z   & ;45�x�w4 E  & )676 o   & '�v�v &0 masterstogenerate mastersToGenerate7 m   ' (88 �99  1 05 I   , 7�u:�t�u 0 pagegen pageGen: ;<; m   - .== �>>  s i n g l e< ?@? m   . /AA �BB  F e a t - B l a n k - L@ CDC m   / 0EE �FF  1 0 _ F e a t u r e sD G�sG m   0 3HH �II  1 0�s  �t  �x  �w  3 JKJ l  < <�r�q�p�r  �q  �p  K LML Z   < YNO�o�nN E  < APQP o   < =�m�m &0 masterstogenerate mastersToGenerateQ m   = @RR �SS 
 1 2 - 1 3O I   D U�lT�k�l 0 pagegen pageGenT UVU m   E HWW �XX  s p r e a dV YZY m   H K[[ �\\  F e a t - T VZ ]^] m   K N__ �``  1 2 - 1 3 _ T V^ a�ja m   N Qbb �cc  1 2�j  �k  �o  �n  M ded l  Z Z�i�h�g�i  �h  �g  e fgf Z   Z whi�f�eh E  Z _jkj o   Z [�d�d &0 masterstogenerate mastersToGeneratek m   [ ^ll �mm ( N e w s   r e v i e w s      s p l i ti I   b s�cn�b�c 0 pagegen pageGenn opo m   c fqq �rr  s p r e a dp sts m   f iuu �vv * F e a t - N e w s R e v i e w - S p l i tt wxw m   i lyy �zz  8 - 9 _ N e w s R e v i e wx {�a{ m   l o|| �}}  8�a  �b  �f  �e  g ~~ Z   x ����`�_� E  x }��� o   x y�^�^ &0 masterstogenerate mastersToGenerate� m   y |�� ��� , N e w s   r e v i e w s      s i n g l e s� k   � ��� ��� I   � ��]��\�] 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - L� ��� m   � ��� ���  8 _ N e w s R e v i e w� ��[� m   � ��� ���  8�[  �\  � ��Z� I   � ��Y��X�Y 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ��� " F e a t - N e w s R e v i e w - R� ��� m   � ��� ���  9 _ N e w s R e v i e w� ��W� m   � ��� ���  9�W  �X  �Z  �`  �_   ��� l  � ��V�U�T�V  �U  �T  � ��� Z   � ����S�R� E  � ���� o   � ��Q�Q &0 masterstogenerate mastersToGenerate� m   � ��� ���  1 5� I   � ��P��O�P 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - B l a n k - R� ��� m   � ��� ���  1 5 _ F e a t u r e s� ��N� m   � ��� ���  1 5�N  �O  �S  �R  � ��� l  � ��M�L�K�M  �L  �K  � ��� Z   � ����J�I� E  � ���� o   � ��H�H &0 masterstogenerate mastersToGenerate� m   � ��� ��� 
 1 6 - 1 7� l  � ����� I   � ��G��F�G 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  A r t s - E n t s - S p l i t� ��� m   � ��� ���  1 6 - 1 7 _ E n t s - A r t s� ��E� m   � ��� ���  1 6�E  �F  � ( " Create the weekend Ents/Arts page   � ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�J  �I  � ��� l  � ��D�C�B�D  �C  �B  � ��� Z   �F���A�@� E  � ���� o   � ��?�? &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   �B�� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ��>� m   � ��� ���  W e d n e s d a y�>  � o      �=�= 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   �� � J   �
  m   � � �  T u e s d a y  m   � � �		  T h u r s d a y 

 m   �  �  F r i d a y  m    �  S a t u r d a y �< m   � , N o   d a y      w o r k i n g   a h e a d�<    o      �;�; 0 p14_days  �  l �:�9�8�:  �9  �8   �7 Z  B�6 E  o  �5�5 0 p10_days   o  �4�4 0 theday theDay I  $�3�2�3 0 pagegen pageGen  m     �!!  s i n g l e "#" m  $$ �%%  F e a t - L e t t e r s - L# &'& m  (( �))  1 0 _ L e t t e r s' *�1* m   ++ �,,  1 0�1  �2   -.- E '*/0/ o  '(�0�0 0 p14_days  0 o  ()�/�/ 0 theday theDay. 1�.1 I  ->�-2�,�- 0 pagegen pageGen2 343 m  .155 �66  s i n g l e4 787 m  1499 �::  F e a t - L e t t e r s - L8 ;<; m  47== �>>  1 4 _ L e t t e r s< ?�+? m  7:@@ �AA  1 4�+  �,  �.  �6  �7  �A  �@  � BCB l GG�*�)�(�*  �)  �(  C DED Z  GdFG�'�&F E GLHIH o  GH�%�% &0 masterstogenerate mastersToGenerateI m  HKJJ �KK  A r t sG l O`LMNL I  O`�$O�#�$ 0 pagegen pageGenO PQP m  PSRR �SS  s i n g l eQ TUT m  SVVV �WW  A r t s - B l a n k - RU XYX m  VYZZ �[[  1 1 _ A r t sY \�"\ m  Y\]] �^^  1 1�"  �#  M ( " Create the weekday Arts page (11)   N �__ D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�'  �&  E `a` l ee�!� ��!  �   �  a b�b Z  e�cd��c E ejefe o  ef�� &0 masterstogenerate mastersToGeneratef m  figg �hh  A r t s   s p l i td I  m~�i�� 0 pagegen pageGeni jkj m  nqll �mm  s p r e a dk non m  qtpp �qq   A r t s - B l a n k - S p l i to rsr m  twtt �uu  1 0 - 1 1 _ A r t ss v�v m  wzww �xx  1 0�  �  �  �  �  � yzy l     ����  �  �  z {|{ l     ����  �  �  | }~} l     ���   , & artsGen: Arts-page generation routine   � ��� L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e~ ��� i   0 3��� I      ���� 0 artsgen artsGen� ��� o      �� &0 masterstogenerate mastersToGenerate�  �  � k     =�� ��� Z     ����� E    ��� o     �
�
 &0 masterstogenerate mastersToGenerate� m    �� ���  1 6 - 1 7   ( w e e k e n d )� l   ���� I    �	���	 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    	�� ���  A r t s - E n t s - S p l i t� ��� m   	 
�� ���  1 6 - 1 7 _ E n t s - A r t s� ��� m   
 �� ���  1 6�  �  � ( " Create the weekend Ents/Arts page   � ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�  �  � ��� l   ����  �  �  � ��� Z    '����� E   ��� o    �� &0 masterstogenerate mastersToGenerate� m    �� ���  A r t s   ( p 1 1 )� l   #���� I    #� ����  0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  A r t s - B l a n k - R� ��� m    �� ���  1 1 _ A r t s� ���� m    �� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )�  �  � ��� l  ( (��������  ��  ��  � ���� Z   ( =������� E  ( +��� o   ( )���� &0 masterstogenerate mastersToGenerate� m   ) *�� ���  A r t s   s p l i t� l  . 9���� I   . 9������� 0 pagegen pageGen� ��� m   / 0�� ���  s p r e a d� ��� m   0 1�� ���   A r t s - B l a n k - S p l i t� ��� m   1 2�� ���  1 0 - 1 1 _ A r t s� ���� m   2 5�� ���  1 0��  ��  � + % Creates an Arts split-spread (10-11)   � ��� J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 0 * sportsGen: Sports-page generation routine   � ��� T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e� ���� i   4 7��� I      ������� 0 	sportsgen 	sportsGen� ���� o      ���� &0 masterstogenerate mastersToGenerate��  ��  � k    ��� ��� Z     ������� E    ��� o     ���� &0 masterstogenerate mastersToGenerate� m    �� ���  T w o   p a g e s� k    �� ��� I    ������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� � � m    	 �  S p r t - B a c k   m   	 
 �  1 6 _ B a c k �� m   
  �		  1 6��  ��  � 
��
 I    ������ 0 pagegen pageGen  m     �  s i n g l e  m     �  S p r t - B l a n k - R  m     �  1 5 _ S p o r t �� m     �  1 5��  ��  ��  ��  ��  �  l   ��������  ��  ��    Z    U ���� E   !!"! o    ���� &0 masterstogenerate mastersToGenerate" m     ## �$$  T h r e e   p a g e s  k   $ Q%% &'& I   $ -��(���� 0 pagegen pageGen( )*) m   % &++ �,,  s i n g l e* -.- m   & '// �00  S p r t - B a c k. 121 m   ' (33 �44  1 6 _ B a c k2 5��5 m   ( )66 �77  1 6��  ��  ' 898 I   . ?��:���� 0 pagegen pageGen: ;<; m   / 2== �>>  s i n g l e< ?@? m   2 5AA �BB  S p r t - B l a n k - R@ CDC m   5 8EE �FF  1 5 _ S p o r tD G��G m   8 ;HH �II  1 5��  ��  9 J��J I   @ Q��K���� 0 pagegen pageGenK LML m   A DNN �OO  s i n g l eM PQP m   D GRR �SS  S p r t - B l a n k - LQ TUT m   G JVV �WW  1 4 _ S p o r tU X��X m   J MYY �ZZ  1 4��  ��  ��  ��  ��   [\[ l  V V��������  ��  ��  \ ]^] Z   V �_`����_ E  V [aba o   V W���� &0 masterstogenerate mastersToGenerateb m   W Zcc �dd , T h r e e   p a g e s   w i t h   s p l i t` k   ^ �ee fgf I   ^ o��h���� 0 pagegen pageGenh iji m   _ bkk �ll  s i n g l ej mnm m   b eoo �pp  S p r t - B a c kn qrq m   e hss �tt  1 6 _ B a c kr u��u m   h kvv �ww  1 6��  ��  g x��x I   p ���y���� 0 pagegen pageGeny z{z m   q t|| �}}  s p r e a d{ ~~ m   t w�� ���   S p r t - B l a n k - S p l i t ��� m   w z�� ���  1 4 - 1 5 _ S p o r t� ���� m   z }�� ���  1 4��  ��  ��  ��  ��  ^ ��� l  � ���������  ��  ��  � ��� Z   � �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ���  F o u r   p a g e s� k   � ��� ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ���� m   � ��� ���  2 4��  ��  � ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - R� ��� m   � ��� ���  2 3 _ S p o r t� ���� m   � ��� ���  2 3��  ��  � ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - L� ��� m   � ��� ���  2 2 _ S p o r t� ���� m   � ��� ���  2 2��  ��  � ���� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - R a c i n g - R� ��� m   � ��� ���  2 1 _ R a c i n g� ���� m   � ��� ���  2 1��  ��  ��  ��  ��  � ��� l  � ���������  ��  ��  � ��� Z   �������� E  � ���� o   � ����� &0 masterstogenerate mastersToGenerate� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� k   ��� ��� I   � �������� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ���� m   � ��� ���  2 4��  ��  � ��� I   �������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� � � m   � � �   S p r t - B l a n k - S p l i t   m   � � �  2 2 - 2 3 _ S p o r t �� m   � �		  2 2��  ��  � 
��
 I  ������ 0 pagegen pageGen  m  
 �  s i n g l e  m  
 �  S p r t - R a c i n g - R  m   �  2 1 _ R a c i n g �� m   �  2 1��  ��  ��  ��  ��  �  l ��������  ��  ��    Z  9 ���� E !!"! o  ���� &0 masterstogenerate mastersToGenerate" m   ## �$$  R a c i n g   o n l y  I  $5��%���� 0 pagegen pageGen% &'& m  %((( �))  s i n g l e' *+* m  (+,, �--  S p r t - R a c i n g - R+ ./. m  +.00 �11  2 1 _ R a c i n g/ 2��2 m  .133 �44  2 1��  ��  ��  ��   565 l ::��������  ��  ��  6 787 Z  :W9:����9 E :?;<; o  :;���� &0 masterstogenerate mastersToGenerate< m  ;>== �>>  E x t r a   l e f t   p a g e: I  BS��?���� 0 pagegen pageGen? @A@ m  CFBB �CC  s i n g l eA DED m  FIFF �GG  S p r t - B l a n k - LE HIH m  ILJJ �KK  L _ X X _ S p o r tI L��L m  LOMM �NN  0 0��  ��  ��  ��  8 OPO l XX��������  ��  ��  P QRQ Z  XuST����S E X]UVU o  XY���� &0 masterstogenerate mastersToGenerateV m  Y\WW �XX   E x t r a   r i g h t   p a g eT I  `q��Y���� 0 pagegen pageGenY Z[Z m  ad\\ �]]  s i n g l e[ ^_^ m  dg`` �aa  S p r t - B l a n k - R_ bcb m  gjdd �ee  R _ X X _ S p o r tc f��f m  jmgg �hh  0 0��  ��  ��  ��  R iji l vv��������  ��  ��  j k�k Z  v�lm�~�}l E v{non o  vw�|�| &0 masterstogenerate mastersToGenerateo m  wzpp �qq  E x t r a   s p l i tm I  ~��{r�z�{ 0 pagegen pageGenr sts m  �uu �vv  s p r e a dt wxw m  ��yy �zz   S p r t - B l a n k - S p l i tx {|{ m  ��}} �~~ " S p l i t _ X X - X X _ S p o r t| �y m  ���� ���  0 0�y  �z  �~  �}  �  ��       �x�����������������x  � �w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�w 0 	genprompt 	genPrompt�v 0 list_position  �u "0 create_pagedate create_pageDate�t "0 create_filedate create_fileDate�s 0 pagegen pageGen�r 0 applymaster applyMaster�q "0 changelegaldate changeLegalDate�p  0 drawembargobox drawEmbargoBox�o 0 	cleansave 	cleanSave�n 0 customedition customEdition�m 0 newsgen newsGen�l 0 featsgen featsGen�k 0 artsgen artsGen�j 0 	sportsgen 	sportsGen
�i .aevtoappnull  �   � ****� �h ��g�f���e�h 0 	genprompt 	genPrompt�g �d��d �  �c�c 0 desk  �f  � �b�a�`�_�^�]�\�[�Z�Y�X�W�V�b 0 desk  �a 0 months_list  �` 0 	days_list  �_ 0 thetitle theTitle�^ 0 weekday_pages  �] 0 weekend_pages  �\ 0 ahead_pages  �[ 0 theday theDay�Z 0 themonth theMonth�Y 0 thedate theDate�X 0 theyear theYear�W 0 
prompttext 
promptText�V &0 masterstogenerate mastersToGenerate� � � � � � � ��U�T ��S ��R�Q�P � � � � � � � �O $(+�N:>�MBLV`dhlps{���������L������������������$(,047@DHLPS[_cgkosw{~���������K��J�I���H��G���F
�E�D#'0�C�B]�Aq�@s|�?������>��=�<�;�U 
�T 
prmp
�S 
appr�R 
�Q .gtqpchltns    @   @ ns  
�P 
TEXT�O �N 
�M 
bool�L 

�K 
rslt
�J 
errn�I���H 0 pagedate pageDate�G 0 filedate fileDate
�F 
dtxt
�E .sysodlogaskr        TEXT
�D 
ttxt�C "0 create_pagedate create_pageDate�B "0 create_filedate create_fileDate�A 0 customedition customEdition
�@ 
ret 
�? 
mlsl�> 0 newsgen newsGen�= 0 featsgen featsGen�< 0 	sportsgen 	sportsGen�; 0 artsgen artsGen�eΠ�  ������v����� �&E�Y hO��a a a a a a a a a a a vE�Oa a a a a a  a !vE�O�a " 
 �a # a $&
 �a % a $& ��a &  Ha 'E�Oa (a )a *a +a ,a -a !vE�Oa .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8vE�Y U�a 9  <a :E�Oa ;a <a =a >a ?a @a !vE�Oa Aa Ba Ca Da Ea Fa !vE�Y �a G  
a HE�Y hY ��a I 
 �a J a $& �a K�6FO�a L  aa ME�Oa Na Oa Pa Qa Ra Sa !vE�Oa Ta Ua Va Wa Xa Ya !vE�Oa Za [a \a ]a ^a _a `a aa ba ca 8vE�Y ,�a d  #a eE�Oa fa glvE�Oa ha ia jmvE�Y hY hO��a k�� �&E�O_ la m  )a na olhY hO�a p  a qE` rOa sE` tY ���a u�� �&E�O_ la v  )a na olhY hOa wa xa y�� za {,�&E�O_ la |  )a na olhY hOa }a xa ~�� za {,�&E�O_ la   )a na olhY hO)������+ �O)������+ �O�a �  
)j+ �Ya �_ �%_ �%a �%E�O�a �  -���a �ea ! E�O_ lf  )a na olhY hY {�a � -���a �ea ! E�O_ lf  )a na olhY hY H�a �  ?�a �  a �kvE�Y *���a �ea ! E�O_ lf  )a na olhY hY hO�a �  )��l+ �Y 7�a �  )��l+ �Y %�a �  )�k+ �Y �a �  )�k+ �Y h� �:(�9�8���7�: 0 list_position  �9 �6��6 �  �5�4�5 0 	this_item  �4 0 	this_list  �8  � �3�2�1�3 0 	this_item  �2 0 	this_list  �1 0 i  � �0�/
�0 .corecnte****       ****
�/ 
cobj�7 # !k�j  kh ��/�  �Y h[OY��� �.E�-�,���+�. "0 create_pagedate create_pageDate�- �*��* �  �)�(�'�&�%�) 0 theday theDay�( 0 themonth theMonth�' 0 thedate theDate�& 0 theyear theYear�% 0 months_list  �,  � 	�$�#�"�!� �����$ 0 theday theDay�# 0 themonth theMonth�" 0 thedate theDate�! 0 theyear theYear�  0 months_list  � (0 thirtyonedaymonths ThirtyOneDayMonths� "0 thirtydaymonths ThirtyDayMonths� 0 i  � 0 secondmonth secondMonth� -X\`dhk�tx|����������������.02>BFY[gko�������� � � 0 pagedate pageDate
� 
bool
� .corecnte****       ****
� 
cobj�+��������vE�O�����vE�O�� ��%�%�%�%�%�%E` OPYa�a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a  a &	 	��a & I +k�j kh �a �/�  �a �k/E�Y h[OY��Oa �%a %�%a %�%E` OPY ��a  	 �a a &	 �a   a & a !�%a "%�%E` OPY c�a # 	 �a $ a &	 �a % a & a &�%a '%�k%E` OPY -�a (  $a )�%a *%�%a +%�k%a ,%�%E` OPY h� �������� "0 create_filedate create_fileDate� ��� �  ������ 0 theday theDay� 0 themonth theMonth� 0 thedate theDate� 0 theyear theYear� 0 months_list  �  � 	��
�	������� 0 theday theDay�
 0 themonth theMonth�	 0 thedate theDate� 0 theyear theYear� 0 months_list  � 0 numdate numDate� 0 i  � 0 raw_nummonth raw_numMonth� 0 nummonth numMonth� 
����� ��������
� 
long
� .corecnte****       ****
�  
cobj�� 

�� 
ctxt�� �� 0 filedate fileDate� \��&� 
�%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�[�\[Zm\Z�2%E�� ��4���������� 0 pagegen pageGen�� ����� �  ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber��  � ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber� �������U��im����������������  0 masterdocument masterDocument
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
pageNumber� ,������������������������������������������������2<HZk���������
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
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU� ������������� "0 changelegaldate changeLegalDate�� ����� �  ���� 0 	themaster 	theMaster��  � ���� 0 	themaster 	theMaster� 0������������������,
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
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUU� ��=����������  0 drawembargobox drawEmbargoBox�� ����� �  ���� 0 pagetype pageType��  � ������ 0 pagetype pageType�� 0 ebox eBox� ���I����������\_bd����f����q�������
�� 
docu
�� 
page
�� 
kocl
�� 
txtf
�� 
prdt
�� 
gbnd�� 
�� 
pcnt
�� .corecrel****      � null
�� 
ObSt
�� 
aobs
�� 
plck�� �� �*�k/ ���  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY D�a   ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU� ������������� 0 	cleansave 	cleanSave�� ����� �  ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug��  � ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug� 	!���������������	
����	��	��
�� 
pacd
�� 
layr
�� 
plck
�� 
pacl
�� 
zero
�� 
kfil�� $0 freshpagesfolder freshPagesFolder�� 0 filedate fileDate
�� .CoResavedocu        obj �� ^� Z*�, Se*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�͡%�%�%a %l UU� ��	.���������� 0 customedition customEdition��  ��  � ������������������������~�}�|�{�� 0 
human_list  �� 0 masters_list  �� 0 
slugs_list  �� 0 singles_list  �� 0 spreads_list  �� 0 hashline hashLine�� 0 thestart theStart�� 0 theend theEnd�� 0 x  �� 0 searchresult searchResult�� 0 
pagenumber 
pageNumber� 0 hmaster hMaster�~ 0 listpos listPos�} 0 	themaster 	theMaster�| 0 pagetype pageType�{ 0 theslug theSlug� �	O	S	W	[	_	c	g	k	o	s	w	{		�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	��z	�	�	�	�	�
 







 
$
(
,
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
{
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
�	(,048<@DHLPTX\`dhlptx|���y��������������x��w�v��u�t�s�r�q�p�o�n�m�l�k�j!�i.�h<�g�fhq|�������e��d�z %�y �x 
�w 
TxtW
�v 
ctxt
�u 
Opts
�t 
SMod
�s SModGrep
�r 
STop�q 
�p .R*chFindMtch���     TEXT
�o 
MSpc
�n 
SLin
�m 
ELin
�l 
FnIn
�k 
clin
�j 
RplP
�i .R*chGSubutxt    ��� null
�h 
MTxt�g 0 list_position  
�f 
cobj
�e 
bool�d 0 pagegen pageGen�������������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �8*a �k/a �k/)a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�O �kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPY h[OY�OPUU� �c��b�a���`�c 0 newsgen newsGen�b �_��_ �  �^�]�^ &0 masterstogenerate mastersToGenerate�] 0 theday theDay�a  � �\�[�Z�Y�\ &0 masterstogenerate mastersToGenerate�[ 0 theday theDay�Z 0 p10_days  �Y 0 p14_days  � b���X�W#'*5@DHKQUY\bfjmx��������������������������#'*4ADNRVYfjnq{�����������������������X �W 0 pagegen pageGen�`�� �� *�����+ Y ��  *�����+ Y hO�� $*��a a �+ O*a a a a �+ Y *a a a a �+ O�a  (*a a a a �+ O*a a  a !a "�+ Y *a #a $a %a &�+ O�a ' (*a (a )a *a +�+ O*a ,a -a .a /�+ Y *a 0a 1a 2a 3�+ Y hO�a 4 >�a 5 *a 6a 7a 8a 9�+ Y �a :  *a ;a <a =a >�+ Y hY hO�a ? Va @a AlvE�Oa Ba Ca Da E�vE�O�� *a Fa Ga Ha I�+ Y �� *a Ja Ka La M�+ Y hY hO�a N *a Oa Pa Qa R�+ Y hO�a S *a Ta Ua Va W�+ Y hO�a X *a Ya Za [a \�+ Y hO�a ] *a ^a _a `a a�+ Y h� �V��U�T���S�V 0 featsgen featsGen�U �R��R �  �Q�P�Q &0 masterstogenerate mastersToGenerate�P 0 theday theDay�T  � �O�N�M�L�O &0 masterstogenerate mastersToGenerate�N 0 theday theDay�M 0 p10_days  �L 0 p14_days  � I�K�J#'+.8=AEHRW[_blquy|�����������������������I $(+59=@JRVZ]glptw�K �J 0 pagegen pageGen�I �S���  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . [a /a 0lvE�Oa 1a 2a 3a 4a 5a 6vE�O�� *a 7a 8a 9a :�+ Y �� *a ;a <a =a >�+ Y hY hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y h� �H��G�F���E�H 0 artsgen artsGen�G �D��D �  �C�C &0 masterstogenerate mastersToGenerate�F  � �B�B &0 masterstogenerate mastersToGenerate� ������A�@�����������A �@ 0 pagegen pageGen�E >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h� �?��>�=���<�? 0 	sportsgen 	sportsGen�> �;��; �  �:�: &0 masterstogenerate mastersToGenerate�=  � �9�9 &0 masterstogenerate mastersToGenerate� S���8�7#+/36=AEHNRVYckosv|��������������������������#(,03=BFJMW\`dgpuy}��8 �7 0 pagegen pageGen�<��� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h� �6��5�4���3
�6 .aevtoappnull  �   � ****� k     9��  J��  Z��  j��  w��  ���  ��2�2  �5  �4  �  �  O�1 _�0 u�/�.�- ~�,�+ ��*�)�1 $0 freshpagesfolder freshPagesFolder�0  0 masterdocument masterDocument
�/ elnteNvr
�. 
pScr
�- 
UIAc�, 0 	genprompt 	genPrompt
�+ elnteInA
�* .miscactvnull��� ��� obj 
�) .aevtodocnull  �    alis�3 :�E�O�E�O� 	�*�,�,FUO*�k+ 	O� 	�*�,�,FUO� *j O�j U ascr  ��ޭ