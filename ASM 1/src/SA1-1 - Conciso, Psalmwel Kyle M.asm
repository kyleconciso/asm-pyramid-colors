.model small
.stack
.code

stage dw 10
blank dw 1

main	proc
	; clear screen
	int 10h
	
	mov cx,10
y:	
	push cx
	mov stage,cx
	mov cx,blank

z:	
	mov dl, ' '
	mov ah,2
	int 21h
	loop z


	mov cx,stage
	mov dl,'0'	
x:
	mov ah,2
	int 21h
	inc dl
	loop x
	
	mov ah,2
	mov dl,10
	int 21h

	
	pop cx
	inc blank
	loop y

	; terminate
	mov ah,4ch
	int 21h
main	endp
end	main