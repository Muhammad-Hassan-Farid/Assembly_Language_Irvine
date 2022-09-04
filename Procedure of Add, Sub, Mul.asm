INCLUDE irvine32.inc

.data
msg1	BYTE "Enter the First Interger: ",0
msg2	BYTE "ENter the Second Interger: ",0
ADD1	BYTE "The Sum is: ",0
SUB1	BYTE "The Substraction is: ",0
MUL1	BYTE "The Multiplication is: ",0


.code

main PROC

mov edx, offset msg1 
call WriteString
call Readint
mov ebx, eax
mov edx, offset msg2 
call WriteString
call Readint

call Addition

call CRLF

call Substraction

call CRLF

call Multi


INVOKE ExitProcess,0
main ENDp

Addition PROC
mov edx,offset ADD1
call WriteString
add eax,ebx
call writedec
ret
Addition ENDp

Substraction PROC
mov edx, offset SUB1
call WriteString
sub eax,ebx
call writedec
ret
Substraction ENDp

Multi PROC
mov edx, offset MUL1
call WriteString
imul eax,ebx
call writedec
ret
Multi ENDp


END main
