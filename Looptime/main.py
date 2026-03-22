# LOOPTIME PROGRAM

def myfunction(n):
    
    # First Loop
    for i in range(0, n+1):
        print("First Loop")
    
    # Second Loop
    j = 1
    while (j <= n+1):
        print("Second Loop", j)
        j = j * 2
    
    # Third Loop
    for i in range(0, 100):
        print("Third Loop")


# Taking input
n = int(input("Enter value of n: "))
myfunction(n)