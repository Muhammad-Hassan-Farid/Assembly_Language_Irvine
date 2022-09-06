INCLUDE irvine32.inc

.data

str1 BYTE "I am hassan.",0


.code
main PROC

mov esi, 0
mov ecx, lengthof str1

loop1:
mov al,str1[esi]

inc esi
call writechar
call crlf



loop loop1

exit

main ENDp
END main