num = int(input("Enter your number: "))

binary = bin(num)[2:]   

max_count = 0
count = 0

for bit in binary:
    if bit == '1':
        count += 1
        if count > max_count:
            max_count = count
    else:
        count = 0

print("Longest consecutive 1’s length :", max_count)