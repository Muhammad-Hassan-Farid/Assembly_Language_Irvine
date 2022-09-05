; Program Template           (Template.asm)

; Program Description:
; Author:
; Creation Date:
; Revisions: 
; Date:              Modified by:

include irvine32.inc					;include
.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data
; declare variables here
	passMSG BYTE "Pass...",0
	failMSG BYTE "Fail...",0
	marks SBYTE 87
.code
main PROC
	; write your code here
	mov al, marks
	cmp al, 33
	jge passLB
	jmp failLB

	passLB:
		mov edx, offset passMSG
		call WriteString
		jmp exitLB
	failLB:
		mov edx, offset failMSG
		call WriteString
	exitLB:
		INVOKE ExitProcess,0
main ENDP
; (insert additional procedures here)
END main
