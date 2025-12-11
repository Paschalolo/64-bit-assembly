; Program calculates the total surface area 
; geometric informatoon for square pyramid in a series of square pyramids 

; The progeam calcuates the totoal surface ares and the volume of eacxh squsare pyra,mmid 


; once the valuyes are computed the total surface araea and the volume of each square pyramid 

; ---------
; Formulas 
; totalSurfaceAreas(n) = asides(n) * (2 * asides(n) * asides(n))
; volumes(n) = (asides(n) ^ 2 * heights(n)) ? 3 

; ************************************** 
SECTION .data 
; Define constants 
; ----------------------------
	SYS_EXIT  dd 0X3C ; calll code for terminate 
	EXIT_SUCCES dd 0 ; succedsful exit code 

; ------------------
; Provuded data 
asides 		db 10 , 14 ,13, 37, 54 
		db 31 , 13, 20, 61, 36 
		db 1  , 2  , 3, 4  , 54
		db 32 , 45 , 67, 87, 90
		db 78, 45, 32, 59 , 23 
		db 11 , 14 ,13, 37, 54 
		db 31 , 13, 20, 61, 36 
		db 12  , 32  , 53, 74  , 54
		db 32 , 45 , 67, 87, 90
		db 78, 45, 32, 59 , 23 

sSides 		dw 1234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,2034
		dw 51234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,20345
		dw 1234 , 11143 , 3345, 3434,20345

length dd 50 
taMin dd 0 
taMax dd 0 
taSum dd 0 
taAve dd 0 

volMin dd 0 
volMax dd 0 
volSum 	dd 0 
volAve dd 0 
; ----------------
; Additional variable sSides
ddTwo dd 2 
ddThree dd 3 

SECTION .bss ; section for uninitialized data 
	totalAreas resd 50
	volumes resd 50 
; ************************************************
SECTION .text 
	global _start 
_start : 
	mov ecx , dword[length] ; length counter 
	mov rsi , 0 ; index 

calculateLoop: 
	movzx r8d , byte[
; incoplete finsih later i am tired 
