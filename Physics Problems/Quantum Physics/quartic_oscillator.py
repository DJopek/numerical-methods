import numpy as np
import matplotlib.pyplot as plt

# constants
M = 1
omega = 1
hbar = 1
b = 10

N = 50

K_1 = hbar*omega/2
K_2 = 1/8*b*hbar**2/(4*M**2*omega**2)

def elements(N):

    Hmn = np.zeros((N,N))

    for m in range(0,N):
        for n in range(0,N):
            if m == n :
                Hmn[m,n] = (
                    K_1*(2*n+1)
                    + K_2*(6*n**2+6*n+3)
                )
            elif m == n+2 :
                Hmn[m,n] = (
                    np.sqrt((n+1)*(n+2))*(4*n+6)*K_2
                )
            elif m == n-2:
                Hmn[m,n] = (
                    np.sqrt(n*(n-1))*K_2*(4*n-2)
                )
            elif m == n+4:
                Hmn[m,n] = (
                    K_2*np.sqrt((n+1)*(n+2)*(n+3)*(n+4))
                )
            elif m == n-4:
                Hmn[m,n] = (
                    K_2*np.sqrt(n*(n-1)*(n-2)*(n-3))
                )

    eigvals, eigvecs = np.linalg.eig(Hmn)
    eigvals = np.sort(np.real(eigvals))

    return eigvals

eigvals = elements(N)

for i in range(4):
    print(eigvals[i])

x = np.linspace(4, N, N-3)
y_0 = []
y_1 = []
y_2 = []
y_3 = []

for i in range(4, N+1):
    eigvals = elements(i)
    y_0.append(eigvals[0])
    y_1.append(eigvals[1])
    y_2.append(eigvals[2])
    y_3.append(eigvals[3])

plt.scatter(x, y_0)
plt.scatter(x, y_1)
plt.scatter(x, y_2)
plt.scatter(x, y_3)

plt.show()

def convergence_test(y_0, y_1, y_2, y_3, tol1, tol2, tol3, tol4):
    for i in range(1,N-6):
        if y_0[i]-y_0[i+2] < tol1:
            print(i)
            index_1 = i
            break

    for i in range(1,N-6):
        if y_1[i]-y_1[i+2] < tol2:
            print(i)
            index_2 = i
            break

    for i in range(1,N-6):
        if y_2[i]-y_2[i+2] < tol3:
            print(i)
            index_3 = i
            break


    for i in range(1,N-6):
        if y_3[i]-y_3[i+2] < tol4:
            print(i)
            index_4 = i
            break

    print((index_1+index_2+index_3+index_4)/4)

convergence_test(y_0, y_1, y_2, y_3, 10**(-5), 10**(-4), 10**(-4), 10**(-4))

# constants
M = 1
omega = 1
hbar = 0.2
b = 1
a = 1

K_1 = hbar*omega/4
K_2 = -a*hbar/(4*M*omega)
K_3 = b*hbar**2/(32*M**2*omega**2)

x = np.linspace(-3,3,1000)
y = []

for i in range(len(x)):
    y.append(
        -1/2*a*x[i]**2+1/8*b*x[i]**4
    )

plt.plot(x, y)
plt.show()

def elements_Hprime(N):

    Hmn = np.zeros((N,N))

    for m in range(0,N):
        for n in range(0,N):
            if m == n :
                Hmn[m,n] = (
                    (2*n+1)*(K_1+K_2)
                    + K_3*(6*n**2+6*n+3)
                )
            elif m == n+2 :
                Hmn[m,n] = (
                    np.sqrt((n+1)*(n+2))*(K_3*(4*n+6)-K_1+K_2)
                )
            elif m == n-2:
                Hmn[m,n] = (
                    np.sqrt(n*(n-1))*(-K_1+K_2+K_3*(4*n-2))
                )
            elif m == n+4:
                Hmn[m,n] = (
                    K_3*np.sqrt((n+1)*(n+2)*(n+3)*(n+4))
                )
            elif m == n-4:
                Hmn[m,n] = (
                    K_3*np.sqrt(n*(n-1)*(n-2)*(n-3))
                )

    eigvals, eigvecs = np.linalg.eig(Hmn)
    eigvals = np.sort(np.real(eigvals))

    return eigvals

N = 1000

eigvals = elements_Hprime(N)

for i in range(4):
    print(eigvals[i])

y_0 = []
y_1 = []
y_2 = []
y_3 = []

for i in range(4, N+1):
    eigvals = elements_Hprime(i)
    y_0.append(eigvals[0])
    y_1.append(eigvals[1])
    y_2.append(eigvals[2])
    y_3.append(eigvals[3])

convergence_test(y_0, y_1, y_2, y_3, 10**(-5), 10**(-5), 10**(-5), 10**(-5))

hbar = np.linspace(0.1, 1, 20)

y_0 = []
y_1 = []
y_2 = []
y_3 = []

for i in range(len(hbar)):
    K_1 = hbar[i]*omega/4
    K_2 = -a*hbar[i]/(4*M*omega)
    K_3 = b*hbar[i]**2/(32*M**2*omega**2)

    eigvals = elements_Hprime(N)

    y_0.append(eigvals[0])
    y_1.append(eigvals[1])
    y_2.append(eigvals[2])
    y_3.append(eigvals[3])

plt.scatter(hbar, y_0)
plt.scatter(hbar, y_1)
plt.scatter(hbar, y_2)
plt.scatter(hbar, y_3)
plt.show()