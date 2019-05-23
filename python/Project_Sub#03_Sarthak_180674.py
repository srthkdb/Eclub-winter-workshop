#takes input
n = input("Enter you no here:")
n = int(n)

#converts decimal to binary
def decToBin(x):
    return int(bin(x)[2:],10) #as bin(x) is a string with first two chars 0b, so it has been sliced

binary = decToBin(n)
#calculate no of digits in binary
lengthBinary = int.bit_length(n)
count = 0

#this loop sets count equal to the place of highest 1 in the binary no, with values of place starting from 0
for i in range(0, lengthBinary):
    temp = (int)((binary/pow(10, i))%10)
    if temp is 1:
        count = i

print(count)