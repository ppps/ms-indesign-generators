FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			2012-12-15     �   0 	 C r e a t e d   o n 	 	 	 2 0 1 2 - 1 2 - 1 5      l     ��  ��      	Last updated			2015-03-11     �   4 	 L a s t   u p d a t e d 	 	 	 2 0 1 5 - 0 3 - 1 1      l     ��  ��     	Version:			1.87     �     	 V e r s i o n : 	 	 	 1 . 8 7     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     �� [ \��   [   Running code --    \ � ] ]     R u n n i n g   c o d e   - - Z  ^ _ ^ l     ` a b ` O     c d c r     e f e m    ��
�� elnteNvr f n       g h g 1    
��
�� 
UIAc h 1    ��
�� 
pScr d m      i i                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��   a $  Suppresses dialogs and alerts    b � j j <   S u p p r e s s e s   d i a l o g s   a n d   a l e r t s _  k l k l    m n o m I    �� p���� 0 	genprompt 	genPrompt p  q�� q m     r r � s s  ��  ��   n h b Desk name (News, Features, Sport, Arts or Custom edition) goes in the quotes in this handler call    o � t t �   D e s k   n a m e   ( N e w s ,   F e a t u r e s ,   S p o r t ,   A r t s   o r   C u s t o m   e d i t i o n )   g o e s   i n   t h e   q u o t e s   i n   t h i s   h a n d l e r   c a l l l  u v u l     w���� w O     x y x r     z { z m    ��
�� elnteInA { n       | } | 1    ��
�� 
UIAc } 1    ��
�� 
pScr y m     ~ ~                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  ��  ��   v   �  l  ! 5 ����� � O   ! 5 � � � k   % 4 � �  � � � I  % *������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I  + 4�� ���
�� .aevtodocnull  �    alis � o   + 0���� $0 freshpagesfolder freshPagesFolder��  ��   � m   ! " � ��                                                                                  MACS  alis    t  Macintosh HD               ĬplH+   �K$
Finder.app                                                      �r��|��        ����  	                CoreServices    Ĭb\      �|��     �K$ �K! �K   6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Handler definitions    � � � � (   H a n d l e r   d e f i n i t i o n s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � e _ genPrompt: Gets for the date and the pages to create, then calls functions to create the files    � � � � �   g e n P r o m p t :   G e t s   f o r   t h e   d a t e   a n d   t h e   p a g e s   t o   c r e a t e ,   t h e n   c a l l s   f u n c t i o n s   t o   c r e a t e   t h e   f i l e s �  � � � i    	 � � � I      �� ����� 0 	genprompt 	genPrompt �  ��� � o      ���� 0 desk  ��  ��   � k    � � �  � � � Z     2 � ����� � =     � � � o     ���� 0 desk   � m     � � � � �   � l   . � � � � k    . � �  � � � r     � � � c     � � � l    ����� � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � �  N e w s �  � � � m     � � � � �  F e a t u r e s �  � � � m    	 � � � � � 
 S p o r t �  � � � m   	 
 � � � � �  A r t s �  ��� � m   
  � � � � �  C u s t o m   e d i t i o n��   � �� � �
�� 
prmp � m     � � � � � & P l e a s e   p i c k   a   d e s k : � �� ���
�� 
appr � m     � � � � �  P a g e   g e n e r a t o r��  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 desk   �  ��� � Z   . � ����� � =    � � � l    ����� � 1    ��
�� 
rslt��  ��   � m     � � � � � 
 f a l s e � R     *���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   $ '��������  ��  ��  ��   � F @ Allows core.scpt to be used as a generator (useful for testing)    � � � � �   A l l o w s   c o r e . s c p t   t o   b e   u s e d   a s   a   g e n e r a t o r   ( u s e f u l   f o r   t e s t i n g )��  ��   �  � � � l  3 3��������  ��  ��   �  � � � r   3 K � � � J   3 I � �  � � � m   3 6 � � � � �  M o n d a y �  � � � m   6 9 � � � � �  T u e s d a y �  � � � m   9 < � � � � �  W e d n e s d a y �  � � � m   < ? � � � � �  T h u r s d a y �  � � � m   ? B � � � � �  F r i d a y �  ��� � m   B E � � � � �  S a t u r d a y��   � o      ���� 0 	days_list   �  � � � l  L L��������  ��  ��   �  � � � Z   L c � ���  � >  L Q o   L M���� 0 desk   m   M P �  C u s t o m   e d i t i o n � l  T [ r   T [	 l  T Y
����
 b   T Y o   T U���� 0 desk   m   U X �     p a g e s   g e n e r a t o r��  ��  	 o      ���� 0 thetitle theTitle !  Text for prompt title bars    � 6   T e x t   f o r   p r o m p t   t i t l e   b a r s��    r   ^ c m   ^ a �  C u s t o m   e d i t i o n o      ���� 0 thetitle theTitle �  l  d d��������  ��  ��    Z   d��� G   d u =  d i o   d e���� 0 desk   m   e h �    N e w s =  l q!"! o   l m���� 0 desk  " m   m p## �$$ 
 S p o r t l  x �%&'% Z   x �()*��( =  x }+,+ o   x y���� 0 desk  , m   y |-- �..  N e w s) k   � �// 010 r   � �232 J   � �44 565 m   � �77 �88  N e w s   p a g e s6 9:9 m   � �;; �<<  T V: =��= m   � �>> �??  L e t t e r s��  3 o      ���� 0 weekday_pages  1 @��@ r   � �ABA J   � �CC DED m   � �FF �GG  N e w s   p a g e sE HIH m   � �JJ �KK  T VI LML m   � �NN �OO  L e t t e r sM PQP m   � �RR �SS  S t r u g g l eQ T��T m   � �UU �VV  R e d   L i s t��  B o      ���� 0 weekend_pages  ��  * WXW =  � �YZY o   � ����� 0 desk  Z m   � �[[ �\\ 
 S p o r tX ]��] k   � �^^ _`_ r   � �aba J   � �cc ded m   � �ff �gg  T w o   p a g e se hih m   � �jj �kk  T h r e e   p a g e si lml m   � �nn �oo , T h r e e   p a g e s   w i t h   s p l i tm pqp m   � �rr �ss  E x t r a   l e f t   p a g eq tut m   � �vv �ww   E x t r a   r i g h t   p a g eu x��x m   � �yy �zz  E x t r a   s p l i t��  b o      ���� 0 weekday_pages  ` {��{ r   � �|}| J   � �~~ � m   � ��� ���  F o u r   p a g e s� ��� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  R a c i n g   o n l y� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  } o      ���� 0 weekend_pages  ��  ��  ��  & @ : This if block sets the page options presented to the user   ' ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r ��� G   � ���� =  � ���� o   � ����� 0 desk  � m   � ��� ���  F e a t u r e s� =  � ���� o   � ����� 0 desk  � m   � ��� ���  A r t s� ��� k   ���� ��� l  � ����� r   � ���� m   � ��� ��� , N o   d a y      w o r k i n g   a h e a d� l     ��~�}� n      ���  ;   � �� o   � ��|�| 0 	days_list  �~  �}  � > 8 Adds an extra day option that news and sport don't need   � ��� p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d� ��{� Z   ������z� =  ���� o   � �y�y 0 desk  � m   �� ���  F e a t u r e s� k  i�� ��� r  ��� J  �� ��� m  
�� ���  S p r e a d� ��� m  
�� ���  1 0� ��� m  �� ���  1 3� ��� m  �� ���  L e t t e r s� ��� m  �� ���  A r t s� ��x� m  �� ���  A r t s   s p l i t�x  � o      �w�w 0 weekday_pages  � ��� r   >��� J   <�� ��� m   #�� ���  S p r e a d� ��� m  #&�� ���  9� ��� m  &)�� ���  1 0 - 1 1      s p l i t� ��� m  ),�� ���  1 0 - 1 1      s i n g l e s� ��� m  ,/�� ���  1 5� ��� m  /2�� ��� 
 1 6 - 1 7� ��� m  25�� ���  L e t t e r s� ��v� m  58�� ���  E n t s�v  � o      �u�u 0 weekend_pages  � ��t� r  ?i��� J  ?g�� � � m  ?B �  S p r e a d   m  BE �  9  m  EH		 �

  1 0  m  HK �  1 3  m  KN � ( N e w s   r e v i e w s      s p l i t  m  NQ � , N e w s   r e v i e w s      s i n g l e s  m  QT �  1 5  m  TW � 
 1 6 - 1 7   m  WZ!! �""  L e t t e r s  #$# m  Z]%% �&&  A r t s$ '(' m  ]`)) �**  A r t s   s p l i t( +�s+ m  `c,, �--  E n t s�s  � o      �r�r 0 ahead_pages  �t  � ./. = lq010 o  lm�q�q 0 desk  1 m  mp22 �33  A r t s/ 4�p4 k  t�55 676 r  t~898 J  t|:: ;<; m  tw== �>>  A r t s   ( p 1 1 )< ?�o? m  wz@@ �AA  A r t s   s p l i t�o  9 o      �n�n 0 weekday_pages  7 BCB r  �DED J  �FF GHG m  �II �JJ  1 6 - 1 7   ( w e e k e n d )H KLK m  ��MM �NN  A r t s   s p l i tL OPO m  ��QQ �RR  A r t s   ( p 1 1 )P S�mS m  ��TT �UU  E n t s�m  E o      �l�l 0 weekend_pages  C V�kV r  ��WXW J  ��YY Z[Z m  ��\\ �]]  A r t s   ( p 1 1 )[ ^_^ m  ��`` �aa  A r t s   s p l i t_ bcb m  ��dd �ee  1 6 - 1 7   ( w e e k e n d )c f�jf m  ��gg �hh  E n t s�j  X o      �i�i 0 ahead_pages  �k  �p  �z  �{  �  ��   iji l ���h�g�f�h  �g  �f  j klk l ���emn�e  m [ U Prompt the user to enter the date. Returns theDay for use in page-picker block below   n �oo �   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e .   R e t u r n s   t h e D a y   f o r   u s e   i n   p a g e - p i c k e r   b l o c k   b e l o wl pqp r  ��rsr n ��tut I  ���dv�c�d 0 
dateprompt 
datePromptv wxw o  ���b�b 0 thetitle theTitlex y�ay o  ���`�` 0 	days_list  �a  �c  u  f  ��s o      �_�_ 0 theday theDayq z{z l ���^�]�\�^  �]  �\  { |}| l ���[~�[  ~   Get the pages to create    ��� 0   G e t   t h e   p a g e s   t o   c r e a t e} ��Z� Z  �����Y�� = ����� l ����X�W� o  ���V�V 0 desk  �X  �W  � m  ���� ���  C u s t o m   e d i t i o n� l ������ n ����� I  ���U�T�S�U 0 customedition customEdition�T  �S  �  f  ��� U O The customEdition function itself gets the pages to generate from TextWrangler   � ��� �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r�Y  � k  ���� ��� r  ����� l ����R�Q� b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���P
�P 
ret � o  ���O
�O 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�R  �Q  � o      �N�N 0 
prompttext 
promptText� ��� Z  �i����M� = ����� o  ���L�L 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  ��� ��� r  ����� l ����K�J� I ���I��
�I .gtqpchltns    @   @ ns  � o  ���H�H 0 ahead_pages  � �G��
�G 
prmp� o  ���F�F 0 
prompttext 
promptText� �E��
�E 
appr� o  ���D�D 0 thetitle theTitle� �C��B
�C 
mlsl� m  ���A
�A boovtrue�B  �K  �J  � o      �@�@ &0 masterstogenerate mastersToGenerate� ��?� Z ����>�=� = ����� 1  ���<
�< 
rslt� m  ���;
�; boovfals� R  ���:�9�
�: .ascrerr ****      � ****�9  � �8��7
�8 
errn� m  ���6�6���7  �>  �=  �?  � ��� > ��� o  �5�5 0 theday theDay� m  
�� ���  S a t u r d a y� ��� k  4�� ��� r  ��� l ��4�3� I �2��
�2 .gtqpchltns    @   @ ns  � o  �1�1 0 weekday_pages  � �0��
�0 
prmp� o  �/�/ 0 
prompttext 
promptText� �.��
�. 
appr� o  �-�- 0 thetitle theTitle� �,��+
�, 
mlsl� m  �*
�* boovtrue�+  �4  �3  � o      �)�) &0 masterstogenerate mastersToGenerate� ��(� Z  4���'�&� =  #��� 1   !�%
�% 
rslt� m  !"�$
�$ boovfals� R  &0�#�"�
�# .ascrerr ****      � ****�"  � �!�� 
�! 
errn� m  *-�����   �'  �&  �(  � ��� = 7<��� o  78�� 0 theday theDay� m  8;�� ���  S a t u r d a y� ��� k  ?e�� ��� r  ?P��� l ?N���� I ?N���
� .gtqpchltns    @   @ ns  � o  ?@�� 0 weekend_pages  � ���
� 
prmp� o  AB�� 0 
prompttext 
promptText� ���
� 
appr� o  CD�� 0 thetitle theTitle� ���
� 
mlsl� m  GH�
� boovtrue�  �  �  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z Qe����� = QT��� 1  QR�
� 
rslt� m  RS�
� boovfals� R  Wa��
�
� .ascrerr ****      � ****�
  � �	��
�	 
errn� m  [^�����  �  �  �  �  �M  � ��� l jj����  �  �  � ��� Z  j������ = jo��� o  jk�� 0 desk  � m  kn�� ���  N e w s� l ry�� � n ry I  sy� ���  0 newsgen newsGen  o  st���� &0 masterstogenerate mastersToGenerate �� o  tu���� 0 theday theDay��  ��    f  rs� S M theDay is passed to distinguish between, for example, Saturday & weekday TV      � �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  � 	 = |�

 o  |}���� 0 desk   m  }� �  F e a t u r e s	  n �� I  �������� 0 featsgen featsGen  o  ������ &0 masterstogenerate mastersToGenerate �� o  ������ 0 theday theDay��  ��    f  ��  = �� o  ������ 0 desk   m  �� � 
 S p o r t  l ��  n ��!"! I  ����#���� 0 	sportsgen 	sportsGen# $��$ o  ������ &0 masterstogenerate mastersToGenerate��  ��  "  f  ��   No day checks     �%%    N o   d a y   c h e c k s &'& = ��()( o  ������ 0 desk  ) m  ��** �++  A r t s' ,��, l ��-./- n ��010 I  ����2���� 0 artsgen artsGen2 3��3 o  ������ &0 masterstogenerate mastersToGenerate��  ��  1  f  ��.   No day checks   / �44    N o   d a y   c h e c k s��  �  �  �Z   � 565 l     ��������  ��  ��  6 787 l     ��������  ��  ��  8 9:9 l     ��;<��  ; I C list_position: Returns theItem's position in theList as an integer   < �== �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e r: >?> i   
 @A@ I      ��B���� 0 list_position  B CDC o      ���� 0 	this_item  D E��E o      ���� 0 	this_list  ��  ��  A Y     "F��GH��F Z   IJ����I =   KLK n    MNM 4    ��O
�� 
cobjO o    ���� 0 i  N o    ���� 0 	this_list  L o    ���� 0 	this_item  J L    PP o    ���� 0 i  ��  ��  �� 0 i  G m    ���� H I   	��Q��
�� .corecnte****       ****Q o    ���� 0 	this_list  ��  ��  ? RSR l     ��������  ��  ��  S TUT l     ��������  ��  ��  U VWV l     ��XY��  X ( " Prompt the user to enter the date   Y �ZZ D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t eW [\[ i    ]^] I      ��_���� 0 
dateprompt 
datePrompt_ `a` o      ���� 0 thetitle theTitlea b��b o      ���� 0 	days_list  ��  ��  ^ k    cc ded r     fgf J     hh iji m     kk �ll  J a n u a r yj mnm m    oo �pp  F e b r u a r yn qrq m    ss �tt 
 M a r c hr uvu m    ww �xx 
 A p r i lv yzy m    {{ �||  M a yz }~} m     ���  J u n e~ ��� m    �� ���  J u l y� ��� m    �� ���  A u g u s t� ��� m    	�� ���  S e p t e m b e r� ��� m   	 
�� ���  O c t o b e r� ��� m   
 �� ���  N o v e m b e r� ���� m    �� ���  D e c e m b e r��  g o      ���� 0 months_list  e ��� l   ��������  ��  ��  � ��� l   ������  � > 8 Get tomorrow's weekday as a seed default for the prompt   � ��� p   G e t   t o m o r r o w ' s   w e e k d a y   a s   a   s e e d   d e f a u l t   f o r   t h e   p r o m p t� ��� Z    >������ >   ��� c    ��� l   ������ l   ������ n    ��� m    ��
�� 
wkdy� l   ������ l   ������ I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � m    ��
�� 
TEXT� m    �� ���  S a t u r d a y� r   ! .��� l  ! ,������ [   ! ,��� l  ! &������ l  ! &������ I  ! &������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  � l  & +������ ]   & +��� m   & '���� � 1   ' *��
�� 
days��  ��  ��  ��  � o      ���� 0 tomorrow  ��  � l  1 >���� r   1 >��� l  1 <������ [   1 <��� l  1 6������ l  1 6������ I  1 6������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  � l  6 ;������ ]   6 ;��� m   6 7���� � 1   7 :��
�� 
days��  ��  ��  ��  � o      ���� 0 tomorrow  � 4 . Jump ahead a day if Saturday (mostly for dev)   � ��� \   J u m p   a h e a d   a   d a y   i f   S a t u r d a y   ( m o s t l y   f o r   d e v )� ��� l  ? H���� r   ? H��� J   ? F�� ���� l  ? D������ c   ? D��� n  ? B��� m   @ B��
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
TEXT� o      ���� 0 theday theDay� ��� l  c {���� Z  c {����~� =  c j��� 1   c f�}
�} 
rslt� m   f i�� ��� 
 f a l s e� R   m w�|�{�
�| .ascrerr ****      � ****�{  � �z��y
�z 
errn� m   q t�x�x���y  �  �~  � 6 0 Choosing "Cancel" in the dialog ends the script   � ��� `   C h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� l  | |�w�v�u�w  �v  �u  � ��� l  | |�t���t  � 2 , Quick return if no date crunching is needed   � ��� X   Q u i c k   r e t u r n   i f   n o   d a t e   c r u n c h i n g   i s   n e e d e d� ��� Z   | � �s�r  =  | � o   | }�q�q 0 theday theDay m   } � � , N o   d a y      w o r k i n g   a h e a d k   � �  r   � �	
	 m   � � � * A   d a t e   n e e d s   e n t e r i n g
 o      �p�p 0 pagedate pageDate  r   � � m   � � � 
 A h e a d o      �o�o 0 filedate fileDate �n l  � � L   � � o   � ��m�m 0 theday theDay $  For use in page-picker prompt    � <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t�n  �s  �r  �  l  � ��l�k�j�l  �k  �j    l  � ��i�i     Predicted date crunching    � 2   P r e d i c t e d   d a t e   c r u n c h i n g  !  Z   �."#$�h" =  � �%&% o   � ��g�g 0 theday theDay& l  � �'�f�e' c   � �()( o   � ��d�d 0 tmday tmDay) m   � ��c
�c 
TEXT�f  �e  # l  � �*+,* k   � �-- ./. l  � ��b01�b  0 ) # Set defaults to tomorrow's details   1 �22 F   S e t   d e f a u l t s   t o   t o m o r r o w ' s   d e t a i l s/ 343 r   � �565 n  � �787 1   � ��a
�a 
day 8 o   � ��`�` 0 tomorrow  6 o      �_�_ 0 prdate prDate4 9:9 r   � �;<; J   � �== >�^> l  � �?�]�\? c   � �@A@ n  � �BCB m   � ��[
�[ 
mnthC o   � ��Z�Z 0 tomorrow  A m   � ��Y
�Y 
TEXT�]  �\  �^  < o      �X�X 0 prmonth prMonth: D�WD r   � �EFE n  � �GHG 1   � ��V
�V 
yearH o   � ��U�U 0 tomorrow  F o      �T�T 0 pryear prYear�W  +   Chosen day is tomorrow   , �II .   C h o s e n   d a y   i s   t o m o r r o w$ JKJ >  � �LML o   � ��S�S 0 theday theDayM l  � �N�R�QN c   � �OPO o   � ��P�P 0 tmday tmDayP m   � ��O
�O 
TEXT�R  �Q  K Q�NQ l  �*RSTR k   �*UU VWV l  � ��MXY�M  X E ? Determine offset from tomorrow and create a date object for it   Y �ZZ ~   D e t e r m i n e   o f f s e t   f r o m   t o m o r r o w   a n d   c r e a t e   a   d a t e   o b j e c t   f o r   i tW [\[ r   � �]^] n  � �_`_ I   � ��La�K�L 0 list_position  a bcb l  � �d�J�Id c   � �efe o   � ��H�H 0 tmday tmDayf m   � ��G
�G 
TEXT�J  �I  c g�Fg o   � ��E�E 0 	days_list  �F  �K  `  f   � �^ o      �D�D 0 
predictpos 
predictPos\ hih r   � �jkj n  � �lml I   � ��Cn�B�C 0 list_position  n opo o   � ��A�A 0 theday theDayp q�@q o   � ��?�? 0 	days_list  �@  �B  m  f   � �k o      �>�> 0 	actualpos 	actualPosi rsr r   � �tut \   � �vwv o   � ��=�= 0 	actualpos 	actualPosw o   � ��<�< 0 
predictpos 
predictPosu o      �;�; 0 shiftpos shiftPoss xyx Z   �z{|�:z ?  � �}~} o   � ��9�9 0 shiftpos shiftPos~ m   � ��8�8  { l  � ��� r   � ���� [   � ���� o   � ��7�7 0 tomorrow  � l  � ���6�5� ]   � ���� o   � ��4�4 0 shiftpos shiftPos� 1   � ��3
�3 
days�6  �5  � o      �2�2 0 predictedday predictedDay� "  Another day in current week   � ��� 8   A n o t h e r   d a y   i n   c u r r e n t   w e e k| ��� A  � ���� o   � ��1�1 0 shiftpos shiftPos� m   � ��0�0  � ��/� l  �
���� r   �
��� [   ���� o   � ��.�. 0 tomorrow  � l  ���-�,� ]   ���� l  ���+�*� [   ���� m   ��)�) � o  �(�( 0 shiftpos shiftPos�+  �*  � 1  �'
�' 
days�-  �,  � o      �&�& 0 predictedday predictedDay�   Implies next week   � ��� $   I m p l i e s   n e x t   w e e k�/  �:  y ��� l �%�$�#�%  �$  �#  � ��� l �"���"  � - ' Set defaults with chosen day's details   � ��� N   S e t   d e f a u l t s   w i t h   c h o s e n   d a y ' s   d e t a i l s� ��� r  ��� n ��� 1  �!
�! 
day � o  � �  0 predictedday predictedDay� o      �� 0 prdate prDate� ��� r  "��� J   �� ��� l ���� c  ��� n ��� m  �
� 
mnth� o  �� 0 predictedday predictedDay� m  �
� 
TEXT�  �  �  � o      �� 0 prmonth prMonth� ��� r  #*��� n #(��� 1  $(�
� 
year� o  #$�� 0 predictedday predictedDay� o      �� 0 pryear prYear�  S !  Chosen day is not tomorrow   T ��� 6   C h o s e n   d a y   i s   n o t   t o m o r r o w�N  �h  ! ��� l //����  �  �  � ��� l //����  � &   Prompt for month, date and year   � ��� @   P r o m p t   f o r   m o n t h ,   d a t e   a n d   y e a r� ��� r  /H��� c  /F��� l /D���� I /D���
� .gtqpchltns    @   @ ns  � o  /0�� 0 months_list  � ���
� 
prmp� m  36�� ��� , P l e a s e   p i c k   t h e   m o n t h :� �
��
�
 
inSL� o  9:�	�	 0 prmonth prMonth� ���
� 
appr� o  =>�� 0 thetitle theTitle�  �  �  � m  DE�
� 
TEXT� o      �� 0 themonth theMonth� ��� Z Ia����� = IP��� 1  IL�
� 
rslt� m  LO�� ��� 
 f a l s e� R  S]� ���
�  .ascrerr ****      � ****��  � �����
�� 
errn� m  WZ��������  �  �  � ��� r  b{��� c  by��� l bw������ n  bw��� 1  sw��
�� 
ttxt� l bs������ I bs����
�� .sysodlogaskr        TEXT� m  be�� ��� * P l e a s e   t y p e   t h e   d a t e :� ����
�� 
dtxt� o  hi���� 0 prdate prDate� �����
�� 
appr� o  lm���� 0 thetitle theTitle��  ��  ��  ��  ��  � m  wx��
�� 
TEXT� o      ���� 0 thedate theDate� ��� Z |�������� = |���� 1  |��
�� 
rslt� m  ��� ��� 
 f a l s e� R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  ��  ��  � ��� Z  ��������� l �������� E  ����� o  ������ 0 thedate theDate� m  ���� ���  -��  ��  � r  ��   n  �� 7����
�� 
ctxt m  ������  l ������ \  �� l ��	����	 l ��
����
 I ������
�� .sysooffslong    ��� null��   ��
�� 
psof m  �� �  - ����
�� 
psin o  ������ 0 thedate theDate��  ��  ��  ��  ��   m  ������ ��  ��   o  ������ 0 thedate theDate o      ���� 0 thedate theDate��  ��  �  r  �� c  �� l ������ n  �� 1  ����
�� 
ttxt l ������ I ����
�� .sysodlogaskr        TEXT m  �� � * P l e a s e   t y p e   t h e   y e a r : �� 
�� 
dtxt o  ������ 0 pryear prYear  ��!��
�� 
appr! o  ������ 0 thetitle theTitle��  ��  ��  ��  ��   m  ����
�� 
TEXT o      ���� 0 theyear theYear "#" Z ��$%����$ = ��&'& 1  ����
�� 
rslt' m  ��(( �)) 
 f a l s e% R  ������*
�� .ascrerr ****      � ****��  * ��+��
�� 
errn+ m  ����������  ��  ��  # ,-, l ����������  ��  ��  - ./. l ����01��  0 . ( Pass date details to creation functions   1 �22 P   P a s s   d a t e   d e t a i l s   t o   c r e a t i o n   f u n c t i o n s/ 343 n �565 I  ���7���� "0 create_pagedate create_pageDate7 898 o  ������ 0 theday theDay9 :;: o  ������ 0 themonth theMonth; <=< o  ������ 0 thedate theDate= >��> o  ������ 0 theyear theYear��  ��  6  f  ��4 ?@? n ABA I  ��C���� "0 create_filedate create_fileDateC DED o  ���� 0 themonth theMonthE FGF o  ���� 0 thedate theDateG HIH o  ���� 0 theyear theYearI J��J o  ���� 0 months_list  ��  ��  B  f  @ KLK l ��������  ��  ��  L M��M l NOPN L  QQ o  ���� 0 theday theDayO $  For use in page-picker prompt   P �RR <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t��  \ STS l     ��������  ��  ��  T UVU l     ��������  ��  ��  V WXW l     ��YZ��  Y 2 , Assemble date for use on the inDesign pages   Z �[[ X   A s s e m b l e   d a t e   f o r   u s e   o n   t h e   i n D e s i g n   p a g e sX \]\ i    ^_^ I      ��`���� "0 create_pagedate create_pageDate` aba o      ���� 0 theday theDayb cdc o      ���� 0 themonth theMonthd efe o      ���� 0 thedate theDatef g��g o      ���� 0 theyear theYear��  ��  _ Z     �hi��jh >    klk o     ���� 0 theday theDayl m    mm �nn  S a t u r d a yi l   opqo k    rr sts r    uvu l   w����w b    xyx b    z{z b    |}| b    ~~ b    ��� b    	��� o    ���� 0 theday theDay� m    �� ���   � o   	 
���� 0 themonth theMonth m    �� ���   } o    ���� 0 thedate theDate{ m    �� ���   y o    ���� 0 theyear theYear��  ��  v o      ���� 0 pagedate pageDatet ���� l   ��������  ��  ��  ��  p   Weekday pageDate   q ��� "   W e e k d a y   p a g e D a t e��  j l   ����� k    ��� ��� l   ������  � &   Create a date object for Sunday   � ��� @   C r e a t e   a   d a t e   o b j e c t   f o r   S u n d a y� ��� r    0��� l   .������ [    .��� l   *������ 4    *���
�� 
ldt � l   )������ b    )��� b    '��� b    %��� b    #��� b    !��� b    ��� o    ���� 0 theday theDay� m    �� ���  ,  � o     ���� 0 thedate theDate� m   ! "�� ���   � o   # $�� 0 themonth theMonth� m   % &�� ���   � o   ' (�~�~ 0 theyear theYear��  ��  ��  ��  � l  * -��}�|� ]   * -��� m   * +�{�{ � 1   + ,�z
�z 
days�}  �|  ��  ��  � o      �y�y 0 sun  � ��� l  1 1�x�w�v�x  �w  �v  � ��� l  1 1�u���u  � 2 , Check if the weekend spans a month boundary   � ��� X   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   m o n t h   b o u n d a r y� ��� Z   1 J���t�� >  1 8��� l  1 6��s�r� c   1 6��� n  1 4��� m   2 4�q
�q 
mnth� o   1 2�p�p 0 sun  � m   4 5�o
�o 
TEXT�s  �r  � o   6 7�n�n 0 themonth theMonth� k   ; D�� ��� l  ; ;�m���m  � ' ! Sunday month with trailing space   � ��� B   S u n d a y   m o n t h   w i t h   t r a i l i n g   s p a c e� ��l� r   ; D��� b   ; B��� l  ; @��k�j� c   ; @��� n  ; >��� m   < >�i
�i 
mnth� o   ; <�h�h 0 sun  � m   > ?�g
�g 
TEXT�k  �j  � m   @ A�� ���   � o      �f�f 0 secondmonth secondMonth�l  �t  � r   G J��� m   G H�� ���  � o      �e�e 0 secondmonth secondMonth� ��� l  K K�d�c�b�d  �c  �b  � ��� l  K K�a���a  � 1 + Check if the weekend spans a year boundary   � ��� V   C h e c k   i f   t h e   w e e k e n d   s p a n s   a   y e a r   b o u n d a r y� ��� Z   K f���`�� >  K R��� l  K P��_�^� c   K P��� n  K N��� 1   L N�]
�] 
year� o   K L�\�\ 0 sun  � m   N O�[
�[ 
TEXT�_  �^  � o   P Q�Z�Z 0 theyear theYear� k   U ^�� ��� l  U U�Y���Y  � &   Sunday year with leading hyphen   � ��� @   S u n d a y   y e a r   w i t h   l e a d i n g   h y p h e n� ��X� r   U ^��� l  U \��W�V� b   U \��� m   U V�� ���  -� l  V [��U�T� c   V [� � n  V Y 1   W Y�S
�S 
year o   V W�R�R 0 sun    m   Y Z�Q
�Q 
TEXT�U  �T  �W  �V  � o      �P�P 0 
secondyear 
secondYear�X  �`  � r   a f m   a d �   o      �O�O 0 
secondyear 
secondYear�  l  g g�N�M�L�N  �M  �L   	
	 r   g � l  g ��K�J b   g � b   g � b   g � b   g � b   g x b   g v b   g r b   g p b   g l m   g j   �!!   S a t u r d a y / S u n d a y   o   j k�I�I 0 themonth theMonth m   l o"" �##    o   p q�H�H 0 thedate theDate m   r u$$ �%%  - o   v w�G�G 0 secondmonth secondMonth l  x &�F�E& c   x '(' n  x })*) 1   y }�D
�D 
day * o   x y�C�C 0 sun  ( m   } ~�B
�B 
TEXT�F  �E   m   � �++ �,,    o   � ��A�A 0 theyear theYear o   � ��@�@ 0 
secondyear 
secondYear�K  �J   o      �?�? 0 pagedate pageDate
 -�>- l  � ��=./�=  . Z T Empty secondMonth/Year strings (set above) mean this can be used for every Saturday   / �00 �   E m p t y   s e c o n d M o n t h / Y e a r   s t r i n g s   ( s e t   a b o v e )   m e a n   t h i s   c a n   b e   u s e d   f o r   e v e r y   S a t u r d a y�>  �   Saturday/Sunday pageDate   � �11 2   S a t u r d a y / S u n d a y   p a g e D a t e] 232 l     �<�;�:�<  �;  �:  3 454 l     �9�8�7�9  �8  �7  5 676 l     �689�6  8 . ( Assemble date for use in the file names   9 �:: P   A s s e m b l e   d a t e   f o r   u s e   i n   t h e   f i l e   n a m e s7 ;<; i    =>= I      �5?�4�5 "0 create_filedate create_fileDate? @A@ o      �3�3 0 themonth theMonthA BCB o      �2�2 0 thedate theDateC DED o      �1�1 0 theyear theYearE F�0F o      �/�/ 0 months_list  �0  �4  > k     =GG HIH Z    JK�.�-J A    LML l    N�,�+N c     OPO o     �*�* 0 thedate theDateP m    �)
�) 
nmbr�,  �+  M m    �(�( 
K r    QRQ l   S�'�&S b    TUT m    	VV �WW  0U o   	 
�%�% 0 thedate theDate�'  �&  R o      �$�$ 0 thedate theDate�.  �-  I XYX l   �#�"�!�#  �"  �!  Y Z[Z r    \]\ n   ^_^ I    � `��  0 list_position  ` aba o    �� 0 themonth theMonthb c�c o    �� 0 months_list  �  �  _  f    ] o      �� 0 themonth theMonth[ ded Z   +fg��f A   hih o    �� 0 themonth theMonthi m    �� 
g r   " 'jkj l  " %l��l b   " %mnm m   " #oo �pp  0n o   # $�� 0 themonth theMonth�  �  k o      �� 0 themonth theMonth�  �  e qrq l  , ,����  �  �  r s�s l  , =tuvt r   , =wxw l  , ;y��y b   , ;z{z b   , /|}| o   , -�� 0 thedate theDate} o   - .�� 0 themonth theMonth{ l  / :~�
�	~ n   / :� 7 0 :���
� 
ctxt� m   4 6�� � m   7 9�� � o   / 0�� 0 theyear theYear�
  �	  �  �  x o      �� 0 filedate fileDateu ? 9 Combines the date, month and last two digits of the year   v ��� r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r�  < ��� l     ����  �  �  � ��� l     � �����   ��  ��  � ��� l     ������  � Y S pageGen: Opens the master file and calls functions to construct the requested page   � ��� �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g e� ��� l     ������  � ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   � ��� �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e r� ��� l     ������  � @ : The page number is that of the left-hand page for spreads   � ��� t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d s� ��� i    ��� I      ������� 0 pagegen pageGen� ��� o      ���� 0 pagetype pageType� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 theslug theSlug� ���� o      ���� 0 
pagenumber 
pageNumber��  ��  � O     ?��� k    >�� ��� I   �����
�� .aevtodocnull  �    alis� o    	����  0 masterdocument masterDocument��  � ��� n   ��� I    ������� 0 applymaster applyMaster� ��� o    ���� 0 	themaster 	theMaster� ��� o    ���� 0 pagetype pageType� ���� o    ���� 0 
pagenumber 
pageNumber��  ��  �  f    � ��� l   ��������  ��  ��  � ��� Z    '������� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ��� 
 N e w s -� l   #���� n   #��� I    #�������  0 drawembargobox drawEmbargoBox� ���� o    ���� 0 pagetype pageType��  ��  �  f    � 2 , Hyphen needed to exclude Feat-NewsReviews-*   � ��� X   H y p h e n   n e e d e d   t o   e x c l u d e   F e a t - N e w s R e v i e w s - *��  ��  � ��� l  ( (��������  ��  ��  � ��� n  ( /��� I   ) /������� 0 	cleansave 	cleanSave� ��� o   ) *���� 0 
pagenumber 
pageNumber� ���� o   * +���� 0 theslug theSlug��  ��  �  f   ( )� ���� O  0 >��� I  6 =�����
�� .CoReclosnull���     obj ��  � �����
�� 
svop� m   8 9��
�� savoyes ��  � l  0 3������ 1   0 3��
�� 
pacd��  ��  ��  � m     ��                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � applyMaster: Applies a master, creating pages as needed, changes the date, overrides Work-layer items and changes the page number if appropriate   � ���"   a p p l y M a s t e r :   A p p l i e s   a   m a s t e r ,   c r e a t i n g   p a g e s   a s   n e e d e d ,   c h a n g e s   t h e   d a t e ,   o v e r r i d e s   W o r k - l a y e r   i t e m s   a n d   c h a n g e s   t h e   p a g e   n u m b e r   i f   a p p r o p r i a t e� ��� i    !��� I      ������� 0 applymaster applyMaster� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 pagetype pageType� ���� o      ���� 0 
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
page� m    ���� � 3 - Applies a master to the existing single page   � �   Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� �� Z    ����� H      E     o    ���� 0 	themaster 	theMaster m     �  X - B l a n k l  # �	
	 k   # �  I  # 3��
�� .InESovrrobj         obj  n   # * 4   ' *��
�� 
txtf m   ( ) �  E d i t i o n   d a t e 4   # '��
�� 
mspr o   % &���� 0 	themaster 	theMaster ����
�� 
dPge 4   + /��
�� 
page m   - .���� ��    l  4 < r   4 < o   4 5���� 0 pagedate pageDate l      ����  n      !"! 1   9 ;��
�� 
pcnt" 4   5 9��#
�� 
txtf# m   7 8$$ �%%  E d i t i o n   d a t e��  ��     Sets the date    �&&    S e t s   t h e   d a t e '(' Q   = m)*��) l  @ d+,-+ I  @ d��./
�� .InESovrrobj         obj . l  @ [0����0 6  @ [121 n   @ H343 2   F H��
�� 
cobj4 n   @ F565 1   D F��
�� 
mpgs6 4   @ D��7
�� 
page7 m   B C���� 2 =  K Z898 n  L T:;: 1   P T��
�� 
pnam; 1   L P��
�� 
pilr9 m   U Y<< �==  W o r k��  ��  / ��>��
�� 
dPge> 4   \ `��?
�� 
page? m   ^ _���� ��  , o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items   - �@@ �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s* R      ������
�� .ascrerr ****      � ****��  ��  ��  ( A��A Z   n �BC����B >  n sDED o   n o���� 0 
pagenumber 
pageNumberE m   o rFF �GG  C l  v �HIJH k   v �KK LML I  v ���NO
�� .InESovrrobj         obj N n   v PQP 4   z ��R
�� 
txtfR m   { ~SS �TT  P a g e   n u m b e rQ 4   v z��U
�� 
msprU o   x y���� 0 	themaster 	theMasterO ��V��
�� 
dPgeV 4   � ���W
�� 
pageW m   � ����� ��  M X��X r   � �YZY o   � ����� 0 
pagenumber 
pageNumberZ l     [����[ n      \]\ 1   � ���
�� 
pcnt] n   � �^_^ 4   � ���`
�� 
txtf` m   � �aa �bb  P a g e   n u m b e r_ 4   � ���c
�� 
pagec m   � ����� ��  ��  ��  I G A Mostly to skip the front, which doesn't have a page number frame   J �dd �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��  
 6 0 The X-Blanks have no page number or date frames    �ee `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s��  ��  ��  � fgf =  � �hih o   � ����� 0 pagetype pageTypei m   � �jj �kk  s p r e a dg l��l k   ��mm non l  � �pqrp I  � �����s
�� .corecrel****      � null��  s ��tu
�� 
koclt m   � ���
�� 
sprdu �v�~
� 
prdtv K   � �ww �}x�|
�} 
pmasx 4   � ��{y
�{ 
mspry o   � ��z�z 0 	themaster 	theMaster�|  �~  q G A Creates a two-page spread at pages 2 & 3 with the master applied   r �zz �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e do {�y{ Z   ��|}�x�w| H   � �~~ E   � �� o   � ��v�v 0 	themaster 	theMaster� m   � ��� ���  X - B l a n k} k   ���� ��� I  � ��u��
�u .InESovrrobj         obj � n   � ���� 4   � ��t�
�t 
txtf� m   � ��� ���  L - E d i t i o n   d a t e� 4   � ��s�
�s 
mspr� o   � ��r�r 0 	themaster 	theMaster� �q��p
�q 
dPge� 4   � ��o�
�o 
page� m   � ��n�n �p  � ��� I  � ��m��
�m .InESovrrobj         obj � n   � ���� 4   � ��l�
�l 
txtf� m   � ��� ���  R - E d i t i o n   d a t e� 4   � ��k�
�k 
mspr� o   � ��j�j 0 	themaster 	theMaster� �i��h
�i 
dPge� 4   � ��g�
�g 
page� m   � ��f�f �h  � ��� l  � ����� r   � ���� o   � ��e�e 0 pagedate pageDate� l     ��d�c� n      ��� 1   � ��b
�b 
pcnt� 4   � ��a�
�a 
txtf� m   � ��� ���  L - E d i t i o n   d a t e�d  �c  � * $ Sets the date on the left-hand page   � ��� H   S e t s   t h e   d a t e   o n   t h e   l e f t - h a n d   p a g e� ��� l  ����� r   ���� o   � ��`�` 0 pagedate pageDate� l     ��_�^� n      ��� 1  �]
�] 
pcnt� 4   ��\�
�\ 
txtf� m   ��� ���  R - E d i t i o n   d a t e�_  �^  � + % Sets the date on the right-hand page   � ��� J   S e t s   t h e   d a t e   o n   t h e   r i g h t - h a n d   p a g e� ��� Q  [���[� k  	R�� ��� I 	-�Z��
�Z .InESovrrobj         obj � l 	$��Y�X� 6 	$��� n  	��� 2  �W
�W 
cobj� n  	��� 1  �V
�V 
mpgs� 4  	�U�
�U 
page� m  �T�T � = #��� n ��� 1  �S
�S 
pnam� 1  �R
�R 
pilr� m  "�� ���  W o r k�Y  �X  � �Q��P
�Q 
dPge� 4  %)�O�
�O 
page� m  '(�N�N �P  � ��M� I .R�L��
�L .InESovrrobj         obj � l .I��K�J� 6 .I��� n  .6��� 2  46�I
�I 
cobj� n  .4��� 1  24�H
�H 
mpgs� 4  .2�G�
�G 
page� m  01�F�F � = 9H��� n :B��� 1  >B�E
�E 
pnam� 1  :>�D
�D 
pilr� m  CG�� ���  W o r k�K  �J  � �C��B
�C 
dPge� 4  JN�A�
�A 
page� m  LM�@�@ �B  �M  � R      �?�>�=
�? .ascrerr ****      � ****�>  �=  �[  � ��<� Z  \����;�:� > \a��� o  \]�9�9 0 
pagenumber 
pageNumber� m  ]`�� ���  � k  d��� ��� I dv�8��
�8 .InESovrrobj         obj � n  dm��� 4  hm�7�
�7 
txtf� m  il�� ���  L - P a g e   n u m b e r� 4  dh�6�
�6 
mspr� o  fg�5�5 0 	themaster 	theMaster� �4��3
�4 
dPge� 4  nr�2�
�2 
page� m  pq�1�1 �3  � ��� I w��0��
�0 .InESovrrobj         obj � n  w���� 4  {��/�
�/ 
txtf� m  |�� �    R - P a g e   n u m b e r� 4  w{�.
�. 
mspr o  yz�-�- 0 	themaster 	theMaster� �,�+
�, 
dPge 4  ���*
�* 
page m  ���)�) �+  �  r  �� o  ���(�( 0 
pagenumber 
pageNumber l     �'�& n      	
	 1  ���%
�% 
pcnt
 n  �� 4  ���$
�$ 
txtf m  �� �  L - P a g e   n u m b e r 4  ���#
�# 
page m  ���"�" �'  �&   �! r  �� l ��� � c  �� l ���� [  �� o  ���� 0 
pagenumber 
pageNumber m  ���� �  �   m  ���
� 
TEXT�   �   l     �� n       1  ���
� 
pcnt n  �� 4  ���
� 
txtf m  ��   �!!  R - P a g e   n u m b e r 4  ���"
� 
page" m  ���� �  �  �!  �;  �:  �<  �x  �w  �y  ��  ��  � l   #��# 1    �
� 
pacd�  �  � m     $$                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � %&% l     ����  �  �  & '(' l     ����  �  �  ( )*) l     �
+,�
  + c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page   , �-- �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e* ./. i   " %010 I      �	2��	  0 drawembargobox drawEmbargoBox2 3�3 o      �� 0 pagetype pageType�  �  1 O     {454 O    z676 k    y88 9:9 Z    $;<=�; =   >?> o    �� 0 pagetype pageType? m    @@ �AA  s i n g l e< r    BCB m    �� C o      �� 0 pagenum pageNum= DED =   FGF o    �� 0 pagetype pageTypeG m    HH �II  s p r e a dE J� J r     KLK m    ���� L o      ���� 0 pagenum pageNum�   �  : MNM l  % %��������  ��  ��  N OPO r   % 4QRQ 6  % 2STS l  % )U����U 4  % )��V
�� 
layrV m   ' (���� ��  ��  T =  * 1WXW 1   + -��
�� 
pnamX m   . 0YY �ZZ  W o r kR o      ���� 0 	worklayer 	workLayerP [\[ l  5 5��������  ��  ��  \ ]^] O   5 b_`_ r   < aaba I  < _����c
�� .corecrel****      � null��  c ��de
�� 
kocld m   > ?��
�� 
txtfe ��f��
�� 
prdtf K   @ Ygg ��hi
�� 
pilrh o   A B���� 0 	worklayer 	workLayeri ��jk
�� 
gbndj J   C Oll mnm m   C Doo @,      n pqp m   D Err �b�     q sts m   E Huu @\�     t v��v m   H Kww �I      ��  k ��x��
�� 
pcntx m   R Uyy �zz " E m b a r g o e d   s t o r i e s��  ��  b o      ���� 0 ebox eBox` 4   5 9��{
�� 
page{ o   7 8���� 0 pagenum pageNum^ |}| l  c q~�~ r   c q��� 4   c k���
�� 
ObSt� m   g j�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   l p��
�� 
aobs� o   k l���� 0 ebox eBox��  ��   K E Set separately as it throws an error if you try to do it on creation   � ��� �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o n} ���� r   r y��� m   r s��
�� boovtrue� n      ��� 1   t x��
�� 
plck� o   s t���� 0 ebox eBox��  7 l   ������ 4   ���
�� 
docu� m    ���� ��  ��  5 m     ��                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  / ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   & )��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
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
�� boovtrue� n      ��� 1    ��
�� 
plck� 4    ���
�� 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     ��
�� 
pacl� ��� l  " "��������  ��  ��  � ��� Z   " I������ l  " '������ =  " '��� `   " %��� o   " #���� 0 
pagenumber 
pageNumber� m   # $���� � m   % &����  ��  ��  � l  * 2���� r   * 2��� J   * .�� ��� m   * +�� @.      � ���� m   + ,�� @&      ��  � l     ������ 1   . 1��
�� 
zero��  ��  � ( " For left-hand singles and spreads   � ��� D   F o r   l e f t - h a n d   s i n g l e s   a n d   s p r e a d s� ��� l  5 :������ =  5 :��� `   5 8��� o   5 6���� 0 
pagenumber 
pageNumber� m   6 7���� � m   8 9���� ��  ��  � ���� l  = E���� r   = E��� J   = A�� ��� m   = >�� @"      � ���� m   > ?�� @&      ��  � l     ������ 1   A D��
�� 
zero��  ��  �   For right-hand singles   � ��� .   F o r   r i g h t - h a n d   s i n g l e s��  ��  � ��� l  J J��������  ��  ��  � ���� I  J ]�����
�� .CoResavedocu        obj ��  � �����
�� 
kfil� b   L Y��� b   L W��� b   L U��� b   L S��� o   L Q���� $0 freshpagesfolder freshPagesFolder� o   Q R���� 0 theslug theSlug� m   S T�� ���  _� o   U V���� 0 filedate fileDate� m   W X�� ��� 
 . i n d d��  ��  � l   ������ 1    ��
�� 
pacd��  ��  � m     	 	                                                                                   InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � 			 l     ��������  ��  ��  	 			 l     ��������  ��  ��  	 			 l     ��		��  	 f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   	 �				 �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m	 	
		
 i   * -			 I      �������� 0 customedition customEdition��  ��  	 k    z		 			 l     ��������  ��  ��  	 			 l     ��		��  	 | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	 �		 �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .	 			 l     ��		��  	 a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	 �		 �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	 			 l     ��		��  	 [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	 �		 �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	 	 	!	  l     ��������  ��  ��  	! 	"	#	" l     ��	$	%��  	$ > 8 The human-friendly names used in the TextWrangler file	   	% �	&	& p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		# 	'	(	' r     X	)	*	) J     V	+	+ 	,	-	, m     	.	. �	/	/ 
 F r o n t	- 	0	1	0 m    	2	2 �	3	3  S a t F r o n t	1 	4	5	4 m    	6	6 �	7	7  H o m e _ S	5 	8	9	8 m    	:	: �	;	;  H o m e _ L	9 	<	=	< m    	>	> �	?	?  H o m e _ R	= 	@	A	@ m    	B	B �	C	C  F o r e i g n _ S	A 	D	E	D m    	F	F �	G	G  F o r e i g n _ L	E 	H	I	H m    	J	J �	K	K  F o r e i g n _ R	I 	L	M	L m    		N	N �	O	O  S t r u g g l e _ S	M 	P	Q	P m   	 
	R	R �	S	S  S t r u g g l e _ L	Q 	T	U	T m   
 	V	V �	W	W  S t r u g g l e _ R	U 	X	Y	X m    	Z	Z �	[	[  N e w s R e v i e w s _ S	Y 	\	]	\ m    	^	^ �	_	_  N e w s R e v i e w s _ L	] 	`	a	` m    	b	b �	c	c  N e w s R e v i e w s _ R	a 	d	e	d m    	f	f �	g	g  S p r e a d	e 	h	i	h m    	j	j �	k	k  T V _ S	i 	l	m	l m    	n	n �	o	o  T V _ L	m 	p	q	p m    	r	r �	s	s  T V _ R	q 	t	u	t m    	v	v �	w	w  L e t t e r s _ S	u 	x	y	x m    	z	z �	{	{  L e t t e r s _ L	y 	|	}	| m    	~	~ �		  L e t t e r s _ R	} 	�	�	� m    "	�	� �	�	�  R e d L i s t	� 	�	�	� m   " %	�	� �	�	�  F e a t _ S	� 	�	�	� m   % (	�	� �	�	�  F e a t _ L	� 	�	�	� m   ( +	�	� �	�	�  F e a t _ R	� 	�	�	� m   + .	�	� �	�	�  A r t s _ E n t s	� 	�	�	� m   . 1	�	� �	�	�  A r t s _ S	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ L	� 	�	�	� m   4 7	�	� �	�	�  A r t s _ R	� 	�	�	� m   7 :	�	� �	�	�  B a c k	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ S	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ L	� 	�	�	� m   @ C	�	� �	�	�  S p o r t _ R	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   F I	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   I L	�	� �	�	�  B l a n k _ S	� 	�	�	� m   L O	�	� �	�	�  B l a n k _ L	� 	���	� m   O R	�	� �	�	�  B l a n k _ R��  	* o      ���� 0 
human_list  	( 	�	�	� l  Y Y��	�	���  	�    The InDesign master names   	� �	�	� 4   T h e   I n D e s i g n   m a s t e r   n a m e s	� 	�	�	� r   Y �	�	�	� J   Y �	�	� 	�	�	� m   Y \	�	� �	�	�  N e w s - F r o n t	� 	�	�	� m   \ _	�	� �	�	�  N e w s - S a t F r o n t	� 	�	�	� m   _ b	�	� �	�	�  N e w s - H o m e - S p l i t	� 	�	�	� m   b e	�	� �	�	�  N e w s - H o m e - L	� 	�	�	� m   e h	�	� �	�	�  N e w s - H o m e - R	� 	�	�	� m   h k	�	� �	�	� $ N e w s - F o r e i g n - S p l i t	� 	�	�	� m   k n	�	� �	�	�  N e w s - F o r e i g n - L	� 	�	�	� m   n q	�	� �	�	�  N e w s - F o r e i g n - R	� 	�	�	� m   q t	�	� �	�	� & F e a t - S t r u g g l e - S p l i t	� 	�	�	� m   t w	�	� �	�	�  F e a t - S t r u g g l e - L	� 	�	�	� m   w z	�	� �	�	�  F e a t - S t r u g g l e - R	� 	�	�	� m   z }	�	� �	�	� * F e a t - N e w s R e v i e w - S p l i t	� 	�	�	� m   } �	�	� �
 
  " F e a t - N e w s R e v i e w - L	� 


 m   � �

 �

 " F e a t - N e w s R e v i e w - R
 


 m   � �

 �

  F e a t - S p r e a d
 
	


	 m   � �

 �

  F e a t - T V - S p l i t

 


 m   � �

 �

  F e a t - T V - L
 


 m   � �

 �

  F e a t - T V - R
 


 m   � �

 �

 $ F e a t - L e t t e r s - S p l i t
 


 m   � �

 �

  F e a t - L e t t e r s - L
 


 m   � �

 �
 
   F e a t - L e t t e r s - R
 
!
"
! m   � �
#
# �
$
$  F e a t - R e d L i s t
" 
%
&
% m   � �
'
' �
(
(   F e a t - B l a n k - S p l i t
& 
)
*
) m   � �
+
+ �
,
,  F e a t - B l a n k - L
* 
-
.
- m   � �
/
/ �
0
0  F e a t - B l a n k - R
. 
1
2
1 m   � �
3
3 �
4
4  A r t s - E n t s - S p l i t
2 
5
6
5 m   � �
7
7 �
8
8   A r t s - B l a n k - S p l i t
6 
9
:
9 m   � �
;
; �
<
<  A r t s - B l a n k - L
: 
=
>
= m   � �
?
? �
@
@  A r t s - B l a n k - R
> 
A
B
A m   � �
C
C �
D
D  S p r t - B a c k
B 
E
F
E m   � �
G
G �
H
H   S p r t - B l a n k - S p l i t
F 
I
J
I m   � �
K
K �
L
L  S p r t - B l a n k - L
J 
M
N
M m   � �
O
O �
P
P  S p r t - B l a n k - R
N 
Q
R
Q m   � �
S
S �
T
T  S p r t - R a c i n g - L
R 
U
V
U m   � �
W
W �
X
X  S p r t - R a c i n g - R
V 
Y
Z
Y m   � �
[
[ �
\
\  X - B l a n k - S p l i t
Z 
]
^
] m   � �
_
_ �
`
`  X - B l a n k - L
^ 
a��
a m   � �
b
b �
c
c  X - B l a n k - R��  	� o      ���� 0 masters_list  	� 
d
e
d l  � ���
f
g��  
f $  Slugs to use in the file name   
g �
h
h <   S l u g s   t o   u s e   i n   t h e   f i l e   n a m e
e 
i
j
i r   �J
k
l
k J   �H
m
m 
n
o
n m   � �
p
p �
q
q 
 F r o n t
o 
r
s
r m   � �
t
t �
u
u 
 F r o n t
s 
v
w
v m   � �
x
x �
y
y  H o m e
w 
z
{
z m   � �
|
| �
}
}  H o m e
{ 
~

~ m   � �
�
� �
�
�  H o m e
 
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
� m   �
�
� �
�
�  T V
� 
�
�
� m  
�
� �
�
�  T V
� 
�
�
� m  
�
� �
�
�  F e a t u r e s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  L e t t e r s
� 
�
�
� m  
�
� �
�
�  R e d L i s t
� 
�
�
� m  
�
� �
�
�  F e a t u r e s
� 
�
�
� m  
�
� �
�
�  F e a t u r e
� 
�
�
� m  
�
� �
�
�  F e a t u r e
� 
�
�
� m   
�
� �
�
�  A r t s - E n t s
� 
�
�
� m   #
�
� �
�
�  A r t s
� 
�
�
� m  #&
�
� �
�
�  A r t s
� 
�
�
� m  &)
�
� �
�
�  A r t s
� 
�
�
� m  ),
�
� �
�
�  B a c k
� 
�
�
� m  ,/
�
� �
�
� 
 S p o r t
� 
�
�
� m  /2
�
� �
�
� 
 S p o r t
� 
�
�
� m  25
�
� �
�
� 
 S p o r t
� 
�
�
� m  58
�
� �
�
�  R a c i n g
� 
�
�
� m  8;
�
� �
�
�  R a c i n g
� 
�
�
� m  ;>
�
� �
�
� 
 B L A N K
� 
�
�
� m  >A   � 
 B L A N K
� �� m  AD � 
 B L A N K��  
l o      ���� 0 
slugs_list  
j  l KK�������  ��  �    l KK�~	
�~  	 1 + Single-page masters (used to set pageType)   
 � V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )  r  K� J  K�  m  KN �  N e w s - F r o n t  m  NQ �  N e w s - S a t F r o n t  m  QT �  N e w s - H o m e - L  m  TW �    N e w s - H o m e - R !"! m  WZ## �$$  N e w s - F o r e i g n - L" %&% m  Z]'' �((  N e w s - F o r e i g n - R& )*) m  ]`++ �,,  F e a t - S t r u g g l e - L* -.- m  `c// �00  F e a t - S t r u g g l e - R. 121 m  cf33 �44 " F e a t - N e w s R e v i e w - L2 565 m  fi77 �88 " F e a t - N e w s R e v i e w - R6 9:9 m  il;; �<<  F e a t - T V - L: =>= m  lo?? �@@  F e a t - T V - R> ABA m  orCC �DD  F e a t - L e t t e r s - LB EFE m  ruGG �HH  F e a t - L e t t e r s - RF IJI m  uxKK �LL  F e a t - R e d L i s tJ MNM m  x{OO �PP  F e a t - B l a n k - LN QRQ m  {~SS �TT  F e a t - B l a n k - RR UVU m  ~�WW �XX  A r t s - B l a n k - LV YZY m  ��[[ �\\  A r t s - B l a n k - RZ ]^] m  ��__ �``  S p r t - B a c k^ aba m  ��cc �dd  S p r t - B l a n k - Lb efe m  ��gg �hh  S p r t - B l a n k - Rf iji m  ��kk �ll  S p r t - R a c i n g - Lj mnm m  ��oo �pp  S p r t - R a c i n g - Rn qrq m  ��ss �tt  X - B l a n k - Lr u�}u m  ��vv �ww  X - B l a n k - R�}   o      �|�| 0 singles_list   xyx l ���{z{�{  z , & Spread masters (used to set pageType)   { �|| L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )y }~} r  ��� J  ���� ��� m  ���� ���  N e w s - H o m e - S p l i t� ��� m  ���� ��� $ N e w s - F o r e i g n - S p l i t� ��� m  ���� ��� & F e a t - S t r u g g l e - S p l i t� ��� m  ���� ��� * F e a t - N e w s R e v i e w - S p l i t� ��� m  ���� ���  F e a t - S p r e a d� ��� m  ���� ���  F e a t - T V - S p l i t� ��� m  ���� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  ���� ���   F e a t - B l a n k - S p l i t� ��� m  ���� ���  A r t s - E n t s - S p l i t� ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��z� m  ���� ���  X - B l a n k - S p l i t�z  � o      �y�y 0 spreads_list  ~ ��� l ���x�w�v�x  �w  �v  � ��u� O  �z��� O  �y��� k  �x�� ��� l ������ r  ����� l ����t�s� I ���r��
�r .R*chFindMtch���     TEXT� m  ���� ���  ^ # S t a r t s   h e r e # $� �q��p
�q 
Opts� K  ���� �o��
�o 
SMod� m  ���n
�n SModGrep� �m��l
�m 
STop� m  ���k
�k boovtrue�l  �p  �t  �s  � o      �j�j 0 hashline hashLine�   Finds the beginning line   � ��� 2   F i n d s   t h e   b e g i n n i n g   l i n e� ��� l ����� r  ���� l ���i�h� [  ���� l ���g�f� l ���e�d� n  ���� 1  ��c
�c 
SLin� l ����b�a� n  ����� 1  ���`
�` 
MSpc� o  ���_�_ 0 hashline hashLine�b  �a  �e  �d  �g  �f  � m  �^�^ �i  �h  � o      �]�] 0 thestart theStart� : 4 The first instruction is on the line after hashLine   � ��� h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e� ��� l ���� r  ��� l ��\�[� 1  �Z
�Z 
ELin�\  �[  � o      �Y�Y 0 theend theEnd� @ : The last instruction must be on the last line of the file   � ��� t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e� ��� l �X�W�V�X  �W  �V  � ��� Y  v��U���T� l q���� k  q�� ��� l 9���� r  9��� l 7��S�R� I 7�Q��
�Q .R*chFindMtch���     TEXT� m  �� ���  ^ ( . + ) \ t ( . + ) $� �P��
�P 
FnIn� 4   &�O�
�O 
clin� o  $%�N�N 0 x  � �M �L
�M 
Opts  K  )1 �K�J
�K 
SMod m  ,/�I
�I SModGrep�J  �L  �S  �R  � o      �H�H 0 searchresult searchResult� 9 3 Finds characters, then a tab, then more characters   � � f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s�  l ::�G�F�E�G  �F  �E    l :G	
 r  :G l :E�D�C I :E�B�A
�B .R*chGSubutxt    ��� null�A   �@�?
�@ 
RplP m  >A �  \ 1�?  �D  �C   o      �>�> 0 
pagenumber 
pageNumber	 < 6 The page number (or a spread's left-hand page number)   
 � l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )  l HU r  HU l HS�=�< I HS�;�:
�; .R*chGSubutxt    ��� null�:   �9�8
�9 
RplP m  LO �  \ 2�8  �=  �<   o      �7�7 0 hmaster hMaster = 7 Human-friendly master name, as contained in human_list    � n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t  !  l VV�6�5�4�6  �5  �4  ! "�3" Z  Vq#$�2�1# H  V`%% E  V_&'& l V[(�0�/( n  V[)*) 1  W[�.
�. 
MTxt* o  VW�-�- 0 searchresult searchResult�0  �/  ' m  [^++ �,,  - 	 -$ l cm-./- k  cm00 121 l cc�,�+�*�,  �+  �*  2 343 Q  ck5675 k  f�88 9:9 l fo;<=; r  fo>?> l fm@�)�(@ n fmABA I  gm�'C�&�' 0 list_position  C DED o  gh�%�% 0 hmaster hMasterE F�$F o  hi�#�# 0 
human_list  �$  �&  B  f  fg�)  �(  ? o      �"�" 0 listpos listPos< Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list   = �GG �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s t: HIH l pxJKLJ r  pxMNM l pvO�!� O n  pvPQP 4  qv�R
� 
cobjR o  tu�� 0 listpos listPosQ o  pq�� 0 masters_list  �!  �   N o      �� 0 	themaster 	theMasterK 1 + Sets theMaster to the InDesign master name   L �SS V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m eI TUT l yy����  �  �  U VWV Z  y�XYZ�X E y|[\[ o  yz�� 0 singles_list  \ o  z{�� 0 	themaster 	theMasterY r  �]^] m  �__ �``  s i n g l e^ o      �� 0 pagetype pageTypeZ aba E ��cdc o  ���� 0 spreads_list  d o  ���� 0 	themaster 	theMasterb e�e r  ��fgf m  ��hh �ii  s p r e a dg o      �� 0 pagetype pageType�  �  W jkj l ������  �  �  k lml Z  ��nop�n = ��qrq o  ���� 0 pagetype pageTyper m  ��ss �tt  s i n g l eo l ��uvwu r  ��xyx l ��z��
z b  ��{|{ b  ��}~} o  ���	�	 0 
pagenumber 
pageNumber~ m  �� ���  _| l ������ n  ����� 4  ����
� 
cobj� o  ���� 0 listpos listPos� o  ���� 0 
slugs_list  �  �  �  �
  y o      �� 0 theslug theSlugv 2 , Block to set the slug used to name the file   w ��� X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l ep ��� = ����� o  ���� 0 pagetype pageType� m  ���� ���  s p r e a d� ��� r  ����� l ���� ��� b  ����� b  ����� b  ����� b  ����� o  ������ 0 
pagenumber 
pageNumber� m  ���� ���  -� l �������� [  ����� o  ������ 0 
pagenumber 
pageNumber� m  ������ ��  ��  � m  ���� ���  _� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 listpos listPos� o  ������ 0 
slugs_list  ��  ��  �   ��  � o      ���� 0 theslug theSlug�  �  m ��� l ����������  ��  ��  � ��� Z  ��������� G  ����� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      ���� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l��  ��  � ��� l ����������  ��  ��  � ��� l ������ n ����� I  ��������� 0 pagegen pageGen� ��� o  ������ 0 pagetype pageType� ��� o  ������ 0 	themaster 	theMaster� ��� o  ������ 0 theslug theSlug� ���� o  ������ 0 
pagenumber 
pageNumber��  ��  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ���� l ����������  ��  ��  ��  6 R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ����
���  7 k  k�� ��� l ������  � M G Handles "variable not defined" - aimed at listPos - to catch bad input   � ��� �   H a n d l e s   " v a r i a b l e   n o t   d e f i n e d "   -   a i m e d   a t   l i s t P o s   -   t o   c a t c h   b a d   i n p u t� ��� r  3��� b  /��� b  +��� b  '��� b  #��� b  ��� b  ��� b  ��� b  ��� b  ��� m  	�� ��� R T h e r e   i s   a   p r o b l e m   w i t h   t h i s   i n s t r u c t i o n :� o  	��
�� 
ret � o  ��
�� 
ret � l ������ n  ��� 1  ��
�� 
MTxt� o  ���� 0 searchresult searchResult��  ��  � o  ��
�� 
ret � o  ��
�� 
ret � m  "�� ��� � P l e a s e   d o u b l e - c h e c k   t h a t   t h e   p a g e   t y p e   i s   s p e l l e d   e x a c t l y   a s   l i s t e d .� o  #&��
�� 
ret � o  '*��
�� 
ret � m  +.�� ��� � D o   y o u   w i s h   t o   g e n e r a t e   t h e   r e s t   o f   t h e   p a g e s   o r   s t o p   t h e   s c r i p t ?� o      ���� 0 message2753  � ��� I 4N����
�� .sysodlogaskr        TEXT� o  47���� 0 message2753  � ����
�� 
btns� J  :B�� ��� m  :=�� �    C o n t i n u e� �� m  =@ �  S t o p��  � ����
�� 
dflt m  EH �  S t o p��  � �� Z Ok	���� = OZ

 l OV���� n  OV 1  RV��
�� 
bhit l OR���� 1  OR��
�� 
rslt��  ��  ��  ��   m  VY �  S t o p	 R  ]g����
�� .ascrerr ****      � ****��   ����
�� 
errn m  ad��������  ��  ��  ��  4  l ll��������  ��  ��   �� l ll��������  ��  ��  ��  . : 4 Lines consisting of "hyphen tab hyphen" are skipped   / � h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�2  �1  �3  � P J Goes through each line from the one after hashLine to the end of the file   � � �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�U 0 x  � o  ���� 0 thestart theStart� o  ���� 0 theend theEnd�T  � �� l ww��������  ��  ��  ��  � n  �� 4  ����
�� 
ctxt m  ������  4  ����
�� 
TxtW m  ������ � m  ���                                                                                  !Rch  alis    f  Macintosh HD               ĬplH+   �KFTextWrangler.app                                               *У��        ����  	                Applications    Ĭb\      У��     �KF  +Macintosh HD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    M a c i n t o s h   H D  Applications/TextWrangler.app   / ��  �u  	   l     ��������  ��  ��    !"! l     ��#$��  # , & newsGen: News-page generation routine   $ �%% L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e" &'& i   . 1()( I      ��*���� 0 newsgen newsGen* +,+ o      ���� &0 masterstogenerate mastersToGenerate, -��- o      ���� 0 theday theDay��  ��  ) k    X.. /0/ Z     _12����1 E    343 o     ���� &0 masterstogenerate mastersToGenerate4 m    55 �66  N e w s   p a g e s2 k    [77 898 Z    +:;<��: >   	=>= o    ���� 0 theday theDay> m    ?? �@@  S a t u r d a y; l   ABCA I    ��D���� 0 pagegen pageGenD EFE m    GG �HH  s i n g l eF IJI m    KK �LL  N e w s - F r o n tJ MNM m    OO �PP  1 _ F r o n tN Q��Q m    RR �SS  ��  ��  B ; 5 If block to create the weekday or weekend front page   C �TT j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e< UVU =   WXW o    ���� 0 theday theDayX m    YY �ZZ  S a t u r d a yV [��[ I    '��\���� 0 pagegen pageGen\ ]^] m     __ �``  s i n g l e^ aba m     !cc �dd  N e w s - S a t F r o n tb efe m   ! "gg �hh  1 _ F r o n tf i��i m   " #jj �kk  ��  ��  ��  ��  9 lml I   , 7��n���� 0 pagegen pageGenn opo m   - .qq �rr  s p r e a dp sts m   . /uu �vv  N e w s - H o m e - S p l i tt wxw m   / 0yy �zz  2 - 3 _ H o m ex {��{ m   0 3|| �}}  2��  ��  m ~~ I   8 I������� 0 pagegen pageGen� ��� m   9 <�� ���  s p r e a d� ��� m   < ?�� ���  N e w s - H o m e - S p l i t� ��� m   ? B�� ���  4 - 5 _ H o m e� ���� m   B E�� ���  4��  ��   ���� I   J [������� 0 pagegen pageGen� ��� m   K N�� ���  s p r e a d� ��� m   N Q�� ��� $ N e w s - F o r e i g n - S p l i t� ��� m   Q T�� ���  6 - 7 _ F o r e i g n� ���� m   T W�� ���  6��  ��  ��  ��  ��  0 ��� l  ` `��������  ��  ��  � ��� Z   ` �������� E  ` e��� o   ` a���� &0 masterstogenerate mastersToGenerate� m   a d�� ���  T V� Z   h ������� >  h m��� o   h i���� 0 theday theDay� m   i l�� ���  S a t u r d a y� I   p ����~� 0 pagegen pageGen� ��� m   q t�� ���  s i n g l e� ��� m   t w�� ���  F e a t - T V - L� ��� m   w z�� ��� 
 1 2 _ T V� ��}� m   z }�� ���  1 2�}  �~  � ��� =  � ���� o   � ��|�| 0 theday theDay� m   � ��� ���  S a t u r d a y� ��{� I   � ��z��y�z 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - B l a n k - R� ��� m   � ��� ���  1 5 _ F e a t u r e s� ��x� m   � ��� ���  1 5�x  �y  �{  ��  ��  ��  � ��� l  � ��w�v�u�w  �v  �u  � ��� Z   ����t�s� E  � ���� o   � ��r�r &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   ��� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ��q� m   � ��� ���  W e d n e s d a y�q  � o      �p�p 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   � ���� J   � ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� �    T h u r s d a y� �o m   � � �  F r i d a y�o  � o      �n�n 0 p14_days  �  l  � ��m�l�k�m  �l  �k   �j Z   �	�i E  � �

 o   � ��h�h 0 p10_days   o   � ��g�g 0 theday theDay I   � ��f�e�f 0 pagegen pageGen  m   � � �  s i n g l e  m   � � �  F e a t - L e t t e r s - L  m   � � �  1 0 _ L e t t e r s �d m   � � �  1 0�d  �e  	  E  � � o   � ��c�c 0 p14_days   o   � ��b�b 0 theday theDay  !  I   � ��a"�`�a 0 pagegen pageGen" #$# m   � �%% �&&  s i n g l e$ '(' m   � �)) �**  F e a t - L e t t e r s - L( +,+ m   � �-- �..  1 4 _ L e t t e r s, /�_/ m   � �00 �11  1 4�_  �`  ! 232 =  � 454 o   � ��^�^ 0 theday theDay5 m   � �66 �77  S a t u r d a y3 8�]8 I  �\9�[�\ 0 pagegen pageGen9 :;: m  << �==  s p r e a d; >?> m  
@@ �AA $ F e a t - L e t t e r s - S p l i t? BCB m  
DD �EE  1 8 - 1 9 _ L e t t e r sC F�ZF m  GG �HH  1 8�Z  �[  �]  �i  �j  �t  �s  � IJI l �Y�X�W�Y  �X  �W  J KLK Z  :MN�V�UM E "OPO o  �T�T &0 masterstogenerate mastersToGenerateP m  !QQ �RR  S t r u g g l eN I  %6�SS�R�S 0 pagegen pageGenS TUT m  &)VV �WW  s p r e a dU XYX m  ),ZZ �[[ & F e a t - S t r u g g l e - S p l i tY \]\ m  ,/^^ �__  8 - 9 _ S t r u g g l e] `�Q` m  /2aa �bb  8�Q  �R  �V  �U  L cdc l ;;�P�O�N�P  �O  �N  d e�Me Z  ;Xfg�L�Kf E ;@hih o  ;<�J�J &0 masterstogenerate mastersToGeneratei m  <?jj �kk  R e d   L i s tg I  CT�Il�H�I 0 pagegen pageGenl mnm m  DGoo �pp  s i n g l en qrq m  GJss �tt  F e a t - R e d L i s tr uvu m  JMww �xx  2 0 _ R e d L i s tv y�Gy m  MPzz �{{  2 0�G  �H  �L  �K  �M  ' |}| l     �F�E�D�F  �E  �D  } ~~ l     �C�B�A�C  �B  �A   ��� l     �@���@  � 1 + featsGen: Features-page generation routine   � ��� V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e� ��� i   2 5��� I      �?��>�? 0 featsgen featsGen� ��� o      �=�= &0 masterstogenerate mastersToGenerate� ��<� o      �;�; 0 theday theDay�<  �>  � k    ��� ��� Z     %���:�9� E    ��� o     �8�8 &0 masterstogenerate mastersToGenerate� m    �� ���  S p r e a d� Z    !���7�� =   	��� o    �6�6 0 theday theDay� m    �� ���  S a t u r d a y� I    �5��4�5 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  1 2 - 1 3 _ F e a t u r e s� ��3� m    �� ���  1 2�3  �4  �7  � I    !�2��1�2 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ��0� m    �� ���  8�0  �1  �:  �9  � ��� l  & &�/�.�-�/  �.  �-  � ��� Z   & ;���,�+� E  & )��� o   & '�*�* &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7�)��(�) 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ��'� m   0 3�� ���  1 0�'  �(  �,  �+  � ��� l  < <�&�%�$�&  �%  �$  � ��� Z   < Y���#�"� E  < A��� o   < =�!�! &0 masterstogenerate mastersToGenerate� m   = @�� ���  1 3� I   D U� ���  0 pagegen pageGen� ��� m   E H�� ���  s i n g l e� ��� m   H K�� ���  F e a t - T V - R� ��� m   K N�� ���  1 3 _ F e a t u r e s� ��� m   N Q�� ���  1 3�  �  �#  �"  � ��� l  Z Z����  �  �  � ��� Z   Z w����� E  Z _��� o   Z [�� &0 masterstogenerate mastersToGenerate� m   [ ^�� ���  9� I   b s���� 0 pagegen pageGen� ��� m   c f�� ���  s i n g l e�    m   f i �  F e a t - B l a n k - R  m   i l �  9 _ F e a t u r e s � m   l o		 �

  9�  �  �  �  �  Z   x ��� E  x } o   x y�� &0 masterstogenerate mastersToGenerate m   y | �  1 0 - 1 1      s p l i t I   � ���� 0 pagegen pageGen  m   � � �  s p r e a d  m   � � �   F e a t - B l a n k - S p l i t  m   � � �  1 0 - 1 1 _ F e a t u r e s  �  m   � �!! �""  1 0�  �  �  �   #$# Z   � �%&��% E  � �'(' o   � ��� &0 masterstogenerate mastersToGenerate( m   � �)) �**  1 0 - 1 1      s i n g l e s& k   � �++ ,-, I   � ��.�
� 0 pagegen pageGen. /0/ m   � �11 �22  s i n g l e0 343 m   � �55 �66  F e a t - B l a n k - L4 787 m   � �99 �::  1 0 _ F e a t u r e s8 ;�	; m   � �<< �==  1 0�	  �
  - >�> I   � ��?�� 0 pagegen pageGen? @A@ m   � �BB �CC  s i n g l eA DED m   � �FF �GG  F e a t - B l a n k - RE HIH m   � �JJ �KK  1 1 _ F e a t u r e sI L�L m   � �MM �NN  1 1�  �  �  �  �  $ OPO l  � �����  �  �  P QRQ l  � ��� ���  �   ��  R STS Z   � �UV����U E  � �WXW o   � ����� &0 masterstogenerate mastersToGenerateX m   � �YY �ZZ  1 5V I   � ���[���� 0 pagegen pageGen[ \]\ m   � �^^ �__  s i n g l e] `a` m   � �bb �cc  F e a t - B l a n k - Ra ded m   � �ff �gg  1 5 _ F e a t u r e se h��h m   � �ii �jj  1 5��  ��  ��  ��  T klk l  � ���������  ��  ��  l mnm Z   �op����o E  � �qrq o   � ����� &0 masterstogenerate mastersToGenerater m   � �ss �tt 
 1 6 - 1 7p l  � �uvwu I   � ���x���� 0 pagegen pageGenx yzy m   � �{{ �||  s p r e a dz }~} m   � � ���  A r t s - E n t s - S p l i t~ ��� m   � ��� ���  1 6 - 1 7 _ E n t s - A r t s� ���� m   � ��� ���  1 6��  ��  v ( " Create the weekend Ents/Arts page   w ��� D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  n ��� l ��������  ��  ��  � ��� Z  {������� E ��� o  ���� &0 masterstogenerate mastersToGenerate� m  �� ���  L e t t e r s� k  
w�� ��� l 
���� r  
��� J  
�� ��� m  
�� ���  M o n d a y� ���� m  �� ���  W e d n e s d a y��  � o      ���� 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r  %��� J  #�� ��� m  �� ���  T u e s d a y� ��� m  �� ���  T h u r s d a y� ��� m  �� ���  F r i d a y� ���� m  !�� ��� , N o   d a y      w o r k i n g   a h e a d��  � o      ���� 0 p14_days  � ��� l &&��������  ��  ��  � ���� Z  &w������ E &)��� o  &'���� 0 p10_days  � o  '(���� 0 theday theDay� I  ,=������� 0 pagegen pageGen� ��� m  -0�� ���  s i n g l e� ��� m  03�� ���  F e a t - L e t t e r s - L� ��� m  36�� ���  1 0 _ L e t t e r s� ���� m  69�� ���  1 0��  ��  � ��� E @C��� o  @A���� 0 p14_days  � o  AB���� 0 theday theDay� ��� I  FW������� 0 pagegen pageGen� ��� m  GJ�� ���  s i n g l e� ��� m  JM�� ���  F e a t - L e t t e r s - L� ��� m  MP�� ���  1 4 _ L e t t e r s� ���� m  PS�� ���  1 4��  ��  � ��� = Z_��� o  Z[���� 0 theday theDay� m  [^�� ���  S a t u r d a y� ���� I  bs������� 0 pagegen pageGen� ��� m  cf�� ���  s p r e a d� ��� m  fi�� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  il�� ���  1 8 - 1 9 _ L e t t e r s� ���� m  lo�� ���  1 8��  ��  ��  ��  ��  ��  ��  � ��� l ||��������  ��  ��  � � � Z  |����� E |� o  |}���� &0 masterstogenerate mastersToGenerate m  }� �  A r t s l ��	 I  ����
���� 0 pagegen pageGen
  m  �� �  s i n g l e  m  �� �  A r t s - B l a n k - R  m  �� �  1 1 _ A r t s �� m  �� �  1 1��  ��   ( " Create the weekday Arts page (11)   	 � D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��     l ����������  ��  ��    Z  �� ���� E ��!"! o  ������ &0 masterstogenerate mastersToGenerate" m  ��## �$$  A r t s   s p l i t  I  ����%���� 0 pagegen pageGen% &'& m  ��(( �))  s p r e a d' *+* m  ��,, �--   A r t s - B l a n k - S p l i t+ ./. m  ��00 �11  1 0 - 1 1 _ A r t s/ 2��2 m  ��33 �44  1 0��  ��  ��  ��   565 l ����������  ��  ��  6 787 Z  ��9:����9 E ��;<; o  ������ &0 masterstogenerate mastersToGenerate< m  ��== �>>  E n t s: I  ����?���� 0 pagegen pageGen? @A@ m  ��BB �CC  s i n g l eA DED m  ��FF �GG  F e a t - E n t s - LE HIH m  ��JJ �KK  1 4 _ E n t sI L��L m  ��MM �NN  1 4��  ��  ��  ��  8 O��O l ����������  ��  ��  ��  � PQP l     ��������  ��  ��  Q RSR l     ��������  ��  ��  S TUT l     ��VW��  V , & artsGen: Arts-page generation routine   W �XX L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n eU YZY i   6 9[\[ I      ��]���� 0 artsgen artsGen] ^��^ o      ���� &0 masterstogenerate mastersToGenerate��  ��  \ k     ]__ `a` Z     bc����b E    ded o     ���� &0 masterstogenerate mastersToGeneratee m    ff �gg  1 6 - 1 7   ( w e e k e n d )c l   hijh I    ��k���� 0 pagegen pageGenk lml m    nn �oo  s p r e a dm pqp m    	rr �ss  A r t s - E n t s - S p l i tq tut m   	 
vv �ww  1 6 - 1 7 _ E n t s - A r t su x��x m   
 yy �zz  1 6��  ��  i ( " Create the weekend Ents/Arts page   j �{{ D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  a |}| l   ��������  ��  ��  } ~~ Z    '������� E   ��� o    ���� &0 masterstogenerate mastersToGenerate� m    �� ���  A r t s   ( p 1 1 )� l   #���� I    #������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  A r t s - B l a n k - R� ��� m    �� ���  1 1 _ A r t s� ���� m    �� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��   ��� l  ( (��������  ��  ��  � ��� Z   ( =������� E  ( +��� o   ( )���� &0 masterstogenerate mastersToGenerate� m   ) *�� ���  A r t s   s p l i t� l  . 9���� I   . 9������� 0 pagegen pageGen� ��� m   / 0�� ���  s p r e a d� ��� m   0 1�� ���   A r t s - B l a n k - S p l i t� ��� m   1 2�� ���  1 0 - 1 1 _ A r t s� ���� m   2 5�� ���  1 0��  ��  � + % Creates an Arts split-spread (10-11)   � ��� J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  � ��� l  > >��������  ��  ��  � ��� Z   > [������� E  > C��� o   > ?���� $0 masterstogenerat mastersToGenerat� m   ? B�� ���  E n t s� I   F W������� 0 pagegen pageGen� ��� m   G J�� ���  s i n g l e� ��� m   J M�� ���  F e a t - E n t s - L� ��� m   M P�� ���  1 4 _ E n t s� ���� m   P S�� ���  1 4��  ��  ��  ��  � ���� l  \ \��������  ��  ��  ��  Z ��� l     ��������  ��  ��  � ��� l     ��~�}�  �~  �}  � ��� l     �|���|  � 0 * sportsGen: Sports-page generation routine   � ��� T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n e� ��{� i   : =��� I      �z��y�z 0 	sportsgen 	sportsGen� ��x� o      �w�w &0 masterstogenerate mastersToGenerate�x  �y  � k    ��� ��� Z     ���v�u� E    ��� o     �t�t &0 masterstogenerate mastersToGenerate� m    �� ���  T w o   p a g e s� k    �� ��� I    �s��r�s 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    	�� ���  S p r t - B a c k� ��� m   	 
�� ���  1 6 _ B a c k� ��q� m   
 �� ���  1 6�q  �r  � ��p� I    �o��n�o 0 pagegen pageGen� � � m     �  s i n g l e   m     �  S p r t - B l a n k - R  m    		 �

  1 5 _ S p o r t �m m     �  1 5�m  �n  �p  �v  �u  �  l   �l�k�j�l  �k  �j    Z    U�i�h E   ! o    �g�g &0 masterstogenerate mastersToGenerate m      �  T h r e e   p a g e s k   $ Q  I   $ -�f�e�f 0 pagegen pageGen  m   % & �  s i n g l e  !  m   & '"" �##  S p r t - B a c k! $%$ m   ' (&& �''  1 6 _ B a c k% (�d( m   ( ))) �**  1 6�d  �e   +,+ I   . ?�c-�b�c 0 pagegen pageGen- ./. m   / 200 �11  s i n g l e/ 232 m   2 544 �55  S p r t - B l a n k - R3 676 m   5 888 �99  1 5 _ S p o r t7 :�a: m   8 ;;; �<<  1 5�a  �b  , =�`= I   @ Q�_>�^�_ 0 pagegen pageGen> ?@? m   A DAA �BB  s i n g l e@ CDC m   D GEE �FF  S p r t - B l a n k - LD GHG m   G JII �JJ  1 4 _ S p o r tH K�]K m   J MLL �MM  1 4�]  �^  �`  �i  �h   NON l  V V�\�[�Z�\  �[  �Z  O PQP Z   V �RS�Y�XR E  V [TUT o   V W�W�W &0 masterstogenerate mastersToGenerateU m   W ZVV �WW , T h r e e   p a g e s   w i t h   s p l i tS k   ^ �XX YZY I   ^ o�V[�U�V 0 pagegen pageGen[ \]\ m   _ b^^ �__  s i n g l e] `a` m   b ebb �cc  S p r t - B a c ka ded m   e hff �gg  1 6 _ B a c ke h�Th m   h kii �jj  1 6�T  �U  Z k�Sk I   p ��Rl�Q�R 0 pagegen pageGenl mnm m   q too �pp  s p r e a dn qrq m   t wss �tt   S p r t - B l a n k - S p l i tr uvu m   w zww �xx  1 4 - 1 5 _ S p o r tv y�Py m   z }zz �{{  1 4�P  �Q  �S  �Y  �X  Q |}| l  � ��O�N�M�O  �N  �M  } ~~ Z   � ����L�K� E  � ���� o   � ��J�J &0 masterstogenerate mastersToGenerate� m   � ��� ���  F o u r   p a g e s� k   � ��� ��� I   � ��I��H�I 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��G� m   � ��� ���  2 4�G  �H  � ��� I   � ��F��E�F 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - R� ��� m   � ��� ���  2 3 _ S p o r t� ��D� m   � ��� ���  2 3�D  �E  � ��� I   � ��C��B�C 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B l a n k - L� ��� m   � ��� ���  2 2 _ S p o r t� ��A� m   � ��� ���  2 2�A  �B  � ��@� I   � ��?��>�? 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - R a c i n g - R� ��� m   � ��� ���  2 1 _ R a c i n g� ��=� m   � ��� ���  2 1�=  �>  �@  �L  �K   ��� l  � ��<�;�:�<  �;  �:  � ��� Z   ����9�8� E  � ���� o   � ��7�7 &0 masterstogenerate mastersToGenerate� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� k   ��� ��� I   � ��6��5�6 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��4� m   � ��� ���  2 4�4  �5  � ��� I   ��3��2�3 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���   S p r t - B l a n k - S p l i t� ��� m   � ��� ���  2 2 - 2 3 _ S p o r t� ��1� m   ��� ���  2 2�1  �2  � ��0� I  �/��.�/ 0 pagegen pageGen� � � m  
 �  s i n g l e   m  
 �  S p r t - R a c i n g - R  m  		 �

  2 1 _ R a c i n g �- m   �  2 1�-  �.  �0  �9  �8  �  l �,�+�*�,  �+  �*    Z  9�)�( E ! o  �'�' &0 masterstogenerate mastersToGenerate m    �  R a c i n g   o n l y I  $5�&�%�& 0 pagegen pageGen  m  %( �  s i n g l e  m  (+ �    S p r t - R a c i n g - R !"! m  +.## �$$  2 1 _ R a c i n g" %�$% m  .1&& �''  2 1�$  �%  �)  �(   ()( l ::�#�"�!�#  �"  �!  ) *+* Z  :W,-� �, E :?./. o  :;�� &0 masterstogenerate mastersToGenerate/ m  ;>00 �11  E x t r a   l e f t   p a g e- I  BS�2�� 0 pagegen pageGen2 343 m  CF55 �66  s i n g l e4 787 m  FI99 �::  S p r t - B l a n k - L8 ;<; m  IL== �>>  L _ X X _ S p o r t< ?�? m  LO@@ �AA  0 0�  �  �   �  + BCB l XX����  �  �  C DED Z  XuFG��F E X]HIH o  XY�� &0 masterstogenerate mastersToGenerateI m  Y\JJ �KK   E x t r a   r i g h t   p a g eG I  `q�L�� 0 pagegen pageGenL MNM m  adOO �PP  s i n g l eN QRQ m  dgSS �TT  S p r t - B l a n k - RR UVU m  gjWW �XX  R _ X X _ S p o r tV Y�Y m  jmZZ �[[  0 0�  �  �  �  E \]\ l vv����  �  �  ] ^�^ Z  v�_`��_ E v{aba o  vw�� &0 masterstogenerate mastersToGenerateb m  wzcc �dd  E x t r a   s p l i t` I  ~��
e�	�
 0 pagegen pageGene fgf m  �hh �ii  s p r e a dg jkj m  ��ll �mm   S p r t - B l a n k - S p l i tk non m  ��pp �qq " S p l i t _ X X - X X _ S p o r to r�r m  ��ss �tt  0 0�  �	  �  �  �  �{       $�u K Uvwxyz{|}~�������������� �����������������  u "���������������������������������������������������������������������� $0 freshpagesfolder freshPagesFolder��  0 masterdocument masterDocument�� 0 	genprompt 	genPrompt�� 0 list_position  �� 0 
dateprompt 
datePrompt�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate�� 0 pagegen pageGen�� 0 applymaster applyMaster��  0 drawembargobox drawEmbargoBox�� 0 	cleansave 	cleanSave�� 0 customedition customEdition�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 artsgen artsGen�� 0 	sportsgen 	sportsGen
�� .aevtoappnull  �   � ****�� 0 pagedate pageDate�� 0 filedate fileDate��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  v �� ����������� 0 	genprompt 	genPrompt�� ����� �  ���� 0 desk  ��  � 	�������������������� 0 desk  �� 0 	days_list  �� 0 thetitle theTitle�� 0 weekday_pages  �� 0 weekend_pages  �� 0 ahead_pages  �� 0 theday theDay�� 0 
prompttext 
promptText�� &0 masterstogenerate mastersToGenerate� r � � � � � ����� ��� ��������� ����� � � � � � ���#��-7;>FJNRU[fjnrvy��������������������������	!%),��2=@IMQT\`dg���������������������*���� 
�� 
prmp
�� 
appr�� 
�� .gtqpchltns    @   @ ns  
�� 
TEXT
�� 
rslt
�� 
errn������ 
�� 
bool�� �� �� 0 
dateprompt 
datePrompt�� 0 customedition customEdition
�� 
ret 
�� 
mlsl�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 	sportsgen 	sportsGen�� 0 artsgen artsGen�����  -������v����� �&E�O��  )a a lhY hY hOa a a a a a a vE�O�a  �a %E�Y a E�O�a  
 �a  a & n�a   &a  a !a "mvE�Oa #a $a %a &a '�vE�Y ?�a (  6a )a *a +a ,a -a .a vE�Oa /a 0a 1a 2a 3a 4a vE�Y hY Ơa 5 
 �a 6 a & �a 7�6FO�a 8  ga 9a :a ;a <a =a >a vE�Oa ?a @a Aa Ba Ca Da Ea Fa GvE�Oa Ha Ia Ja Ka La Ma Na Oa Pa Qa Ra Sa TvE�Y :�a U  1a Va WlvE�Oa Xa Ya Za [�vE�Oa \a ]a ^a _�vE�Y hY hO)��l+ `E�O�a a  
)j+ bY �a c_ d%_ d%a e%E�O�a f  +���a gea  E�O�f  )a a lhY hY e�a h +���a gea  E�O�f  )a a lhY hY 4�a i  +���a gea  E�O�f  )a a lhY hY hO�a j  )��l+ kY 7�a l  )��l+ mY %�a n  )�k+ oY �a p  )�k+ qY hw ��A���������� 0 list_position  �� ����� �  ������ 0 	this_item  �� 0 	this_list  ��  � �������� 0 	this_item  �� 0 	this_list  �� 0 i  � ����
�� .corecnte****       ****
�� 
cobj�� # !k�j  kh ��/�  �Y h[OY��x ��^���������� 0 
dateprompt 
datePrompt�� ����� �  ������ 0 thetitle theTitle�� 0 	days_list  ��  � ���������������������������������� 0 thetitle theTitle�� 0 	days_list  �� 0 months_list  �� 0 tomorrow  �� 0 tmday tmDay�� 0 theday theDay�� 0 prdate prDate�� 0 prmonth prMonth�� 0 pryear prYear�� 0 
predictpos 
predictPos�� 0 	actualpos 	actualPos�� 0 shiftpos shiftPos�� 0 predictedday predictedDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear� 8kosw{�����������������������������������������~�}�|�{����z�y�x�w���v�u�t�s(�r�q�� 
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
� 
day 
�~ 
mnth
�} 
year�| 0 list_position  �{ 
�z 
dtxt�y 
�x .sysodlogaskr        TEXT
�w 
ttxt
�v 
ctxt
�u 
psof
�t 
psin
�s .sysooffslong    ��� null�r "0 create_pagedate create_pageDate�q "0 create_filedate create_fileDate���������������vE�O*j �,�&a  *j k_  E�Y *j l_  E�O��,�&kvE�O�a a a �a �a  �&E�O_ a   )a a lhY hO�a   a E` Oa E`  O�Y hO���&   �a !,E�O�a ",�&kvE�O�a #,E�Y o���& f)��&�l+ $E�O)��l+ $E�O��E�O�j ��_  E�Y �j �a %�_  E�Y hO�a !,E�O�a ",�&kvE�O�a #,E�Y hO�a a &a �a �a  �&E�O_ a '  )a a lhY hOa (a )�a �a * +a ,,�&E�O_ a -  )a a lhY hO�a . &�[a /\[Zk\Z*a 0a 1a 2�a * 3k2E�Y hOa 4a )�a �a * +a ,,�&E�O_ a 5  )a a lhY hO)����a *+ 6O)����a *+ 7O�y �p_�o�n���m�p "0 create_pagedate create_pageDate�o �l��l �  �k�j�i�h�k 0 theday theDay�j 0 themonth theMonth�i 0 thedate theDate�h 0 theyear theYear�n  � �g�f�e�d�c�b�a�g 0 theday theDay�f 0 themonth theMonth�e 0 thedate theDate�d 0 theyear theYear�c 0 sun  �b 0 secondmonth secondMonth�a 0 
secondyear 
secondYear� m����`�_����^�]�\���[� "$�Z+�` 0 pagedate pageDate
�_ 
ldt 
�^ 
days
�] 
mnth
�\ 
TEXT
�[ 
year
�Z 
day �m ��� ��%�%�%�%�%�%E�OPY t*��%�%�%�%�%�%/k� E�O��,�&� ��,�&�%E�Y �E�O��,�&� ��,�&%E�Y a E�Oa �%a %�%a %�%�a ,�&%a %�%�%E�OPz �Y>�X�W���V�Y "0 create_filedate create_fileDate�X �U��U �  �T�S�R�Q�T 0 themonth theMonth�S 0 thedate theDate�R 0 theyear theYear�Q 0 months_list  �W  � �P�O�N�M�P 0 themonth theMonth�O 0 thedate theDate�N 0 theyear theYear�M 0 months_list  � �L�KV�Jo�I�H�G
�L 
nmbr�K 
�J 0 list_position  
�I 
ctxt�H �G 0 filedate fileDate�V >��&� 
�%E�Y hO)��l+ E�O�� 
�%E�Y hO��%�[�\[Zm\Z�2%E�{ �F��E�D���C�F 0 pagegen pageGen�E �B��B �  �A�@�?�>�A 0 pagetype pageType�@ 0 	themaster 	theMaster�? 0 theslug theSlug�> 0 
pagenumber 
pageNumber�D  � �=�<�;�:�= 0 pagetype pageType�< 0 	themaster 	theMaster�; 0 theslug theSlug�: 0 
pagenumber 
pageNumber� 
��9�8��7�6�5�4�3�2
�9 .aevtodocnull  �    alis�8 0 applymaster applyMaster�7  0 drawembargobox drawEmbargoBox�6 0 	cleansave 	cleanSave
�5 
pacd
�4 
svop
�3 savoyes 
�2 .CoReclosnull���     obj �C @� <b  j O)���m+ O�� )�k+ Y hO)��l+ O*�, 	*��l 	UU| �1��0�/���.�1 0 applymaster applyMaster�0 �-��- �  �,�+�*�, 0 	themaster 	theMaster�+ 0 pagetype pageType�* 0 
pagenumber 
pageNumber�/  � �)�(�'�) 0 	themaster 	theMaster�( 0 pagetype pageType�' 0 
pagenumber 
pageNumber� ,$�&��%�$�#�"�!� �$������<��FSaj���������������� 
�& 
pacd
�% 
mspr
�$ 
page
�# 
pmas
�" 
txtf
�! 
dPge
�  .InESovrrobj         obj � 0 pagedate pageDate
� 
pcnt
� 
mpgs
� 
cobj�  
� 
pilr
� 
pnam�  �  
� 
kocl
� 
sprd
� 
prdt� 
� .corecrel****      � null
� 
TEXT�.���*�,���  �*�/*�k/�,FO�� |*�/��/�*�k/l 
O�*��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�a "/�,FO�*�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU} �1������  0 drawembargobox drawEmbargoBox� ��� �  �� 0 pagetype pageType�  � ��
�	�� 0 pagetype pageType�
 0 pagenum pageNum�	 0 	worklayer 	workLayer� 0 ebox eBox� ��@H���Y����� ��oruw����y�����������
� 
docu
� 
layr
� 
pnam
� 
page
� 
kocl
� 
txtf
� 
prdt
�  
pilr
�� 
gbnd�� 
�� 
pcnt�� 
�� .corecrel****      � null
�� 
ObSt
�� 
aobs
�� 
plck� |� x*�k/ p��  kE�Y ��  lE�Y hO*�k/�[�,\Z�81E�O*�/ '*�������a a a va a a a  E�UO*a a /�a ,FOe�a ,FUU~ ������������� 0 	cleansave 	cleanSave�� ����� �  ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug��  � ������ 0 
pagenumber 
pageNumber�� 0 theslug theSlug� 	 ������������������������
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
kfil�� 0 filedate fileDate
�� .CoResavedocu        obj �� `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU ��	���������� 0 customedition customEdition��  ��  � ������������������������������������ 0 
human_list  �� 0 masters_list  �� 0 
slugs_list  �� 0 singles_list  �� 0 spreads_list  �� 0 hashline hashLine�� 0 thestart theStart�� 0 theend theEnd�� 0 x  �� 0 searchresult searchResult�� 0 
pagenumber 
pageNumber�� 0 hmaster hMaster�� 0 listpos listPos�� 0 	themaster 	theMaster�� 0 pagetype pageType�� 0 theslug theSlug�� 0 message2753  � �	.	2	6	:	>	B	F	J	N	R	V	Z	^	b	f	j	n	r	v	z	~	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	���	�	�	�	�	�	�	�	�	�	�	�	�	�








#
'
+
/
3
7
;
?
C
G
K
O
S
W
[
_
b
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
�
�
� #'+/37;?CGKOSW[_cgkosv��������������������������������������������������+����_hs����������������������������������� &�� �� 
�� 
TxtW
�� 
ctxt
�� 
Opts
�� 
SMod
�� SModGrep
�� 
STop�� 
�� .R*chFindMtch���     TEXT
�� 
MSpc
�� 
SLin
�� 
ELin
�� 
FnIn
�� 
clin
�� 
RplP
�� .R*chGSubutxt    ��� null
�� 
MTxt�� 0 list_position  
�� 
cobj
�� 
bool�� 0 pagegen pageGen��  � ������
�� 
errn���?��  
�� 
ret 
�� 
btns
�� 
dflt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� 
errn������{����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %a &vE�Oa 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja Ka La &vE�Oa Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa pa qa ra &vE�Oa sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa ��*a �k/a �k/�a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�Oe��kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPW lX � �a �_ �%_ �%�a �,%_ �%_ �%a �%_ �%_ �%a �%E^ O] a �a �a �lva �a �a � �O_ �a �,a �  )a �a �lhY hOPY h[OY��OPUU� ��)���������� 0 newsgen newsGen�� ����� �  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  � ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  � A5?GKOR����Y_cgjquy|������������������������%)-06<@DGQVZ^ajoswz�� �� 0 pagegen pageGen��Y�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y h� ������������� 0 featsgen featsGen�� ����� �  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  � ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  � V��������������������������	!)159<BFJMY^bfis{����������������������#(,03=BFJM�� �� 0 pagegen pageGen��ؠ�  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a   (*a !a "a #a $�+ O*a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . *a /a 0a 1a 2�+ Y hO�a 3 ra 4a 5lvE�Oa 6a 7a 8a 9�vE�O�� *a :a ;a <a =�+ Y 9�� *a >a ?a @a A�+ Y �a B  *a Ca Da Ea F�+ Y hY hO�a G *a Ha Ia Ja K�+ Y hO�a L *a Ma Na Oa P�+ Y hO�a Q *a Ra Sa Ta U�+ Y hOP� ��\���������� 0 artsgen artsGen�� ����� �  ���� &0 masterstogenerate mastersToGenerate��  � ������ &0 masterstogenerate mastersToGenerate�� $0 masterstogenerat mastersToGenerat� fnrvy��������������������� �� 0 pagegen pageGen�� ^�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hOP� ������������� 0 	sportsgen 	sportsGen�� ����� �  ���� &0 masterstogenerate mastersToGenerate��  � ���� &0 masterstogenerate mastersToGenerate� S���������	"&)048;AEILV^bfioswz��������������������������	#&059=@JOSWZchlps�� �� 0 pagegen pageGen����� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h� ���������~
�� .aevtoappnull  �   � ****� k     5��  ^��  k��  u��  �}�}  ��  �  �  � 
 i�|�{�z r�y�x ��w�v
�| elnteNvr
�{ 
pScr
�z 
UIAc�y 0 	genprompt 	genPrompt
�x elnteInA
�w .miscactvnull��� ��� obj 
�v .aevtodocnull  �    alis�~ 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U� ��� > S a t u r d a y / S u n d a y   A u g u s t   1 - 2   2 0 1 5� ���  0 1 0 8 1 5�  �  �  �  �  �  �   ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ