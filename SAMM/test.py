mitu=0
while(mitu<=0):
    mitu=int(input("mitu arvu sisestame "))
loendur=1
while(loendur<=mitu):
    arv=int(input("sisesta arv" + str(loendur) + " "))
    if (loendur==1):
        maksimum=arv
    elif(arv>maksimum):
    loendur+=1
print("Maksimum =",maksimum)