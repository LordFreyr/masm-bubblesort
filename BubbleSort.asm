; BubbleSort
; Sort an array using bubble sort algorithm

BubbleSort PROC USES eax, ecx, esi,
    pArray:PTR DWORD,   ; pointer to array
    Count:DWORD         ; array size

    mov ecx,Count
    dec ecx
	
L1: push ecx
    mov esi,pArray

L2: mov eax,[esi]
    cmp [esi+4],eax
    jg L3

    xchg eax,[esi+4]
	mov [esi],eax

L3: add esi,4
    loop L2

    pop ecx
    loop L1

L4: ret
BubbleSort ENDP