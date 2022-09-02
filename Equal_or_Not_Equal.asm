INCLUDE irvine32.inc

.data 
msg1 BYTE "Numbers are equal.",0
msg2 BYTE "Number are not equal.",0
Bye  BYTE "Thank you",0
num  BYTE 5

.code

main Proc

mov al, num

cmp al,5
je L1
jmp L2

L1:
	mov edx, offset msg1
	call WriteString
	jmp ExitLB
   
L2:
	mov edx, offset msg2
	call WriteString
	jmp ExitLB

ExitLB:
	mov edx, offset Bye
	call WriteString


INVOKE ExitProcess,0

main ENDP
END main