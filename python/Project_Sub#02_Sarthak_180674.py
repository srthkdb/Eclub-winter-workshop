year = (int)(input("input year:"))
leap = 0 #if leap = 0, not a leap year and vice versa

if year%100 is 0:
    if year%400 is 0:
        leap = 1
    else:
        leap = 0
elif year%4 is 0:
    leap = 1
else:
    leap = 0

if leap is 0:
    print(False)
else:
    print(True)

