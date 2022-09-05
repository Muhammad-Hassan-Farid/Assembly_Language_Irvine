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
	mondayMSG BYTE "Monday...",0
	tuesdayMSG BYTE "Tuesday...",0
	wednesdayMSG BYTE "Wednesday...",0
	thursdayMSG BYTE "Thursday...",0
	fridayMSG BYTE "Friday...",0
	saturdayMSG BYTE "Saturday...",0
	sundayMSG BYTE "Sunday...",0
	ElseMSG BYTE "Invalid Day...",0
	ByeByeMSG BYTE "Tata Bye Bye...",0
	weekDay BYTE 5
.code
main PROC
	; write your code here
	mov al, weekDay
	cmp al, 1
	je MondayLB
	cmp al, 2
	je TuesdayLB
	cmp al, 3
	je WednesdayLB
	cmp al, 4
	je ThursdayLB
	cmp al, 5
	je FridayLB
	cmp al, 6
	je SaturdayLB
	cmp al, 7
	je SundayLB
	jmp ElseLB

	MondayLB:
		mov edx, offset mondayMSG
		call WriteString
		jmp ExitLB
	TuesdayLB:
		mov edx, offset tuesdayMSG
		call WriteString
		jmp ExitLB
	WednesdayLB:
		mov edx, offset wednesdayMSG
		call WriteString
		jmp ExitLB
	ThursdayLB:
		mov edx, offset thursdayMSG
		call WriteString
		jmp ExitLB
	FridayLB:
		mov edx, offset fridayMSG
		call WriteString
		jmp ExitLB
	SaturdayLB:
		mov edx, offset saturdayMSG
		call WriteString
		jmp ExitLB
	SundayLB:
		mov edx, offset sundayMSG
		call WriteString
		jmp ExitLB
	ElseLB:
		mov edx, offset ElseMSG
		call WriteString
	ExitLB:
		call Crlf
		mov edx, offset ByeByeMSG
		call WriteString
	INVOKE ExitProcess,0
main ENDP
; (insert additional procedures here)
END main
