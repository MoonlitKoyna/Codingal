
def firstSetBit(n):

    count = 1   
    while n > 0:
        if (n & 1) == 1:
            return count
        count += 1
        n >>= 1  

    return 0  


num = int(input("Enter number: "))

pos = firstSetBit(num)

print("Position of the first set bit:", pos)