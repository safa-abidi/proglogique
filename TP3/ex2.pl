fibo(0,1).
fibo(1,1).
fibo(N,R) :- N > 1, Q is N-1, D is N-2, fibo(Q,R1), fibo(D,R2), R is R1+R2.
