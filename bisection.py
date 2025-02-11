def function(x):
    return x**8-x**2

x_1 = float(input("x_1: "))
x_2 = float(input("x_2: "))

while function(x_1)*function(x_2) > 0:
    x_1 = float(input("x_1: "))
    x_2 = float(input("x_2: "))
    
c = (x_1 + x_2)/2
print(c)

while abs(function(c)) > 0.001:
    if function(x_1)*function(c) < 0:
        x_2 = c

    elif function(x_2)*function(c) < 0:
        x_1 = c

    c = (x_1 + x_2)/2
    print(c)