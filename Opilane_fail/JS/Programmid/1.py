print("Sisesta esimene arv: ")
arv1 = int(input())
arv2 = int(input("Sisesta teine arv: "))

if arv1 > arv2:
    print("Esimene arv on suurem")
elif arv1 < arv2:
    print("Teine arv on suurem")
else:
    print("Arvud on võrdsed")
    
if arv1 >= arv2:
    maksimum = arv1
else:
    maksimum = arv2
print("Maksimum on: ", maksimum)