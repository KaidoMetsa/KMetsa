; KAIDO METSA KTA22E
; ÜL 27 Lift sõidaks üles nupule vajutades aga alla tuleks ise.
; NB ! See töötab kui panna simulatsioon väga kiiresti käima !

; resetib registri
mov	al,0	; lähtestame ja näitame lifti
out	06	; väljastame selle porti 06

; Kontrollime, kas nuppe vajutatakse
loop:
	in	06	; loeme porti 06
	and	al,20	; teostame AND operatsiooni, et kontrollida, kas 20. bit on 1
	jnz	up	; kui 20. bit on 1, siis liigume ülespoole

	in	06	; loeme 06 uuesti
	and	al,10	; teostame AND operatsiooni, et kontrollida, kas 10. bit on 1
	jnz	down	; kui 10. bit on 1, siis liigume allapoole

	jmp	loop	; kui mõlemad nupud on puudu, siis jätkame loop'i uuesti

; Liigume ülespoole
up:
	mov	al,21	; seadistame registri al uue väärtusega 21
	out	06	; väljastame selle porti 06-sse
	mov	[BF],al	; salvestame registeri al väärtuse muutujas BF
	in	06	; loeme porti 06
	and	al,4	; teostame  AND operatsiooni, et kontrollida, kas 4. bit on 1
	jnz	stop_up	; kui 4. bit on 1, siis peatume ülespoole liikumise

	mov	al,[BF]	; taastame registri al varasema väärtuse
	jmp	loop	; ja jätkame loopi

stop_up:
	mov	al,[BF]	; taastame registeri al varasema väärtuse
	mov	al,12	; seadistame registeri al uue väärtusega 12
	out	06	; väljastame selle porti 06-sse
	jmp	loop	; ja jätkame loop'i

	; lift liigub allapoole
down:
	mov	al,12	; seadistame registeri al uue väärtusega 12
	out	06	; väljastame selle porti 06sse
	mov	[BF],al	; salvestame registeri al väärtuse muutujas BF
	in	06	; loeme porti 06 
	and	al,8	; teostame AND operatsiooni, et kontrollida, kas 8. bit on 1
	jnz	stop_down ; kui 8. bit on 1, siis peatume allapoole liikumise

	mov	al,[BF]	; ; Kui lift ei ole jõudnud alla , läheb ta tagasi eelmisele lifti positsioonile
	jmp	loop		; hüppab tagasi loopima

stop_down:
	mov	al,[BF]		; liigutab lifti salvestatud positsioonile
	mov	al,0		; Resetib lifti
	out	06		; väljastab porti 06
	jmp	loop		; hüppab tagasi loopima

end ; Pidu läbi