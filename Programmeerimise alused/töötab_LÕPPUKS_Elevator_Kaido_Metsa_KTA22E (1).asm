; KAIDO METSA KTA22E
; �L 27 Lift s�idaks �les nupule vajutades aga alla tuleks ise.
; NB ! See t��tab kui panna simulatsioon v�ga kiiresti k�ima !

; resetib registri
mov	al,0	; l�htestame ja n�itame lifti
out	06	; v�ljastame selle porti 06

; Kontrollime, kas nuppe vajutatakse
loop:
	in	06	; loeme porti 06
	and	al,20	; teostame AND operatsiooni, et kontrollida, kas 20. bit on 1
	jnz	up	; kui 20. bit on 1, siis liigume �lespoole

	in	06	; loeme 06 uuesti
	and	al,10	; teostame AND operatsiooni, et kontrollida, kas 10. bit on 1
	jnz	down	; kui 10. bit on 1, siis liigume allapoole

	jmp	loop	; kui m�lemad nupud on puudu, siis j�tkame loop'i uuesti

; Liigume �lespoole
up:
	mov	al,21	; seadistame registri al uue v��rtusega 21
	out	06	; v�ljastame selle porti 06-sse
	mov	[BF],al	; salvestame registeri al v��rtuse muutujas BF
	in	06	; loeme porti 06
	and	al,4	; teostame  AND operatsiooni, et kontrollida, kas 4. bit on 1
	jnz	stop_up	; kui 4. bit on 1, siis peatume �lespoole liikumise

	mov	al,[BF]	; taastame registri al varasema v��rtuse
	jmp	loop	; ja j�tkame loopi

stop_up:
	mov	al,[BF]	; taastame registeri al varasema v��rtuse
	mov	al,12	; seadistame registeri al uue v��rtusega 12
	out	06	; v�ljastame selle porti 06-sse
	jmp	loop	; ja j�tkame loop'i

	; lift liigub allapoole
down:
	mov	al,12	; seadistame registeri al uue v��rtusega 12
	out	06	; v�ljastame selle porti 06sse
	mov	[BF],al	; salvestame registeri al v��rtuse muutujas BF
	in	06	; loeme porti 06 
	and	al,8	; teostame AND operatsiooni, et kontrollida, kas 8. bit on 1
	jnz	stop_down ; kui 8. bit on 1, siis peatume allapoole liikumise

	mov	al,[BF]	; ; Kui lift ei ole j�udnud alla , l�heb ta tagasi eelmisele lifti positsioonile
	jmp	loop		; h�ppab tagasi loopima

stop_down:
	mov	al,[BF]		; liigutab lifti salvestatud positsioonile
	mov	al,0		; Resetib lifti
	out	06		; v�ljastab porti 06
	jmp	loop		; h�ppab tagasi loopima

end ; Pidu l�bi