INCLUDE irvine32.inc

.data
msg BYTE "Enter the value to Find Factorial: ",0
msg1 BYTE "The Factorial is: ",0

.code
main PROC

mov edx, offset msg
call writestring
call readint
mov ecx, eax
mov eax, 1
fact1:
	imul eax,ecx

loop fact1

mov edx, offset msg1
call writestring
call writeint

INVOKE ExitProcess,0
main ENDp
END main