y = linspace(1,10,10);
y.^2

linspace(-1,1,21)

p = 3;
M = rand(p);
reshape(M, size(M,1)*size(M,2),1)

n = 3;
m = 4;
N = rand(n);
repmat(N, 1, m)
repmat(N, m, 1)

r = 3;
R = randn(r);
Rpositive = max(R,0)
R>0
