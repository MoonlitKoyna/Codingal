string = input("Enter string: ")
n = len(string)

for i in range(1, 1 << n):
    sub = ""
    for j in range(n):
        if i & (1 << j):
            sub += string[j]
    print(sub)