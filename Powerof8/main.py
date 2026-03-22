num = int(input("Enter your number: "))

temp = num

while temp > 1:
    if temp % 8 != 0:
        print("No,", num, "is not a power of 8")
        break
    temp = temp // 8

if temp == 1:
    print("Yes,", num, "is the power of 8")