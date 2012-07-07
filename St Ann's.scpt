FasdUAS 1.101.10   ��   ��    k             l     ��  ��    U O	St Ann's, a script file to store handlers and variables used to generate pages     � 	 	 � 	 S t   A n n ' s ,   a   s c r i p t   f i l e   t o   s t o r e   h a n d l e r s   a n d   v a r i a b l e s   u s e d   t o   g e n e r a t e   p a g e s   
  
 l     ��������  ��  ��        l     ��  ��     	Written by			Rob Wells     �   . 	 W r i t t e n   b y 	 	 	 R o b   W e l l s      l     ��  ��    ! 	Created on			July 7th 2012     �   6 	 C r e a t e d   o n 	 	 	 J u l y   7 t h   2 0 1 2      l     ��  ��     	Last updated		     �    	 L a s t   u p d a t e d 	 	      l     ��������  ��  ��        l      ��   ��    � � Description: This is purely a reference for the handlers used in the four page-generation scripts. It�s completely inert by itself.       � ! !
   D e s c r i p t i o n :   T h i s   i s   p u r e l y   a   r e f e r e n c e   f o r   t h e   h a n d l e r s   u s e d   i n   t h e   f o u r   p a g e - g e n e r a t i o n   s c r i p t s .   I t  s   c o m p l e t e l y   i n e r t   b y   i t s e l f .     " # " l     ��������  ��  ��   #  $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( D > Global variables that are needed in handlers at some point --    ) � * * |   G l o b a l   v a r i a b l e s   t h a t   a r e   n e e d e d   i n   h a n d l e r s   a t   s o m e   p o i n t   - - '  + , + p       - - ������ 0 theday theDay��   ,  . / . p       0 0 ������ 0 themonth theMonth��   /  1 2 1 p       3 3 ������ 0 thedate theDate��   2  4 5 4 p       6 6 ������ 0 theyear theYear��   5  7 8 7 p       9 9 ������ 0 months_list  ��   8  : ; : l      < = > < p       ? ? ������ 0 fileslug fileSlug��   = > 8 The short code used at the start of the new file�s name    > � @ @ p   T h e   s h o r t   c o d e   u s e d   a t   t h e   s t a r t   o f   t h e   n e w   f i l e  s   n a m e ;  A B A l      C D E C p       F F ������ 0 filedate fileDate��   D 5 / The short date used to name the InDesign files    E � G G ^   T h e   s h o r t   d a t e   u s e d   t o   n a m e   t h e   I n D e s i g n   f i l e s B  H I H l      J K L J p       M M ������ 0 pagedate pageDate��   K 6 0 The full date used in the InDesign page�s folio    L � N N `   T h e   f u l l   d a t e   u s e d   i n   t h e   I n D e s i g n   p a g e  s   f o l i o I  O P O l      Q R S Q p       T T ������ $0 freshpagesfolder freshPagesFolder��   R . ( Where the newly created files are saved    S � U U P   W h e r e   t h e   n e w l y   c r e a t e d   f i l e s   a r e   s a v e d P  V W V l      X Y Z X p       [ [ ������  0 masterdocument masterDocument��   Y * $ The actual InDesign master document    Z � \ \ H   T h e   a c t u a l   I n D e s i g n   m a s t e r   d o c u m e n t W  ] ^ ] l      _ ` a _ p       b b ������ 0 
mastername 
masterName��   ` C = The name of the master page/spread to be applied in InDesign    a � c c z   T h e   n a m e   o f   t h e   m a s t e r   p a g e / s p r e a d   t o   b e   a p p l i e d   i n   I n D e s i g n ^  d e d l     ��������  ��  ��   e  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j   Handler definitions --    k � l l .   H a n d l e r   d e f i n i t i o n s   - - i  m n m l     ��������  ��  ��   n  o p o l     ��������  ��  ��   p  q r q l      �� s t��   s X R	Create the date used on the InDesign pages, and deal with some Saturday oddities	    t � u u � 	 C r e a t e   t h e   d a t e   u s e d   o n   t h e   I n D e s i g n   p a g e s ,   a n d   d e a l   w i t h   s o m e   S a t u r d a y   o d d i t i e s 	 r  v w v i      x y x I      �������� "0 create_pagedate create_pageDate��  ��   y k    � z z  { | { r     
 } ~ } J         � � � m      � � � � �  J a n u a r y �  � � � m     � � � � � 
 M a r c h �  � � � m     � � � � �  M a y �  � � � m     � � � � �  J u l y �  � � � m     � � � � �  A u g u s t �  ��� � m     � � � � �  O c t o b e r��   ~ o      ���� (0 thirtyonedaymonths ThirtyOneDayMonths |  � � � r     � � � J     � �  � � � m     � � � � � 
 A p r i l �  � � � m     � � � � �  J u n e �  � � � m     � � � � �  S e p t e m b e r �  ��� � m     � � � � �  N o v e m b e r��   � o      ���� "0 thirtydaymonths ThirtyDayMonths �  � � � l   ��������  ��  ��   �  ��� � Z   � � � ��� � >    � � � o    ���� 0 theday theDay � m     � � � � �  S a t u r d a y � l   5 � � � � k    5 � �  � � � r    3 � � � l   / ����� � b    / � � � b    + � � � b    ' � � � b    # � � � b     � � � b     � � � o    ���� 0 theday theDay � m     � � � � �    � o    ���� 0 themonth theMonth � m    " � � � � �    � o   # &���� 0 thedate theDate � m   ' * � � � � �    � o   + .���� 0 theyear theYear��  ��   � o      ���� 0 pagedate pageDate �  ��� � l  4 4��������  ��  ��  ��   � + % Does the page date for every weekday    � � � � J   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   w e e k d a y �  � � � F   8 U � � � F   8 K � � � =  8 = � � � o   8 9���� 0 theday theDay � m   9 < � � � � �  S a t u r d a y � =  @ G � � � o   @ C���� 0 thedate theDate � m   C F � � � � �  3 0 � E  N Q � � � o   N O���� "0 thirtydaymonths ThirtyDayMonths � o   O P���� 0 themonth theMonth �  � � � l  X � � � � � k   X � � �  � � � Y   X � ��� � ��� � l  h � � � � � Z  h � � ����� � =  h r � � � n   h p � � � 4   k p�� �
�� 
cobj � o   n o���� 0 i   � o   h k���� 0 months_list   � o   p q���� 0 themonth theMonth � r   u � � � � l  u  ����� � n   u  � � � 4   x �� �
�� 
cobj � l  { ~ ����� � [   { ~ � � � o   { |���� 0 i   � m   | }���� ��  ��   � o   u x���� 0 months_list  ��  ��   � o      ���� 0 secondmonth secondMonth��  ��   � V P This repeat block here grabs the name of the next month to use in the page date    � �   �   T h i s   r e p e a t   b l o c k   h e r e   g r a b s   t h e   n a m e   o f   t h e   n e x t   m o n t h   t o   u s e   i n   t h e   p a g e   d a t e�� 0 i   � m   [ \����  � I  \ c����
�� .corecnte****       **** o   \ _���� 0 months_list  ��  ��   �  l  � � r   � � l  � �	����	 b   � �

 b   � � b   � � b   � � b   � � m   � � �   S a t u r d a y / S u n d a y   o   � ����� 0 themonth theMonth m   � � �    3 0 - o   � ����� 0 secondmonth secondMonth m   � � �    1   o   � ����� 0 theyear theYear��  ��   o      ���� 0 pagedate pageDate P J This will produce something such as "Saturday/Sunday April 30-May 1 2012"    � �   T h i s   w i l l   p r o d u c e   s o m e t h i n g   s u c h   a s   " S a t u r d a y / S u n d a y   A p r i l   3 0 - M a y   1   2 0 1 2 " �� l  � ���������  ��  ��  ��   � I C Deals with Saturdays at the end of 30-day months (uses list above)    � � �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 0 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e ) �  F   � �  F   � �!"! =  � �#$# o   � ����� 0 theday theDay$ m   � �%% �&&  S a t u r d a y" =  � �'(' o   � ����� 0 thedate theDate( m   � �)) �**  3 1  E  � �+,+ o   � ����� (0 thirtyonedaymonths ThirtyOneDayMonths, o   � ����� 0 themonth theMonth -.- l  �/01/ k   �22 343 Y   � �5��67��5 Z  � �89����8 =  � �:;: n   � �<=< 4   � ���>
�� 
cobj> o   � ����� 0 i  = o   � ����� 0 months_list  ; o   � ����� 0 themonth theMonth9 r   � �?@? l  � �A����A n   � �BCB 4   � ��D
� 
cobjD l  � �E�~�}E [   � �FGF o   � ��|�| 0 i  G m   � ��{�{ �~  �}  C o   � ��z�z 0 months_list  ��  ��  @ o      �y�y 0 secondmonth secondMonth��  ��  �� 0 i  6 m   � ��x�x 7 I  � ��wH�v
�w .corecnte****       ****H o   � ��u�u 0 months_list  �v  ��  4 IJI r   �KLK l  �M�t�sM b   �NON b   �	PQP b   �RSR b   �TUT b   � �VWV m   � �XX �YY   S a t u r d a y / S u n d a y  W o   � ��r�r 0 themonth theMonthU m   �ZZ �[[    3 1 -S o  �q�q 0 secondmonth secondMonthQ m  \\ �]]    1  O o  	�p�p 0 theyear theYear�t  �s  L o      �o�o 0 pagedate pageDateJ ^�n^ l �m�l�k�m  �l  �k  �n  0 I C Deals with Saturdays at the end of 31-day months (uses list above)   1 �__ �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   3 1 - d a y   m o n t h s   ( u s e s   l i s t   a b o v e ). `a` F  5bcb F  )ded = fgf o  �j�j 0 theday theDayg m  hh �ii  S a t u r d a ye ? %jkj o  !�i�i 0 thedate theDatek m  !$ll �mm  2 7c = ,1non o  ,-�h�h 0 themonth theMontho m  -0pp �qq  F e b r u a r ya rsr l 8Mtuvt k  8Mww xyx r  8Kz{z l 8G|�g�f| b  8G}~} b  8C� b  8?��� m  8;�� ��� 2 S a t u r d a y / S u n d a y   F e b r u a r y  � o  ;>�e�e 0 thedate theDate� m  ?B�� ���  - M a r c h   1  ~ o  CF�d�d 0 theyear theYear�g  �f  { o      �c�c 0 pagedate pageDatey ��b� l LL�a�`�_�a  �`  �_  �b  u { u Deals with Saturdays at the end of February. Fun fact: it�s quite blunt but won�t produce the wrong date until 2032.   v ��� �   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   F e b r u a r y .   F u n   f a c t :   i t  s   q u i t e   b l u n t   b u t   w o n  t   p r o d u c e   t h e   w r o n g   d a t e   u n t i l   2 0 3 2 .s ��� F  Po��� F  Pc��� = PU��� o  PQ�^�^ 0 theday theDay� m  QT�� ���  S a t u r d a y� = X_��� o  X[�]�] 0 thedate theDate� m  [^�� ���  3 1� = fk��� o  fg�\�\ 0 themonth theMonth� m  gj�� ���  D e c e m b e r� ��� l r����� k  r��� ��� r  r���� l r���[�Z� b  r���� b  r}��� b  ry��� m  ru�� ��� L S a t u r d a y / S u n d a y   D e c e m b e r   3 1 - J a n u a r y   1  � o  ux�Y�Y 0 theyear theYear� m  y|�� ���  -� l }���X�W� [  }���� o  }��V�V 0 theyear theYear� m  ���U�U �X  �W  �[  �Z  � o      �T�T 0 pagedate pageDate� ��S� l ���R�Q�P�R  �Q  �P  �S  � 2 , Deals with Saturdays at the end of December   � ��� X   D e a l s   w i t h   S a t u r d a y s   a t   t h e   e n d   o f   D e c e m b e r� ��� = ����� o  ���O�O 0 theday theDay� m  ���� ���  S a t u r d a y� ��N� l ������ k  ���� ��� r  ����� l ����M�L� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���   S a t u r d a y / S u n d a y  � o  ���K�K 0 themonth theMonth� m  ���� ���   � o  ���J�J 0 thedate theDate� m  ���� ���  -� l ����I�H� [  ����� o  ���G�G 0 thedate theDate� m  ���F�F �I  �H  � m  ���� ���   � o  ���E�E 0 theyear theYear�M  �L  � o      �D�D 0 pagedate pageDate� ��C� l ���B�A�@�B  �A  �@  �C  � 3 - Does the page date for every normal Saturday   � ��� Z   D o e s   t h e   p a g e   d a t e   f o r   e v e r y   n o r m a l   S a t u r d a y�N  ��  ��   w ��� l     �?�>�=�?  �>  �=  � ��� l     �<�;�:�<  �;  �:  � ��� l      �9���9  � @ :	Create the short date to name the created InDesign files	   � ��� t 	 C r e a t e   t h e   s h o r t   d a t e   t o   n a m e   t h e   c r e a t e d   I n D e s i g n   f i l e s 	� ��� i    ��� I      �8�7�6�8 "0 create_filedate create_fileDate�7  �6  � k     Q�� ��� Z     ���5�� A    ��� c     ��� o     �4�4 0 thedate theDate� m    �3
�3 
long� m    �� ���  1 0� l   ���� r    ��� l   ��2�1� b    � � m    	 �  0  o   	 
�0�0 0 thedate theDate�2  �1  � o      �/�/ 0 numdate numDate� L F If the date is 1-10 this adds an initial zero to use in the file name   � � �   I f   t h e   d a t e   i s   1 - 1 0   t h i s   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�5  � r     o    �.�. 0 thedate theDate o      �-�- 0 numdate numDate�  l   �,�+�*�,  �+  �*   	 Y    7
�)�(
 l  " 2 Z  " 2�'�& =  " ( n   " & 4   # &�%
�% 
cobj o   $ %�$�$ 0 i   o   " #�#�# 0 months_list   o   & '�"�" 0 themonth theMonth r   + . o   + ,�!�! 0 i   o      � �  0 raw_nummonth raw_numMonth�'  �&   d ^ This gets the month number and, if less than 10, adds an initial zero to use in the file name    � �   T h i s   g e t s   t h e   m o n t h   n u m b e r   a n d ,   i f   l e s s   t h a n   1 0 ,   a d d s   a n   i n i t i a l   z e r o   t o   u s e   i n   t h e   f i l e   n a m e�) 0 i   m    ��  I   ��
� .corecnte****       **** o    �� 0 months_list  �  �(  	  Z   8 I� A  8 ; !  o   8 9�� 0 raw_nummonth raw_numMonth! m   9 :�� 
 r   > C"#" l  > A$��$ b   > A%&% m   > ?'' �((  0& o   ? @�� 0 raw_nummonth raw_numMonth�  �  # o      �� 0 nummonth numMonth�   r   F I)*) o   F G�� 0 raw_nummonth raw_numMonth* o      �� 0 nummonth numMonth +,+ l  J J����  �  �  , -�- l  J Q./0. r   J Q121 l  J O3��3 b   J O454 b   J M676 o   J K�� 0 numdate numDate7 o   K L�� 0 nummonth numMonth5 o   M N�
�
 0 theyear theYear�  �  2 o      �	�	 0 filedate fileDate/ C = This combines the date, month and year to create a file name   0 �88 z   T h i s   c o m b i n e s   t h e   d a t e ,   m o n t h   a n d   y e a r   t o   c r e a t e   a   f i l e   n a m e�  � 9:9 l     ����  �  �  : ;<; l     ����  �  �  < =>= l      �?@�  ? ` Z	Single page: Apply a master, change the date and override everything on the "Work" layer	   @ �AA � 	 S i n g l e   p a g e :   A p p l y   a   m a s t e r ,   c h a n g e   t h e   d a t e   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	> BCB i    DED I      �� ��� >0 applymaster_changedate_single applyMaster_changeDate_single�   ��  E O     cFGF O    bHIH k   
 aJJ KLK r   
 MNM 4   
 ��O
�� 
msprO o    ���� 0 
mastername 
masterNameN n      PQP 1    ��
�� 
pmasQ 4    ��R
�� 
pageR m    ���� L STS I   &��UV
�� .InESovrrobj         obj U n    WXW 4    ��Y
�� 
txtfY m    ZZ �[[  E d i t i o n   d a t eX 4    ��\
�� 
mspr\ o    ���� 0 
mastername 
masterNameV ��]��
�� 
dPge] 4    "��^
�� 
page^ m     !���� ��  T _`_ r   ' 2aba o   ' (���� 0 pagedate pageDateb l     c����c n      ded 1   / 1��
�� 
pcnte n   ( /fgf 4   , /��h
�� 
txtfh m   - .ii �jj  E d i t i o n   d a t eg 4   ( ,��k
�� 
pagek m   * +���� ��  ��  ` l��l Q   3 amn��m I  6 X��op
�� .InESovrrobj         obj o l  6 Oq����q 6  6 Orsr n   6 >tut 2   < >��
�� 
cobju n   6 <vwv 1   : <��
�� 
mpgsw 4   6 :��x
�� 
pagex m   8 9���� s =  ? Nyzy n  @ H{|{ 1   D H��
�� 
pnam| 1   @ D��
�� 
pilrz m   I M}} �~~  W o r k��  ��  p ����
�� 
dPge 4   P T���
�� 
page� m   R S���� ��  n R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  I l   ������ 1    ��
�� 
pacd��  ��  G m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  C ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � } w	Spreads: Create a new spread from a master, change the date on both pages and override everything on the "Work" layer	   � ��� � 	 S p r e a d s :   C r e a t e   a   n e w   s p r e a d   f r o m   a   m a s t e r ,   c h a n g e   t h e   d a t e   o n   b o t h   p a g e s   a n d   o v e r r i d e   e v e r y t h i n g   o n   t h e   " W o r k "   l a y e r 	� ��� i    ��� I      �������� >0 applymaster_changedate_spread applyMaster_changeDate_spread��  ��  � O     ���� O    ���� k   
 ��� ��� I  
 �����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
sprd� �����
�� 
prdt� K    �� �����
�� 
pmas� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName��  ��  � ��� I   *����
�� .InESovrrobj         obj � n    !��� 4    !���
�� 
txtf� m     �� ���  L - E d i t i o n   d a t e� 4    ���
�� 
mspr� o    ���� 0 
mastername 
masterName� �����
�� 
dPge� 4   " &���
�� 
page� m   $ %���� ��  � ��� I  + ;����
�� .InESovrrobj         obj � n   + 2��� 4   / 2���
�� 
txtf� m   0 1�� ���  R - E d i t i o n   d a t e� 4   + /���
�� 
mspr� o   - .���� 0 
mastername 
masterName� �����
�� 
dPge� 4   3 7���
�� 
page� m   5 6���� ��  � ��� r   < M��� o   < ?���� 0 pagedate pageDate� l     ������ n      ��� 1   H L��
�� 
pcnt� n   ? H��� 4   C H���
�� 
txtf� m   D G�� ���  L - E d i t i o n   d a t e� 4   ? C���
�� 
page� m   A B���� ��  ��  � ��� r   N _��� o   N Q���� 0 pagedate pageDate� l     ������ n      ��� 1   Z ^��
�� 
pcnt� n   Q Z��� 4   U Z���
�� 
txtf� m   V Y�� ���  R - E d i t i o n   d a t e� 4   Q U���
�� 
page� m   S T���� ��  ��  � ���� Q   ` ������ k   c ��� ��� I  c �����
�� .InESovrrobj         obj � l  c ������� 6  c ���� n   c o��� 2   k o��
�� 
cobj� n   c k��� 1   g k��
�� 
mpgs� 4   c g���
�� 
page� m   e f���� � =  r ���� n  s {��� 1   w {��
�� 
pnam� 1   s w��
�� 
pilr� m   | ��� ���  W o r k��  ��  � �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  � ���� I  � �����
�� .InESovrrobj         obj � l  � ������� 6  � ���� n   � ���� 2   � ���
�� 
cobj� n   � ���� 1   � ���
�� 
mpgs� 4   � ����
�� 
page� m   � ����� � =  � ���� n  � ���� 1   � ���
�� 
pnam� 1   � ���
�� 
pilr� m   � ��� ���  W o r k��  ��  � �����
�� 
dPge� 4   � ����
�� 
page� m   � ����� ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � l   ������ 1    ��
�� 
pacd��  ��  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ����~��  �  �~  � � � l     �}�|�{�}  �|  �{     l      �z�z   � }	Single page: Change the page number to the one specified in the handler call - e.g. changePageNumber_single("3") for page 3	    � � 	 S i n g l e   p a g e :   C h a n g e   t h e   p a g e   n u m b e r   t o   t h e   o n e   s p e c i f i e d   i n   t h e   h a n d l e r   c a l l   -   e . g .   c h a n g e P a g e N u m b e r _ s i n g l e ( " 3 " )   f o r   p a g e   3 	  i    	 I      �y
�x�y 20 changepagenumber_single changePageNumber_single
 �w o      �v�v 0 
pagenumber 
pageNumber�w  �x  	 O     ( O    ' k   
 &  I  
 �u
�u .InESovrrobj         obj  n   
  4    �t
�t 
txtf m     �  P a g e   n u m b e r 4   
 �s
�s 
mspr o    �r�r 0 
mastername 
masterName �q�p
�q 
dPge 4    �o
�o 
page m    �n�n �p   �m r    & o    �l�l 0 
pagenumber 
pageNumber l      �k�j  n      !"! 1   # %�i
�i 
pcnt" n    ##$# 4     #�h%
�h 
txtf% m   ! "&& �''  P a g e   n u m b e r$ 4     �g(
�g 
page( m    �f�f �k  �j  �m   l   )�e�d) 1    �c
�c 
pacd�e  �d   m     **�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   +,+ l     �b�a�`�b  �a  �`  , -.- l     �_�^�]�_  �^  �]  . /0/ l      �\12�\  1 � �	Spreads: Change the page number on both pages. The handler call asks for the left-hand page�s number - e.g. changePageNumber_spread("8") for pages 8 and 9	   2 �338 	 S p r e a d s :   C h a n g e   t h e   p a g e   n u m b e r   o n   b o t h   p a g e s .   T h e   h a n d l e r   c a l l   a s k s   f o r   t h e   l e f t - h a n d   p a g e  s   n u m b e r   -   e . g .   c h a n g e P a g e N u m b e r _ s p r e a d ( " 8 " )   f o r   p a g e s   8   a n d   9 	0 454 i    676 I      �[8�Z�[ 20 changepagenumber_spread changePageNumber_spread8 9�Y9 o      �X�X  0 leftpagenumber leftPageNumber�Y  �Z  7 O     I:;: O    H<=< k   
 G>> ?@? I  
 �WAB
�W .InESovrrobj         obj A n   
 CDC 4    �VE
�V 
txtfE m    FF �GG  L - P a g e   n u m b e rD 4   
 �UH
�U 
msprH o    �T�T 0 
mastername 
masterNameB �SI�R
�S 
dPgeI 4    �QJ
�Q 
pageJ m    �P�P �R  @ KLK I   +�OMN
�O .InESovrrobj         obj M n    "OPO 4    "�NQ
�N 
txtfQ m     !RR �SS  R - P a g e   n u m b e rP 4    �MT
�M 
msprT o    �L�L 0 
mastername 
masterNameN �KU�J
�K 
dPgeU 4   # '�IV
�I 
pageV m   % &�H�H �J  L WXW r   , 7YZY o   , -�G�G  0 leftpagenumber leftPageNumberZ l     [�F�E[ n      \]\ 1   4 6�D
�D 
pcnt] n   - 4^_^ 4   1 4�C`
�C 
txtf` m   2 3aa �bb  L - P a g e   n u m b e r_ 4   - 1�Bc
�B 
pagec m   / 0�A�A �F  �E  X d�@d r   8 Gefe l  8 =g�?�>g c   8 =hih l  8 ;j�=�<j [   8 ;klk o   8 9�;�;  0 leftpagenumber leftPageNumberl m   9 :�:�: �=  �<  i m   ; <�9
�9 
TEXT�?  �>  f l     m�8�7m n      non 1   D F�6
�6 
pcnto n   = Dpqp 4   A D�5r
�5 
txtfr m   B Css �tt  R - P a g e   n u m b e rq 4   = A�4u
�4 
pageu m   ? @�3�3 �8  �7  �@  = l   v�2�1v 1    �0
�0 
pacd�2  �1  ; m     ww�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  5 xyx l     �/�.�-�/  �.  �-  y z{z l      �,|}�,  | � �	Spreads and left-hand single pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   } �~~� 	 S p r e a d s   a n d   l e f t - h a n d   s i n g l e   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	{ � i    ��� I      �+�*�)�+ 0 clean_save_l clean_save_L�*  �)  � O     >��� O    =��� k   
 <�� ��� r   
 ��� m   
 �(
�( boovtrue� n      ��� 1    �'
�' 
plck� 4    �&�
�& 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    �%
�% boovtrue� n      ��� 1    �$
�$ 
plck� 4    �#�
�# 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     �"
�" 
pacl� ��� r   " *��� J   " &�� ��� m   " #�� @.      � ��!� m   # $�� @&      �!  � l     �� �� 1   & )�
� 
zero�   �  � ��� I  + <���
� .CoResavedocu        obj �  � ���
� 
kfil� b   - 8��� b   - 4��� b   - 2��� b   - 0��� o   - .�� $0 freshpagesfolder freshPagesFolder� o   . /�� 0 fileslug fileSlug� m   0 1�� ���  _� o   2 3�� 0 filedate fileDate� m   4 7�� ��� 
 . i n d d�  �  � l   ���� 1    �
� 
pacd�  �  � m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  � � �	Right-hand pages: Locks the "Date and page number" layer, selects the "Work" layer, sets the correct ruler zero point and saves with the previously created fileDate and specified fileSlug	   � ���z 	 R i g h t - h a n d   p a g e s :   L o c k s   t h e   " D a t e   a n d   p a g e   n u m b e r "   l a y e r ,   s e l e c t s   t h e   " W o r k "   l a y e r ,   s e t s   t h e   c o r r e c t   r u l e r   z e r o   p o i n t   a n d   s a v e s   w i t h   t h e   p r e v i o u s l y   c r e a t e d   f i l e D a t e   a n d   s p e c i f i e d   f i l e S l u g 	� ��� i    ��� I      ��
�	� 0 clean_save_r clean_save_R�
  �	  � O     >��� O    =��� k   
 <�� ��� r   
 ��� m   
 �
� boovtrue� n      ��� 1    �
� 
plck� 4    ��
� 
layr� m    �� ��� ( D a t e   a n d   p a g e   n u m b e r� ��� r    ��� m    �
� boovtrue� n      ��� 1    �
� 
plck� 4    ��
� 
layr� m    �� ���  F u r n i t u r e� ��� r    !��� m    �� ���  W o r k� 1     �
� 
pacl� ��� r   " *��� J   " &�� ��� m   " #�� @"      � ��� m   # $�� @&      �  � l     �� ��� 1   & )��
�� 
zero�   ��  � ���� I  + <�����
�� .CoResavedocu        obj ��  � �����
�� 
kfil� b   - 8��� b   - 4��� b   - 2��� b   - 0��� o   - .���� $0 freshpagesfolder freshPagesFolder� o   . /���� 0 fileslug fileSlug� m   0 1�� ���  _� o   2 3���� 0 filedate fileDate� m   4 7�� ��� 
 . i n d d��  ��  � l    ����  1    ��
�� 
pacd��  ��  � m     �                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  �  l     ��������  ��  ��    l     ��������  ��  ��    l      ��	��   � �	Changes the legal date on the left-hand page of a spread - it�s designed for pages 12-13 (TV), which have the legal date on weekdays.	   	 �

 	 C h a n g e s   t h e   l e g a l   d a t e   o n   t h e   l e f t - h a n d   p a g e   o f   a   s p r e a d   -   i t  s   d e s i g n e d   f o r   p a g e s   1 2 - 1 3   ( T V ) ,   w h i c h   h a v e   t h e   l e g a l   d a t e   o n   w e e k d a y s . 	  i     # I      �������� (0 changelegaldate_12 changeLegalDate_12��  ��   O     ( O    ' k   
 &  I  
 ��
�� .InESovrrobj         obj  n   
  4    ��
�� 
txtf m     �  L e g a l   d a t e 4   
 ��
�� 
mspr o    ���� 0 
mastername 
masterName ����
�� 
dPge 4    ��
�� 
page m    ���� ��    ��  r    &!"! o    ���� 0 pagedate pageDate" l     #����# n      $%$ 1   # %��
�� 
pcnt% n    #&'& 4     #��(
�� 
txtf( m   ! ")) �**  L e g a l   d a t e' 4     ��+
�� 
page+ m    ���� ��  ��  ��   l   ,����, 1    ��
�� 
pacd��  ��   m     --�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��   ./. l     ��������  ��  ��  / 010 l      ��23��  2 � �	Changes the legal date on a left-hand single page - it�s designed for the Red List page (20), which has the legal date at weekends.	   3 �44
 	 C h a n g e s   t h e   l e g a l   d a t e   o n   a   l e f t - h a n d   s i n g l e   p a g e   -   i t  s   d e s i g n e d   f o r   t h e   R e d   L i s t   p a g e   ( 2 0 ) ,   w h i c h   h a s   t h e   l e g a l   d a t e   a t   w e e k e n d s . 	1 565 i   $ '787 I      �������� (0 changelegaldate_20 changeLegalDate_20��  ��  8 O     (9:9 O    ';<; k   
 &== >?> I  
 ��@A
�� .InESovrrobj         obj @ n   
 BCB 4    ��D
�� 
txtfD m    EE �FF  L e g a l   d a t eC 4   
 ��G
�� 
msprG o    ���� 0 
mastername 
masterNameA ��H��
�� 
dPgeH 4    ��I
�� 
pageI m    ���� ��  ? J��J r    &KLK o    ���� 0 pagedate pageDateL l     M����M n      NON 1   # %��
�� 
pcntO n    #PQP 4     #��R
�� 
txtfR m   ! "SS �TT  L e g a l   d a t eQ 4     ��U
�� 
pageU m    ���� ��  ��  ��  < l   V����V 1    ��
�� 
pacd��  ��  : m     WW�                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  6 XYX l     ��������  ��  ��  Y Z[Z l     ��������  ��  ��  [ \]\ l      ��^_��  ^ t n	Creates an embargoed stories text frame to the left-hand side of the working page (1 if single, 2 if spread)	   _ �`` � 	 C r e a t e s   a n   e m b a r g o e d   s t o r i e s   t e x t   f r a m e   t o   t h e   l e f t - h a n d   s i d e   o f   t h e   w o r k i n g   p a g e   ( 1   i f   s i n g l e ,   2   i f   s p r e a d ) 	] a��a i   ( +bcb I      ��������  0 drawembargobox drawEmbargoBox��  ��  c O     �ded O    �fgf Z    �hij��h =   klk l   m����m I   ��n��
�� .corecnte****       ****n 2   ��
�� 
page��  ��  ��  l m    ���� i k    Koo pqp O    4rsr r    3tut I   1����v
�� .corecrel****      � null��  v ��wx
�� 
koclw m     !��
�� 
txtfx ��y��
�� 
prdty K   " -zz ��{|
�� 
gbnd{ J   # )}} ~~ m   # $�� @,       ��� m   $ %�� �b�     � ��� m   % &�� @\�     � ���� m   & '�� �I      ��  | �����
�� 
pcnt� m   * +�� ��� " E m b a r g o e d   s t o r i e s��  ��  u o      ���� 0 ebox eBoxs 4    ���
�� 
page� m    ���� q ��� l  5 C���� r   5 C��� 4   5 =���
�� 
ObSt� m   9 <�� ��� " N e w s   N I B   b o x   t i n t� l     ������ n      ��� 1   > B��
�� 
aobs� o   = >���� 0 ebox eBox��  ��  � K E This causes an error if you try to set it when the frame is created.   � ��� �   T h i s   c a u s e s   a n   e r r o r   i f   y o u   t r y   t o   s e t   i t   w h e n   t h e   f r a m e   i s   c r e a t e d .� ���� r   D K��� m   D E��
�� boovtrue� n      ��� 1   F J��
�� 
plck� o   E F���� 0 ebox eBox��  j ��� =  N W��� l  N U������ I  N U�����
�� .corecnte****       ****� 2  N Q��
�� 
page��  ��  ��  � m   U V���� � ���� k   Z ��� ��� O   Z y��� r   a x��� I  a v�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   c d��
�� 
txtf� �����
�� 
prdt� K   e r�� ����
�� 
gbnd� J   f l�� ��� m   f g�� @,      � ��� m   g h�� �b�     � ��� m   h i�� @\�     � ���� m   i j�� �I      ��  � �����
�� 
pcnt� m   m p�� ��� " E m b a r g o e d   s t o r i e s��  ��  � o      ���� 0 ebox eBox� 4   Z ^���
�� 
page� m   \ ]���� � ��� r   z ���� 4   z ���
� 
ObSt� m   ~ ��� ��� " N e w s   N I B   b o x   t i n t� l     ��~�}� n      ��� 1   � ��|
�| 
aobs� o   � ��{�{ 0 ebox eBox�~  �}  � ��z� r   � ���� m   � ��y
�y boovtrue� n      ��� 1   � ��x
�x 
plck� o   � ��w�w 0 ebox eBox�z  ��  ��  g l   ��v�u� 4   �t�
�t 
docu� m    �s�s �v  �u  e m     ���                                                                                  InDn  alis    �  SSD                        �@��H+   ~Adobe InDesign CS5.5.app                                        ��ʴ �        ����  	                Adobe InDesign CS5.5    �@��      ʳ��     ~   [  @SSD:Applications: Adobe InDesign CS5.5: Adobe InDesign CS5.5.app  2  A d o b e   I n D e s i g n   C S 5 . 5 . a p p    S S D  :Applications/Adobe InDesign CS5.5/Adobe InDesign CS5.5.app  / ��  ��       �r�������������r  � �q�p�o�n�m�l�k�j�i�h�g�q "0 create_pagedate create_pageDate�p "0 create_filedate create_fileDate�o >0 applymaster_changedate_single applyMaster_changeDate_single�n >0 applymaster_changedate_spread applyMaster_changeDate_spread�m 20 changepagenumber_single changePageNumber_single�l 20 changepagenumber_spread changePageNumber_spread�k 0 clean_save_l clean_save_L�j 0 clean_save_r clean_save_R�i (0 changelegaldate_12 changeLegalDate_12�h (0 changelegaldate_20 changeLegalDate_20�g  0 drawembargobox drawEmbargoBox� �f y�e�d���c�f "0 create_pagedate create_pageDate�e  �d  � �b�a�`�_�b (0 thirtyonedaymonths ThirtyOneDayMonths�a "0 thirtydaymonths ThirtyDayMonths�` 0 i  �_ 0 secondmonth secondMonth� 2 � � � � � ��^ � � � ��]�\ � ��[ ��Z ��Y�X � ��W�V�U�T%)XZ\hlp�������������^ �] �\ 0 theday theDay�[ 0 themonth theMonth�Z 0 thedate theDate�Y 0 theyear theYear�X 0 pagedate pageDate
�W 
bool�V 0 months_list  
�U .corecnte****       ****
�T 
cobj�c��������vE�O�����vE�O��  ��%�%a %_ %a %_ %E` OPY��a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa �%a %�%a %_ %E` OPY�a  	 _ a  a &	 	��a & Q 1k_ j kh _ a �/�  _ a �k/E�Y h[OY��Oa  �%a !%�%a "%_ %E` OPY ��a # 	 _ a $a &	 �a % a & a &_ %a '%_ %E` OPY o�a ( 	 _ a ) a &	 �a * a & a +_ %a ,%_ k%E` OPY 3�a -  *a .�%a /%_ %a 0%_ k%a 1%_ %E` OPY h� �S��R�Q���P�S "0 create_filedate create_fileDate�R  �Q  � �O�N�M�L�O 0 numdate numDate�N 0 i  �M 0 raw_nummonth raw_numMonth�L 0 nummonth numMonth� �K�J��I�H�G�F�E'�D�C�K 0 thedate theDate
�J 
long�I 0 months_list  
�H .corecnte****       ****
�G 
cobj�F 0 themonth theMonth�E 
�D 0 theyear theYear�C 0 filedate fileDate�P R��&� 
��%E�Y �E�O "k�j kh ��/�  �E�Y h[OY��O�� 
�%E�Y �E�O��%�%E�� �BE�A�@���?�B >0 applymaster_changedate_single applyMaster_changeDate_single�A  �@  �  � ��>�=�<�;�:�9Z�8�7�6i�5�4�3��2�1}�0�/
�> 
pacd
�= 
mspr�< 0 
mastername 
masterName
�; 
page
�: 
pmas
�9 
txtf
�8 
dPge
�7 .InESovrrobj         obj �6 0 pagedate pageDate
�5 
pcnt
�4 
mpgs
�3 
cobj�  
�2 
pilr
�1 
pnam�0  �/  �? d� `*�, Y*��/*�k/�,FO*��/��/�*�k/l 	O�*�k/��/�,FO '*�k/�,�-�[a ,a ,\Za 81�*�k/l 	W X  hUU� �.��-�,���+�. >0 applymaster_changedate_spread applyMaster_changeDate_spread�-  �,  �  � ��*�)�(�'�&�%�$�#�"�!�� ����������������
�* 
pacd
�) 
kocl
�( 
sprd
�' 
prdt
�& 
pmas
�% 
mspr�$ 0 
mastername 
masterName�# 
�" .corecrel****      � null
�! 
txtf
�  
dPge
� 
page
� .InESovrrobj         obj � 0 pagedate pageDate
� 
pcnt
� 
mpgs
� 
cobj
� 
pilr
� 
pnam�  �  �+ �� �*�, �*����*��/l� 	O*��/��/�*�l/l O*��/��/�*�m/l O_ *�l/�a /a ,FO_ *�m/�a /a ,FO V*�l/a ,a -a [a ,a ,\Za 81�*�l/l O*�m/a ,a -a [a ,a ,\Za 81�*�m/l W X  hUU� �	������ 20 changepagenumber_single changePageNumber_single� ��� �  �� 0 
pagenumber 
pageNumber�  � �� 0 
pagenumber 
pageNumber� *�����
�	�&�
� 
pacd
� 
mspr� 0 
mastername 
masterName
� 
txtf
�
 
dPge
�	 
page
� .InESovrrobj         obj 
� 
pcnt� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU� �7������ 20 changepagenumber_spread changePageNumber_spread� ��� �  ��  0 leftpagenumber leftPageNumber�  � � �   0 leftpagenumber leftPageNumber� w��������F������Ra����s
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj 
�� 
pcnt
�� 
TEXT� J� F*�, ?*��/��/�*�l/l O*��/��/�*�m/l O�*�l/��/�,FO�k�&*�m/��/�,FUU� ������������� 0 clean_save_l clean_save_L��  ��  �  � ����������������������������
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
kfil�� $0 freshpagesfolder freshPagesFolder�� 0 fileslug fileSlug�� 0 filedate fileDate
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU� ������������� 0 clean_save_r clean_save_R��  ��  �  � ���������������������������
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
kfil�� $0 freshpagesfolder freshPagesFolder�� 0 fileslug fileSlug�� 0 filedate fileDate
�� .CoResavedocu        obj �� ?� ;*�, 4e*��/�,FOe*��/�,FO�*�,FO��lv*�,FO*���%�%�%a %l UU� ������������ (0 changelegaldate_12 changeLegalDate_12��  ��  �  � -����������������)��
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� )� %*�, *��/��/�*�l/l O�*�l/��/�,FUU� ��8���������� (0 changelegaldate_20 changeLegalDate_20��  ��  �  � W��������E��������S��
�� 
pacd
�� 
mspr�� 0 
mastername 
masterName
�� 
txtf
�� 
dPge
�� 
page
�� .InESovrrobj         obj �� 0 pagedate pageDate
�� 
pcnt�� )� %*�, *��/��/�*�k/l O�*�k/��/�,FUU� ��c����������  0 drawembargobox drawEmbargoBox��  ��  � ���� 0 ebox eBox� �����������������������������������
�� 
docu
�� 
page
�� .corecnte****       ****
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
plck�� �� �*�k/ �*�-j k  9*�k/ *���������v���� E�UO*a a /�a ,FOe�a ,FY H*�-j m  ;*�l/ *���������v�a �� E�UO*a a /�a ,FOe�a ,FY hUUascr  ��ޭ