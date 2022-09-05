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
	invalidMSG BYTE "Invalid Marks...",0
	marks SBYTE -2
.code
main PROC
	; write your code here
	mov al, marks
	cmp al, 33
	jge L1
	jl L2
	L1:
		cmp al, 100
		jle passLB
		jmp invalidLB
	L2:
		cmp al, 0
		jge failLB
		jmp invalidLB
	passLB:
		mov edx, offset passMSG
		call WriteString
		jmp exitLB
	failLB:
		mov edx, offset failMSG
		call WriteString
		jmp exitLB
	invalidLB:
		mov edx, offset invalidMSG
		call WriteString
	exitLB:
		INVOKE ExitProcess,0
main ENDP
; (insert additional procedures here)
END main
