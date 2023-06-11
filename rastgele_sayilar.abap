*&---------------------------------------------------------------------*
*& Report ZBK_RASTGELE_SAYI *&---------------------------------------------------------------------* *&
*&---------------------------------------------------------------------*
REPORT ZBK_RASTGELE_SAYI.

 DATA: gv_erim TYPE i,
       gv_rastgele TYPE i.

  START-OF-SELECTION.

  gv_erim = 500.

  CALL FUNCTION 'ZBK_RASTGELE_SAYILAR'
  EXPORTING
    erim0           = gv_erim

  IMPORTING
    RASTGELE0       = gv_rastgele.

  WRITE: 'Sayımız ', gv_rastgele.

 IF gv_rastgele >= 0 AND gv_rastgele < 75.

WRITE: / 'Sayımız 0 ile 75 arasındadır!'.

 ELSEIF gv_rastgele >= 75 AND gv_rastgele < 150.

WRITE: / 'Sayımız 75 ile 150 arasındadır!' .

ELSEIF gv_rastgele >= 150 AND gv_rastgele < 250.

 WRITE: / 'Sayımız 150 ile 250 arasındadır!' .

ELSEIF gv_rastgele >= 250 AND gv_rastgele < 350 .

WRITE: / 'Sayımız 250 ile 350 arasındadır!' .

ELSE.

WRITE:/ 'Sayımız 350den büyüktür!' .

 ENDIF. .
