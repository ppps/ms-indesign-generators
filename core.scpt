FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "	Morning Star combo page generator     � 	 	 D 	 M o r n i n g   S t a r   c o m b o   p a g e   g e n e r a t o r   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��     	Created on			2012-12-15     �   0 	 C r e a t e d   o n 	 	 	 2 0 1 2 - 1 2 - 1 5      l     ��  ��      	Last updated			2013-10-13     �   4 	 L a s t   u p d a t e d 	 	 	 2 0 1 3 - 1 0 - 1 3      l     ��  ��     	Version:			1.86     �     	 V e r s i o n : 	 	 	 1 . 8 6     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ � �	This is the core page generator. It contains all of the code needed by any of the four desks but this script should not be used by itself.    % � & & 	 T h i s   i s   t h e   c o r e   p a g e   g e n e r a t o r .   I t   c o n t a i n s   a l l   o f   t h e   c o d e   n e e d e d   b y   a n y   o f   t h e   f o u r   d e s k s   b u t   t h i s   s c r i p t   s h o u l d   n o t   b e   u s e d   b y   i t s e l f . #  ' ( ' l     �� ) *��   ) � �	Instead a desk name should be entered in the genPrompt() call on line 24, and then saved as desk-specific application with the proper icon.    * � + + 	 I n s t e a d   a   d e s k   n a m e   s h o u l d   b e   e n t e r e d   i n   t h e   g e n P r o m p t ( )   c a l l   o n   l i n e   2 4 ,   a n d   t h e n   s a v e d   a s   d e s k - s p e c i f i c   a p p l i c a t i o n   w i t h   t h e   p r o p e r   i c o n . (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   Global variables --    1 � 2 2 (   G l o b a l   v a r i a b l e s   - - /  3 4 3 l      5 6 7 5 p       8 8 ������ 0 pagedate pageDate��   6 P J The full date used in the InDesign page�s folio, set in create_pageDate()    7 � 9 9 �   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o ,   s e t   i n   c r e a t e _ p a g e D a t e ( ) 4  : ; : l      < = > < p       ? ? ������ 0 filedate fileDate��   = O I The short date used to name the InDesign files, set in create_fileDate()    > � @ @ �   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s ,   s e t   i n   c r e a t e _ f i l e D a t e ( ) ;  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E   Path to new pages folder    F � G G 2   P a t h   t o   n e w   p a g e s   f o l d e r D  H I H j     �� J�� $0 freshpagesfolder freshPagesFolder J m      K K � L L j S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : F r e s h   p a g e s : I  M N M l     �� O P��   O + % Path to the InDesign master document    P � Q Q J   P a t h   t o   t h e   I n D e s i g n   m a s t e r   d o c u m e n t N  R S R j    �� T��  0 masterdocument masterDocument T m     U U � V V p S e r v e r : P r o d u c t i o n   r e s o u r c e s : M a s t e r   p a g e s : C S 4   M a s t e r . i n d d S  W X W l     ��������  ��  ��   X  Y Z Y l     �� [ \��   [   Running code --    \ � ] ]     R u n n i n g   c o d e   - - Z  ^ _ ^ l     ` a b ` O     c d c r     e f e m    ��
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
 S p o r tX ]��] k   � �^^ _`_ r   � �aba J   � �cc ded m   � �ff �gg  T w o   p a g e se hih m   � �jj �kk  T h r e e   p a g e si lml m   � �nn �oo , T h r e e   p a g e s   w i t h   s p l i tm pqp m   � �rr �ss  E x t r a   l e f t   p a g eq tut m   � �vv �ww   E x t r a   r i g h t   p a g eu x��x m   � �yy �zz  E x t r a   s p l i t��  b o      ���� 0 weekday_pages  ` {��{ r   � �|}| J   � �~~ � m   � ��� ���  F o u r   p a g e s� ��� m   � ��� ��� * F o u r   p a g e s   w i t h   s p l i t� ��� m   � ��� ���  R a c i n g   o n l y� ��� m   � ��� ���  E x t r a   l e f t   p a g e� ��� m   � ��� ���   E x t r a   r i g h t   p a g e� ���� m   � ��� ���  E x t r a   s p l i t��  } o      ���� 0 weekend_pages  ��  ��  ��  & @ : This if block sets the page options presented to the user   ' ��� t   T h i s   i f   b l o c k   s e t s   t h e   p a g e   o p t i o n s   p r e s e n t e d   t o   t h e   u s e r ��� G   � ���� =  � ���� o   � ����� 0 desk  � m   � ��� ���  F e a t u r e s� =  � ���� o   � ����� 0 desk  � m   � ��� ���  A r t s� ��� k   ���� ��� l  � ����� r   � ���� m   � ��� ��� , N o   d a y      w o r k i n g   a h e a d� l     ��~�}� n      ���  ;   � �� o   � ��|�| 0 	days_list  �~  �}  � > 8 Adds an extra day option that news and sport don't need   � ��� p   A d d s   a n   e x t r a   d a y   o p t i o n   t h a t   n e w s   a n d   s p o r t   d o n ' t   n e e d� ��{� Z   ������z� =  ���� o   � �y�y 0 desk  � m   �� ���  F e a t u r e s� k  `�� ��� r  ��� J  �� ��� m  
�� ���  S p r e a d� ��� m  
�� ���  1 0� ��� m  �� ��� 
 1 2 - 1 3� ��� m  �� ���  L e t t e r s� ��� m  �� ���  A r t s� ��x� m  �� ���  A r t s   s p l i t�x  � o      �w�w 0 weekday_pages  � ��� r   ;��� J   9�� ��� m   #�� ���  S p r e a d� ��� m  #&�� ���  1 0 - 1 1      s p l i t� ��� m  &)�� ���  1 0 - 1 1      s i n g l e s� ��� m  ),�� ���  1 4� ��� m  ,/�� ���  1 5� ��� m  /2�� ��� 
 1 6 - 1 7� ��v� m  25�� ���  L e t t e r s�v  � o      �u�u 0 weekend_pages  � ��t� r  <`��� J  <^�� ��� m  <?�� ���  S p r e a d� � � m  ?B �  1 0   m  BE � 
 1 2 - 1 3  m  EH		 �

 ( N e w s   r e v i e w s      s p l i t  m  HK � , N e w s   r e v i e w s      s i n g l e s  m  KN �  1 5  m  NQ � 
 1 6 - 1 7  m  QT �  L e t t e r s  m  TW �  A r t s �s m  WZ   �!!  A r t s   s p l i t�s  � o      �r�r 0 ahead_pages  �t  � "#" = ch$%$ o  cd�q�q 0 desk  % m  dg&& �''  A r t s# (�p( k  k�)) *+* r  ku,-, J  ks.. /0/ m  kn11 �22  A r t s   ( p 1 1 )0 3�o3 m  nq44 �55  A r t s   s p l i t�o  - o      �n�n 0 weekday_pages  + 676 r  v�898 J  v�:: ;<; m  vy== �>>  1 6 - 1 7   ( w e e k e n d )< ?@? m  y|AA �BB  A r t s   s p l i t@ C�mC m  |DD �EE  A r t s   ( p 1 1 )�m  9 o      �l�l 0 weekend_pages  7 F�kF r  ��GHG J  ��II JKJ m  ��LL �MM  A r t s   ( p 1 1 )K NON m  ��PP �QQ  A r t s   s p l i tO R�jR m  ��SS �TT  1 6 - 1 7   ( w e e k e n d )�j  H o      �i�i 0 ahead_pages  �k  �p  �z  �{  �  ��   UVU l ���h�g�f�h  �g  �f  V WXW l ���eYZ�e  Y [ U Prompt the user to enter the date. Returns theDay for use in page-picker block below   Z �[[ �   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t e .   R e t u r n s   t h e D a y   f o r   u s e   i n   p a g e - p i c k e r   b l o c k   b e l o wX \]\ r  ��^_^ n ��`a` I  ���db�c�d 0 
dateprompt 
datePromptb cdc o  ���b�b 0 thetitle theTitled e�ae o  ���`�` 0 	days_list  �a  �c  a  f  ��_ o      �_�_ 0 theday theDay] fgf l ���^�]�\�^  �]  �\  g hih l ���[jk�[  j   Get the pages to create   k �ll 0   G e t   t h e   p a g e s   t o   c r e a t ei m�Zm Z  ��no�Ypn = ��qrq l ��s�X�Ws o  ���V�V 0 desk  �X  �W  r m  ��tt �uu  C u s t o m   e d i t i o no l ��vwxv n ��yzy I  ���U�T�S�U 0 customedition customEdition�T  �S  z  f  ��w U O The customEdition function itself gets the pages to generate from TextWrangler   x �{{ �   T h e   c u s t o m E d i t i o n   f u n c t i o n   i t s e l f   g e t s   t h e   p a g e s   t o   g e n e r a t e   f r o m   T e x t W r a n g l e r�Y  p k  ��|| }~} r  ��� l ����R�Q� b  ����� b  ����� b  ����� m  ���� ��� D W h i c h   p a g e s   d o   y o u   w a n t   t o   c r e a t e ?� o  ���P
�P 
ret � o  ���O
�O 
ret � m  ���� ��� X H o l d   d o w n   C o m m a n d   (# )   t o   p i c k   m o r e   t h a n   o n e .�R  �Q  � o      �N�N 0 
prompttext 
promptText~ ��� Z  �Z����M� = ����� o  ���L�L 0 theday theDay� m  ���� ��� , N o   d a y      w o r k i n g   a h e a d� k  ���� ��� r  ����� l ����K�J� I ���I��
�I .gtqpchltns    @   @ ns  � o  ���H�H 0 ahead_pages  � �G��
�G 
prmp� o  ���F�F 0 
prompttext 
promptText� �E��
�E 
appr� o  ���D�D 0 thetitle theTitle� �C��B
�C 
mlsl� m  ���A
�A boovtrue�B  �K  �J  � o      �@�@ &0 masterstogenerate mastersToGenerate� ��?� Z �����>�=� = ����� 1  ���<
�< 
rslt� m  ���;
�; boovfals� R  ���:�9�
�: .ascrerr ****      � ****�9  � �8��7
�8 
errn� m  ���6�6���7  �>  �=  �?  � ��� > ����� o  ���5�5 0 theday theDay� m  ���� ���  S a t u r d a y� ��� k  �%�� ��� r  ���� l ���4�3� I ��2��
�2 .gtqpchltns    @   @ ns  � o  � �1�1 0 weekday_pages  � �0��
�0 
prmp� o  �/�/ 0 
prompttext 
promptText� �.��
�. 
appr� o  �-�- 0 thetitle theTitle� �,��+
�, 
mlsl� m  �*
�* boovtrue�+  �4  �3  � o      �)�) &0 masterstogenerate mastersToGenerate� ��(� Z %���'�&� = ��� 1  �%
�% 
rslt� m  �$
�$ boovfals� R  !�#�"�
�# .ascrerr ****      � ****�"  � �!�� 
�! 
errn� m  �����   �'  �&  �(  � ��� = (-��� o  ()�� 0 theday theDay� m  ),�� ���  S a t u r d a y� ��� k  0V�� ��� r  0A��� l 0?���� I 0?���
� .gtqpchltns    @   @ ns  � o  01�� 0 weekend_pages  � ���
� 
prmp� o  23�� 0 
prompttext 
promptText� ���
� 
appr� o  45�� 0 thetitle theTitle� ���
� 
mlsl� m  89�
� boovtrue�  �  �  � o      �� &0 masterstogenerate mastersToGenerate� ��� Z BV����� = BE��� 1  BC�
� 
rslt� m  CD�
� boovfals� R  HR��
�
� .ascrerr ****      � ****�
  � �	��
�	 
errn� m  LO�����  �  �  �  �  �M  � ��� l [[����  �  �  � ��� Z  [������ = [`��� o  [\�� 0 desk  � m  \_�� ���  N e w s� l cj���� n cj��� I  dj� ����  0 newsgen newsGen� ��� o  de���� &0 masterstogenerate mastersToGenerate� ���� o  ef���� 0 theday theDay��  ��  �  f  cd� S M theDay is passed to distinguish between, for example, Saturday & weekday TV    � ��� �   t h e D a y   i s   p a s s e d   t o   d i s t i n g u i s h   b e t w e e n ,   f o r   e x a m p l e ,   S a t u r d a y   &   w e e k d a y   T V  � ��� = mr��� o  mn���� 0 desk  � m  nq�� ���  F e a t u r e s� ��� n u|��� I  v|������� 0 featsgen featsGen� � � o  vw���� &0 masterstogenerate mastersToGenerate  �� o  wx���� 0 theday theDay��  ��  �  f  uv�  = � o  ����� 0 desk   m  �� � 
 S p o r t 	 l ��

 n �� I  �������� 0 	sportsgen 	sportsGen �� o  ������ &0 masterstogenerate mastersToGenerate��  ��    f  ��   No day checks    �    N o   d a y   c h e c k s	  = �� o  ������ 0 desk   m  �� �  A r t s �� l �� n �� I  �������� 0 artsgen artsGen �� o  ������ &0 masterstogenerate mastersToGenerate��  ��    f  ��   No day checks    �      N o   d a y   c h e c k s��  �  �  �Z   � !"! l     ��������  ��  ��  " #$# l     ��������  ��  ��  $ %&% l     ��'(��  ' I C list_position: Returns theItem's position in theList as an integer   ( �)) �   l i s t _ p o s i t i o n :   R e t u r n s   t h e I t e m ' s   p o s i t i o n   i n   t h e L i s t   a s   a n   i n t e g e r& *+* i   
 ,-, I      ��.���� 0 list_position  . /0/ o      ���� 0 	this_item  0 1��1 o      ���� 0 	this_list  ��  ��  - Y     "2��34��2 Z   56����5 =   787 n    9:9 4    ��;
�� 
cobj; o    ���� 0 i  : o    ���� 0 	this_list  8 o    ���� 0 	this_item  6 L    << o    ���� 0 i  ��  ��  �� 0 i  3 m    ���� 4 I   	��=��
�� .corecnte****       ****= o    ���� 0 	this_list  ��  ��  + >?> l     ��������  ��  ��  ? @A@ l     ��������  ��  ��  A BCB l     ��DE��  D ( " Prompt the user to enter the date   E �FF D   P r o m p t   t h e   u s e r   t o   e n t e r   t h e   d a t eC GHG i    IJI I      ��K���� 0 
dateprompt 
datePromptK LML o      ���� 0 thetitle theTitleM N��N o      ���� 0 	days_list  ��  ��  J k    OO PQP r     RSR J     TT UVU m     WW �XX  J a n u a r yV YZY m    [[ �\\  F e b r u a r yZ ]^] m    __ �`` 
 M a r c h^ aba m    cc �dd 
 A p r i lb efe m    gg �hh  M a yf iji m    kk �ll  J u n ej mnm m    oo �pp  J u l yn qrq m    ss �tt  A u g u s tr uvu m    	ww �xx  S e p t e m b e rv yzy m   	 
{{ �||  O c t o b e rz }~} m   
  ���  N o v e m b e r~ ���� m    �� ���  D e c e m b e r��  S o      ���� 0 months_list  Q ��� l   ��������  ��  ��  � ��� l   ������  � > 8 Get tomorrow's weekday as a seed default for the prompt   � ��� p   G e t   t o m o r r o w ' s   w e e k d a y   a s   a   s e e d   d e f a u l t   f o r   t h e   p r o m p t� ��� Z    >������ >   ��� c    ��� l   ������ l   ������ n    ��� m    ��
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
errn� m   q t�x�x���y  �  �~  � 6 0 Choosing "Cancel" in the dialog ends the script   � ��� `   C h o o s i n g   " C a n c e l "   i n   t h e   d i a l o g   e n d s   t h e   s c r i p t� ��� l  | |�w�v�u�w  �v  �u  � ��� l  | |�t���t  � 2 , Quick return if no date crunching is needed   � ��� X   Q u i c k   r e t u r n   i f   n o   d a t e   c r u n c h i n g   i s   n e e d e d� ��� Z   | ����s�r� =  | ���� o   | }�q�q 0 theday theDay� m   } ��� ��� , N o   d a y      w o r k i n g   a h e a d� k   � ��� ��� r   � ���� m   � ��� ��� * A   d a t e   n e e d s   e n t e r i n g� o      �p�p 0 pagedate pageDate� ��� r   � ���� m   � ��� ��� 
 A h e a d� o      �o�o 0 filedate fileDate� ��n� l  � �   L   � � o   � ��m�m 0 theday theDay $  For use in page-picker prompt    � <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t�n  �s  �r  �  l  � ��l�k�j�l  �k  �j    l  � ��i	
�i  	   Predicted date crunching   
 � 2   P r e d i c t e d   d a t e   c r u n c h i n g  Z   �.�h =  � � o   � ��g�g 0 theday theDay l  � ��f�e c   � � o   � ��d�d 0 tmday tmDay m   � ��c
�c 
TEXT�f  �e   l  � � k   � �  l  � ��b�b   ) # Set defaults to tomorrow's details    � F   S e t   d e f a u l t s   t o   t o m o r r o w ' s   d e t a i l s   r   � �!"! n  � �#$# 1   � ��a
�a 
day $ o   � ��`�` 0 tomorrow  " o      �_�_ 0 prdate prDate  %&% r   � �'(' J   � �)) *�^* l  � �+�]�\+ c   � �,-, n  � �./. m   � ��[
�[ 
mnth/ o   � ��Z�Z 0 tomorrow  - m   � ��Y
�Y 
TEXT�]  �\  �^  ( o      �X�X 0 prmonth prMonth& 0�W0 r   � �121 n  � �343 1   � ��V
�V 
year4 o   � ��U�U 0 tomorrow  2 o      �T�T 0 pryear prYear�W     Chosen day is tomorrow    �55 .   C h o s e n   d a y   i s   t o m o r r o w 676 >  � �898 o   � ��S�S 0 theday theDay9 l  � �:�R�Q: c   � �;<; o   � ��P�P 0 tmday tmDay< m   � ��O
�O 
TEXT�R  �Q  7 =�N= l  �*>?@> k   �*AA BCB l  � ��MDE�M  D E ? Determine offset from tomorrow and create a date object for it   E �FF ~   D e t e r m i n e   o f f s e t   f r o m   t o m o r r o w   a n d   c r e a t e   a   d a t e   o b j e c t   f o r   i tC GHG r   � �IJI n  � �KLK I   � ��LM�K�L 0 list_position  M NON l  � �P�J�IP c   � �QRQ o   � ��H�H 0 tmday tmDayR m   � ��G
�G 
TEXT�J  �I  O S�FS o   � ��E�E 0 	days_list  �F  �K  L  f   � �J o      �D�D 0 
predictpos 
predictPosH TUT r   � �VWV n  � �XYX I   � ��CZ�B�C 0 list_position  Z [\[ o   � ��A�A 0 theday theDay\ ]�@] o   � ��?�? 0 	days_list  �@  �B  Y  f   � �W o      �>�> 0 	actualpos 	actualPosU ^_^ r   � �`a` \   � �bcb o   � ��=�= 0 	actualpos 	actualPosc o   � ��<�< 0 
predictpos 
predictPosa o      �;�; 0 shiftpos shiftPos_ ded Z   �fgh�:f ?  � �iji o   � ��9�9 0 shiftpos shiftPosj m   � ��8�8  g l  � �klmk r   � �non [   � �pqp o   � ��7�7 0 tomorrow  q l  � �r�6�5r ]   � �sts o   � ��4�4 0 shiftpos shiftPost 1   � ��3
�3 
days�6  �5  o o      �2�2 0 predictedday predictedDayl "  Another day in current week   m �uu 8   A n o t h e r   d a y   i n   c u r r e n t   w e e kh vwv A  � �xyx o   � ��1�1 0 shiftpos shiftPosy m   � ��0�0  w z�/z l  �
{|}{ r   �
~~ [   ���� o   � ��.�. 0 tomorrow  � l  ���-�,� ]   ���� l  ���+�*� [   ���� m   ��)�) � o  �(�( 0 shiftpos shiftPos�+  �*  � 1  �'
�' 
days�-  �,   o      �&�& 0 predictedday predictedDay|   Implies next week   } ��� $   I m p l i e s   n e x t   w e e k�/  �:  e ��� l �%�$�#�%  �$  �#  � ��� l �"���"  � - ' Set defaults with chosen day's details   � ��� N   S e t   d e f a u l t s   w i t h   c h o s e n   d a y ' s   d e t a i l s� ��� r  ��� n ��� 1  �!
�! 
day � o  � �  0 predictedday predictedDay� o      �� 0 prdate prDate� ��� r  "��� J   �� ��� l ���� c  ��� n ��� m  �
� 
mnth� o  �� 0 predictedday predictedDay� m  �
� 
TEXT�  �  �  � o      �� 0 prmonth prMonth� ��� r  #*��� n #(��� 1  $(�
� 
year� o  #$�� 0 predictedday predictedDay� o      �� 0 pryear prYear�  ? !  Chosen day is not tomorrow   @ ��� 6   C h o s e n   d a y   i s   n o t   t o m o r r o w�N  �h   ��� l //����  �  �  � ��� l //����  � &   Prompt for month, date and year   � ��� @   P r o m p t   f o r   m o n t h ,   d a t e   a n d   y e a r� ��� r  /H��� c  /F��� l /D���� I /D���
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
errn� m  ����������  ��  ��  � ��� Z  ��������� l �������� E  ����� o  ������ 0 thedate theDate� m  ���� ���  -��  ��  � r  ����� n  ����� 7������
�� 
ctxt� m  ������ � l �������� \  ����� l �������� l �������� I �������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  ���� ���  -� �����
�� 
psin� o  ������ 0 thedate theDate��  ��  ��  ��  ��  � m  ������ ��  ��  � o  ������ 0 thedate theDate� o      ���� 0 thedate theDate��  ��  � ��� r  ��� � c  �� l ������ n  �� 1  ����
�� 
ttxt l ������ I ����
�� .sysodlogaskr        TEXT m  ��		 �

 * P l e a s e   t y p e   t h e   y e a r : ��
�� 
dtxt o  ������ 0 pryear prYear ����
�� 
appr o  ������ 0 thetitle theTitle��  ��  ��  ��  ��   m  ����
�� 
TEXT  o      ���� 0 theyear theYear�  Z ������ = �� 1  ����
�� 
rslt m  �� � 
 f a l s e R  ������
�� .ascrerr ****      � ****��   ����
�� 
errn m  ����������  ��  ��    l ����������  ��  ��    l ������   . ( Pass date details to creation functions    � P   P a s s   d a t e   d e t a i l s   t o   c r e a t i o n   f u n c t i o n s   n �!"! I  ���#���� "0 create_pagedate create_pageDate# $%$ o  ������ 0 theday theDay% &'& o  ������ 0 themonth theMonth' ()( o  ������ 0 thedate theDate) *��* o  ������ 0 theyear theYear��  ��  "  f  ��  +,+ n -.- I  ��/���� "0 create_filedate create_fileDate/ 010 o  ���� 0 themonth theMonth1 232 o  ���� 0 thedate theDate3 454 o  ���� 0 theyear theYear5 6��6 o  ���� 0 months_list  ��  ��  .  f  , 787 l ��������  ��  ��  8 9��9 l :;<: L  == o  ���� 0 theday theDay; $  For use in page-picker prompt   < �>> <   F o r   u s e   i n   p a g e - p i c k e r   p r o m p t��  H ?@? l     ��������  ��  ��  @ ABA l     ��������  ��  ��  B CDC l     ��EF��  E 2 , Assemble date for use on the inDesign pages   F �GG X   A s s e m b l e   d a t e   f o r   u s e   o n   t h e   i n D e s i g n   p a g e sD HIH i    JKJ I      ��L���� "0 create_pagedate create_pageDateL MNM o      ���� 0 theday theDayN OPO o      ���� 0 themonth theMonthP QRQ o      ���� 0 thedate theDateR S��S o      ���� 0 theyear theYear��  ��  K Z     �TU��VT >    WXW o     ���� 0 theday theDayX m    YY �ZZ  S a t u r d a yU l   [\][ k    ^^ _`_ r    aba l   c����c b    ded b    fgf b    hih b    jkj b    lml b    	non o    ���� 0 theday theDayo m    pp �qq   m o   	 
���� 0 themonth theMonthk m    rr �ss   i o    ���� 0 thedate theDateg m    tt �uu   e o    ���� 0 theyear theYear��  ��  b o      ���� 0 pagedate pageDate` v��v l   ��������  ��  ��  ��  \   Weekday pageDate   ] �ww "   W e e k d a y   p a g e D a t e��  V l   �xyzx k    �{{ |}| l   ��~��  ~ &   Create a date object for Sunday    ��� @   C r e a t e   a   d a t e   o b j e c t   f o r   S u n d a y} ��� r    0��� l   .������ [    .��� l   *������ 4    *���
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
TEXT�_  �^  � o   P Q�Z�Z 0 theyear theYear� k   U ^�� ��� l  U U�Y���Y  � &   Sunday year with leading hyphen   � ��� @   S u n d a y   y e a r   w i t h   l e a d i n g   h y p h e n� ��X� r   U ^��� l  U \��W�V� b   U \��� m   U V�� ���  -� l  V [��U�T� c   V [��� n  V Y��� 1   W Y�S
�S 
year� o   V W�R�R 0 sun  � m   Y Z�Q
�Q 
TEXT�U  �T  �W  �V  � o      �P�P 0 
secondyear 
secondYear�X  �`  � r   a f��� m   a d�� ���  � o      �O�O 0 
secondyear 
secondYear� ��� l  g g�N�M�L�N  �M  �L  � ��� r   g ���� l  g ���K�J� b   g ���� b   g ���� b   g ���� b   g �   b   g x b   g v b   g r b   g p	 b   g l

 m   g j �   S a t u r d a y / S u n d a y   o   j k�I�I 0 themonth theMonth	 m   l o �    o   p q�H�H 0 thedate theDate m   r u �  - o   v w�G�G 0 secondmonth secondMonth l  x �F�E c   x  n  x } 1   y }�D
�D 
day  o   x y�C�C 0 sun   m   } ~�B
�B 
TEXT�F  �E  � m   � � �   � o   � ��A�A 0 theyear theYear� o   � ��@�@ 0 
secondyear 
secondYear�K  �J  � o      �?�? 0 pagedate pageDate� �> l  � ��=�=   Z T Empty secondMonth/Year strings (set above) mean this can be used for every Saturday    � �   E m p t y   s e c o n d M o n t h / Y e a r   s t r i n g s   ( s e t   a b o v e )   m e a n   t h i s   c a n   b e   u s e d   f o r   e v e r y   S a t u r d a y�>  y   Saturday/Sunday pageDate   z � 2   S a t u r d a y / S u n d a y   p a g e D a t eI  l     �<�;�:�<  �;  �:    !  l     �9�8�7�9  �8  �7  ! "#" l     �6$%�6  $ . ( Assemble date for use in the file names   % �&& P   A s s e m b l e   d a t e   f o r   u s e   i n   t h e   f i l e   n a m e s# '(' i    )*) I      �5+�4�5 "0 create_filedate create_fileDate+ ,-, o      �3�3 0 themonth theMonth- ./. o      �2�2 0 thedate theDate/ 010 o      �1�1 0 theyear theYear1 2�02 o      �/�/ 0 months_list  �0  �4  * k     =33 454 Z    67�.�-6 A    898 l    :�,�+: c     ;<; o     �*�* 0 thedate theDate< m    �)
�) 
nmbr�,  �+  9 m    �(�( 
7 r    =>= l   ?�'�&? b    @A@ m    	BB �CC  0A o   	 
�%�% 0 thedate theDate�'  �&  > o      �$�$ 0 thedate theDate�.  �-  5 DED l   �#�"�!�#  �"  �!  E FGF r    HIH n   JKJ I    � L��  0 list_position  L MNM o    �� 0 themonth theMonthN O�O o    �� 0 months_list  �  �  K  f    I o      �� 0 themonth theMonthG PQP Z   +RS��R A   TUT o    �� 0 themonth theMonthU m    �� 
S r   " 'VWV l  " %X��X b   " %YZY m   " #[[ �\\  0Z o   # $�� 0 themonth theMonth�  �  W o      �� 0 themonth theMonth�  �  Q ]^] l  , ,����  �  �  ^ _�_ l  , =`ab` r   , =cdc l  , ;e��e b   , ;fgf b   , /hih o   , -�� 0 thedate theDatei o   - .�� 0 themonth theMonthg l  / :j�
�	j n   / :klk 7 0 :�mn
� 
ctxtm m   4 6�� n m   7 9�� l o   / 0�� 0 theyear theYear�
  �	  �  �  d o      �� 0 filedate fileDatea ? 9 Combines the date, month and last two digits of the year   b �oo r   C o m b i n e s   t h e   d a t e ,   m o n t h   a n d   l a s t   t w o   d i g i t s   o f   t h e   y e a r�  ( pqp l     ����  �  �  q rsr l     � �����   ��  ��  s tut l     ��vw��  v Y S pageGen: Opens the master file and calls functions to construct the requested page   w �xx �   p a g e G e n :   O p e n s   t h e   m a s t e r   f i l e   a n d   c a l l s   f u n c t i o n s   t o   c o n s t r u c t   t h e   r e q u e s t e d   p a g eu yzy l     ��{|��  { ^ X Takes 4 parameters: spread/single, InDesign master page name, file slug and page number   | �}} �   T a k e s   4   p a r a m e t e r s :   s p r e a d / s i n g l e ,   I n D e s i g n   m a s t e r   p a g e   n a m e ,   f i l e   s l u g   a n d   p a g e   n u m b e rz ~~ l     ������  � @ : The page number is that of the left-hand page for spreads   � ��� t   T h e   p a g e   n u m b e r   i s   t h a t   o f   t h e   l e f t - h a n d   p a g e   f o r   s p r e a d s ��� i    ��� I      ������� 0 pagegen pageGen� ��� o      ���� 0 pagetype pageType� ��� o      ���� 0 	themaster 	theMaster� ��� o      ���� 0 theslug theSlug� ���� o      ���� 0 
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
page� m    ���� � 3 - Applies a master to the existing single page   � ��� Z   A p p l i e s   a   m a s t e r   t o   t h e   e x i s t i n g   s i n g l e   p a g e� ���� Z    �������� H     �� E    ��� o    ���� 0 	themaster 	theMaster� m    �� ���  X - B l a n k� l  # ����� k   # ��� ��� I  # 3����
�� .InESovrrobj         obj � n   # *��� 4   ' *���
�� 
txtf� m   ( )   �  E d i t i o n   d a t e� 4   # '��
�� 
mspr o   % &���� 0 	themaster 	theMaster� ����
�� 
dPge 4   + /��
�� 
page m   - .���� ��  �  l  4 <	 r   4 <

 o   4 5���� 0 pagedate pageDate l     ���� n       1   9 ;��
�� 
pcnt 4   5 9��
�� 
txtf m   7 8 �  E d i t i o n   d a t e��  ��     Sets the date   	 �    S e t s   t h e   d a t e  Q   = m�� l  @ d I  @ d��
�� .InESovrrobj         obj  l  @ [���� 6  @ [ n   @ H  2   F H��
�� 
cobj  n   @ F!"! 1   D F��
�� 
mpgs" 4   @ D��#
�� 
page# m   B C����  =  K Z$%$ n  L T&'& 1   P T��
�� 
pnam' 1   L P��
�� 
pilr% m   U Y(( �))  W o r k��  ��   ��*��
�� 
dPge* 4   \ `��+
�� 
page+ m   ^ _���� ��   o i Block to make the Work-layer items editable. In a try block to avoid errors when there are no such items    �,, �   B l o c k   t o   m a k e   t h e   W o r k - l a y e r   i t e m s   e d i t a b l e .   I n   a   t r y   b l o c k   t o   a v o i d   e r r o r s   w h e n   t h e r e   a r e   n o   s u c h   i t e m s R      ������
�� .ascrerr ****      � ****��  ��  ��   -��- Z   n �./����. >  n s010 o   n o���� 0 
pagenumber 
pageNumber1 m   o r22 �33  / l  v �4564 k   v �77 898 I  v ���:;
�� .InESovrrobj         obj : n   v <=< 4   z ��>
�� 
txtf> m   { ~?? �@@  P a g e   n u m b e r= 4   v z��A
�� 
msprA o   x y���� 0 	themaster 	theMaster; ��B��
�� 
dPgeB 4   � ���C
�� 
pageC m   � ����� ��  9 D��D r   � �EFE o   � ����� 0 
pagenumber 
pageNumberF l     G����G n      HIH 1   � ���
�� 
pcntI n   � �JKJ 4   � ���L
�� 
txtfL m   � �MM �NN  P a g e   n u m b e rK 4   � ���O
�� 
pageO m   � ����� ��  ��  ��  5 G A Mostly to skip the front, which doesn't have a page number frame   6 �PP �   M o s t l y   t o   s k i p   t h e   f r o n t ,   w h i c h   d o e s n ' t   h a v e   a   p a g e   n u m b e r   f r a m e��  ��  ��  � 6 0 The X-Blanks have no page number or date frames   � �QQ `   T h e   X - B l a n k s   h a v e   n o   p a g e   n u m b e r   o r   d a t e   f r a m e s��  ��  ��  � RSR =  � �TUT o   � ����� 0 pagetype pageTypeU m   � �VV �WW  s p r e a dS X��X k   ��YY Z[Z l  � �\]^\ I  � �����_
�� .corecrel****      � null��  _ ��`a
�� 
kocl` m   � ���
�� 
sprda �b�~
� 
prdtb K   � �cc �}d�|
�} 
pmasd 4   � ��{e
�{ 
mspre o   � ��z�z 0 	themaster 	theMaster�|  �~  ] G A Creates a two-page spread at pages 2 & 3 with the master applied   ^ �ff �   C r e a t e s   a   t w o - p a g e   s p r e a d   a t   p a g e s   2   &   3   w i t h   t h e   m a s t e r   a p p l i e d[ g�yg Z   ��hi�x�wh H   � �jj E   � �klk o   � ��v�v 0 	themaster 	theMasterl m   � �mm �nn  X - B l a n ki k   ��oo pqp I  � ��urs
�u .InESovrrobj         obj r n   � �tut 4   � ��tv
�t 
txtfv m   � �ww �xx  L - E d i t i o n   d a t eu 4   � ��sy
�s 
mspry o   � ��r�r 0 	themaster 	theMasters �qz�p
�q 
dPgez 4   � ��o{
�o 
page{ m   � ��n�n �p  q |}| I  � ��m~
�m .InESovrrobj         obj ~ n   � ���� 4   � ��l�
�l 
txtf� m   � ��� ���  R - E d i t i o n   d a t e� 4   � ��k�
�k 
mspr� o   � ��j�j 0 	themaster 	theMaster �i��h
�i 
dPge� 4   � ��g�
�g 
page� m   � ��f�f �h  } ��� l  � ����� r   � ���� o   � ��e�e 0 pagedate pageDate� l     ��d�c� n      ��� 1   � ��b
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
txtf� m  |�� ���  R - P a g e   n u m b e r� 4  w{�.�
�. 
mspr� o  yz�-�- 0 	themaster 	theMaster� �,��+
�, 
dPge� 4  ���*�
�* 
page� m  ���)�) �+  � ��� r  ����� o  ���(�( 0 
pagenumber 
pageNumber� l     ��'�&� n      ��� 1  ���%
�% 
pcnt� n  ����� 4  ���$�
�$ 
txtf� m  ���� ���  L - P a g e   n u m b e r� 4  ���#�
�# 
page� m  ���"�" �'  �&  � ��!� r  ����� l �� � �  c  �� l ���� [  �� o  ���� 0 
pagenumber 
pageNumber m  ���� �  �   m  ���
� 
TEXT�   �  � l     �� n       1  ���
� 
pcnt n  ��	
	 4  ���
� 
txtf m  �� �  R - P a g e   n u m b e r
 4  ���
� 
page m  ���� �  �  �!  �;  �:  �<  �x  �w  �y  ��  ��  � l   �� 1    �
� 
pacd�  �  � m                                                                                       InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  �  l     ����  �  �    l     ����  �  �    l     �
�
   c ] drawEmbargoBox: Creates an embargoed stories frame on the left-hand side of the working page    � �   d r a w E m b a r g o B o x :   C r e a t e s   a n   e m b a r g o e d   s t o r i e s   f r a m e   o n   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e  i   " % I      �	��	  0 drawembargobox drawEmbargoBox � o      �� 0 pagetype pageType�  �   O     { !  O    z"#" k    y$$ %&% Z    $'()�' =   *+* o    �� 0 pagetype pageType+ m    ,, �--  s i n g l e( r    ./. m    �� / o      �� 0 pagenum pageNum) 010 =   232 o    �� 0 pagetype pageType3 m    44 �55  s p r e a d1 6� 6 r     787 m    ���� 8 o      ���� 0 pagenum pageNum�   �  & 9:9 l  % %��������  ��  ��  : ;<; r   % 4=>= 6  % 2?@? l  % )A����A 4  % )��B
�� 
layrB m   ' (���� ��  ��  @ =  * 1CDC 1   + -��
�� 
pnamD m   . 0EE �FF  W o r k> o      ���� 0 	worklayer 	workLayer< GHG l  5 5��������  ��  ��  H IJI O   5 bKLK r   < aMNM I  < _����O
�� .corecrel****      � null��  O ��PQ
�� 
koclP m   > ?��
�� 
txtfQ ��R��
�� 
prdtR K   @ YSS ��TU
�� 
pilrT o   A B���� 0 	worklayer 	workLayerU ��VW
�� 
gbndV J   C OXX YZY m   C D[[ @,      Z \]\ m   D E^^ �b�     ] _`_ m   E Haa @\�     ` b��b m   H Kcc �I      ��  W ��d��
�� 
pcntd m   R Uee �ff " E m b a r g o e d   s t o r i e s��  ��  N o      ���� 0 ebox eBoxL 4   5 9��g
�� 
pageg o   7 8���� 0 pagenum pageNumJ hih l  c qjklj r   c qmnm 4   c k��o
�� 
ObSto m   g jpp �qq " N e w s   N I B   b o x   t i n tn l     r����r n      sts 1   l p��
�� 
aobst o   k l���� 0 ebox eBox��  ��  k K E Set separately as it throws an error if you try to do it on creation   l �uu �   S e t   s e p a r a t e l y   a s   i t   t h r o w s   a n   e r r o r   i f   y o u   t r y   t o   d o   i t   o n   c r e a t i o ni v��v r   r ywxw m   r s��
�� boovtruex n      yzy 1   t x��
�� 
plckz o   s t���� 0 ebox eBox��  # l   {����{ 4   ��|
�� 
docu| m    ���� ��  ��  ! m     }}                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��   ~~ l     ��������  ��  ��   ��� l     ��������  ��  ��  � ��� l     ������  � � � cleanSave: Locks the date/page number layer, selects the Work layer, sets the correct ruler zero-point and saves the file using theSlug and fileDate   � ���*   c l e a n S a v e :   L o c k s   t h e   d a t e / p a g e   n u m b e r   l a y e r ,   s e l e c t s   t h e   W o r k   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o - p o i n t   a n d   s a v e s   t h e   f i l e   u s i n g   t h e S l u g   a n d   f i l e D a t e� ��� i   & )��� I      ������� 0 	cleansave 	cleanSave� ��� o      ���� 0 
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
pacd��  ��  � m     ��                                                                                  InDn  alis    �  Macintosh HD               ĬplH+   C?�Adobe InDesign CS4.app                                          C?��/�        ����  	                Adobe InDesign CS4    Ĭb\      �!�     C?� �KF  EMacintosh HD:Applications: Adobe InDesign CS4: Adobe InDesign CS4.app   .  A d o b e   I n D e s i g n   C S 4 . a p p    M a c i n t o s h   H D  6Applications/Adobe InDesign CS4/Adobe InDesign CS4.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � f ` customEdition: Reads a list of wanted pages from TextWrangler then calls pageGen() to make them   � ��� �   c u s t o m E d i t i o n :   R e a d s   a   l i s t   o f   w a n t e d   p a g e s   f r o m   T e x t W r a n g l e r   t h e n   c a l l s   p a g e G e n ( )   t o   m a k e   t h e m� ��� i   * -��� I      �������� 0 customedition customEdition��  ��  � k    n�� ��� l     ��������  ��  ��  � ��� l     ���	 ��  � | v The entries in the human, masters & slugs lists must match exactly, as they are fetched based on their list position.   	  �		 �   T h e   e n t r i e s   i n   t h e   h u m a n ,   m a s t e r s   &   s l u g s   l i s t s   m u s t   m a t c h   e x a c t l y ,   a s   t h e y   a r e   f e t c h e d   b a s e d   o n   t h e i r   l i s t   p o s i t i o n .� 			 l     ��		��  	 a [ e.g. If item 4 of human_list is "Letters_S", item 4 of masters_list must be the equivalent   	 �		 �   e . g .   I f   i t e m   4   o f   h u m a n _ l i s t   i s   " L e t t e r s _ S " ,   i t e m   4   o f   m a s t e r s _ l i s t   m u s t   b e   t h e   e q u i v a l e n t	 			 l     ��			
��  		 [ U InDesign master name (Feat-Letters-Split) and item 4 of slugs_list must be "Letters"   	
 �		 �   I n D e s i g n   m a s t e r   n a m e   ( F e a t - L e t t e r s - S p l i t )   a n d   i t e m   4   o f   s l u g s _ l i s t   m u s t   b e   " L e t t e r s "	 			 l     ��������  ��  ��  	 			 l     ��		��  	 > 8 The human-friendly names used in the TextWrangler file	   	 �		 p   T h e   h u m a n - f r i e n d l y   n a m e s   u s e d   i n   t h e   T e x t W r a n g l e r   f i l e 		 			 r     U			 J     S		 			 m     		 �		 
 F r o n t	 			 m    		 �		  S a t F r o n t	 	 	!	  m    	"	" �	#	#  H o m e _ S	! 	$	%	$ m    	&	& �	'	'  H o m e _ L	% 	(	)	( m    	*	* �	+	+  H o m e _ R	) 	,	-	, m    	.	. �	/	/  F o r e i g n _ S	- 	0	1	0 m    	2	2 �	3	3  F o r e i g n _ L	1 	4	5	4 m    	6	6 �	7	7  F o r e i g n _ R	5 	8	9	8 m    		:	: �	;	;  S t r u g g l e _ S	9 	<	=	< m   	 
	>	> �	?	?  S t r u g g l e _ L	= 	@	A	@ m   
 	B	B �	C	C  S t r u g g l e _ R	A 	D	E	D m    	F	F �	G	G  N e w s R e v i e w s _ S	E 	H	I	H m    	J	J �	K	K  N e w s R e v i e w s _ L	I 	L	M	L m    	N	N �	O	O  N e w s R e v i e w s _ R	M 	P	Q	P m    	R	R �	S	S  S p r e a d	Q 	T	U	T m    	V	V �	W	W  T V	U 	X	Y	X m    	Z	Z �	[	[ 
 S a t T V	Y 	\	]	\ m    	^	^ �	_	_  L e t t e r s _ S	] 	`	a	` m    	b	b �	c	c  L e t t e r s _ L	a 	d	e	d m    	f	f �	g	g  L e t t e r s _ R	e 	h	i	h m    	j	j �	k	k  R e d L i s t	i 	l	m	l m    "	n	n �	o	o  F e a t _ S	m 	p	q	p m   " %	r	r �	s	s  F e a t _ L	q 	t	u	t m   % (	v	v �	w	w  F e a t _ R	u 	x	y	x m   ( +	z	z �	{	{  A r t s _ E n t s	y 	|	}	| m   + .	~	~ �		  A r t s _ S	} 	�	�	� m   . 1	�	� �	�	�  A r t s _ L	� 	�	�	� m   1 4	�	� �	�	�  A r t s _ R	� 	�	�	� m   4 7	�	� �	�	�  B a c k	� 	�	�	� m   7 :	�	� �	�	�  S p o r t _ S	� 	�	�	� m   : =	�	� �	�	�  S p o r t _ L	� 	�	�	� m   = @	�	� �	�	�  S p o r t _ R	� 	�	�	� m   @ C	�	� �	�	�  R a c i n g _ L	� 	�	�	� m   C F	�	� �	�	�  R a c i n g _ R	� 	�	�	� m   F I	�	� �	�	�  B l a n k _ S	� 	�	�	� m   I L	�	� �	�	�  B l a n k _ L	� 	���	� m   L O	�	� �	�	�  B l a n k _ R��  	 o      ���� 0 
human_list  	 	�	�	� l  V V��	�	���  	�    The InDesign master names   	� �	�	� 4   T h e   I n D e s i g n   m a s t e r   n a m e s	� 	�	�	� r   V �	�	�	� J   V �	�	� 	�	�	� m   V Y	�	� �	�	�  N e w s - F r o n t	� 	�	�	� m   Y \	�	� �	�	�  N e w s - S a t F r o n t	� 	�	�	� m   \ _	�	� �	�	�  N e w s - H o m e - S p l i t	� 	�	�	� m   _ b	�	� �	�	�  N e w s - H o m e - L	� 	�	�	� m   b e	�	� �	�	�  N e w s - H o m e - R	� 	�	�	� m   e h	�	� �	�	� $ N e w s - F o r e i g n - S p l i t	� 	�	�	� m   h k	�	� �	�	�  N e w s - F o r e i g n - L	� 	�	�	� m   k n	�	� �	�	�  N e w s - F o r e i g n - R	� 	�	�	� m   n q	�	� �	�	� & F e a t - S t r u g g l e - S p l i t	� 	�	�	� m   q t	�	� �	�	�  F e a t - S t r u g g l e - L	� 	�	�	� m   t w	�	� �	�	�  F e a t - S t r u g g l e - R	� 	�	�	� m   w z	�	� �	�	� * F e a t - N e w s R e v i e w - S p l i t	� 	�	�	� m   z }	�	� �	�	� " F e a t - N e w s R e v i e w - L	� 	�	�	� m   } �	�	� �	�	� " F e a t - N e w s R e v i e w - R	� 	�	�	� m   � �	�	� �	�	�  F e a t - S p r e a d	� 	�	�	� m   � �	�	� �	�	�  F e a t - T V	� 	�	�	� m   � �	�	� �	�	�  F e a t - S a t T V	� 	�	�	� m   � �	�	� �	�	� $ F e a t - L e t t e r s - S p l i t	� 	�	�	� m   � �	�	� �
 
   F e a t - L e t t e r s - L	� 


 m   � �

 �

  F e a t - L e t t e r s - R
 


 m   � �

 �

  F e a t - R e d L i s t
 
	


	 m   � �

 �

   F e a t - B l a n k - S p l i t

 


 m   � �

 �

  F e a t - B l a n k - L
 


 m   � �

 �

  F e a t - B l a n k - R
 


 m   � �

 �

  A r t s - E n t s - S p l i t
 


 m   � �

 �

   A r t s - B l a n k - S p l i t
 


 m   � �

 �
 
   A r t s - B l a n k - L
 
!
"
! m   � �
#
# �
$
$  A r t s - B l a n k - R
" 
%
&
% m   � �
'
' �
(
(  S p r t - B a c k
& 
)
*
) m   � �
+
+ �
,
,   S p r t - B l a n k - S p l i t
* 
-
.
- m   � �
/
/ �
0
0  S p r t - B l a n k - L
. 
1
2
1 m   � �
3
3 �
4
4  S p r t - B l a n k - R
2 
5
6
5 m   � �
7
7 �
8
8  S p r t - R a c i n g - L
6 
9
:
9 m   � �
;
; �
<
<  S p r t - R a c i n g - R
: 
=
>
= m   � �
?
? �
@
@  X - B l a n k - S p l i t
> 
A
B
A m   � �
C
C �
D
D  X - B l a n k - L
B 
E��
E m   � �
F
F �
G
G  X - B l a n k - R��  	� o      ���� 0 masters_list  	� 
H
I
H l  � ���
J
K��  
J $  Slugs to use in the file name   
K �
L
L <   S l u g s   t o   u s e   i n   t h e   f i l e   n a m e
I 
M
N
M r   �A
O
P
O J   �?
Q
Q 
R
S
R m   � �
T
T �
U
U 
 F r o n t
S 
V
W
V m   � �
X
X �
Y
Y 
 F r o n t
W 
Z
[
Z m   � �
\
\ �
]
]  H o m e
[ 
^
_
^ m   � �
`
` �
a
a  H o m e
_ 
b
c
b m   � �
d
d �
e
e  H o m e
c 
f
g
f m   � �
h
h �
i
i  F o r e i g n
g 
j
k
j m   � �
l
l �
m
m  F o r e i g n
k 
n
o
n m   � �
p
p �
q
q  F o r e i g n
o 
r
s
r m   � �
t
t �
u
u  S t r u g g l e
s 
v
w
v m   � �
x
x �
y
y  S t r u g g l e
w 
z
{
z m   � �
|
| �
}
}  S t r u g g l e
{ 
~

~ m   � �
�
� �
�
�  N e w s R e v i e w s
 
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
�
�
� m  &)
�
� �
�
� 
 S p o r t
� 
�
�
� m  ),
�
� �
�
� 
 S p o r t
� 
�
�
� m  ,/
�
� �
�
�  R a c i n g
� 
�
�
� m  /2
�
� �
�
�  R a c i n g
� 
�
�
� m  25
�
� �
�
� 
 B L A N K
� 
�
�
� m  58
�
� �
�
� 
 B L A N K
� 
���
� m  8;
�
� �
�
� 
 B L A N K��  
P o      ���� 0 
slugs_list  
N 
�
�
� l BB�������  ��  �  
� 
�
�
� l BB�~
�
��~  
� 1 + Single-page masters (used to set pageType)   
� �
�
� V   S i n g l e - p a g e   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )
� 
�
�
� r  B�
�
�
� J  B�
�
� 
�
�
� m  BE
�
� �
�
�  N e w s - F r o n t
� 
�
�
� m  EH
�
� �
�
�  N e w s - S a t F r o n t
� 
�
�
� m  HK
�
� �
�
�  N e w s - H o m e - L
� 
�
�
� m  KN
�
� �    N e w s - H o m e - R
�  m  NQ �  N e w s - F o r e i g n - L  m  QT �  N e w s - F o r e i g n - R 	
	 m  TW �  F e a t - S t r u g g l e - L
  m  WZ �  F e a t - S t r u g g l e - R  m  Z] � " F e a t - N e w s R e v i e w - L  m  ]` � " F e a t - N e w s R e v i e w - R  m  `c �  F e a t - L e t t e r s - L  m  cf �    F e a t - L e t t e r s - R !"! m  fi## �$$  F e a t - R e d L i s t" %&% m  il'' �((  F e a t - B l a n k - L& )*) m  lo++ �,,  F e a t - B l a n k - R* -.- m  or// �00  A r t s - B l a n k - L. 121 m  ru33 �44  A r t s - B l a n k - R2 565 m  ux77 �88  S p r t - B a c k6 9:9 m  x{;; �<<  S p r t - B l a n k - L: =>= m  {~?? �@@  S p r t - B l a n k - R> ABA m  ~�CC �DD  S p r t - R a c i n g - LB EFE m  ��GG �HH  S p r t - R a c i n g - RF IJI m  ��KK �LL  X - B l a n k - LJ M�}M m  ��NN �OO  X - B l a n k - R�}  
� o      �|�| 0 singles_list  
� PQP l ���{RS�{  R , & Spread masters (used to set pageType)   S �TT L   S p r e a d   m a s t e r s   ( u s e d   t o   s e t   p a g e T y p e )Q UVU r  ��WXW J  ��YY Z[Z m  ��\\ �]]  N e w s - H o m e - S p l i t[ ^_^ m  ��`` �aa $ N e w s - F o r e i g n - S p l i t_ bcb m  ��dd �ee & F e a t - S t r u g g l e - S p l i tc fgf m  ��hh �ii * F e a t - N e w s R e v i e w - S p l i tg jkj m  ��ll �mm  F e a t - S p r e a dk non m  ��pp �qq  F e a t - T Vo rsr m  ��tt �uu  F e a t - S a t T Vs vwv m  ��xx �yy $ F e a t - L e t t e r s - S p l i tw z{z m  ��|| �}}   F e a t - B l a n k - S p l i t{ ~~ m  ���� ���  A r t s - E n t s - S p l i t ��� m  ���� ���   A r t s - B l a n k - S p l i t� ��� m  ���� ���   S p r t - B l a n k - S p l i t� ��z� m  ���� ���  X - B l a n k - S p l i t�z  X o      �y�y 0 spreads_list  V ��� l ���x�w�v�x  �w  �v  � ��u� O  �n��� O  �m��� k  �l�� ��� l ������ r  ����� l ����t�s� I ���r��
�r .R*chFindMtch���     TEXT� m  ���� ���  ^ # S t a r t s   h e r e # $� �q��p
�q 
Opts� K  ���� �o��
�o 
SMod� m  ���n
�n SModGrep� �m��l
�m 
STop� m  ���k
�k boovtrue�l  �p  �t  �s  � o      �j�j 0 hashline hashLine�   Finds the beginning line   � ��� 2   F i n d s   t h e   b e g i n n i n g   l i n e� ��� l ������ r  ����� l ����i�h� [  ����� l ����g�f� l ����e�d� n  ����� 1  ���c
�c 
SLin� l ����b�a� n  ����� 1  ���`
�` 
MSpc� o  ���_�_ 0 hashline hashLine�b  �a  �e  �d  �g  �f  � m  ���^�^ �i  �h  � o      �]�] 0 thestart theStart� : 4 The first instruction is on the line after hashLine   � ��� h   T h e   f i r s t   i n s t r u c t i o n   i s   o n   t h e   l i n e   a f t e r   h a s h L i n e� ��� l ����� r  ���� l ���\�[� 1  ��Z
�Z 
ELin�\  �[  � o      �Y�Y 0 theend theEnd� @ : The last instruction must be on the last line of the file   � ��� t   T h e   l a s t   i n s t r u c t i o n   m u s t   b e   o n   t h e   l a s t   l i n e   o f   t h e   f i l e� ��� l �X�W�V�X  �W  �V  � ��� Y  j��U���T� l e���� k  e�� ��� l -���� r  -��� l +��S�R� I +�Q��
�Q .R*chFindMtch���     TEXT� m  �� ���  ^ ( . + ) \ t ( . + ) $� �P��
�P 
FnIn� 4  �O�
�O 
clin� o  �N�N 0 x  � �M��L
�M 
Opts� K  %�� �K��J
�K 
SMod� m   #�I
�I SModGrep�J  �L  �S  �R  � o      �H�H 0 searchresult searchResult� 9 3 Finds characters, then a tab, then more characters   � ��� f   F i n d s   c h a r a c t e r s ,   t h e n   a   t a b ,   t h e n   m o r e   c h a r a c t e r s� ��� l ..�G�F�E�G  �F  �E  � ��� l .;���� r  .;��� l .9��D�C� I .9�B�A�
�B .R*chGSubutxt    ��� null�A  � �@��?
�@ 
RplP� m  25�� ���  \ 1�?  �D  �C  � o      �>�> 0 
pagenumber 
pageNumber� < 6 The page number (or a spread's left-hand page number)   � ��� l   T h e   p a g e   n u m b e r   ( o r   a   s p r e a d ' s   l e f t - h a n d   p a g e   n u m b e r )� ��� l <I���� r  <I��� l <G��=�<� I <G�;�:�
�; .R*chGSubutxt    ��� null�:  � �9��8
�9 
RplP� m  @C�� ���  \ 2�8  �=  �<  � o      �7�7 0 hmaster hMaster� = 7 Human-friendly master name, as contained in human_list   � ��� n   H u m a n - f r i e n d l y   m a s t e r   n a m e ,   a s   c o n t a i n e d   i n   h u m a n _ l i s t� ��� l JJ�6�5�4�6  �5  �4  � ��3� Z  Je� �2�1� H  JT E  JS l JO�0�/ n  JO 1  KO�.
�. 
MTxt o  JK�-�- 0 searchresult searchResult�0  �/   m  OR �  - 	 -  l Wa	
	 k  Wa  l WW�,�+�*�,  �+  �*    Q  W_ k  Z�  l Zc r  Zc l Za�)�( n Za I  [a�'�&�' 0 list_position    !  o  [\�%�% 0 hmaster hMaster! "�$" o  \]�#�# 0 
human_list  �$  �&    f  Z[�)  �(   o      �"�" 0 listpos listPos Q K Gets hMaster's list position, so it can fetch from masters_ and slugs_list    �## �   G e t s   h M a s t e r ' s   l i s t   p o s i t i o n ,   s o   i t   c a n   f e t c h   f r o m   m a s t e r s _   a n d   s l u g s _ l i s t $%$ l dl&'(& r  dl)*) l dj+�!� + n  dj,-, 4  ej�.
� 
cobj. o  hi�� 0 listpos listPos- o  de�� 0 masters_list  �!  �   * o      �� 0 	themaster 	theMaster' 1 + Sets theMaster to the InDesign master name   ( �// V   S e t s   t h e M a s t e r   t o   t h e   I n D e s i g n   m a s t e r   n a m e% 010 l mm����  �  �  1 232 Z  m�456�4 E mp787 o  mn�� 0 singles_list  8 o  no�� 0 	themaster 	theMaster5 r  sx9:9 m  sv;; �<<  s i n g l e: o      �� 0 pagetype pageType6 =>= E {~?@? o  {|�� 0 spreads_list  @ o  |}�� 0 	themaster 	theMaster> A�A r  ��BCB m  ��DD �EE  s p r e a dC o      �� 0 pagetype pageType�  �  3 FGF l ������  �  �  G HIH Z  ��JKL�J = ��MNM o  ���� 0 pagetype pageTypeN m  ��OO �PP  s i n g l eK l ��QRSQ r  ��TUT l ��V��
V b  ��WXW b  ��YZY o  ���	�	 0 
pagenumber 
pageNumberZ m  ��[[ �\\  _X l ��]��] n  ��^_^ 4  ���`
� 
cobj` o  ���� 0 listpos listPos_ o  ���� 0 
slugs_list  �  �  �  �
  U o      �� 0 theslug theSlugR 2 , Block to set the slug used to name the file   S �aa X   B l o c k   t o   s e t   t h e   s l u g   u s e d   t o   n a m e   t h e   f i l eL bcb = ��ded o  ���� 0 pagetype pageTypee m  ��ff �gg  s p r e a dc h�h r  ��iji l ��k� ��k b  ��lml b  ��non b  ��pqp b  ��rsr o  ������ 0 
pagenumber 
pageNumbers m  ��tt �uu  -q l ��v����v [  ��wxw o  ������ 0 
pagenumber 
pageNumberx m  ������ ��  ��  o m  ��yy �zz  _m l ��{����{ n  ��|}| 4  ����~
�� 
cobj~ o  ������ 0 listpos listPos} o  ������ 0 
slugs_list  ��  ��  �   ��  j o      ���� 0 theslug theSlug�  �  I � l ����������  ��  ��  � ��� Z  ��������� G  ����� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - F r o n t� = ����� o  ������ 0 	themaster 	theMaster� m  ���� ���  N e w s - S a t F r o n t� l ������ r  ����� m  ���� ���  � o      ���� 0 
pagenumber 
pageNumber� H B So applyMaster doesn't try to set a page number, which would fail   � ��� �   S o   a p p l y M a s t e r   d o e s n ' t   t r y   t o   s e t   a   p a g e   n u m b e r ,   w h i c h   w o u l d   f a i l��  ��  � ��� l ����������  ��  ��  � ��� l ������ n ����� I  ��������� 0 pagegen pageGen� ��� o  ������ 0 pagetype pageType� ��� o  ������ 0 	themaster 	theMaster� ��� o  ������ 0 theslug theSlug� ���� o  ������ 0 
pagenumber 
pageNumber��  ��  �  f  ��� ' ! Calls pageGen to create the page   � ��� B   C a l l s   p a g e G e n   t o   c r e a t e   t h e   p a g e� ���� l ����������  ��  ��  ��   R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ����
���   k  �_�� ��� l ��������  � M G Handles "variable not defined" - aimed at listPos - to catch bad input   � ��� �   H a n d l e s   " v a r i a b l e   n o t   d e f i n e d "   -   a i m e d   a t   l i s t P o s   -   t o   c a t c h   b a d   i n p u t� ��� r  �'��� b  �#��� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� m  ���� ��� R T h e r e   i s   a   p r o b l e m   w i t h   t h i s   i n s t r u c t i o n :� o  � ��
�� 
ret � o  ��
�� 
ret � l 
������ n  
��� 1  
��
�� 
MTxt� o  ���� 0 searchresult searchResult��  ��  � o  ��
�� 
ret � o  ��
�� 
ret � m  �� ��� � P l e a s e   d o u b l e - c h e c k   t h a t   t h e   p a g e   t y p e   i s   s p e l l e d   e x a c t l y   a s   l i s t e d .� o  ��
�� 
ret � o  ��
�� 
ret � m  "�� ��� � D o   y o u   w i s h   t o   g e n e r a t e   t h e   r e s t   o f   t h e   p a g e s   o r   s t o p   t h e   s c r i p t ?� o      ���� 0 message2753  � ��� I (B����
�� .sysodlogaskr        TEXT� o  (+���� 0 message2753  � ����
�� 
btns� J  .6�� ��� m  .1�� ���  C o n t i n u e� ���� m  14�� ���  S t o p��  � �����
�� 
dflt� m  9<�� ���  S t o p��  � ���� Z C_������� = CN��� l CJ������ n  CJ��� 1  FJ��
�� 
bhit� l CF������ 1  CF��
�� 
rslt��  ��  ��  ��  � m  JM�� ���  S t o p� R  Q[�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  UX��������  ��  ��  ��   ��� l ``��������  ��  ��  � ���� l ``��������  ��  ��  ��  
 : 4 Lines consisting of "hyphen tab hyphen" are skipped    ��� h   L i n e s   c o n s i s t i n g   o f   " h y p h e n   t a b   h y p h e n "   a r e   s k i p p e d�2  �1  �3  � P J Goes through each line from the one after hashLine to the end of the file   � ��� �   G o e s   t h r o u g h   e a c h   l i n e   f r o m   t h e   o n e   a f t e r   h a s h L i n e   t o   t h e   e n d   o f   t h e   f i l e�U 0 x  � o  ���� 0 thestart theStart� o  	���� 0 theend theEnd�T  � ���� l kk��������  ��  ��  ��  � n  ����� 4  �����
�� 
ctxt� m  ������ � 4  �����
�� 
TxtW� m  ������ � m  �����                                                                                  !Rch  alis    f  Macintosh HD               ĬplH+   �KFTextWrangler.app                                                �h�Oͩ        ����  	                Applications    Ĭb\      �O��     �KF  +Macintosh HD:Applications: TextWrangler.app   "  T e x t W r a n g l e r . a p p    M a c i n t o s h   H D  Applications/TextWrangler.app   / ��  �u  � ��� l     ��������  ��  ��  � ��� l     ��� ��  � , & newsGen: News-page generation routine     � L   n e w s G e n :   N e w s - p a g e   g e n e r a t i o n   r o u t i n e�  i   . 1 I      ������ 0 newsgen newsGen  o      ���� &0 masterstogenerate mastersToGenerate 	��	 o      ���� 0 theday theDay��  ��   k    X

  Z     _���� E     o     ���� &0 masterstogenerate mastersToGenerate m     �  N e w s   p a g e s k    [  Z    +�� >   	 o    ���� 0 theday theDay m     �  S a t u r d a y l    I    �� ���� 0 pagegen pageGen  !"! m    ## �$$  s i n g l e" %&% m    '' �((  N e w s - F r o n t& )*) m    ++ �,,  1 _ F r o n t* -��- m    .. �//  ��  ��   ; 5 If block to create the weekday or weekend front page    �00 j   I f   b l o c k   t o   c r e a t e   t h e   w e e k d a y   o r   w e e k e n d   f r o n t   p a g e 121 =   343 o    ���� 0 theday theDay4 m    55 �66  S a t u r d a y2 7��7 I    '��8���� 0 pagegen pageGen8 9:9 m     ;; �<<  s i n g l e: =>= m     !?? �@@  N e w s - S a t F r o n t> ABA m   ! "CC �DD  1 _ F r o n tB E��E m   " #FF �GG  ��  ��  ��  ��   HIH I   , 7��J���� 0 pagegen pageGenJ KLK m   - .MM �NN  s p r e a dL OPO m   . /QQ �RR  N e w s - H o m e - S p l i tP STS m   / 0UU �VV  2 - 3 _ H o m eT W��W m   0 3XX �YY  2��  ��  I Z[Z I   8 I��\���� 0 pagegen pageGen\ ]^] m   9 <__ �``  s p r e a d^ aba m   < ?cc �dd  N e w s - H o m e - S p l i tb efe m   ? Bgg �hh  4 - 5 _ H o m ef i��i m   B Ejj �kk  4��  ��  [ l��l I   J [��m���� 0 pagegen pageGenm non m   K Npp �qq  s p r e a do rsr m   N Qtt �uu $ N e w s - F o r e i g n - S p l i ts vwv m   Q Txx �yy  6 - 7 _ F o r e i g nw z��z m   T W{{ �||  6��  ��  ��  ��  ��   }~} l  ` `��������  ��  ��  ~ � Z   ` �������� E  ` e��� o   ` a���� &0 masterstogenerate mastersToGenerate� m   a d�� ���  T V� Z   h ������� >  h m��� o   h i���� 0 theday theDay� m   i l�� ���  S a t u r d a y� I   p ����~� 0 pagegen pageGen� ��� m   q t�� ���  s p r e a d� ��� m   t w�� ���  F e a t - T V� ��� m   w z�� ���  1 2 - 1 3 _ T V� ��}� m   z }�� ���  1 2�}  �~  � ��� =  � ���� o   � ��|�| 0 theday theDay� m   � ��� ���  S a t u r d a y� ��{� I   � ��z��y�z 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - B l a n k - R� ��� m   � ��� ���  1 5 _ F e a t u r e s� ��x� m   � ��� ���  1 5�x  �y  �{  ��  ��  ��  � ��� l  � ��w�v�u�w  �v  �u  � ��� Z   ����t�s� E  � ���� o   � ��r�r &0 masterstogenerate mastersToGenerate� m   � ��� ���  L e t t e r s� k   ��� ��� l  � ����� r   � ���� J   � ��� ��� m   � ��� ���  M o n d a y� ��q� m   � ��� ���  W e d n e s d a y�q  � o      �p�p 0 p10_days  � = 7 These two lists determine what the page number will be   � ��� n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b e� ��� r   � ���� J   � ��� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  T h u r s d a y� ��o� m   � ��� ���  F r i d a y�o  � o      �n�n 0 p14_days  � ��� l  � ��m�l�k�m  �l  �k  � ��j� Z   �����i� E  � ���� o   � ��h�h 0 p10_days  � o   � ��g�g 0 theday theDay� I   � ��f��e�f 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - L e t t e r s - L� ��� m   � ��� ���  1 0 _ L e t t e r s� ��d� m   � ��� ���  1 0�d  �e  � ��� E  � ���� o   � ��c�c 0 p14_days  � o   � ��b�b 0 theday theDay� ��� I   � ��a��`�a 0 pagegen pageGen� � � m   � � �  s i n g l e   m   � � �  F e a t - L e t t e r s - L  m   � �		 �

  1 4 _ L e t t e r s �_ m   � � �  1 4�_  �`  �  =  �  o   � ��^�^ 0 theday theDay m   � � �  S a t u r d a y �] I  �\�[�\ 0 pagegen pageGen  m   �  s p r e a d  m  
 � $ F e a t - L e t t e r s - S p l i t  m  
   �!!  1 8 - 1 9 _ L e t t e r s "�Z" m  ## �$$  1 8�Z  �[  �]  �i  �j  �t  �s  � %&% l �Y�X�W�Y  �X  �W  & '(' Z  :)*�V�U) E "+,+ o  �T�T &0 masterstogenerate mastersToGenerate, m  !-- �..  S t r u g g l e* I  %6�S/�R�S 0 pagegen pageGen/ 010 m  &)22 �33  s p r e a d1 454 m  ),66 �77 & F e a t - S t r u g g l e - S p l i t5 898 m  ,/:: �;;  8 - 9 _ S t r u g g l e9 <�Q< m  /2== �>>  8�Q  �R  �V  �U  ( ?@? l ;;�P�O�N�P  �O  �N  @ A�MA Z  ;XBC�L�KB E ;@DED o  ;<�J�J &0 masterstogenerate mastersToGenerateE m  <?FF �GG  R e d   L i s tC I  CT�IH�H�I 0 pagegen pageGenH IJI m  DGKK �LL  s i n g l eJ MNM m  GJOO �PP  F e a t - R e d L i s tN QRQ m  JMSS �TT  2 0 _ R e d L i s tR U�GU m  MPVV �WW  2 0�G  �H  �L  �K  �M   XYX l     �F�E�D�F  �E  �D  Y Z[Z l     �C�B�A�C  �B  �A  [ \]\ l     �@^_�@  ^ 1 + featsGen: Features-page generation routine   _ �`` V   f e a t s G e n :   F e a t u r e s - p a g e   g e n e r a t i o n   r o u t i n e] aba i   2 5cdc I      �?e�>�? 0 featsgen featsGene fgf o      �=�= &0 masterstogenerate mastersToGenerateg h�<h o      �;�; 0 theday theDay�<  �>  d k    �ii jkj Z     %lm�:�9l E    non o     �8�8 &0 masterstogenerate mastersToGenerateo m    pp �qq  S p r e a dm Z    !rs�7tr =   	uvu o    �6�6 0 theday theDayv m    ww �xx  S a t u r d a ys I    �5y�4�5 0 pagegen pageGeny z{z m    || �}}  s p r e a d{ ~~ m    �� ���  F e a t - S p r e a d ��� m    �� ���  1 2 - 1 3 _ F e a t u r e s� ��3� m    �� ���  1 2�3  �4  �7  t I    !�2��1�2 0 pagegen pageGen� ��� m    �� ���  s p r e a d� ��� m    �� ���  F e a t - S p r e a d� ��� m    �� ���  8 - 9 _ F e a t u r e s� ��0� m    �� ���  8�0  �1  �:  �9  k ��� l  & &�/�.�-�/  �.  �-  � ��� Z   & ;���,�+� E  & )��� o   & '�*�* &0 masterstogenerate mastersToGenerate� m   ' (�� ���  1 0� I   , 7�)��(�) 0 pagegen pageGen� ��� m   - .�� ���  s i n g l e� ��� m   . /�� ���  F e a t - B l a n k - L� ��� m   / 0�� ���  1 0 _ F e a t u r e s� ��'� m   0 3�� ���  1 0�'  �(  �,  �+  � ��� l  < <�&�%�$�&  �%  �$  � ��� Z   < Y���#�"� E  < A��� o   < =�!�! &0 masterstogenerate mastersToGenerate� m   = @�� ��� 
 1 2 - 1 3� I   D U� ���  0 pagegen pageGen� ��� m   E H�� ���  s p r e a d� ��� m   H K�� ���  F e a t - T V� ��� m   K N�� ���  1 2 - 1 3 _ T V� ��� m   N Q�� ���  1 2�  �  �#  �"  � ��� l  Z Z����  �  �  � ��� Z   Z w����� E  Z _��� o   Z [�� &0 masterstogenerate mastersToGenerate� m   [ ^�� ���  1 0 - 1 1      s p l i t� I   b s���� 0 pagegen pageGen� ��� m   c f�� ���  s p r e a d� ��� m   f i�� ���   F e a t - B l a n k - S p l i t� ��� m   i l�� ���  1 0 - 1 1 _ F e a t u r e s� ��� m   l o�� ���  1 0�  �  �  �  � ��� Z   x ������ E  x }��� o   x y�� &0 masterstogenerate mastersToGenerate� m   y |�� ���  1 0 - 1 1      s i n g l e s� k   � ��� ��� I   � ����� 0 pagegen pageGen� ��� m   � ��� ���  s i n g l e� ��� m   � ��� ���  F e a t - B l a n k - L� ��� m   � ��� ���  1 0 _ F e a t u r e s� ��� m   � �   �  1 0�  �  � � I   � ���� 0 pagegen pageGen  m   � � �  s i n g l e 	 m   � �

 �  F e a t - B l a n k - R	  m   � � �  1 1 _ F e a t u r e s � m   � � �  1 1�  �  �  �  �  �  l  � ��
�	��
  �	  �    Z   � ��� E  � � o   � ��� &0 masterstogenerate mastersToGenerate m   � � �  1 4 I   � ���� 0 pagegen pageGen  m   � �   �!!  s i n g l e "#" m   � �$$ �%%  F e a t - B l a n k - L# &'& m   � �(( �))  1 4 _ F e a t u r e s' *�* m   � �++ �,,  1 4�  �  �  �   -.- Z   � �/0�� / E  � �121 o   � ����� &0 masterstogenerate mastersToGenerate2 m   � �33 �44  1 50 I   � ���5���� 0 pagegen pageGen5 676 m   � �88 �99  s i n g l e7 :;: m   � �<< �==  F e a t - B l a n k - R; >?> m   � �@@ �AA  1 5 _ F e a t u r e s? B��B m   � �CC �DD  1 5��  ��  �  �   . EFE l  � ���������  ��  ��  F GHG Z   �IJ����I E  � �KLK o   � ����� &0 masterstogenerate mastersToGenerateL m   � �MM �NN 
 1 6 - 1 7J l  � �OPQO I   � ���R���� 0 pagegen pageGenR STS m   � �UU �VV  s p r e a dT WXW m   � �YY �ZZ  A r t s - E n t s - S p l i tX [\[ m   � �]] �^^  1 6 - 1 7 _ E n t s - A r t s\ _��_ m   � �`` �aa  1 6��  ��  P ( " Create the weekend Ents/Arts page   Q �bb D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��  H cdc l ��������  ��  ��  d efe Z  {gh����g E iji o  ���� &0 masterstogenerate mastersToGeneratej m  kk �ll  L e t t e r sh k  
wmm non l 
pqrp r  
sts J  
uu vwv m  
xx �yy  M o n d a yw z��z m  {{ �||  W e d n e s d a y��  t o      ���� 0 p10_days  q = 7 These two lists determine what the page number will be   r �}} n   T h e s e   t w o   l i s t s   d e t e r m i n e   w h a t   t h e   p a g e   n u m b e r   w i l l   b eo ~~ r  %��� J  #�� ��� m  �� ���  T u e s d a y� ��� m  �� ���  T h u r s d a y� ��� m  �� ���  F r i d a y� ���� m  !�� ��� , N o   d a y      w o r k i n g   a h e a d��  � o      ���� 0 p14_days   ��� l &&��������  ��  ��  � ���� Z  &w������ E &)��� o  &'���� 0 p10_days  � o  '(���� 0 theday theDay� I  ,=������� 0 pagegen pageGen� ��� m  -0�� ���  s i n g l e� ��� m  03�� ���  F e a t - L e t t e r s - L� ��� m  36�� ���  1 0 _ L e t t e r s� ���� m  69�� ���  1 0��  ��  � ��� E @C��� o  @A���� 0 p14_days  � o  AB���� 0 theday theDay� ��� I  FW������� 0 pagegen pageGen� ��� m  GJ�� ���  s i n g l e� ��� m  JM�� ���  F e a t - L e t t e r s - L� ��� m  MP�� ���  1 4 _ L e t t e r s� ���� m  PS�� ���  1 4��  ��  � ��� = Z_��� o  Z[���� 0 theday theDay� m  [^�� ���  S a t u r d a y� ���� I  bs������� 0 pagegen pageGen� ��� m  cf�� ���  s p r e a d� ��� m  fi�� ��� $ F e a t - L e t t e r s - S p l i t� ��� m  il�� ���  1 8 - 1 9 _ L e t t e r s� ���� m  lo�� ���  1 8��  ��  ��  ��  ��  ��  ��  f ��� l ||��������  ��  ��  � ��� Z  |�������� E |���� o  |}���� &0 masterstogenerate mastersToGenerate� m  }��� ���  A r t s� l ������ I  ��������� 0 pagegen pageGen� ��� m  ���� ���  s i n g l e� ��� m  ���� ���  A r t s - B l a n k - R� ��� m  ���� ���  1 1 _ A r t s� ���� m  ���� ���  1 1��  ��  � ( " Create the weekday Arts page (11)   � ��� D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  � ��� l ����������  ��  ��  � ���� Z  ��������� E ����� o  ������ &0 masterstogenerate mastersToGenerate� m  ���� ���  A r t s   s p l i t� I  ��������� 0 pagegen pageGen� � � m  �� �  s p r e a d   m  �� �   A r t s - B l a n k - S p l i t  m  ��		 �

  1 0 - 1 1 _ A r t s �� m  �� �  1 0��  ��  ��  ��  ��  b  l     ��������  ��  ��    l     ��������  ��  ��    l     ����   , & artsGen: Arts-page generation routine    � L   a r t s G e n :   A r t s - p a g e   g e n e r a t i o n   r o u t i n e  i   6 9 I      ������ 0 artsgen artsGen �� o      ���� &0 masterstogenerate mastersToGenerate��  ��   k     =  Z      !����  E    "#" o     ���� &0 masterstogenerate mastersToGenerate# m    $$ �%%  1 6 - 1 7   ( w e e k e n d )! l   &'(& I    ��)���� 0 pagegen pageGen) *+* m    ,, �--  s p r e a d+ ./. m    	00 �11  A r t s - E n t s - S p l i t/ 232 m   	 
44 �55  1 6 - 1 7 _ E n t s - A r t s3 6��6 m   
 77 �88  1 6��  ��  ' ( " Create the weekend Ents/Arts page   ( �99 D   C r e a t e   t h e   w e e k e n d   E n t s / A r t s   p a g e��  ��   :;: l   ��������  ��  ��  ; <=< Z    '>?����> E   @A@ o    ���� &0 masterstogenerate mastersToGenerateA m    BB �CC  A r t s   ( p 1 1 )? l   #DEFD I    #��G���� 0 pagegen pageGenG HIH m    JJ �KK  s i n g l eI LML m    NN �OO  A r t s - B l a n k - RM PQP m    RR �SS  1 1 _ A r t sQ T��T m    UU �VV  1 1��  ��  E ( " Create the weekday Arts page (11)   F �WW D   C r e a t e   t h e   w e e k d a y   A r t s   p a g e   ( 1 1 )��  ��  = XYX l  ( (��������  ��  ��  Y Z��Z Z   ( =[\����[ E  ( +]^] o   ( )���� &0 masterstogenerate mastersToGenerate^ m   ) *__ �``  A r t s   s p l i t\ l  . 9abca I   . 9��d���� 0 pagegen pageGend efe m   / 0gg �hh  s p r e a df iji m   0 1kk �ll   A r t s - B l a n k - S p l i tj mnm m   1 2oo �pp  1 0 - 1 1 _ A r t sn q��q m   2 5rr �ss  1 0��  ��  b + % Creates an Arts split-spread (10-11)   c �tt J   C r e a t e s   a n   A r t s   s p l i t - s p r e a d   ( 1 0 - 1 1 )��  ��  ��   uvu l     ��������  ��  ��  v wxw l     ��������  ��  ��  x yzy l     ��{|��  { 0 * sportsGen: Sports-page generation routine   | �}} T   s p o r t s G e n :   S p o r t s - p a g e   g e n e r a t i o n   r o u t i n ez ~��~ i   : =� I      ������� 0 	sportsgen 	sportsGen� ���� o      ���� &0 masterstogenerate mastersToGenerate��  ��  � k    ��� ��� Z     ������� E    ��� o     ���� &0 masterstogenerate mastersToGenerate� m    �� ���  T w o   p a g e s� k    �� ��� I    ������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    	�� ���  S p r t - B a c k� ��� m   	 
�� ���  1 6 _ B a c k� ���� m   
 �� ���  1 6��  ��  � ���� I    ������� 0 pagegen pageGen� ��� m    �� ���  s i n g l e� ��� m    �� ���  S p r t - B l a n k - R� ��� m    �� ���  1 5 _ S p o r t� ���� m    �� ���  1 5��  ��  ��  ��  ��  � ��� l   ��������  ��  ��  � ��� Z    U������� E   !��� o    ���� &0 masterstogenerate mastersToGenerate� m     �� ���  T h r e e   p a g e s� k   $ Q�� ��� I   $ -������� 0 pagegen pageGen� ��� m   % &�� ���  s i n g l e� ��� m   & '�� ���  S p r t - B a c k� ��� m   ' (�� ���  1 6 _ B a c k� ��� m   ( )�� ���  1 6�  ��  � ��� I   . ?�~��}�~ 0 pagegen pageGen� ��� m   / 2�� ���  s i n g l e� ��� m   2 5�� ���  S p r t - B l a n k - R� ��� m   5 8�� ���  1 5 _ S p o r t� ��|� m   8 ;�� ���  1 5�|  �}  � ��{� I   @ Q�z��y�z 0 pagegen pageGen� ��� m   A D�� ���  s i n g l e� ��� m   D G�� ���  S p r t - B l a n k - L� ��� m   G J�� ���  1 4 _ S p o r t� ��x� m   J M�� ���  1 4�x  �y  �{  ��  ��  � ��� l  V V�w�v�u�w  �v  �u  � ��� Z   V ����t�s� E  V [��� o   V W�r�r &0 masterstogenerate mastersToGenerate� m   W Z�� ��� , T h r e e   p a g e s   w i t h   s p l i t� k   ^ ��� ��� I   ^ o�q��p�q 0 pagegen pageGen� ��� m   _ b   �  s i n g l e�  m   b e �  S p r t - B a c k  m   e h �		  1 6 _ B a c k 
�o
 m   h k �  1 6�o  �p  � �n I   p ��m�l�m 0 pagegen pageGen  m   q t �  s p r e a d  m   t w �   S p r t - B l a n k - S p l i t  m   w z �  1 4 - 1 5 _ S p o r t �k m   z } �  1 4�k  �l  �n  �t  �s  �  l  � ��j�i�h�j  �i  �h    !  Z   � �"#�g�f" E  � �$%$ o   � ��e�e &0 masterstogenerate mastersToGenerate% m   � �&& �''  F o u r   p a g e s# k   � �(( )*) I   � ��d+�c�d 0 pagegen pageGen+ ,-, m   � �.. �//  s i n g l e- 010 m   � �22 �33  S p r t - B a c k1 454 m   � �66 �77  2 4 _ B a c k5 8�b8 m   � �99 �::  2 4�b  �c  * ;<; I   � ��a=�`�a 0 pagegen pageGen= >?> m   � �@@ �AA  s i n g l e? BCB m   � �DD �EE  S p r t - B l a n k - RC FGF m   � �HH �II  2 3 _ S p o r tG J�_J m   � �KK �LL  2 3�_  �`  < MNM I   � ��^O�]�^ 0 pagegen pageGenO PQP m   � �RR �SS  s i n g l eQ TUT m   � �VV �WW  S p r t - B l a n k - LU XYX m   � �ZZ �[[  2 2 _ S p o r tY \�\\ m   � �]] �^^  2 2�\  �]  N _�[_ I   � ��Z`�Y�Z 0 pagegen pageGen` aba m   � �cc �dd  s i n g l eb efe m   � �gg �hh  S p r t - R a c i n g - Rf iji m   � �kk �ll  2 1 _ R a c i n gj m�Xm m   � �nn �oo  2 1�X  �Y  �[  �g  �f  ! pqp l  � ��W�V�U�W  �V  �U  q rsr Z   �tu�T�St E  � �vwv o   � ��R�R &0 masterstogenerate mastersToGeneratew m   � �xx �yy * F o u r   p a g e s   w i t h   s p l i tu k   �zz {|{ I   � ��Q}�P�Q 0 pagegen pageGen} ~~ m   � ��� ���  s i n g l e ��� m   � ��� ���  S p r t - B a c k� ��� m   � ��� ���  2 4 _ B a c k� ��O� m   � ��� ���  2 4�O  �P  | ��� I   ��N��M�N 0 pagegen pageGen� ��� m   � ��� ���  s p r e a d� ��� m   � ��� ���   S p r t - B l a n k - S p l i t� ��� m   � ��� ���  2 2 - 2 3 _ S p o r t� ��L� m   ��� ���  2 2�L  �M  � ��K� I  �J��I�J 0 pagegen pageGen� ��� m  
�� ���  s i n g l e� ��� m  
�� ���  S p r t - R a c i n g - R� ��� m  �� ���  2 1 _ R a c i n g� ��H� m  �� ���  2 1�H  �I  �K  �T  �S  s ��� l �G�F�E�G  �F  �E  � ��� Z  9���D�C� E !��� o  �B�B &0 masterstogenerate mastersToGenerate� m   �� ���  R a c i n g   o n l y� I  $5�A��@�A 0 pagegen pageGen� ��� m  %(�� ���  s i n g l e� ��� m  (+�� ���  S p r t - R a c i n g - R� ��� m  +.�� ���  2 1 _ R a c i n g� ��?� m  .1�� ���  2 1�?  �@  �D  �C  � ��� l ::�>�=�<�>  �=  �<  � ��� Z  :W���;�:� E :?��� o  :;�9�9 &0 masterstogenerate mastersToGenerate� m  ;>�� ���  E x t r a   l e f t   p a g e� I  BS�8��7�8 0 pagegen pageGen� ��� m  CF�� ���  s i n g l e� ��� m  FI�� ���  S p r t - B l a n k - L� ��� m  IL�� ���  L _ X X _ S p o r t� ��6� m  LO�� ���  0 0�6  �7  �;  �:  � ��� l XX�5�4�3�5  �4  �3  � ��� Z  Xu���2�1� E X]��� o  XY�0�0 &0 masterstogenerate mastersToGenerate� m  Y\�� ���   E x t r a   r i g h t   p a g e� I  `q�/��.�/ 0 pagegen pageGen� ��� m  ad�� ���  s i n g l e� ��� m  dg�� ���  S p r t - B l a n k - R� ��� m  gj�� ���  R _ X X _ S p o r t� ��-� m  jm�� ���  0 0�-  �.  �2  �1  � ��� l vv�,�+�*�,  �+  �*  �  �)  Z  v��(�' E v{ o  vw�&�& &0 masterstogenerate mastersToGenerate m  wz �  E x t r a   s p l i t I  ~��%�$�% 0 pagegen pageGen 	 m  �

 �  s p r e a d	  m  �� �   S p r t - B l a n k - S p l i t  m  �� � " S p l i t _ X X - X X _ S p o r t �# m  �� �  0 0�#  �$  �(  �'  �)  ��       �" K U !"#$%&�"   �!� ����������������! $0 freshpagesfolder freshPagesFolder�   0 masterdocument masterDocument� 0 	genprompt 	genPrompt� 0 list_position  � 0 
dateprompt 
datePrompt� "0 create_pagedate create_pageDate� "0 create_filedate create_fileDate� 0 pagegen pageGen� 0 applymaster applyMaster�  0 drawembargobox drawEmbargoBox� 0 	cleansave 	cleanSave� 0 customedition customEdition� 0 newsgen newsGen� 0 featsgen featsGen� 0 artsgen artsGen� 0 	sportsgen 	sportsGen
� .aevtoappnull  �   � **** � ���'(�� 0 	genprompt 	genPrompt� �)� )  �� 0 desk  �  ' 	�
�	��������
 0 desk  �	 0 	days_list  � 0 thetitle theTitle� 0 weekday_pages  � 0 weekend_pages  � 0 ahead_pages  � 0 theday theDay� 0 
prompttext 
promptText� &0 masterstogenerate mastersToGenerate( m � � � � � ���  ��� ��������� ����� � � � � � ���#��-7;>FJNRU[fjnrvy��������������������������	 ��&14=ADLPS��t���������������������� 
�  
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
bool�� �� 
�� 0 
dateprompt 
datePrompt�� 0 customedition customEdition
�� 
ret 
�� 
mlsl�� 0 newsgen newsGen�� 0 featsgen featsGen�� 0 	sportsgen 	sportsGen�� 0 artsgen artsGen����  -������v����� �&E�O��  )a a lhY hY hOa a a a a a a vE�O�a  �a %E�Y a E�O�a  
 �a  a & n�a   &a  a !a "mvE�Oa #a $a %a &a '�vE�Y ?�a (  6a )a *a +a ,a -a .a vE�Oa /a 0a 1a 2a 3a 4a vE�Y hY ��a 5 
 �a 6 a & �a 7�6FO�a 8  ^a 9a :a ;a <a =a >a vE�Oa ?a @a Aa Ba Ca Da Ea FvE�Oa Ga Ha Ia Ja Ka La Ma Na Oa Pa QvE�Y 4�a R  +a Sa TlvE�Oa Ua Va WmvE�Oa Xa Ya ZmvE�Y hY hO)��l+ [E�O�a \  
)j+ ]Y �a ^_ _%_ _%a `%E�O�a a  +���a bea  E�O�f  )a a lhY hY e�a c +���a bea  E�O�f  )a a lhY hY 4�a d  +���a bea  E�O�f  )a a lhY hY hO�a e  )��l+ fY 7�a g  )��l+ hY %�a i  )�k+ jY �a k  )�k+ lY h ��-����*+���� 0 list_position  �� ��,�� ,  ������ 0 	this_item  �� 0 	this_list  ��  * �������� 0 	this_item  �� 0 	this_list  �� 0 i  + ����
�� .corecnte****       ****
�� 
cobj�� # !k�j  kh ��/�  �Y h[OY�� ��J����-.���� 0 
dateprompt 
datePrompt�� ��/�� /  ������ 0 thetitle theTitle�� 0 	days_list  ��  - ���������������������������������� 0 thetitle theTitle�� 0 	days_list  �� 0 months_list  �� 0 tomorrow  �� 0 tmday tmDay�� 0 theday theDay�� 0 prdate prDate�� 0 prmonth prMonth�� 0 pryear prYear�� 0 
predictpos 
predictPos�� 0 	actualpos 	actualPos�� 0 shiftpos shiftPos�� 0 predictedday predictedDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear. 8W[_cgkosw{���������������������������������������������������������������������	������ 
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
ttxt
�� 
ctxt
�� 
psof
�� 
psin
�� .sysooffslong    ��� null�� "0 create_pagedate create_pageDate�� "0 create_filedate create_fileDate���������������vE�O*j �,�&a  *j k_  E�Y *j l_  E�O��,�&kvE�O�a a a �a �a  �&E�O_ a   )a a lhY hO�a   a E` Oa E`  O�Y hO���&   �a !,E�O�a ",�&kvE�O�a #,E�Y o���& f)��&�l+ $E�O)��l+ $E�O��E�O�j ��_  E�Y �j �a %�_  E�Y hO�a !,E�O�a ",�&kvE�O�a #,E�Y hO�a a &a �a �a  �&E�O_ a '  )a a lhY hOa (a )�a �a * +a ,,�&E�O_ a -  )a a lhY hO�a . &�[a /\[Zk\Z*a 0a 1a 2�a * 3k2E�Y hOa 4a )�a �a * +a ,,�&E�O_ a 5  )a a lhY hO)����a *+ 6O)����a *+ 7O� ��K����01���� "0 create_pagedate create_pageDate�� ��2�� 2  ���������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear��  0 ���������������� 0 theday theDay�� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 sun  �� 0 secondmonth secondMonth�� 0 
secondyear 
secondYear1 Yprt����������������������� 0 pagedate pageDate
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
day �� ��� ��%�%�%�%�%�%E�OPY t*��%�%�%�%�%�%/k� E�O��,�&� ��,�&�%E�Y �E�O��,�&� ��,�&%E�Y a E�Oa �%a %�%a %�%�a ,�&%a %�%�%E�OP ��*����34���� "0 create_filedate create_fileDate�� ��5�� 5  ���������� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  ��  3 ���������� 0 themonth theMonth�� 0 thedate theDate�� 0 theyear theYear�� 0 months_list  4 ����B��[������
�� 
nmbr�� 
�� 0 list_position  
�� 
ctxt�� �� 0 filedate fileDate�� >��&� 
�%E�Y hO)��l+ E�O�� 
�%E�Y hO��%�[�\[Zm\Z�2%E� ������67�~�� 0 pagegen pageGen�� �}8�} 8  �|�{�z�y�| 0 pagetype pageType�{ 0 	themaster 	theMaster�z 0 theslug theSlug�y 0 
pagenumber 
pageNumber�  6 �x�w�v�u�x 0 pagetype pageType�w 0 	themaster 	theMaster�v 0 theslug theSlug�u 0 
pagenumber 
pageNumber7 
��t�s��r�q�p�o�n�m
�t .aevtodocnull  �    alis�s 0 applymaster applyMaster�r  0 drawembargobox drawEmbargoBox�q 0 	cleansave 	cleanSave
�p 
pacd
�o 
svop
�n savoyes 
�m .CoReclosnull���     obj �~ @� <b  j O)���m+ O�� )�k+ Y hO)��l+ O*�, 	*��l 	UU �l��k�j9:�i�l 0 applymaster applyMaster�k �h;�h ;  �g�f�e�g 0 	themaster 	theMaster�f 0 pagetype pageType�e 0 
pagenumber 
pageNumber�j  9 �d�c�b�d 0 	themaster 	theMaster�c 0 pagetype pageType�b 0 
pagenumber 
pageNumber: ,�a��`�_�^��] �\�[�Z�Y�X�W<�V�U(�T�S2?MV�R�Q�P�O�Nmw����������M
�a 
pacd
�` 
mspr
�_ 
page
�^ 
pmas
�] 
txtf
�\ 
dPge
�[ .InESovrrobj         obj �Z 0 pagedate pageDate
�Y 
pcnt
�X 
mpgs
�W 
cobj<  
�V 
pilr
�U 
pnam�T  �S  
�R 
kocl
�Q 
sprd
�P 
prdt�O 
�N .corecrel****      � null
�M 
TEXT�i���*�,���  �*�/*�k/�,FO�� |*�/��/�*�k/l 
O�*��/�,FO )*�k/�,�-a [a ,a ,\Za 81�*�k/l 
W X  hO�a  %*�/�a /�*�k/l 
O�*�k/�a /�,FY hY hY�a  *a a a �*�/la  O�a  �*�/�a  /�*�l/l 
O*�/�a !/�*�m/l 
O�*�a "/�,FO�*�a #/�,FO N*�l/�,�-a [a ,a ,\Za $81�*�l/l 
O*�m/�,�-a [a ,a ,\Za %81�*�m/l 
W X  hO�a & L*�/�a '/�*�l/l 
O*�/�a (/�*�m/l 
O�*�l/�a )/�,FO�ka *&*�m/�a +/�,FY hY hY hUU �L�K�J=>�I�L  0 drawembargobox drawEmbargoBox�K �H?�H ?  �G�G 0 pagetype pageType�J  = �F�E�D�C�F 0 pagetype pageType�E 0 pagenum pageNum�D 0 	worklayer 	workLayer�C 0 ebox eBox> }�B,4�A<�@E�?�>�=�<�;�:[^ac�9�8e�7�6�5p�4�3
�B 
docu
�A 
layr
�@ 
pnam
�? 
page
�> 
kocl
�= 
txtf
�< 
prdt
�; 
pilr
�: 
gbnd�9 
�8 
pcnt�7 
�6 .corecrel****      � null
�5 
ObSt
�4 
aobs
�3 
plck�I |� x*�k/ p��  kE�Y ��  lE�Y hO*�k/�[�,\Z�81E�O*�/ '*�������a a a va a a a  E�UO*a a /�a ,FOe�a ,FUU  �2��1�0@A�/�2 0 	cleansave 	cleanSave�1 �.B�. B  �-�,�- 0 
pagenumber 
pageNumber�, 0 theslug theSlug�0  @ �+�*�+ 0 
pagenumber 
pageNumber�* 0 theslug theSlugA ��)�(��'���&���%��$��#��"
�) 
pacd
�( 
layr
�' 
plck
�& 
pacl
�% 
zero
�$ 
kfil�# 0 filedate fileDate
�" .CoResavedocu        obj �/ `� \*�, Ue*��/�,FOe*��/�,FO�*�,FO�l#j  ��lv*�,FY �l#k  ��lv*�,FY hO*�b   �%�%�%�%l UU! �!�� �CD��! 0 customedition customEdition�   �  C ������������������ 0 
human_list  � 0 masters_list  � 0 
slugs_list  � 0 singles_list  � 0 spreads_list  � 0 hashline hashLine� 0 thestart theStart� 0 theend theEnd� 0 x  � 0 searchresult searchResult� 0 
pagenumber 
pageNumber� 0 hmaster hMaster� 0 listpos listPos� 0 	themaster 	theMaster� 0 pagetype pageType� 0 theslug theSlug� 0 message2753  D �			"	&	*	.	2	6	:	>	B	F	J	N	R	V	Z	^	b	f	j	n	r	v	z	~	�	�	�	�	�	�	�	�	�	�	��	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�
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
F
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
�#'+/37;?CGKN�\`dhlptx|�����
��	���������� �������������������;DO[fty���������E������������������������ %� �
 
�	 
TxtW
� 
ctxt
� 
Opts
� 
SMod
� SModGrep
� 
STop� 
� .R*chFindMtch���     TEXT
� 
MSpc
�  
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
bool�� 0 pagegen pageGen��  E ������
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
errn�����o����������������a a a a a a a a a a a a a a a a a  a !a "a #a $a %vE�Oa &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja %vE�Oa Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa %vE�Oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �vE�Oa �a �a �a �a �a �a �a �a �a �a �a �a �a �vE�Oa ��*a �k/a �k/�a �a �a �a �a �ea �l �E�O�a �,a �,kE�O*a �,E�Oe��kh a �a �*a ��/a �a �a �la � �E�O*a �a �l �E�O*a �a �l �E�O�a �,a � �)��l+ �E�O�a ��/E�O�� 
a �E�Y �� 
a �E�Y hO�a �  �a �%�a ��/%E�Y $�a �  �a �%�k%a �%�a ��/%E�Y hO�a � 
 �a � a �& 
a �E�Y hO)����a �+ �OPW lX � �a �_ �%_ �%�a �,%_ �%_ �%a �%_ �%_ �%a �%E^ O] a �a �a �lva �a �a � �O_ �a �,a �  )a �a �lhY hOPY h[OY��OPUU" ������FG���� 0 newsgen newsGen�� ��H�� H  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  F ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  G A#'+.����5;?CFMQUX_cgjptx{���������������������	 #-26:=FKOSV�� �� 0 pagegen pageGen��Y�� Z�� *�����+ Y ��  *�����+ Y hO*���a �+ O*a a a a �+ O*a a a a �+ Y hO�a  >�a  *a a a a �+ Y �a   *a  a !a "a #�+ Y hY hO�a $ oa %a &lvE�Oa 'a (a )mvE�O�� *a *a +a ,a -�+ Y 9�� *a .a /a 0a 1�+ Y �a 2  *a 3a 4a 5a 6�+ Y hY hO�a 7 *a 8a 9a :a ;�+ Y hO�a < *a =a >a ?a @�+ Y h# ��d����IJ���� 0 featsgen featsGen�� ��K�� K  ������ &0 masterstogenerate mastersToGenerate�� 0 theday theDay��  I ���������� &0 masterstogenerate mastersToGenerate�� 0 theday theDay�� 0 p10_days  �� 0 p14_days  J Qpw|������������������������������ 
 $(+38<@CMUY]`kx{�����������������������	�� �� 0 pagegen pageGen�����  ��  *�����+ Y *�����+ Y hO�� *���a �+ Y hO�a  *a a a a �+ Y hO�a  *a a a a �+ Y hO�a  (*a a a a �+ O*a  a !a "a #�+ Y hO�a $ *a %a &a 'a (�+ Y hO�a ) *a *a +a ,a -�+ Y hO�a . *a /a 0a 1a 2�+ Y hO�a 3 ra 4a 5lvE�Oa 6a 7a 8a 9�vE�O�� *a :a ;a <a =�+ Y 9�� *a >a ?a @a A�+ Y �a B  *a Ca Da Ea F�+ Y hY hO�a G *a Ha Ia Ja K�+ Y hO�a L *a Ma Na Oa P�+ Y h$ ������LM���� 0 artsgen artsGen�� ��N�� N  ���� &0 masterstogenerate mastersToGenerate��  L ���� &0 masterstogenerate mastersToGenerateM $,047����BJNRU_gkor�� �� 0 pagegen pageGen�� >�� *�����+ Y hO�� *�����+ Y hO�� *���a �+ Y h% �������OP���� 0 	sportsgen 	sportsGen�� ��Q�� Q  ���� &0 masterstogenerate mastersToGenerate��  O ���� &0 masterstogenerate mastersToGenerateP S��������������������������� &.269@DHKRVZ]cgknx���������������������������
�� �� 0 pagegen pageGen����� *�����+ O*�����+ Y hO�� 2*�����+ O*a a a a �+ O*a a a a �+ Y hO�a  (*a a a a �+ O*a a a a  �+ Y hO�a ! L*a "a #a $a %�+ O*a &a 'a (a )�+ O*a *a +a ,a -�+ O*a .a /a 0a 1�+ Y hO�a 2 :*a 3a 4a 5a 6�+ O*a 7a 8a 9a :�+ O*a ;a <a =a >�+ Y hO�a ? *a @a Aa Ba C�+ Y hO�a D *a Ea Fa Ga H�+ Y hO�a I *a Ja Ka La M�+ Y hO�a N *a Oa Pa Qa R�+ Y h& ��R����ST��
�� .aevtoappnull  �   � ****R k     5UU  ^VV  kWW  uXX  ����  ��  ��  S  T 
 i������ r���� �����
�� elnteNvr
�� 
pScr
�� 
UIAc�� 0 	genprompt 	genPrompt
�� elnteInA
�� .miscactvnull��� ��� obj 
�� .aevtodocnull  �    alis�� 6� 	�*�,�,FUO*�k+ O� 	�*�,�,FUO� *j Ob   j 	U ascr  ��ޭ