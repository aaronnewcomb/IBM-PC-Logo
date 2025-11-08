10 REM IBM_XASCII_LEFT.BAS  80x25 text, left-aligned stripes
20 DEFINT A-Z
30 CLS : WIDTH 80
40 BL$ = CHR$(223)
50 REM ----- optional headings (left aligned) -----
60 LOCATE 5, 1: PRINT "                                     The"
65 PRINT " "
70 REM ----- editable stripe patterns: X = block, space = gap -----
80 DIM S$(8)
90  S$(1) = "                XXXXXXXX   XXXXXXXXXXX     XXXXXXX       XXXXXXX"
100 S$(2) = "                XXXXXXXX   XXXXXXXXXXXXX   XXXXXXXX     XXXXXXXX"
110 S$(3) = "                  XXXX       XXXX   XXXX     XXXXXXX   XXXXXXX"
120 S$(4) = "                  XXXX       XXXXXXXXX       XXXXXXXX XXXXXXXX"
130 S$(5) = "                  XXXX       XXXXXXXXX       XXXX XXXXXXX XXXX"
140 S$(6) = "                  XXXX       XXXX   XXXX     XXXX  XXXXX  XXXX "
150 S$(7) = "                XXXXXXXX   XXXXXXXXXXXXX   XXXXXX   XXX   XXXXXX"
160 S$(8) = "                XXXXXXXX   XXXXXXXXXXX     XXXXXX    X    XXXXXX"

170 REM ----- print the 8 stripes, left aligned -----
180 FOR I = 1 TO 8
190   R = 8 + (I - 1)
195 REM use 7 + (I-1)*2 for wider vertical spacing
200   T$ = S$(I)
210   GOSUB 400
215 REM convert X -> block
220   LOCATE R, 1: PRINT T$
230 NEXT I

240 LOCATE 18, 1: PRINT "                               Personal Computer"
250 REM LOCATE 24, 1: PRINT "Press any key..."
260 A$ = INPUT$(1): END

400 REM ----- convert Xs in T$ to block characters -----
410 OUT$ = ""
420 FOR J = 1 TO LEN(T$)
430   CH$ = MID$(T$, J, 1)
440   IF CH$ = "X" THEN OUT$ = OUT$ + BL$ ELSE OUT$ = OUT$ + CH$
450 NEXT J
460 T$ = OUT$
470 RETURN

