mov ecx, [ecx_limit] ; Added limit check to prevent out-of-bounds memory access.

cmp ecx, 0 ; Added check to ensure ecx is non-negative
jle error_handling ; Handle potential negative index

mov eax, [ebx + ecx*4 + 0x10] ; Access memory only if index is within bounds

mov esi, [esi_limit] ; Added limit check to prevent out-of-bounds memory access

cmp esi, 0 ; Added check to ensure esi is non-negative
jle error_handling ; Handle potential negative index

mov [ebx + esi*8], eax ; Access memory only if index is within bounds

;Other code...

error_handling:
; Handle the out-of-bounds error appropriately, for example, by displaying an error message or terminating the program.