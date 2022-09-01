INCLUDE irvine32.inc

.data

arr1 DWORD 10,20,30,40,50

.code
main PROC

mov esi, offset arr1

mov eax,[esi]

add esi,4
add eax,[esi]

add esi,4
add eax,[esi]

add esi,4
add eax,[esi]

add esi,4
add eax,[esi]


call writeint

INVOKE ExitProcess,0
main ENDp
END main