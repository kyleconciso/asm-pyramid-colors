.model small
.stack
.code

main	proc
	mov ah, 6
	mov al, 0
	mov bh, 00010001b
	mov ch, 0
	mov cl, 0
	mov dh, 24
	mov dl, 79
	int 10h

	mov bh, 01000001b
	mov ch, 0
	mov cl, 0
	mov dh, 11
	mov dl, 38
	int 10h

	mov bh, 01000001b
	mov ch, 12
	mov cl, 39
	mov dh, 24
	mov dl, 79
	int 10h

	mov ah,4ch
	int 21h
main	endp
end	main