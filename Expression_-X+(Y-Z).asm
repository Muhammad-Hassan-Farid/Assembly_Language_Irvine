INCLUDE irvine32.inc

.data

XVAL DWORD ?
YVAL DWORD ?
ZVAL DWORD ?
RVAL DWORD ?

.code
main PROC

call Readint
mov XVAL,eax
call Readint
mov YVAL,eax
call Readint
mov  ZVAL,eax

neg XVAL

mov eax,YVAL
sub eax,ZVAL
add eax,XVAL
mov RVAL,eax

call writeint

INVOKE ExitProcess,0

main ENDp
END main