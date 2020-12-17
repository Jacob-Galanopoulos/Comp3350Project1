;jdg0058_P1.asm

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	input BYTE 1h, 2h, 3h, 4h, 5h, 6h, 7h, 8h
	shift BYTE 2
.code
	main proc
		mov eax,0
		mov ebx,0
		mov ecx,0
		mov edx,0
		mov ah,[input]
		add ah,shift
		mov al,[input+1]
		add al,shift
		mov bh,[input+2]
		add bh,shift
		mov bl,[input+3]
		add bl,shift
		mov ch,[input+4]
		add ch,shift
		mov cl,[input+5]
		add cl,shift
		mov dh,[input+6]
		add dh,shift
		mov dl,[input+7]
		add dl,shift

		invoke ExitProcess,0
	main endp
end main