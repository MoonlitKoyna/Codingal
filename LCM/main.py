num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))

lcm = max(num1, num2)

while True:
    if lcm % num1 == 0 and lcm % num2 == 0:
        print("LCM is:", lcm)
        break
    lcm += 1