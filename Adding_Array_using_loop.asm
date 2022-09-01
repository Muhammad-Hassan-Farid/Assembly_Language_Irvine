INCLUDE irvine32.inc

.data

arr1 DWORD 10,20,30,40,50

.code
main PROC

mov esi, offset arr1

mov ecx, lengthof arr1
mov eax, 0
loop1:

add eax, [esi]

add esi, type arr1

loop loop1

call writeint

INVOKE ExitProcess,0
main ENDp
END main