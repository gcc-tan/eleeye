@ECHO OFF
RC ..\RES\CCHESS.RC
CL /DNDEBUG /O2 /W3 /LD /DCCHESS_DLL /Fe..\BIN\CCHESS.DLL ..\ELEEYE\PREGEN.CPP ..\ELEEYE\POSITION.CPP ..\ELEEYE\GENMOVES.CPP CCHESS.CPP ..\RES\CCHESS.RES
CL /DNDEBUG /O2 /W3 /Fe..\BIN\ADDECCO.EXE ..\ELEEYE\PREGEN.CPP ..\ELEEYE\POSITION.CPP ..\ELEEYE\GENMOVES.CPP ..\CCHESS\CCHESS.CPP ..\CCHESS\PGNFILE.CPP ADDECCO.CPP USER32.LIB SHLWAPI.LIB SHELL32.LIB
DEL ..\RES\CCHESS.RES
DEL *.OBJ
DEL ..\BIN\CCHESS.LIB
DEL ..\BIN\CCHESS.EXP
