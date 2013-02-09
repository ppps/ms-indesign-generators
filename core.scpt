FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			15/12/2012     �   0 	 C r e a t e d   o n 	 	 	 1 5 / 1 2 / 2 0 1 2      l     ��  ��      	Last updated			09/02/2013     �   4 	 L a s t   u p d a t e d 	 	 	 0 9 / 0 2 / 2 0 1 3      l     ��  ��     	Version:			1.82     �     	 V e r s i o n : 	 	 	 1 . 8 2     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ]   Running code --    ^ � _ _     R u n n i n g   c o d e   - - \  ` a ` l     b c d b O     e f e r     g h g m    ��
�� elnteNvr h n       i j i 1    
��
�� 
UIAc j 1    ��
�� 
pScr f m      k k�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   c $  Suppresses dialogs and alerts    d � l l <   S u p p r e s s e s   d i a l o g s   a n d   a l e r t s a  m n m l    o p q o I    �� r���� 0 	genprompt 	genPrompt r  s�� s m     t t � u u  ��  ��   p h b Desk name (News, Features, Sport, Arts or Custom edition) goes in the quotes in this handler call    q � v v �   D e s k   n a m e   ( N e w s ,   F e a t u r e s ,   S p o r t ,   A r t s   o r   C u s t o m   e d i t i o n )   g o e s   i n   t h e   q u o t e s   i n   t h i s   h a n d l e r   c a l l n  w x w l     y���� y O     z { z r     | } | m    ��
�� elnteInA } n       ~  ~ 1    ��
�� 
UIAc  1    ��
�� 
pScr { m     � ��                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��  ��   x  � � � l  ! 5 ����� � O   ! 5 � � � k   % 4 � �  � � � I  % *������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I  + 4�� ���
�� .aevtodocnull  �    alis � o   + 0���� $0 freshpagesfolder freshPagesFolder��  ��   � m   ! " � ��                                                                                  MACS  alis    Z  SSD                        �@��H+  ƹ
Finder.app                                                     ���ۢ        ����  	                CoreServices    �@��      �͒    ƹƳƲ  -SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i    	 � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k    � � �  � � � Z      � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l    � � � � r     � � � c     � � � l    ����� � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � �  N e w s �  � � � m     � � � � �  F e a t u r e s �  � � � m    	 � � � � � 
 S p o r t �  � � � m   	 
 � � � � �  A r t s �  ��� � m   
  � � � � �  C u s t o m   e d i t i o n��   � �� � �
�� 
prmp � m     � � � � � & P l e a s e   p i c k   a   d e s k : � �� ���
�� 
appr � m     � � � � �  P a g e   g e n e r a t o r��  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 desk   � F @ Allows core.scpt to be used as a generator (useful for testing)    � � � � �   A l l o w s   c o r e . s c p t   t o   b e   u s e d   a s   a   g e n e r a t o r   ( u s e f u l   f o r   t e s t i n g )��  ��   �  � � � l   ��������  ��  ��   �  � � � r    2 � � � J    0 � �  � � � m     � � � � �  M o n d a y �  � � � m      � � � � �  T u e s d a y �  � � � m     # � � � � �  W e d n e s d a y �  � � � m   # & � � � � �  T h u r s d a y �  � � � m   & ) � � � � �  F r i d a y �  ��� � m   ) , � � � � �  S a t u r d a y��   � o      ���� 0 	days_list   �  � � � l  3 3��������  ��  ��   �  � � � Z   3 J � ��� � � >  3 8 � � � o   3 4���� 0 desk   � m   4 7 � � � � �  C u s t o m   e d i t i o n � l  ; B � � � � r   ; B � � � l  ; @ ����� � b   ; @   o   ; <���� 0 desk   m   < ? �     p a g e s   g e n e r a t o r��  ��   � o      ���� 0 thetitle theTitle � !  Text for prompt title bars    � � 6   T e x t   f o r   p r o m p t   t i t l e   b a r s��   � r   E J m   E H �  C u s t o m   e d i t i o n o      ���� 0 thetitle theTitle � 	
	 l  K K��������  ��  ��  
  Z   K}�� G   K \ =  K P o   K L���� 0 desk   m   L O �  N e w s =  S X o   S T���� 0 desk   m   T W � 
 S p o r t l  _ � Z   _ ��� =  _ d !  o   _ `���� 0 desk  ! m   ` c"" �##  N e w s k   g �$$ %&% r   g t'(' J   g r)) *+* m   g j,, �--  N e w s   p a g e s+ ./. m   j m00 �11  T V/ 2��2 m   m p33 �44  L e t t e r s��  ( o      ���� 0 weekday_pages  & 5��5 r   u �676 J   u �88 9:9 m   u x;; �<<  N e w s   p a g e s: =>= m   x {?? �@@  T V> ABA m   { ~CC �DD  L e t t e r sB EFE m   ~ �GG �HH  S t r u g g l eF I��I m   � �JJ �KK  R e d   L i s t��  7 o      ���� 0 weekend_pages  ��   LML =  � �NON o   � ����� 0 desk  O m   � �PP �QQ 
 S p o r tM R��R k   � �SS TUT r   � �VWV J   � �XX YZY m   � �[[ �\\  T w o   p a g e sZ ]^] m   � �__ �``  T h r e e   p a g e s^ aba m   � �cc �dd , T h r e e   p a g e s   w i t h   s p l i tb efe m   � �gg �hh  E x t r a   l e f t   p a g ef iji m   � �kk �ll   E x t r a   r i g h t   p a g ej m��m m   � �nn �oo  E x t r a   s p l i t��  W o      ���� 0 weekday_pages  U p��p r   � �qrq J   � �ss tut m   � �vv �ww  F o u r   p a g e su xyx m   � �zz �{{ * F o u r   p a g e s   w i t h   s p l i ty |}| m   � �~~ �  R a c i n g   o n l y} ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  r o      ���� 0 weekend_pages  ��  ��  ��   @ : This if block sets the page options presented to the user    ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r ��� G   � ���� =  � ���� o   � ����� 0 desk  � m   � ��� ���  F e a t u r e s� =  � ���� o   � ����� 0 desk  � m   � ��� ���  A r t s� ���� k   �y�� ��� l  � ����� r   � ���� m   � ��� ��� , N o   d a y      w o r k i n g   a h e a d� l     ������ n      ���  ;   � �� o   � ����� 0 	days_list  ��  ��  � > 8 Adds an extra day option that news and sport don't need   � ��� p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d� ���� Z   �y������ =  � ���� o   � ����� 0 desk  � m   � ��� ���  F e a t u r e s� k   �D�� ��� r   ���� J   ��� ��� m   � ��� ���  S p r e a d� ��� m   � ��� ���  1 0� ��� m   � ��� ��� 
 1 2 - 1 3� ��� m   � ��� ���  L e t t e r s� ��� m   � ��� ���  A r t s� ���� m   � �� ���  A r t s   s p l i t��  � o      �� 0 weekday_pages  � ��� r  ��� J  �� ��� m  
�� ���  S p r e a d� ��� m  
�� ��� ( N e w s   r e v i e w s      s p l i t� ��� m  �� ��� , N e w s   r e v i e w s      s i n g l e s� ��� m  �� ���  1 5� ��� m  �� ��� 
 1 6 - 1 7� ��~� m  �� ���  L e t t e r s�~  � o      �}�} 0 weekend_pages  � ��|� r   D��� J   B�� ��� m   #�� ���  S p r e a d� ��� m  #&�� ���  1 0� ��� m  &)�� ��� 
 1 2 - 1 3� ��� m  ),�� ��� ( N e w s   r e v i e w s      s p l i t� ��� m  ,/�� ��� , N e w s   r e v i e w s      s i n g l e s�    m  /2 �  1 5  m  25 � 
 1 6 - 1 7 	 m  58

 �  L e t t e r s	  m  8; �  A r t s �{ m  ;> �  A r t s   s p l i t�{  � o      �z�z 0 ahead_pages  �|  �  = GL o  GH�y�y 0 desk   m  HK �  A r t s �x k  Ou  r  OY J  OW  !  m  OR"" �##  A r t s   ( p 1 1 )! $�w$ m  RU%% �&&  A r t s   s p l i t�w   o      �v�v 0 weekday_pages   '(' r  Zg)*) J  Ze++ ,-, m  Z].. �//  1 6 - 1 7   ( w e e k e n d )- 010 m  ]`22 �33  A r t s   s p l i t1 4�u4 m  `c55 �66  A r t s   ( p 1 1 )�u  * o      �t�t 0 weekend_pages  ( 7�s7 r  hu898 J  hs:: ;<; m  hk== �>>  A r t s   ( p 1 1 )< ?@? m  knAA �BB  A r t s   s p l i t@ C�rC m  nqDD �EE  1 6 - 1 7   ( w e e k e n d )�r  9 o      �q�q 0 ahead_pages  �s  �x  ��  ��  ��  ��   FGF l ~~�p�o�n�p  �o  �n  G HIH l ~~�mJK�m  J [ U Prompt the user to enter the date. Returns theDay for use in page-picker block below   K �LL �   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e .   R e t u r n s   t h e D a y   f o r   u s e   i n   p a g e - p i c k e r   b l o c k   b e l o wI MNM r  ~�OPO n ~�QRQ I  ��lS�k�l 0 
dateprompt 
datePromptS TUT o  ��j�j 0 thetitle theTitleU V�iV o  ���h�h 0 	days_list  �i  �k  R  f  ~P o      �g�g 0 theday theDayN WXW l ���f�e�d�f  �e  �d  X YZY l ���c[\�c  [   Get the pages to create   \ �]] 0   G e t   t h e   p a g e s   t o   c r e a t eZ ^�b^ Z  ��_`�aa_ = ��bcb l ��d�`�_d o  ���^�^ 0 desk  �`  �_  c m  ��ee �ff  C u s t o m   e d i t i o n` l ��ghig n ��jkj I  ���]�\�[�] 0 customedition customEdition�\  �[  k  f  ��h U O The customEdition function itself gets the pages to generate from TextWrangler   i �ll �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r�a  a k  ��mm non r  ��pqp l ��r�Z�Yr b  ��sts b  ��uvu b  ��wxw m  ��yy �zz D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?x o  ���X
�X 
ret v o  ���W
�W 
ret t m  ��{{ �|| X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�Z  �Y  q o      �V�V 0 
prompttext 
promptTexto }~} Z  �D���U = ����� o  ���T�T 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  ���� ��� r  ����� l ����S�R� I ���Q��
�Q .gtqpchltns    @   @ ns  � o  ���P�P 0 ahead_pages  � �O��
�O 
prmp� o  ���N�N 0 
prompttext 
promptText� �M��
�M 
appr� o  ���L�L 0 thetitle theTitle� �K��J
�K 
mlsl� m  ���I
�I boovtrue�J  �S  �R  � o      �H�H &0 masterstogenerate mastersToGenerate� ��G� Z �����F�E� = ����� 1  ���D
�D 
rslt� m  ���C
�C boovfals� R  ���B�A�
�B .ascrerr ****      � ****�A  � �@��?
�@ 
errn� m  ���>�>���?  �F  �E  �G  � ��� > ����� o  ���=�= 0 theday theDay� m  ���� ���  S a t u r d a y� ��� k  ��� ��� r  ����� l ����<�;� I ���:��
�: .gtqpchltns    @   @ ns  � o  ���9�9 0 weekday_pages  � �8��
�8 
prmp� o  ���7�7 0 
prompttext 
promptText� �6��
�6 
appr� o  ���5�5 0 thetitle theTitle� �4��3
�4 
mlsl� m  ���2
�2 boovtrue�3  �<  �;  � o      �1�1 &0 masterstogenerate mastersToGenerate� ��0� Z ����/�.� = ����� 1  ���-
�- 
rslt� m  ���,
�, boovfals� R  �	�+�*�
�+ .ascrerr ****      � ****�*  � �)��(
�) 
errn� m  �'�'���(  �/  �.  �0  � ��� = ��� o  �&�& 0 theday theDay� m  �� ���  S a t u r d a y� ��%� k  @�� ��� r  )��� l '��$�#� I '�"��
�" .gtqpchltns    @   @ ns  � o  �!�! 0 weekend_pages  � � ��
�  
prmp� o  �� 0 
prompttext 
promptText� ���
� 
appr� o  �� 0 thetitle theTitle� ���
� 
mlsl� m   !�
� boovtrue�  �$  �#  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z *@����� = */��� 1  *-�
� 
rslt� m  -.�
� boovfals� R  2<���
� .ascrerr ****      � ****�  � ���
� 
errn� m  69�����  �  �  �  �%  �U  ~ ��� l EE����  �  �  � ��� Z  E�����
� = EJ��� o  EF�	�	 0 desk  � m  FI�� ���  N e w s� l MT���� n MT��� I  NT���� 0 newsgen newsGen� ��� o  NO�� &0 masterstogenerate mastersToGenerate� ��� o  OP�� 0 theday theDay�  �  �  f  MN� S M theDay is passed to distinguish between, for example, Saturday & weekday TV    � ��� �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  � ��� = W\��� o  WX�� 0 desk  � m  X[�� ���  F e a t u r e s� ��� n _f��� I  `f���� 0 featsgen featsGen� ��� o  `a� �  &0 masterstogenerate mastersToGenerate� ���� o  ab���� 0 theday theDay��  �  �  f  _`� ��� = in��� o  ij���� 0 desk  � m  jm�� ��� 
 S p o r t� ��� l qw���� n qw��� I  rw�� ���� 0 	sportsgen 	sportsGen  �� o  rs���� &0 masterstogenerate mastersToGenerate��  ��  �  f  qr�   No day checks   � �    N o   d a y   c h e c k s�  = z o  z{���� 0 desk   m  {~ �  A r t s 	��	 l ��

 n �� I  �������� 0 artsgen artsGen �� o  ������ &0 masterstogenerate mastersToGenerate��  ��    f  ��   No day checks    �    N o   d a y   c h e c k s��  �
  �  �b   �  l     ��������  ��  ��    l     ��������  ��  ��    l     ����   I C list_position: Returns theItem's position in theList as an integer    � �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e r  i   
  I      ������ 0 list_position    !  o      ���� 0 	this_item  ! "��" o      ���� 0 	this_list  ��  ��   Y     "#��$%��# Z   &'����& =   ()( n    *+* 4    ��,
�� 
cobj, o    ���� 0 i  + o    ���� 0 	this_list  ) o    ���� 0 	this_item  ' L    -- o    ���� 0 i  ��  ��  �� 0 i  $ m    ���� % I   	��.��
�� .corecnte****       ****. o    ���� 0 	this_list  ��  ��   /0/ l     ��������  ��  ��  0 121 l     ��������  ��  ��  2 343 l     ��56��  5 ( " Prompt the user to enter the date   6 �77 D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e4 898 i    :;: I      ��<���� 0 
dateprompt 
datePrompt< =>= o      ���� 0 thetitle theTitle> ?��? o      ���� 0 	days_list  ��  ��  ; k    �@@ ABA r     CDC J     EE FGF m     HH �II  J a n u a r yG JKJ m    LL �MM  F e b r u a r yK NON m    PP �QQ 
 M a r c hO RSR m    TT �UU 
 A p r i lS VWV m    XX �YY  M a yW Z[Z m    \\ �]]  J u n e[ ^_^ m    `` �aa  J u l y_ bcb m    dd �ee  A u g u s tc fgf m    	hh �ii  S e p t e m b e rg jkj m   	 
ll �mm  O c t o b e rk non m   
 pp �qq  N o v e m b e ro r��r m    ss �tt  D e c e m b e r��  D o      ���� 0 months_list  B uvu l   ��������  ��  ��  v wxw l   ��yz��  y > 8 Get tomorrow's weekday as a seed default for the prompt   z �{{ p   G e t   t o m o r r o w ' s   w e e k d a y   a s   a   s e e d   d e f a u l t   f o r   t h e   p r o m p tx |}| Z    >~���~ >   ��� c    ��� l   ������ l   ������ n    ��� m    ��
�� 
wkdy� l   ������ l   ������ I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � m    ��
�� 
TEXT� m    �� ���  S a t u r d a y r   ! .��� l  ! ,������ [   ! ,��� l  ! &������ l  ! &������ I  ! &������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  � l  & +������ ]   & +��� m   & '���� � 1   ' *��
�� 
days��  ��  ��  ��  � o      ���� 0 tomorrow  ��  � l  1 >���� r   1 >��� l  1 <������ [   1 <��� l  1 6������ l  1 6������ I  1 6������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  � l  6 ;������ ]   6 ;��� m   6 7���� � 1   7 :��
�� 
days��  ��  ��  ��  � o      ���� 0 tomorrow  � 4 . Jump ahead a day if Saturday (mostly for dev)   � ��� \   J u m p   a h e a d   a   d a y   i f   S a t u r d a y   ( m o s t l y   f o r   d e v )} ��� l  ? H���� r   ? H��� J   ? F�� ���� l  ? D������ c   ? D��� n  ? B��� m   @ B��
�� 
wkdy� o   ? @���� 0 tomorrow  � m   B C��
�� 
TEXT��  ��  ��  � o      ���� 0 tmday tmDay� C = "Choose from list" requires a list for its default selection   � ��� z   " C h o o s e   f r o m   l i s t "   r e q u i r e s   a   l i s t   f o r   i t s   d e f a u l t   s e l e c t i o n� ��� l  I I��������  ��  ��  � ��� r   I b��� c   I `��� l  I ^������ I  I ^����
�� .gtqpchltns    @   @ ns  � o   I J���� 0 	days_list  � ����
�� 
prmp� m   M P�� ��� 8 P l e a s e   p i c k   t h e   e d i t i o n   d a y :� ����
�� 
inSL� o   S T���� 0 tmday tmDay� �����
�� 
appr� o   W X���� 0 thetitle theTitle��  ��  ��  � m   ^ _��
�� 
TEXT� o      ���� 0 theday theDay� ��� l  c {���� Z  c {������� =  c j��� 1   c f��
�� 
rslt� m   f i�� ��� 
 f a l s e� R   m w�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m   q t��������  ��  ��  � 6 0 Choosing "Cancel" in the dialog ends the script   � ��� `   C h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� l  | |��~�}�  �~  �}  � ��� l  | |�|���|  � 2 , Quick return if no date crunching is needed   � ��� X   Q u i c k   r e t u r n   i f   n o   d a t e   c r u n c h i n g   i s   n e e d e d� ��� Z   | ����{�z� =  | ���� o   | }�y�y 0 theday theDay� m   } ��� ��� , N o   d a y      w o r k i n g   a h e a d� k   � ��� ��� r   � ���� m   � ��� ��� * A   d a t e   n e e d s   e n t e r i n g� o      �x�x 0 pagedate pageDate� ��� r   � ���� m   � ��� ��� 
 A h e a d� o      �w�w 0 filedate fileDate� ��v� l  � ����� L   � ��� o   � ��u�u 0 theday theDay� $  For use in page-picker prompt   � ��� <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t�v  �{  �z  � ��� l  � ��t�s�r�t  �s  �r  � ��� l  � ��q���q  �   Predicted date crunching   � ��� 2   P r e d i c t e d   d a t e   c r u n c h i n g� ��� Z   �.� �p� =  � � o   � ��o�o 0 theday theDay l  � ��n�m c   � � o   � ��l�l 0 tmday tmDay m   � ��k
�k 
TEXT�n  �m    l  � �	 k   � �

  l  � ��j�j   ) # Set defaults to tomorrow's details    � F   S e t   d e f a u l t s   t o   t o m o r r o w ' s   d e t a i l s  r   � � n  � � 1   � ��i
�i 
day  o   � ��h�h 0 tomorrow   o      �g�g 0 prdate prDate  r   � � J   � � �f l  � ��e�d c   � � n  � �  m   � ��c
�c 
mnth  o   � ��b�b 0 tomorrow   m   � ��a
�a 
TEXT�e  �d  �f   o      �`�` 0 prmonth prMonth !�_! r   � �"#" n  � �$%$ 1   � ��^
�^ 
year% o   � ��]�] 0 tomorrow  # o      �\�\ 0 pryear prYear�_     Chosen day is tomorrow   	 �&& .   C h o s e n   d a y   i s   t o m o r r o w '(' >  � �)*) o   � ��[�[ 0 theday theDay* l  � �+�Z�Y+ c   � �,-, o   � ��X�X 0 tmday tmDay- m   � ��W
�W 
TEXT�Z  �Y  ( .�V. l  �*/01/ k   �*22 343 l  � ��U56�U  5 E ? Determine offset from tomorrow and create a date object for it   6 �77 ~   D e t e r m i n e   o f f s e t   f r o m   t o m o r r o w   a n d   c r e a t e   a   d a t e   o b j e c t   f o r   i t4 898 r   � �:;: n  � �<=< I   � ��T>�S�T 0 list_position  > ?@? l  � �A�R�QA c   � �BCB o   � ��P�P 0 tmday tmDayC m   � ��O
�O 
TEXT�R  �Q  @ D�ND o   � ��M�M 0 	days_list  �N  �S  =  f   � �; o      �L�L 0 
predictpos 
predictPos9 EFE r   � �GHG n  � �IJI I   � ��KK�J�K 0 list_position  K LML o   � ��I�I 0 theday theDayM N�HN o   � ��G�G 0 	days_list  �H  �J  J  f   � �H o      �F�F 0 	actualpos 	actualPosF OPO r   � �QRQ \   � �STS o   � ��E�E 0 	actualpos 	actualPosT o   � ��D�D 0 
predictpos 
predictPosR o      �C�C 0 shiftpos shiftPosP UVU Z   �WXY�BW ?  � �Z[Z o   � ��A�A 0 shiftpos shiftPos[ m   � ��@�@  X l  � �\]^\ r   � �_`_ [   � �aba o   � ��?�? 0 tomorrow  b l  � �c�>�=c ]   � �ded o   � ��<�< 0 shiftpos shiftPose 1   � ��;
�; 
days�>  �=  ` o      �:�: 0 predictedday predictedDay] "  Another day in current week   ^ �ff 8   A n o t h e r   d a y   i n   c u r r e n t   w e e kY ghg A  � �iji o   � ��9�9 0 shiftpos shiftPosj m   � ��8�8  h k�7k l  �
lmnl r   �
opo [   �qrq o   � ��6�6 0 tomorrow  r l  �s�5�4s ]   �tut l  �v�3�2v [   �wxw m   ��1�1 x o  �0�0 0 shiftpos shiftPos�3  �2  u 1  �/
�/ 
days�5  �4  p o      �.�. 0 predictedday predictedDaym   Implies next week   n �yy $   I m p l i e s   n e x t   w e e k�7  �B  V z{z l �-�,�+�-  �,  �+  { |}| l �*~�*  ~ - ' Set defaults with chosen day's details    ��� N   S e t   d e f a u l t s   w i t h   c h o s e n   d a y ' s   d e t a i l s} ��� r  ��� n ��� 1  �)
�) 
day � o  �(�( 0 predictedday predictedDay� o      �'�' 0 prdate prDate� ��� r  "��� J   �� ��&� l ��%�$� c  ��� n ��� m  �#
�# 
mnth� o  �"�" 0 predictedday predictedDay� m  �!
�! 
TEXT�%  �$  �&  � o      � �  0 prmonth prMonth� ��� r  #*��� n #(��� 1  $(�
� 
year� o  #$�� 0 predictedday predictedDay� o      �� 0 pryear prYear�  0 !  Chosen day is not tomorrow   1 ��� 6   C h o s e n   d a y   i s   n o t   t o m o r r o w�V  �p  � ��� l //����  �  �  � ��� l //����  � &   Prompt for month, date and year   � ��� @   P r o m p t   f o r   m o n t h ,   d a t e   a n d   y e a r� ��� r  /H��� c  /F��� l /D���� I /D���
� .gtqpchltns    @   @ ns  � o  /0�� 0 months_list  � ���
� 
prmp� m  36�� ��� , P l e a s e   p i c k   t h e   m o n t h :� ���
� 
inSL� o  9:�� 0 prmonth prMonth� ���
� 
appr� o  =>�� 0 thetitle theTitle�  �  �  � m  DE�
� 
TEXT� o      �� 0 themonth theMonth� ��� Z Ia����
� = IP��� 1  IL�	
�	 
rslt� m  LO�� ��� 
 f a l s e� R  S]���
� .ascrerr ****      � ****�  � ���
� 
errn� m  WZ�����  �  �
  � ��� r  b{��� c  by��� l bw���� n  bw��� 1  sw�
� 
ttxt� l bs�� ��� I bs����
�� .sysodlogaskr        TEXT� m  be�� ��� * P l e a s e   t y p e   t h e   d a t e :� ����
�� 
dtxt� o  hi���� 0 prdate prDate� �����
�� 
appr� o  lm���� 0 thetitle theTitle��  �   ��  �  �  � m  wx��
�� 
TEXT� o      ���� 0 thedate theDate� ��� Z |�������� = |���� 1  |��
�� 
rslt� m  ��� ��� 
 f a l s e� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  � ��� r  ����� c  ����� l �������� n  ����� 1  ����
�� 
ttxt� l �������� I ������
�� .sysodlogaskr        TEXT� m  ���� ��� * P l e a s e   t y p e   t h e   y e a r :� ����
�� 
dtxt� o  ������ 0 pryear prYear� �����
�� 
appr� o  ������ 0 thetitle theTitle��  ��  ��  ��  ��  � m  ����
�� 
TEXT� o      ���� 0 theyear theYear� ��� Z ��������� = ����� 1  ����
�� 
rslt� m  ���� ��� 
 f a l s e� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � . ( Pass date details to creation functions   � ��� P   P a s s   d a t e   d e t a i l s   t o   c r e a t i o n   f u n c t i o n s� ��� n ����� I  ��������� "0 create_pagedate create_pageDate� ��� o  ������ 0 theday theDay� ��� o  ������ 0 themonth theMonth� � � o  ������ 0 thedate theDate  �� o  ������ 0 theyear theYear��  ��  �  f  ���  n �� I  �������� "0 create_filedate create_fileDate  o  ������ 0 themonth theMonth 	
	 o  ������ 0 thedate theDate
  o  ������ 0 theyear theYear �� o  ������ 0 months_list  ��  ��    f  ��  l ����������  ��  ��   �� l �� L  �� o  ������ 0 theday theDay $  For use in page-picker prompt    � <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t��  9  l     ��������  ��  ��    l     ��������  ��  ��    l     ����   2 , Assemble date for use on the inDesign pages    � X   A s s e m b l e   d a t e   f o r   u s e   o n   t h e   i n D e s i g n   p a g e s   i    !"! I      ��#���� "0 create_pagedate create_pageDate# $%$ o      ���� 0 theday theDay% &'& o      ���� 0 themonth theMonth' ()( o      ���� 0 thedate theDate) *��* o      ���� 0 theyear theYear��  ��  " Z     �+,��-+ >    ./. o     ���� 0 theday theDay/ m    00 �11  S a t u r d a y, l   2342 k    55 676 r    898 l   :����: b    ;<; b    =>= b    ?@? b    ABA b    CDC b    	EFE o    ���� 0 theday theDayF m    GG �HH   D o   	 
���� 0 themonth theMonthB m    II �JJ   @ o    ���� 0 thedate theDate> m    KK �LL   < o    ���� 0 theyear theYear��  ��  9 o      ���� 0 pagedate pageDate7 M��M l   ��������  ��  ��  ��  3   Weekday pageDate   4 �NN "   W e e k d a y   p a g e D a t e��  - l   �OPQO k    �RR STS l   ��UV��  U &   Create a date object for Sunday   V �WW @   C r e a t e   a   d a t e   o b j e c t   f o r   S u n d a yT XYX r    0Z[Z l   .\����\ [    .]^] l   *_����_ 4    *��`
�� 
ldt ` l   )a����a b    )bcb b    'ded b    %fgf b    #hih b    !jkj b    lml o    ���� 0 theday theDaym m    nn �oo  ,  k o     ���� 0 thedate theDatei m   ! "pp �qq   g o   # $���� 0 themonth theMonthe m   % &rr �ss   c o   ' (���� 0 theyear theYear��  ��  ��  ��  ^ l  * -t����t ]   * -uvu m   * +���� v 1   + ,��
�� 
days��  ��  ��  ��  [ o      ���� 0 sun  Y wxw l  1 1��������  ��  ��  x yzy l  1 1��{|��  { 2 , Check if the weekend spans a month boundary   | �}} X   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   m o n t h   b o u n d a r yz ~~ Z   1 J������ >  1 8��� l  1 6������ c   1 6��� n  1 4��� m   2 4��
�� 
mnth� o   1 2���� 0 sun  � m   4 5��
�� 
TEXT��  ��  � o   6 7���� 0 themonth theMonth� k   ; D�� ��� l  ; ;������  � ' ! Sunday month with trailing space   � ��� B   S u n d a y   m o n t h   w i t h   t r a i l i n g   s p a c e� ���� r   ; D��� b   ; B��� l  ; @������ c   ; @��� n  ; >��� m   < >��
�� 
mnth� o   ; <���� 0 sun  � m   > ?��
�� 
TEXT��  ��  � m   @ A�� ���   � o      ���� 0 secondmonth secondMonth��  ��  � r   G J��� m   G H�� ���  � o      ���� 0 secondmonth secondMonth ��� l  K K��������  ��  ��  � ��� l  K K����  � 2 , Check if the weekend spans a month boundary   � ��� X   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   m o n t h   b o u n d a r y� ��� Z   K f���~�� >  K R��� l  K P��}�|� c   K P��� n  K N��� 1   L N�{
�{ 
year� o   K L�z�z 0 sun  � m   N O�y
�y 
TEXT�}  �|  � o   P Q�x�x 0 theyear theYear� k   U ^�� ��� l  U U�w���w  � &   Sunday year with leading hyphen   � ��� @   S u n d a y   y e a r   w i t h   l e a d i n g   h y p h e n� ��v� r   U ^��� l  U \��u�t� b   U \��� m   U V�� ���  -� l  V [��s�r� c   V [��� n  V Y��� 1   W Y�q
�q 
year� o   V W�p�p 0 sun  � m   Y Z�o
�o 
TEXT�s  �r  �u  �t  � o      �n�n 0 
secondyear 
secondYear�v  �~  � r   a f��� m   a d�� ���  � o      �m�m 0 
secondyear 
secondYear� ��� l  g g�l�k�j�l  �k  �j  � ��� r   g ���� l  g ���i�h� b   g ���� b   g ���� b   g ���� b   g ���� b   g x��� b   g v��� b   g r��� b   g p��� b   g l��� m   g j�� ���   S a t u r d a y / S u n d a y  � o   j k�g�g 0 themonth theMonth� m   l o�� ���   � o   p q�f�f 0 thedate theDate� m   r u�� ���  -� o   v w�e�e 0 secondmonth secondMonth� l  x ��d�c� c   x ��� n  x }��� 1   y }�b
�b 
day � o   x y�a�a 0 sun  � m   } ~�`
�` 
TEXT�d  �c  � m   � ��� ���   � o   � ��_�_ 0 theyear theYear� o   � ��^�^ 0 
secondyear 
secondYear�i  �h  � o      �]�] 0 pagedate pageDate� ��\� l  � ��[���[  � Z T Empty secondMonth/Year strings (set above) mean this can be used for every Saturday   � ��� �   E m p t y   s e c o n d M o n t h / Y e a r   s t r i n g s   ( s e t   a b o v e )   m e a n   t h i s   c a n   b e   u s e d   f o r   e v e r y   S a t u r d a y�\  P   Saturday/Sunday pageDate   Q ��� 2   S a t u r d a y / S u n d a y   p a g e D a t e  ��� l     �Z�Y�X�Z  �Y  �X  � ��� l     �W�V�U�W  �V  �U  � ��� l     �T���T  � . ( Assemble date for use in the file names   � ��� P   A s s e m b l e   d a t e   f o r   u s e   i n   t h e   f i l e   n a m e s� ��� i       I      �S�R�S "0 create_filedate create_fileDate  o      �Q�Q 0 themonth theMonth  o      �P�P 0 thedate theDate  o      �O�O 0 theyear theYear 	�N	 o      �M�M 0 months_list  �N  �R   k     =

  Z    �L�K A     l    �J�I c      o     �H�H 0 thedate theDate m    �G
�G 
nmbr�J  �I   m    �F�F 
 r     l   �E�D b     m    	 �  0 o   	 
�C�C 0 thedate theDate�E  �D   o      �B�B 0 thedate theDate�L  �K    l   �A�@�?�A  �@  �?    r      n   !"! I    �>#�=�> 0 list_position  # $%$ o    �<�< 0 themonth theMonth% &�;& o    �:�: 0 months_list  �;  �=  "  f      o      �9�9 0 themonth theMonth '(' Z   +)*�8�7) A   +,+ o    �6�6 0 themonth theMonth, m    �5�5 
* r   " '-.- l  " %/�4�3/ b   " %010 m   " #22 �33  01 o   # $�2�2 0 themonth theMonth�4  �3  . o      �1�1 0 themonth theMonth�8  �7  ( 454 l  , ,�0�/�.�0  �/  �.  5 6�-6 l  , =7897 r   , =:;: l  , ;<�,�+< b   , ;=>= b   , /?@? o   , -�*�* 0 thedate theDate@ o   - .�)�) 0 themonth theMonth> l  / :A�(�'A n   / :BCB 7 0 :�&DE
�& 
ctxtD m   4 6�%�% E m   7 9�$�$ C o   / 0�#�# 0 theyear theYear�(  �'  �,  �+  ; o      �"�" 0 filedate fileDate8 ? 9 Combines the date, month and last two digits of the year   9 �FF r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r�-  � GHG l     �!� ��!  �   �  H IJI l     ����  �  �  J KLK l     �MN�  M Y S pageGen: Opens the master file and calls functions to construct the requested page   N �OO �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g eL PQP l     �RS�  R ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   S �TT �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e rQ UVU l     �WX�  W @ : The page number is that of the left-hand page for spreads   X �YY t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d sV Z[Z i    \]\ I      �^�� 0 pagegen pageGen^ _`_ o      �� 0 pagetype pageType` aba o      �� 0 	themaster 	theMasterb cdc o      �� 0 theslug theSlugd e�e o      �� 0 
pagenumber 
pageNumber�  �  ] O     Xfgf k    Whh iji I   �k�
� .aevtodocnull  �    alisk o    	��  0 masterdocument masterDocument�  j lml n   non I    �p�� 0 applymaster applyMasterp qrq o    �� 0 	themaster 	theMasterr sts o    �� 0 pagetype pageTypet u�
u o    �	�	 0 
pagenumber 
pageNumber�
  �  o  f    m vwv l   ����  �  �  w xyx Z    'z{��z E    |}| o    �� 0 	themaster 	theMaster} m    ~~ � 
 N e w s -{ l   #���� n   #��� I    #����  0 drawembargobox drawEmbargoBox� �� � o    ���� 0 pagetype pageType�   �  �  f    � 2 , Hyphen needed to exclude Feat-NewsReviews-*   � ��� X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *�  �  y ��� l  ( (��������  ��  ��  � ��� Z   ( @������� G   ( 3��� =  ( +��� o   ( )���� 0 	themaster 	theMaster� m   ) *�� ���  F e a t - T V� =  . 1��� o   . /���� 0 	themaster 	theMaster� m   / 0�� ���  F e a t - R e d L i s t� n  6 <��� I   7 <������� "0 changelegaldate changeLegalDate� ���� o   7 8���� 0 	themaster 	theMaster��  ��  �  f   6 7��  ��  � ��� l  A A��������  ��  ��  � ��� n  A H��� I   B H������� 0 	cleansave 	cleanSave� ��� o   B C���� 0 
pagenumber 
pageNumber� ���� o   C D���� 0 theslug theSlug��  ��  �  f   A B� ���� O  I W��� I  O V�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m   Q R��
�� savoyes ��  � l  I L������ 1   I L��
�� 
pacd��  ��  ��  g m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  [ ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    !��� I      ������� 0 applymaster applyMaster� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 pagetype pageType� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O    ���� O   ���� Z   
������� =  
 ��� o   
 ���� 0 pagetype pageType� m    �� ���  s i n g l e� k    ��� ��� l   ���� r    ��� 4    ���
�� 
mspr� o    ���� 0 	themaster 	theMaster� n      ��� 1    ��
�� 
pmas� 4    ���
�� 
page� m    ���� � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ���� Z    �������� H     �� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� ��� I  # 3����
�� .InESovrrobj         obj � n   # *��� 4   ' *���
�� 
txtf� m   ( )�� ���  E d i t i o n   d a t e� 4   # '���
�� 
mspr� o   % &���� 0 	themaster 	theMaster� �����
�� 
dPge� 4   + /���
�� 
page� m   - .���� ��  � ��� l  4 ?���� r   4 ?��� o   4 5���� 0 pagedate pageDate� l     ������ n      ��� 1   < >��
�� 
pcnt� n   5 <��� 4   9 <���
�� 
txtf� m   : ;�� ���  E d i t i o n   d a t e� 4   5 9���
�� 
page� m   7 8���� ��  ��  �   Sets the date   � �      S e t s   t h e   d a t e�  Q   @ p�� l  C g I  C g��	
�� .InESovrrobj         obj  l  C ^
����
 6  C ^ n   C K 2   I K��
�� 
cobj n   C I 1   G I��
�� 
mpgs 4   C G��
�� 
page m   E F����  =  N ] n  O W 1   S W��
�� 
pnam 1   O S��
�� 
pilr m   X \ �  W o r k��  ��  	 ����
�� 
dPge 4   _ c��
�� 
page m   a b���� ��   o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items    � �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s R      ������
�� .ascrerr ****      � ****��  ��  ��   �� Z   q ����� >  q v o   q r���� 0 
pagenumber 
pageNumber m   r u   �!!   l  y �"#$" k   y �%% &'& I  y ���()
�� .InESovrrobj         obj ( n   y �*+* 4   } ���,
�� 
txtf, m   ~ �-- �..  P a g e   n u m b e r+ 4   y }��/
�� 
mspr/ o   { |���� 0 	themaster 	theMaster) ��0��
�� 
dPge0 4   � ���1
�� 
page1 m   � ����� ��  ' 2��2 r   � �343 o   � ����� 0 
pagenumber 
pageNumber4 l     5����5 n      676 1   � ���
�� 
pcnt7 n   � �898 4   � ���:
�� 
txtf: m   � �;; �<<  P a g e   n u m b e r9 4   � ���=
�� 
page= m   � ����� ��  ��  ��  # G A Mostly to skip the front, which doesn't have a page number frame   $ �>> �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��  � 6 0 The X-Blanks have no page number or date frames   � �?? `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s��  ��  ��  � @A@ =  � �BCB o   � ����� 0 pagetype pageTypeC m   � �DD �EE  s p r e a dA F��F k   ��GG HIH l  � �JKLJ I  � �����M
�� .corecrel****      � null��  M ��NO
�� 
koclN m   � ���
�� 
sprdO ��P��
�� 
prdtP K   � �QQ ��R��
�� 
pmasR 4   � ���S
�� 
msprS o   � ����� 0 	themaster 	theMaster��  ��  K G A Creates a two-page spread at pages 2 & 3 with the master applied   L �TT �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e dI U��U Z   ��VW����V H   � �XX E   � �YZY o   � ����� 0 	themaster 	theMasterZ m   � �[[ �\\  X - B l a n kW k   ��]] ^_^ I  � ���`a
�� .InESovrrobj         obj ` n   � �bcb 4   � ���d
�� 
txtfd m   � �ee �ff  L - E d i t i o n   d a t ec 4   � ���g
�� 
msprg o   � ����� 0 	themaster 	theMastera ��h��
�� 
dPgeh 4   � ���i
�� 
pagei m   � ��� ��  _ jkj I  � ��~lm
�~ .InESovrrobj         obj l n   � �non 4   � ��}p
�} 
txtfp m   � �qq �rr  R - E d i t i o n   d a t eo 4   � ��|s
�| 
msprs o   � ��{�{ 0 	themaster 	theMasterm �zt�y
�z 
dPget 4   � ��xu
�x 
pageu m   � ��w�w �y  k vwv l  � xyzx r   � {|{ o   � ��v�v 0 pagedate pageDate| l     }�u�t} n      ~~ 1   � ��s
�s 
pcnt n   � ���� 4   � ��r�
�r 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ��q�
�q 
page� m   � ��p�p �u  �t  y * $ Sets the date on the left-hand page   z ��� H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g ew ��� l ���� r  ��� o  �o�o 0 pagedate pageDate� l     ��n�m� n      ��� 1  �l
�l 
pcnt� n  ��� 4  �k�
�k 
txtf� m  
�� ���  R - E d i t i o n   d a t e� 4  �j�
�j 
page� m  �i�i �n  �m  � + % Sets the date on the right-hand page   � ��� J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e� ��� Q  d���h� k  [�� ��� I 6�g��
�g .InESovrrobj         obj � l -��f�e� 6 -��� n  ��� 2  �d
�d 
cobj� n  ��� 1  �c
�c 
mpgs� 4  �b�
�b 
page� m  �a�a � = ,��� n &��� 1  "&�`
�` 
pnam� 1  "�_
�_ 
pilr� m  '+�� ���  W o r k�f  �e  � �^��]
�^ 
dPge� 4  .2�\�
�\ 
page� m  01�[�[ �]  � ��Z� I 7[�Y��
�Y .InESovrrobj         obj � l 7R��X�W� 6 7R��� n  7?��� 2  =?�V
�V 
cobj� n  7=��� 1  ;=�U
�U 
mpgs� 4  7;�T�
�T 
page� m  9:�S�S � = BQ��� n CK��� 1  GK�R
�R 
pnam� 1  CG�Q
�Q 
pilr� m  LP�� ���  W o r k�X  �W  � �P��O
�P 
dPge� 4  SW�N�
�N 
page� m  UV�M�M �O  �Z  � R      �L�K�J
�L .ascrerr ****      � ****�K  �J  �h  � ��I� Z  e����H�G� > ej��� o  ef�F�F 0 
pagenumber 
pageNumber� m  fi�� ���  � k  m��� ��� I m�E��
�E .InESovrrobj         obj � n  mv��� 4  qv�D�
�D 
txtf� m  ru�� ���  L - P a g e   n u m b e r� 4  mq�C�
�C 
mspr� o  op�B�B 0 	themaster 	theMaster� �A��@
�A 
dPge� 4  w{�?�
�? 
page� m  yz�>�> �@  � ��� I ���=��
�= .InESovrrobj         obj � n  ����� 4  ���<�
�< 
txtf� m  ���� ���  R - P a g e   n u m b e r� 4  ���;�
�; 
mspr� o  ���:�: 0 	themaster 	theMaster� �9��8
�9 
dPge� 4  ���7�
�7 
page� m  ���6�6 �8  � ��� r  ����� o  ���5�5 0 
pagenumber 
pageNumber� l     ��4�3� n      ��� 1  ���2
�2 
pcnt� n  ����� 4  ���1�
�1 
txtf� m  ���� ���  L - P a g e   n u m b e r� 4  ���0�
�0 
page� m  ���/�/ �4  �3  � ��.� r  ����� l ����-�,� c  ����� l ����+�*� [  ����� o  ���)�) 0 
pagenumber 
pageNumber� m  ���(�( �+  �*  � m  ���'
�' 
TEXT�-  �,  � l     ��&�%� n      ��� 1  ���$
�$ 
pcnt� n  ����� 4  ���#�
�# 
txtf� m  ��   �  R - P a g e   n u m b e r� 4  ���"
�" 
page m  ���!�! �&  �%  �.  �H  �G  �I  ��  ��  ��  ��  ��  � l   � � 1    �
� 
pacd�   �  � m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l     ����  �  �    l     ����  �  �   	
	 l     ��   X R changeLegalDate: Overrides and sets the legal date on the weekday TV and Red List    � �   c h a n g e L e g a l D a t e :   O v e r r i d e s   a n d   s e t s   t h e   l e g a l   d a t e   o n   t h e   w e e k d a y   T V   a n d   R e d   L i s t
  i   " % I      ��� "0 changelegaldate changeLegalDate � o      �� 0 	themaster 	theMaster�  �   O     W O    V Z   
 U� =  
  o   
 �� 0 	themaster 	theMaster m     �  F e a t - R e d L i s t k    ,  !  I    �"#
� .InESovrrobj         obj " n    $%$ 4    �&
� 
txtf& m    '' �((  L e g a l   d a t e% 4    �)
� 
mspr) o    �� 0 	themaster 	theMaster# �*�
� 
dPge* 4    �
+
�
 
page+ m    �	�	 �  ! ,�, r   ! ,-.- o   ! "�� 0 pagedate pageDate. l     /��/ n      010 1   ) +�
� 
pcnt1 n   " )232 4   & )�4
� 
txtf4 m   ' (55 �66  L e g a l   d a t e3 4   " &�7
� 
page7 m   $ %�� �  �  �   898 =  / 2:;: o   / 0� �  0 	themaster 	theMaster; m   0 1<< �==  F e a t - T V9 >��> k   5 Q?? @A@ I  5 E��BC
�� .InESovrrobj         obj B n   5 <DED 4   9 <��F
�� 
txtfF m   : ;GG �HH  L e g a l   d a t eE 4   5 9��I
�� 
msprI o   7 8���� 0 	themaster 	theMasterC ��J��
�� 
dPgeJ 4   = A��K
�� 
pageK m   ? @���� ��  A L��L r   F QMNM o   F G���� 0 pagedate pageDateN l     O����O n      PQP 1   N P��
�� 
pcntQ n   G NRSR 4   K N��T
�� 
txtfT m   L MUU �VV  L e g a l   d a t eS 4   G K��W
�� 
pageW m   I J���� ��  ��  ��  ��  �   l   X����X 1    ��
�� 
pacd��  ��   m     YY�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   Z[Z l     ��������  ��  ��  [ \]\ l     ��������  ��  ��  ] ^_^ l     ��`a��  ` c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   a �bb �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e_ cdc i   & )efe I      ��g����  0 drawembargobox drawEmbargoBoxg h��h o      ���� 0 pagetype pageType��  ��  f O     �iji O    �klk Z    �mno��m =   pqp o    ���� 0 pagetype pageTypeq m    rr �ss  s i n g l en k    Ett uvu O    .wxw r    -yzy I   +����{
�� .corecrel****      � null��  { ��|}
�� 
kocl| m    ��
�� 
txtf} ��~��
�� 
prdt~ K    ' ����
�� 
gbnd� J    #�� ��� m    �� @,      � ��� m    �� �b�     � ��� m     �� @\�     � ���� m     !�� �I      ��  � �����
�� 
pcnt� m   $ %�� ��� " E m b a r g o e d   s t o r i e s��  ��  z o      ���� 0 ebox eBoxx 4    ���
�� 
page� m    ���� v ��� l  / =���� r   / =��� 4   / 7���
�� 
ObSt� m   3 6�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   8 <��
�� 
aobs� o   7 8���� 0 ebox eBox��  ��  � K E Set separately as it throws an error if you try to do it on creation   � ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n� ���� r   > E��� m   > ?��
�� boovtrue� n      ��� 1   @ D��
�� 
plck� o   ? @���� 0 ebox eBox��  o ��� =  H M��� o   H I���� 0 pagetype pageType� m   I L�� ���  s p r e a d� ���� k   P ��� ��� O   P o��� r   W n��� I  W l�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   Y Z��
�� 
txtf� �����
�� 
prdt� K   [ h�� ����
�� 
gbnd� J   \ b�� ��� m   \ ]�� @,      � ��� m   ] ^�� �b�     � ��� m   ^ _�� @\�     � ���� m   _ `�� �I      ��  � �����
�� 
pcnt� m   c f�� ��� " E m b a r g o e d   s t o r i e s��  ��  � o      ���� 0 ebox eBox� 4   P T���
�� 
page� m   R S���� � ��� r   p ~��� 4   p x���
�� 
ObSt� m   t w�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   y }��
�� 
aobs� o   x y���� 0 ebox eBox��  ��  � ���� r    ���� m    ���
�� boovtrue� n      ��� 1   � ���
�� 
plck� o   � ����� 0 ebox eBox��  ��  ��  l l   ������ 4   ���
�� 
docu� m    ���� ��  ��  j m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  d ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   * -��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
pagenumber 
pageNumber� ���� o      ���� 0 theslug theSlug��  ��  � O     _��� O    ^��� k   
 ]�� ��� r   
 ��� m   
 ��
�� boovtrue� n      ��� 1    ��
�� 
plck� 4    ���
�� 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    ��
�� boovtrue� n      �	 � 1    ��
�� 
plck	  4    ��	
�� 
layr	 m    		 �		  F u r n i t u r e� 			 r    !			 m    		 �				  W o r k	 1     ��
�� 
pacl	 	
		
 l  " "��������  ��  ��  	 			 Z   " I			��	 l  " '	����	 =  " '			 `   " %			 o   " #���� 0 
pagenumber 
pageNumber	 m   # $���� 	 m   % &����  ��  ��  	 l  * 2				 r   * 2			 J   * .		 			 m   * +		 @.      	 	��	 m   + ,	 	  @&      ��  	 l     	!����	! 1   . 1��
�� 
zero��  ��  	 ( " For left-hand singles and spreads   	 �	"	" D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s	 	#	$	# l  5 :	%����	% =  5 :	&	'	& `   5 8	(	)	( o   5 6���� 0 
pagenumber 
pageNumber	) m   6 7���� 	' m   8 9���� ��  ��  	$ 	*��	* l  = E	+	,	-	+ r   = E	.	/	. J   = A	0	0 	1	2	1 m   = >	3	3 @"      	2 	4��	4 m   > ?	5	5 @&      ��  	/ l     	6����	6 1   A D��
�� 
zero��  ��  	,   For right-hand singles   	- �	7	7 .   F o r   r i g h t - h a n d   s i n g l e s��  ��  	 	8	9	8 l  J J��������  ��  ��  	9 	:�	: I  J ]�~�}	;
�~ .CoResavedocu        obj �}  	; �|	<�{
�| 
kfil	< b   L Y	=	>	= b   L W	?	@	? b   L U	A	B	A b   L S	C	D	C o   L Q�z�z $0 freshpagesfolder freshPagesFolder	D o   Q R�y�y 0 theslug theSlug	B m   S T	E	E �	F	F  _	@ o   U V�x�x 0 filedate fileDate	> m   W X	G	G �	H	H 
 . i n d d�{  �  � l   	I�w�v	I 1    �u
�u 
pacd�w  �v  � m     	J	J�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~��  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � 	K	L	K l     �t�s�r�t  �s  �r  	L 	M	N	M l     �q�p�o�q  �p  �o  	N 	O	P	O l     �n	Q	R�n  	Q f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	R �	S	S �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	P 	T	U	T i   . 1	V	W	V I      �m�l�k�m 0 customedition customEdition�l  �k  	W k    �	X	X 	Y	Z	Y l     �j�i�h�j  �i  �h  	Z 	[	\	[ l     �g	]	^�g  	] | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	^ �	_	_ �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	\ 	`	a	` l     �f	b	c�f  	b a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	c �	d	d �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	a 	e	f	e l     �e	g	h�e  	g [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	h �	i	i �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	f 	j	k	j l     �d�c�b�d  �c  �b  	k 	l	m	l l     �a	n	o�a  	n > 8 The human-friendly names used in the TextWrangler file	   	o �	p	p p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		m 	q	r	q r     U	s	t	s J     S	u	u 	v	w	v m     	x	x �	y	y 
 F r o n t	w 	z	{	z m    	|	| �	}	}  S a t F r o n t	{ 	~		~ m    	�	� �	�	�  H o m e _ S	 	�	�	� m    	�	� �	�	�  H o m e _ L	� 	�	�	� m    	�	� �	�	�  H o m e _ R	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ S	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ L	� 	�	�	� m    	�	� �	�	�  F o r e i g n _ R	� 	�	�	� m    		�	� �	�	�  S t r u g g l e _ S	� 	�	�	� m   	 
	�	� �	�	�  S t r u g g l e _ L	� 	�	�	� m   
 	�	� �	�	�  S t r u g g l e _ R	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ S	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ L	� 	�	�	� m    	�	� �	�	�  N e w s R e v i e w s _ R	� 	�	�	� m    	�	� �	�	�  S p r e a d	� 	�	�	� m    	�	� �	�	�  T V	� 	�	�	� m    	�	� �	�	� 
 S a t T V	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ S	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ L	� 	�	�	� m    	�	� �	�	�  L e t t e r s _ R	� 	�	�	� m    	�	� �	�	�  R e d L i s t	� 	�	�	� m    "	�	� �	�	�  F e a t _ S	� 	�	�	� m   " %	�	� �	�	�  F e a t _ L	� 	�	�	� m   % (	�	� �	�	�  F e a t _ R	� 	�	�	� m   ( +	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   + .	�	� �	�	�  A r t s _ S	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ R	� 	�	�	� m   @ C	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   F I
 
  �

  B l a n k _ S	� 


 m   I L

 �

  B l a n k _ L
 
�`
 m   L O

 �

  B l a n k _ R�`  	t o      �_�_ 0 
human_list  	r 
	


	 l  V V�^

�^  
    The InDesign master names   
 �

 4   T h e   I n D e s i g n   m a s t e r   n a m e s

 


 r   V �


 J   V �

 


 m   V Y

 �

  N e w s - F r o n t
 


 m   Y \

 �

  N e w s - S a t F r o n t
 


 m   \ _

 �

  N e w s - H o m e - S p l i t
 

 
 m   _ b
!
! �
"
"  N e w s - H o m e - L
  
#
$
# m   b e
%
% �
&
&  N e w s - H o m e - R
$ 
'
(
' m   e h
)
) �
*
* $ N e w s - F o r e i g n - S p l i t
( 
+
,
+ m   h k
-
- �
.
.  N e w s - F o r e i g n - L
, 
/
0
/ m   k n
1
1 �
2
2  N e w s - F o r e i g n - R
0 
3
4
3 m   n q
5
5 �
6
6 & F e a t - S t r u g g l e - S p l i t
4 
7
8
7 m   q t
9
9 �
:
:  F e a t - S t r u g g l e - L
8 
;
<
; m   t w
=
= �
>
>  F e a t - S t r u g g l e - R
< 
?
@
? m   w z
A
A �
B
B * F e a t - N e w s R e v i e w - S p l i t
@ 
C
D
C m   z }
E
E �
F
F " F e a t - N e w s R e v i e w - L
D 
G
H
G m   } �
I
I �
J
J " F e a t - N e w s R e v i e w - R
H 
K
L
K m   � �
M
M �
N
N  F e a t - S p r e a d
L 
O
P
O m   � �
Q
Q �
R
R  F e a t - T V
P 
S
T
S m   � �
U
U �
V
V  F e a t - S a t T V
T 
W
X
W m   � �
Y
Y �
Z
Z $ F e a t - L e t t e r s - S p l i t
X 
[
\
[ m   � �
]
] �
^
^  F e a t - L e t t e r s - L
\ 
_
`
_ m   � �
a
a �
b
b  F e a t - L e t t e r s - R
` 
c
d
c m   � �
e
e �
f
f  F e a t - R e d L i s t
d 
g
h
g m   � �
i
i �
j
j   F e a t - B l a n k - S p l i t
h 
k
l
k m   � �
m
m �
n
n  F e a t - B l a n k - L
l 
o
p
o m   � �
q
q �
r
r  F e a t - B l a n k - R
p 
s
t
s m   � �
u
u �
v
v  A r t s - E n t s - S p l i t
t 
w
x
w m   � �
y
y �
z
z   A r t s - B l a n k - S p l i t
x 
{
|
{ m   � �
}
} �
~
~  A r t s - B l a n k - L
| 

�
 m   � �
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
��]
� m   � �
�
� �
�
�  X - B l a n k - R�]  
 o      �\�\ 0 masters_list  
 
�
�
� l  � ��[
�
��[  
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
�    m   �  R e d L i s t  m   �  F e a t u r e s 	 m  

 �  F e a t u r e	  m   �  F e a t u r e  m   �  A r t s - E n t s  m   �  A r t s  m   �  A r t s  m    �  A r t s  !  m   #"" �##  B a c k! $%$ m  #&&& �'' 
 S p o r t% ()( m  &)** �++ 
 S p o r t) ,-, m  ),.. �// 
 S p o r t- 010 m  ,/22 �33  R a c i n g1 454 m  /266 �77  R a c i n g5 898 m  25:: �;; 
 B L A N K9 <=< m  58>> �?? 
 B L A N K= @�Z@ m  8;AA �BB 
 B L A N K�Z  
� o      �Y�Y 0 
slugs_list  
� CDC l BB�X�W�V�X  �W  �V  D EFE l BB�UGH�U  G 1 + Single-page masters (used to set pageType)   H �II V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )F JKJ r  B�LML J  B�NN OPO m  BEQQ �RR  N e w s - F r o n tP STS m  EHUU �VV  N e w s - S a t F r o n tT WXW m  HKYY �ZZ  N e w s - H o m e - LX [\[ m  KN]] �^^  N e w s - H o m e - R\ _`_ m  NQaa �bb  N e w s - F o r e i g n - L` cdc m  QTee �ff  N e w s - F o r e i g n - Rd ghg m  TWii �jj  F e a t - S t r u g g l e - Lh klk m  WZmm �nn  F e a t - S t r u g g l e - Rl opo m  Z]qq �rr " F e a t - N e w s R e v i e w - Lp sts m  ]`uu �vv " F e a t - N e w s R e v i e w - Rt wxw m  `cyy �zz  F e a t - L e t t e r s - Lx {|{ m  cf}} �~~  F e a t - L e t t e r s - R| � m  fi�� ���  F e a t - R e d L i s t� ��� m  il�� ���  F e a t - B l a n k - L� ��� m  lo�� ���  F e a t - B l a n k - R� ��� m  or�� ���  A r t s - B l a n k - L� ��� m  ru�� ���  A r t s - B l a n k - R� ��� m  ux�� ���  S p r t - B a c k� ��� m  x{�� ���  S p r t - B l a n k - L� ��� m  {~�� ���  S p r t - B l a n k - R� ��� m  ~��� ���  S p r t - R a c i n g - L� ��� m  ���� ���  S p r t - R a c i n g - R� ��� m  ���� ���  X - B l a n k - L� ��T� m  ���� ���  X - B l a n k - R�T  M o      �S�S 0 singles_list  K ��� l ���R���R  � , & Spread masters (used to set pageType)   � ��� L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )� ��� r  ����� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V� ��� m  ���� ���  F e a t - S a t T V� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��Q� m  ���� ���  X - B l a n k - S p l i t�Q  � o      �P�P 0 spreads_list  � ��� l ���O�N�M�O  �N  �M  � ��L� O  ����� O  ����� k  ���� ��� l ������ r  ����� l ����K�J� I ���I��
�I .R*chFindMtch���     TEXT� m  ���� ���  ^ # S t a r t s   h e r e # $� �H��G
�H 
Opts� K  ��   �F
�F 
SMod m  ���E
�E SModGrep �D�C
�D 
STop m  ���B
�B boovtrue�C  �G  �K  �J  � o      �A�A 0 hashline hashLine�   Finds the beginning line   � � 2   F i n d s   t h e   b e g i n n i n g   l i n e�  l ��	 r  ��

 l ���@�? [  �� l ���>�= l ���<�; n  �� 1  ���:
�: 
SLin l ���9�8 n  �� 1  ���7
�7 
MSpc o  ���6�6 0 hashline hashLine�9  �8  �<  �;  �>  �=   m  ���5�5 �@  �?   o      �4�4 0 thestart theStart : 4 The first instruction is on the line after hashLine   	 � h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e  l � r  � l ��3�2 1  ��1
�1 
ELin�3  �2   o      �0�0 0 theend theEnd @ : The last instruction must be on the last line of the file    � t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e  !  l �/�.�-�/  �.  �-  ! "#" Y  �$�,%&�+$ l �'()' k  �** +,+ l --./- r  -010 l +2�*�)2 I +�(34
�( .R*chFindMtch���     TEXT3 m  55 �66  ^ ( . + ) \ t ( . + ) $4 �'78
�' 
FnIn7 4  �&9
�& 
clin9 o  �%�% 0 x  8 �$:�#
�$ 
Opts: K  %;; �"<�!
�" 
SMod< m   #� 
�  SModGrep�!  �#  �*  �)  1 o      �� 0 searchresult searchResult. 9 3 Finds characters, then a tab, then more characters   / �== f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s, >?> l ..����  �  �  ? @A@ l .;BCDB r  .;EFE l .9G��G I .9��H
� .R*chGSubutxt    ��� null�  H �I�
� 
RplPI m  25JJ �KK  \ 1�  �  �  F o      �� 0 
pagenumber 
pageNumberC < 6 The page number (or a spread's left-hand page number)   D �LL l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )A MNM l <IOPQO r  <IRSR l <GT��T I <G��U
� .R*chGSubutxt    ��� null�  U �V�
� 
RplPV m  @CWW �XX  \ 2�  �  �  S o      �� 0 hmaster hMasterP = 7 Human-friendly master name, as contained in human_list   Q �YY n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s tN Z[Z l JJ����  �  �  [ \�
\ Z  J�]^�	�] H  JT__ E  JS`a` l JOb��b n  JOcdc 1  KO�
� 
MTxtd o  JK�� 0 searchresult searchResult�  �  a m  ORee �ff  - 	 -^ l W�ghig k  W�jj klk l W`mnom r  W`pqp l W^r��r n W^sts I  X^�u� � 0 list_position  u vwv o  XY���� 0 hmaster hMasterw x��x o  YZ���� 0 
human_list  ��  �   t  f  WX�  �  q o      ���� 0 listpos listPosn Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   o �yy �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s tl z{z l ai|}~| r  ai� l ag������ n  ag��� 4  bg���
�� 
cobj� o  ef���� 0 listpos listPos� o  ab���� 0 masters_list  ��  ��  � o      ���� 0 	themaster 	theMaster} 1 + Sets theMaster to the InDesign master name   ~ ��� V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m e{ ��� l jj��������  ��  ��  � ��� Z  j������� E jm��� o  jk���� 0 singles_list  � o  kl���� 0 	themaster 	theMaster� r  pu��� m  ps�� ���  s i n g l e� o      ���� 0 pagetype pageType� ��� E x{��� o  xy���� 0 spreads_list  � o  yz���� 0 	themaster 	theMaster� ���� r  ~���� m  ~��� ���  s p r e a d� o      ���� 0 pagetype pageType��  ��  � ��� l ����������  ��  ��  � ��� Z  �������� = ����� o  ������ 0 pagetype pageType� m  ���� ���  s i n g l e� l ������ r  ����� l �������� b  ����� b  ����� o  ������ 0 
pagenumber 
pageNumber� m  ���� ���  _� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 listpos listPos� o  ������ 0 
slugs_list  ��  ��  ��  ��  � o      ���� 0 theslug theSlug� 2 , Block to set the slug used to name the file   � ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l e� ��� = ����� o  ������ 0 pagetype pageType� m  ���� ���  s p r e a d� ���� r  ����� l �������� b  ����� b  ����� b  ����� b  ����� o  ������ 0 
pagenumber 
pageNumber� m  ���� ���  -� l �������� [  ����� o  ������ 0 
pagenumber 
pageNumber� m  ������ ��  ��  � m  ���� ���  _� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 listpos listPos� o  ������ 0 
slugs_list  ��  ��  ��  ��  � o      ���� 0 theslug theSlug��  ��  � ��� l ����������  ��  ��  � ��� Z  ��������� G  ����� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      ���� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l��  ��  � ��� l ����������  ��  ��  � ��� l ������ n ����� I  ��������� 0 pagegen pageGen� ��� o  ������ 0 pagetype pageType� ��� o  ������ 0 	themaster 	theMaster� ��� o  ������ 0 theslug theSlug� ���� o  ������ 0 
pagenumber 
pageNumber��  ��  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ���� l ����������  ��  ��  ��  h : 4 Lines consisting of "hyphen tab hyphen" are skipped   i �   h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�	  �  �
  ( P J Goes through each line from the one after hashLine to the end of the file   ) � �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�, 0 x  % o  ���� 0 thestart theStart& o  	���� 0 theend theEnd�+  # �� l ����������  ��  ��  ��  � n  �� 4  ����
�� 
ctxt m  ������  4  ����
�� 
TxtW m  ������ � m  ���                                                                                  !Rch  alis    J  SSD                        �@��H+  ��TextWrangler.app                                                ±	��u}        ����  	                Applications    �@��      ��gm    ��  "SSD:Applications: TextWrangler.app  "  T e x t W r a n g l e r . a p p    S S D  Applications/TextWrangler.app   / ��  �L  	U 	 l     ��������  ��  ��  	 

 l     ����   , & newsGen: News-page generation routine    � L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e  i   2 5 I      ������ 0 newsgen newsGen  o      ���� &0 masterstogenerate mastersToGenerate �� o      ���� 0 theday theDay��  ��   k    X  Z     _���� E     o     ���� &0 masterstogenerate mastersToGenerate m     �  N e w s   p a g e s k    [   !"! Z    +#$%��# >   	&'& o    ���� 0 theday theDay' m    (( �))  S a t u r d a y$ l   *+,* I    ��-���� 0 pagegen pageGen- ./. m    00 �11  s i n g l e/ 232 m    44 �55  N e w s - F r o n t3 676 m    88 �99  1 _ F r o n t7 :��: m    ;; �<<  ��  ��  + ; 5 If block to create the weekday or weekend front page   , �== j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e% >?> =   @A@ o    ���� 0 theday theDayA m    BB �CC  S a t u r d a y? D��D I    '��E���� 0 pagegen pageGenE FGF m     HH �II  s i n g l eG JKJ m     !LL �MM  N e w s - S a t F r o n tK NON m   ! "PP �QQ  1 _ F r o n tO R��R m   " #SS �TT  ��  ��  ��  ��  " UVU I   , 7��W���� 0 pagegen pageGenW XYX m   - .ZZ �[[  s p r e a dY \]\ m   . /^^ �__  N e w s - H o m e - S p l i t] `a` m   / 0bb �cc  2 - 3 _ H o m ea d��d m   0 3ee �ff  2��  ��  V ghg I   8 I��i���� 0 pagegen pageGeni jkj m   9 <ll �mm  s p r e a dk non m   < ?pp �qq  N e w s - H o m e - S p l i to rsr m   ? Btt �uu  4 - 5 _ H o m es v��v m   B Eww �xx  4��  ��  h y��y I   J [��z���� 0 pagegen pageGenz {|{ m   K N}} �~~  s p r e a d| � m   N Q�� ��� $ N e w s - F o r e i g n - S p l i t� ��� m   Q T�� ���  6 - 7 _ F o r e i g n� ���� m   T W�� ���  6��  ��  ��  ��  ��   ��� l  ` `��������  ��  ��  � ��� Z   ` �������� E  ` e��� o   ` a���� &0 masterstogenerate mastersToGenerate� m   a d�� ���  T V� Z   h ������� >  h m��� o   h i���� 0 theday theDay� m   i l�� ���  S a t u r d a y� I   p �������� 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���  F e a t - T V� ��� m   w z�� ���  1 2 - 1 3 _ T V� ���� m   z }�� ���  1 2��  ��  � ��� =  � ���� o   � ����� 0 theday theDay� m   � ��� ���  S a t u r d a y� ���� I   � ������� 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���  F e a t - S a t T V� ��� m   � ��� ���  1 8 - 1 9 _ T V� ��~� m   � ��� ���  1 8�~  �  ��  ��  ��  ��  � ��� l  � ��}�|�{�}  �|  �{  � ��� Z   ����z�y� E  � ���� o   � ��x�x &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   ��� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ��w� m   � ��� ���  W e d n e s d a y�w  � o      �v�v 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   � ���� J   � ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ��u� m   � ��� ���  F r i d a y�u  � o      �t�t 0 p14_days  � ��� l  � ��s�r�q�s  �r  �q  � ��p� Z   �����o� E  � ���� o   � ��n�n 0 p10_days  � o   � ��m�m 0 theday theDay� I   � ��l��k�l 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - L e t t e r s - L� ��� m   � �   �  1 0 _ L e t t e r s� �j m   � � �  1 0�j  �k  �  E  � � o   � ��i�i 0 p14_days   o   � ��h�h 0 theday theDay 	
	 I   � ��g�f�g 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �  F e a t - L e t t e r s - L  m   � � �  1 4 _ L e t t e r s �e m   � � �  1 4�e  �f  
  =  �  o   � ��d�d 0 theday theDay m   � � �    S a t u r d a y !�c! I  �b"�a�b 0 pagegen pageGen" #$# m  %% �&&  s p r e a d$ '(' m  
)) �** $ F e a t - L e t t e r s - S p l i t( +,+ m  
-- �..  1 0 - 1 1 _ L e t t e r s, /�`/ m  00 �11  1 0�`  �a  �c  �o  �p  �z  �y  � 232 l �_�^�]�_  �^  �]  3 454 Z  :67�\�[6 E "898 o  �Z�Z &0 masterstogenerate mastersToGenerate9 m  !:: �;;  S t r u g g l e7 I  %6�Y<�X�Y 0 pagegen pageGen< =>= m  &)?? �@@  s i n g l e> ABA m  ),CC �DD  F e a t - S t r u g g l e - LB EFE m  ,/GG �HH  1 4 _ S t r u g g l eF I�WI m  /2JJ �KK  1 4�W  �X  �\  �[  5 LML l ;;�V�U�T�V  �U  �T  M N�SN Z  ;XOP�R�QO E ;@QRQ o  ;<�P�P &0 masterstogenerate mastersToGenerateR m  <?SS �TT  R e d   L i s tP I  CT�OU�N�O 0 pagegen pageGenU VWV m  DGXX �YY  s i n g l eW Z[Z m  GJ\\ �]]  F e a t - R e d L i s t[ ^_^ m  JM`` �aa  2 0 _ R e d L i s t_ b�Mb m  MPcc �dd  2 0�M  �N  �R  �Q  �S   efe l     �L�K�J�L  �K  �J  f ghg l     �I�H�G�I  �H  �G  h iji l     �Fkl�F  k 1 + featsGen: Features-page generation routine   l �mm V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n ej non i   6 9pqp I      �Er�D�E 0 featsgen featsGenr sts o      �C�C &0 masterstogenerate mastersToGeneratet u�Bu o      �A�A 0 theday theDay�B  �D  q k    �vv wxw Z     %yz�@�?y E    {|{ o     �>�> &0 masterstogenerate mastersToGenerate| m    }} �~~  S p r e a dz Z    !��=� =   	��� o    �<�< 0 theday theDay� m    �� ���  S a t u r d a y� I    �;��:�; 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  1 2 - 1 3 _ F e a t u r e s� ��9� m    �� ���  1 2�9  �:  �=  � I    !�8��7�8 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ��6� m    �� ���  8�6  �7  �@  �?  x ��� l  & &�5�4�3�5  �4  �3  � ��� Z   & ;���2�1� E  & )��� o   & '�0�0 &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7�/��.�/ 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ��-� m   0 3�� ���  1 0�-  �.  �2  �1  � ��� l  < <�,�+�*�,  �+  �*  � ��� Z   < Y���)�(� E  < A��� o   < =�'�' &0 masterstogenerate mastersToGenerate� m   = @�� ��� 
 1 2 - 1 3� I   D U�&��%�& 0 pagegen pageGen� ��� m   E H�� ���  s p r e a d� ��� m   H K�� ���  F e a t - T V� ��� m   K N�� ���  1 2 - 1 3 _ T V� ��$� m   N Q�� ���  1 2�$  �%  �)  �(  � ��� l  Z Z�#�"�!�#  �"  �!  � ��� Z   Z w��� �� E  Z _��� o   Z [�� &0 masterstogenerate mastersToGenerate� m   [ ^�� ��� ( N e w s   r e v i e w s      s p l i t� I   b s���� 0 pagegen pageGen� ��� m   c f�� ���  s p r e a d� ��� m   f i�� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m   i l�� ���  8 - 9 _ N e w s R e v i e w� ��� m   l o�� ���  8�  �  �   �  � ��� Z   x ������ E  x }��� o   x y�� &0 masterstogenerate mastersToGenerate� m   y |�� ��� , N e w s   r e v i e w s      s i n g l e s� k   � ��� ��� I   � ����� 0 pagegen pageGen�    m   � � �  s i n g l e  m   � � � " F e a t - N e w s R e v i e w - L 	 m   � �

 �  8 _ N e w s R e v i e w	 � m   � � �  8�  �  � � I   � ���� 0 pagegen pageGen  m   � � �  s i n g l e  m   � � � " F e a t - N e w s R e v i e w - R  m   � � �  9 _ N e w s R e v i e w � m   � � �  9�  �  �  �  �  �  !  l  � �����  �  �  ! "#" Z   � �$%��$ E  � �&'& o   � ��� &0 masterstogenerate mastersToGenerate' m   � �(( �))  1 5% I   � ��
*�	�
 0 pagegen pageGen* +,+ m   � �-- �..  s i n g l e, /0/ m   � �11 �22  F e a t - B l a n k - R0 343 m   � �55 �66  1 5 _ F e a t u r e s4 7�7 m   � �88 �99  1 5�  �	  �  �  # :;: l  � �����  �  �  ; <=< Z   � �>?��> E  � �@A@ o   � ��� &0 masterstogenerate mastersToGenerateA m   � �BB �CC 
 1 6 - 1 7? l  � �DEFD I   � ��G� � 0 pagegen pageGenG HIH m   � �JJ �KK  s p r e a dI LML m   � �NN �OO  A r t s - E n t s - S p l i tM PQP m   � �RR �SS  1 6 - 1 7 _ E n t s - A r t sQ T��T m   � �UU �VV  1 6��  �   E ( " Create the weekend Ents/Arts page   F �WW D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e�  �  = XYX l  � ���������  ��  ��  Y Z[Z Z   �]\]����\ E  � �^_^ o   � ����� &0 masterstogenerate mastersToGenerate_ m   � �`` �aa  L e t t e r s] k   �Ybb cdc l  � �efge r   � �hih J   � �jj klk m   � �mm �nn  M o n d a yl o��o m   � �pp �qq  W e d n e s d a y��  i o      ���� 0 p10_days  f = 7 These two lists determine what the page number will be   g �rr n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b ed sts r   �uvu J   �ww xyx m   � �zz �{{  T u e s d a yy |}| m   � �~~ �  T h u r s d a y} ��� m   � �� ���  F r i d a y� ���� m   �� ��� , N o   d a y      w o r k i n g   a h e a d��  v o      ���� 0 p14_days  t ��� l ��������  ��  ��  � ���� Z  Y������ E ��� o  	���� 0 p10_days  � o  	
���� 0 theday theDay� I  ������� 0 pagegen pageGen� ��� m  �� ���  s i n g l e� ��� m  �� ���  F e a t - L e t t e r s - L� ��� m  �� ���  1 0 _ L e t t e r s� ���� m  �� ���  1 0��  ��  � ��� E "%��� o  "#���� 0 p14_days  � o  #$���� 0 theday theDay� ��� I  (9������� 0 pagegen pageGen� ��� m  ),�� ���  s i n g l e� ��� m  ,/�� ���  F e a t - L e t t e r s - L� ��� m  /2�� ���  1 4 _ L e t t e r s� ���� m  25�� ���  1 4��  ��  � ��� = <A��� o  <=���� 0 theday theDay� m  =@�� ���  S a t u r d a y� ���� I  DU������� 0 pagegen pageGen� ��� m  EH�� ���  s p r e a d� ��� m  HK�� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  KN�� ���  1 0 - 1 1 _ L e t t e r s� ���� m  NQ�� ���  1 0��  ��  ��  ��  ��  ��  ��  [ ��� l ^^��������  ��  ��  � ��� Z  ^{������� E ^c��� o  ^_���� &0 masterstogenerate mastersToGenerate� m  _b�� ���  A r t s� l fw���� I  fw������� 0 pagegen pageGen� ��� m  gj�� ���  s i n g l e� ��� m  jm�� ���  A r t s - B l a n k - R� ��� m  mp�� ���  1 1 _ A r t s� ���� m  ps�� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  � ��� l ||��������  ��  ��  � ���� Z  |�������� E |���� o  |}���� &0 masterstogenerate mastersToGenerate� m  }��� ���  A r t s   s p l i t� I  ��������� 0 pagegen pageGen� ��� m  ���� ���  s p r e a d� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���  1 0 - 1 1 _ A r t s�  ��  m  �� �  1 0��  ��  ��  ��  ��  o  l     ��������  ��  ��    l     ��������  ��  ��    l     ��	
��  	 , & artsGen: Arts-page generation routine   
 � L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e  i   : = I      ������ 0 artsgen artsGen �� o      ���� &0 masterstogenerate mastersToGenerate��  ��   k     =  Z     ���� E     o     ���� &0 masterstogenerate mastersToGenerate m     �  1 6 - 1 7   ( w e e k e n d ) l    I    ������ 0 pagegen pageGen   m    !! �""  s p r e a d  #$# m    	%% �&&  A r t s - E n t s - S p l i t$ '(' m   	 
)) �**  1 6 - 1 7 _ E n t s - A r t s( +��+ m   
 ,, �--  1 6��  ��   ( " Create the weekend Ents/Arts page    �.. D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��   /0/ l   ��������  ��  ��  0 121 Z    '34����3 E   565 o    ���� &0 masterstogenerate mastersToGenerate6 m    77 �88  A r t s   ( p 1 1 )4 l   #9:;9 I    #��<���� 0 pagegen pageGen< =>= m    ?? �@@  s i n g l e> ABA m    CC �DD  A r t s - B l a n k - RB EFE m    GG �HH  1 1 _ A r t sF I��I m    JJ �KK  1 1��  ��  : ( " Create the weekday Arts page (11)   ; �LL D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  2 MNM l  ( (��������  ��  ��  N O��O Z   ( =PQ����P E  ( +RSR o   ( )���� &0 masterstogenerate mastersToGenerateS m   ) *TT �UU  A r t s   s p l i tQ l  . 9VWXV I   . 9��Y���� 0 pagegen pageGenY Z[Z m   / 0\\ �]]  s p r e a d[ ^_^ m   0 1`` �aa   A r t s - B l a n k - S p l i t_ bcb m   1 2dd �ee  1 0 - 1 1 _ A r t sc f��f m   2 5gg �hh  1 0��  ��  W + % Creates an Arts split-spread (10-11)   X �ii J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  ��   jkj l     ��������  ��  ��  k lml l     ��������  ��  ��  m non l     ��pq��  p 0 * sportsGen: Sports-page generation routine   q �rr T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n eo s��s i   > Atut I      ��v���� 0 	sportsgen 	sportsGenv w��w o      ���� &0 masterstogenerate mastersToGenerate��  ��  u k    �xx yzy Z     {|����{ E    }~} o     ���� &0 masterstogenerate mastersToGenerate~ m     ���  T w o   p a g e s| k    �� ��� I    ������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    	�� ���  S p r t - B a c k� ��� m   	 
�� ���  1 6 _ B a c k� ���� m   
 �� ���  1 6��  ��  � ���� I    ������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  S p r t - B l a n k - R� ��� m    �� ���  1 5 _ S p o r t� ���� m    �� ���  1 5��  ��  ��  ��  ��  z ��� l   ��������  ��  ��  � ��� Z    U������� E   !��� o    ���� &0 masterstogenerate mastersToGenerate� m     �� ���  T h r e e   p a g e s� k   $ Q�� ��� I   $ -������� 0 pagegen pageGen� ��� m   % &�� ���  s i n g l e� ��� m   & '�� ���  S p r t - B a c k� ��� m   ' (�� ���  1 6 _ B a c k� ���� m   ( )�� ���  1 6��  ��  � ��� I   . ?������� 0 pagegen pageGen� ��� m   / 2�� ���  s i n g l e� ��� m   2 5�� ���  S p r t - B l a n k - R� ��� m   5 8�� ���  1 5 _ S p o r t� ���� m   8 ;�� ���  1 5��  ��  � ���� I   @ Q������� 0 pagegen pageGen� ��� m   A D�� ���  s i n g l e� ��� m   D G�� ���  S p r t - B l a n k - L� ��� m   G J�� ���  1 4 _ S p o r t� ���� m   J M�� ���  1 4��  ��  ��  ��  ��  � ��� l  V V��������  ��  ��  � ��� Z   V ������� E  V [��� o   V W�~�~ &0 masterstogenerate mastersToGenerate� m   W Z�� ��� , T h r e e   p a g e s   w i t h   s p l i t� k   ^ ��� ��� I   ^ o�}��|�} 0 pagegen pageGen� ��� m   _ b�� ���  s i n g l e� ��� m   b e�� ���  S p r t - B a c k� ��� m   e h�� ���  1 6 _ B a c k� ��{� m   h k   �  1 6�{  �|  � �z I   p ��y�x�y 0 pagegen pageGen  m   q t �  s p r e a d 	 m   t w

 �   S p r t - B l a n k - S p l i t	  m   w z �  1 4 - 1 5 _ S p o r t �w m   z } �  1 4�w  �x  �z  ��  �  �  l  � ��v�u�t�v  �u  �t    Z   � ��s�r E  � � o   � ��q�q &0 masterstogenerate mastersToGenerate m   � � �  F o u r   p a g e s k   � �  I   � ��p �o�p 0 pagegen pageGen  !"! m   � �## �$$  s i n g l e" %&% m   � �'' �((  S p r t - B a c k& )*) m   � �++ �,,  2 4 _ B a c k* -�n- m   � �.. �//  2 4�n  �o   010 I   � ��m2�l�m 0 pagegen pageGen2 343 m   � �55 �66  s i n g l e4 787 m   � �99 �::  S p r t - B l a n k - R8 ;<; m   � �== �>>  2 3 _ S p o r t< ?�k? m   � �@@ �AA  2 3�k  �l  1 BCB I   � ��jD�i�j 0 pagegen pageGenD EFE m   � �GG �HH  s i n g l eF IJI m   � �KK �LL  S p r t - B l a n k - LJ MNM m   � �OO �PP  2 2 _ S p o r tN Q�hQ m   � �RR �SS  2 2�h  �i  C T�gT I   � ��fU�e�f 0 pagegen pageGenU VWV m   � �XX �YY  s i n g l eW Z[Z m   � �\\ �]]  S p r t - R a c i n g - R[ ^_^ m   � �`` �aa  2 1 _ R a c i n g_ b�db m   � �cc �dd  2 1�d  �e  �g  �s  �r   efe l  � ��c�b�a�c  �b  �a  f ghg Z   �ij�`�_i E  � �klk o   � ��^�^ &0 masterstogenerate mastersToGeneratel m   � �mm �nn * F o u r   p a g e s   w i t h   s p l i tj k   �oo pqp I   � ��]r�\�] 0 pagegen pageGenr sts m   � �uu �vv  s i n g l et wxw m   � �yy �zz  S p r t - B a c kx {|{ m   � �}} �~~  2 4 _ B a c k| �[ m   � ��� ���  2 4�[  �\  q ��� I   ��Z��Y�Z 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���   S p r t - B l a n k - S p l i t� ��� m   � ��� ���  2 2 - 2 3 _ S p o r t� ��X� m   ��� ���  2 2�X  �Y  � ��W� I  �V��U�V 0 pagegen pageGen� ��� m  
�� ���  s i n g l e� ��� m  
�� ���  S p r t - R a c i n g - R� ��� m  �� ���  2 1 _ R a c i n g� ��T� m  �� ���  2 1�T  �U  �W  �`  �_  h ��� l �S�R�Q�S  �R  �Q  � ��� Z  9���P�O� E !��� o  �N�N &0 masterstogenerate mastersToGenerate� m   �� ���  R a c i n g   o n l y� I  $5�M��L�M 0 pagegen pageGen� ��� m  %(�� ���  s i n g l e� ��� m  (+�� ���  S p r t - R a c i n g - R� ��� m  +.�� ���  2 1 _ R a c i n g� ��K� m  .1�� ���  2 1�K  �L  �P  �O  � ��� l ::�J�I�H�J  �I  �H  � ��� Z  :W���G�F� E :?��� o  :;�E�E &0 masterstogenerate mastersToGenerate� m  ;>�� ���  E x t r a   l e f t   p a g e� I  BS�D��C�D 0 pagegen pageGen� ��� m  CF�� ���  s i n g l e� ��� m  FI�� ���  S p r t - B l a n k - L� ��� m  IL�� ���  L _ X X _ S p o r t� ��B� m  LO�� ���  0 0�B  �C  �G  �F  � ��� l XX�A�@�?�A  �@  �?  � ��� Z  Xu���>�=� E X]��� o  XY�<�< &0 masterstogenerate mastersToGenerate� m  Y\�� ���   E x t r a   r i g h t   p a g e� I  `q�;��:�; 0 pagegen pageGen� ��� m  ad�� ���  s i n g l e� ��� m  dg�� ���  S p r t - B l a n k - R� ��� m  gj�� ���  R _ X X _ S p o r t� ��9� m  jm�� ���  0 0�9  �:  �>  �=  � ��� l vv�8�7�6�8  �7  �6  � ��5� Z  v����4�3� E v{��� o  vw�2�2 &0 masterstogenerate mastersToGenerate� m  wz�� ���  E x t r a   s p l i t� I  ~��1��0�1 0 pagegen pageGen� ��� m  ��� �    s p r e a d�  m  �� �   S p r t - B l a n k - S p l i t  m  �� � " S p l i t _ X X - X X _ S p o r t 	�/	 m  ��

 �  0 0�/  �0  �4  �3  �5  ��       �. K U�.   �-�,�+�*�)�(�'�&�%�$�#�"�!� �����- $0 freshpagesfolder freshPagesFolder�,  0 masterdocument masterDocument�+ 0 	genprompt 	genPrompt�* 0 list_position  �) 0 
dateprompt 
datePrompt�( "0 create_pagedate create_pageDate�' "0 create_filedate create_fileDate�& 0 pagegen pageGen�% 0 applymaster applyMaster�$ "0 changelegaldate changeLegalDate�#  0 drawembargobox drawEmbargoBox�" 0 	cleansave 	cleanSave�! 0 customedition customEdition�  0 newsgen newsGen� 0 featsgen featsGen� 0 artsgen artsGen� 0 	sportsgen 	sportsGen
� .aevtoappnull  �   � **** � ����� 0 	genprompt 	genPrompt� ��   �� 0 desk  �   	���������� 0 desk  � 0 	days_list  � 0 thetitle theTitle� 0 weekday_pages  � 0 weekend_pages  � 0 ahead_pages  � 0 theday theDay� 0 
prompttext 
promptText� &0 masterstogenerate mastersToGenerate j � � � � � ��� ��
 ��	�� � � � � � �� ��",03;?CGJP[_cgknvz~������������������������
�"%.25=AD�e�y�{�� �������������������� 
� 
prmp
�
 
appr�	 
� .gtqpchltns    @   @ ns  
� 
TEXT� 
� 
bool� 
� 0 
dateprompt 
datePrompt� 0 customedition customEdition
� 
ret 
�  
mlsl
�� 
rslt
�� 
errn������ 0 newsgen newsGen�� 0 featsgen featsGen�� 0 	sportsgen 	sportsGen�� 0 artsgen artsGen����  ������v����� �&E�Y hO��a a a a a vE�O�a  �a %E�Y a E�O�a  
 �a  a & n�a   &a a a mvE�Oa a  a !a "a #�vE�Y ?�a $  6a %a &a 'a (a )a *a vE�Oa +a ,a -a .a /a 0a vE�Y hY ��a 1 
 �a 2 a & �a 3�6FO�a 4  [a 5a 6a 7a 8a 9a :a vE�Oa ;a <a =a >a ?a @a vE�Oa Aa Ba Ca Da Ea Fa Ga Ha Ia Ja KvE�Y 4�a L  +a Ma NlvE�Oa Oa Pa QmvE�Oa Ra Sa TmvE�Y hY hO)��l+ UE�O�a V  
)j+ WY �a X_ Y%_ Y%a Z%E�O�a [  -���a \ea  E�O_ ]f  )a ^a _lhY hY i�a ` -���a \ea  E�O_ ]f  )a ^a _lhY hY 6�a a  -���a \ea  E�O_ ]f  )a ^a _lhY hY hO�a b  )��l+ cY 7�a d  )��l+ eY %�a f  )�k+ gY �a h  )�k+ iY h ������ !���� 0 list_position  �� ��"�� "  ������ 0 	this_item  �� 0 	this_list  ��    �������� 0 	this_item  �� 0 	this_list  �� 0 i  ! ����
�� .corecnte****       ****
�� 
cobj�� # !k�j  kh ��/�  �Y h[OY�� ��;����#$���� 0 
dateprompt 
datePrompt�� ��%�� %  ������ 0 thetitle theTitle�� 0 	days_list  ��  # ���������������������������������� 0 thetitle theTitle�� 0 	days_list  �� 0 months_list  �� 0 tomorrow  �� 0 tmday tmDay�� 0 theday theDay�� 0 prdate prDate�� 0 prmonth prMonth�� 0 pryear prYear�� 0 
predictpos 
predictPos�� 0 	actualpos 	actualPos�� 0 shiftpos shiftPos�� 0 predictedday predictedDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear$ 2HLPTX\`dhlps������������������������������������������������������������������ 
�� .misccurdldt    ��� null
�� 
wkdy
�� 
TEXT
�� 
days
�� 
prmp
�� 
inSL
�� 
appr�� 
�� .gtqpchltns    @   @ ns  
�� 
rslt
�� 
errn������ 0 pagedate pageDate�� 0 filedate fileDate
�� 
day 
�� 
mnth
�� 
year�� 0 list_position  �� 
�� 
dtxt�� 
�� .sysodlogaskr        TEXT
�� 
ttxt�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate����������������vE�O*j �,�&a  *j k_  E�Y *j l_  E�O��,�&kvE�O�a a a �a �a  �&E�O_ a   )a a lhY hO�a   a E` Oa E`  O�Y hO���&   �a !,E�O�a ",�&kvE�O�a #,E�Y o���& f)��&�l+ $E�O)��l+ $E�O��E�O�j ��_  E�Y �j �a %�_  E�Y hO�a !,E�O�a ",�&kvE�O�a #,E�Y hO�a a &a �a �a  �&E�O_ a '  )a a lhY hOa (a )�a �a * +a ,,�&E�O_ a -  )a a lhY hOa .a )�a �a * +a ,,�&E�O_ a /  )a a lhY hO)����a *+ 0O)����a *+ 1O� ��"����&'���� "0 create_pagedate create_pageDate�� ��(�� (  ���������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear��  & ���������������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 sun  �� 0 secondmonth secondMonth�� 0 
secondyear 
secondYear' 0GIK����npr�������������������� 0 pagedate pageDate
�� 
ldt 
�� 
days
�� 
mnth
�� 
TEXT
�� 
year
�� 
day �� ��� ��%�%�%�%�%�%E�OPY t*��%�%�%�%�%�%/k� E�O��,�&� ��,�&�%E�Y �E�O��,�&� ��,�&%E�Y a E�Oa �%a %�%a %�%�a ,�&%a %�%�%E�OP ������)*���� "0 create_filedate create_fileDate�� ��+�� +  ���������� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  ��  ) ���������� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  * ������2������
�� 
nmbr�� 
�� 0 list_position  
�� 
ctxt�� �� 0 filedate fileDate�� >��&� 
�%E�Y hO)��l+ E�O�� 
�%E�Y hO��%�[�\[Zm\Z�2%E� ��]����,-���� 0 pagegen pageGen�� ��.�� .  ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber��  , ���������� 0 pagetype pageType�� 0 	themaster 	theMaster�� 0 theslug theSlug�� 0 
pagenumber 
pageNumber- �����~����������~�}�|�{
�� .aevtodocnull  �    alis�� 0 applymaster applyMaster��  0 drawembargobox drawEmbargoBox
�� 
bool�� "0 changelegaldate changeLegalDate� 0 	cleansave 	cleanSave
�~ 
pacd
�} 
svop
�| savoyes 
�{ .CoReclosnull���     obj �� Y� Ub  j O)���m+ O�� )�k+ Y hO�� 
 �� �& )�k+ Y hO)��l+ 	O*�, 	*��l UU �z��y�x/0�w�z 0 applymaster applyMaster�y �v1�v 1  �u�t�s�u 0 	themaster 	theMaster�t 0 pagetype pageType�s 0 
pagenumber 
pageNumber�x  / �r�q�p�r 0 	themaster 	theMaster�q 0 pagetype pageType�p 0 
pagenumber 
pageNumber0 ,�o��n�m�l��k��j�i�h��g�f�e2�d�c�b�a -;D�`�_�^�]�\[eq���������[ 
�o 
pacd
�n 
mspr
�m 
page
�l 
pmas
�k 
txtf
�j 
dPge
�i .InESovrrobj         obj �h 0 pagedate pageDate
�g 
pcnt
�f 
mpgs
�e 
cobj2  
�d 
pilr
�c 
pnam�b  �a  
�` 
kocl
�_ 
sprd
�^ 
prdt�] 
�\ .corecrel****      � null
�[ 
TEXT�w���*�,���  �*�/*�k/�,FO�� *�/��/�*�k/l 
O�*�k/��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�l/�a "/�,FO�*�m/�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU �Z�Y�X34�W�Z "0 changelegaldate changeLegalDate�Y �V5�V 5  �U�U 0 	themaster 	theMaster�X  3 �T�T 0 	themaster 	theMaster4 Y�S�R�Q'�P�O�N�M5�L<GU
�S 
pacd
�R 
mspr
�Q 
txtf
�P 
dPge
�O 
page
�N .InESovrrobj         obj �M 0 pagedate pageDate
�L 
pcnt�W X� T*�, M��  !*�/��/�*�k/l O�*�k/��/�,FY (��  !*�/��/�*�l/l O�*�l/��/�,FY hUU �Kf�J�I67�H�K  0 drawembargobox drawEmbargoBox�J �G8�G 8  �F�F 0 pagetype pageType�I  6 �E�D�E 0 pagetype pageType�D 0 ebox eBox7 ��Cr�B�A�@�?�>�����=�<��;�:��9�8���
�C 
docu
�B 
page
�A 
kocl
�@ 
txtf
�? 
prdt
�> 
gbnd�= 
�< 
pcnt
�; .corecrel****      � null
�: 
ObSt
�9 
aobs
�8 
plck�H �� �*�k/ ���  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY D�a   ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUU �7��6�59:�4�7 0 	cleansave 	cleanSave�6 �3;�3 ;  �2�1�2 0 
pagenumber 
pageNumber�1 0 theslug theSlug�5  9 �0�/�0 0 
pagenumber 
pageNumber�/ 0 theslug theSlug: 	J�.�-��,		�+		 �*	3�)	E�(	G�'
�. 
pacd
�- 
layr
�, 
plck
�+ 
pacl
�* 
zero
�) 
kfil�( 0 filedate fileDate
�' .CoResavedocu        obj �4 `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU �&	W�%�$<=�#�& 0 customedition customEdition�%  �$  < �"�!� ��������������" 0 
human_list  �! 0 masters_list  �  0 
slugs_list  � 0 singles_list  � 0 spreads_list  � 0 hashline hashLine� 0 thestart theStart� 0 theend theEnd� 0 x  � 0 searchresult searchResult� 0 
pagenumber 
pageNumber� 0 hmaster hMaster� 0 listpos listPos� 0 	themaster 	theMaster� 0 pagetype pageType� 0 theslug theSlug= �	x	|	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
 

�



!
%
)
-
1
5
9
=
A
E
I
M
Q
U
Y
]
a
e
i
m
q
u
y
}
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
�
"&*.26:>AQUY]aeimquy}����������������������������������
�	����5���J�W� e������������������� %� � 
� 
TxtW
� 
ctxt
� 
Opts
� 
SMod
� SModGrep
�
 
STop�	 
� .R*chFindMtch���     TEXT
� 
MSpc
� 
SLin
� 
ELin
� 
FnIn
� 
clin
� 
RplP
� .R*chGSubutxt    ��� null
�  
MTxt�� 0 list_position  
�� 
cobj
�� 
bool�� 0 pagegen pageGen�#�����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �8*a �k/a �k/)a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�O �kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPY h[OY�OPUU ������>?���� 0 newsgen newsGen�� ��@�� @  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  > ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  ? A(048;����BHLPSZ^belptw}���������������������� %)-0:?CGJSX\`c�� �� 0 pagegen pageGen��Y�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y h ��q����AB���� 0 featsgen featsGen�� ��C�� C  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  A ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  B L}�����������������������������
(-158BJNRU`mpz~�������������������������� �� 0 pagegen pageGen�����  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . ra /a 0lvE�Oa 1a 2a 3a 4�vE�O�� *a 5a 6a 7a 8�+ Y 9�� *a 9a :a ;a <�+ Y �a =  *a >a ?a @a A�+ Y hY hO�a B *a Ca Da Ea F�+ Y hO�a G *a Ha Ia Ja K�+ Y h ������DE���� 0 artsgen artsGen�� ��F�� F  ���� &0 masterstogenerate mastersToGenerate��  D ���� &0 masterstogenerate mastersToGenerateE !%),����7?CGJT\`dg�� �� 0 pagegen pageGen�� >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h ��u����GH���� 0 	sportsgen 	sportsGen�� ��I�� I  ���� &0 masterstogenerate mastersToGenerate��  G ���� &0 masterstogenerate mastersToGenerateH S����������������������������� 
#'+.59=@GKORX\`cmuy}��������������������������
�� �� 0 pagegen pageGen����� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h ��J����KL��
�� .aevtoappnull  �   � ****J k     5MM  `NN  mOO  wPP  �����  ��  ��  K  L 
 k������ t���� �����
�� elnteNvr
�� 
pScr
�� 
UIAc�� 0 	genprompt 	genPrompt
�� elnteInA
�� .miscactvnull��� ��� obj 
�� .aevtodocnull  �    alis�� 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U ascr  ��ޭ