
# 1) Recursive Function (prints)
def prints(n):
    if n <= 0:
        return

    print("Codingal")
    prints(n // 2)
    prints(n // 2)


# 2) Iterative Function (array sum)
def array_sum(a):
    total = 0
    for i in a:
        total += i
    return total


# 3) Recursive Function (sum of n natural numbers)
def summ(n):
    if n <= 0:
        return 0
    return n + summ(n - 1)



print("Running prints function:\n")
prints(8)

print("\nRunning array_sum function:\n")
a = [12, 3, 4, 15]
print("Array sum:", array_sum(a))

print("\nRunning summ function:\n")
print("Recursive sum (n=5):", summ(5))
