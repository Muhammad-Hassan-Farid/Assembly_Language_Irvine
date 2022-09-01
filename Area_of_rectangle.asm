INCLUDE irvine.inc

.data

msg1 BYTE "Enter the lenght of rectangle: ",0
msg2 BYTE "Enter the Width of rectangle: ",0
msg  BYTE "Area of Reactangle: ",0

.code
main PROC

call DisplayRectangle

main ENDp

DisplayRectangle PROC

mov edx, offset msg1
call WriteString
call Readint				;cin>>eax
mov ebx, eax				;saving the value of eax to ebx
mov edx, offset msg2
call WriteString 
call Readint

mov edx, offset msg
imul eax,ebx
call Writedec


call crlf

ret
DisplayRectangle ENDp

END main