INCLUDE irvine32.inc

.data

msg BYTE "Hassan Farid",0

.code
main PROC

mov eax,0
mov esi, offset msg
mov ecx, lengthof msg

Stackloop:
	mov eax, [esi]
	push eax
	add esi, type msg

loop Stackloop

mov ecx, lengthof msg
Poploop:
	pop eax
	call writechar

loop Poploop

INVOKE ExitProcess,0
main ENDp
END main