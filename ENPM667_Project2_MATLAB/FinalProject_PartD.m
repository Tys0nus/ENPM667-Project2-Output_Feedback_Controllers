disp('Given Parameters of the System\n')

fprintf('M : %i, m1:%i, m2:%i, l1:%i, l2:%i', 1000, 100, 100, 20, 10)

FinalProject_PartB

A = double(subs(subs(A), {M m1 m2 l1 l2 g},{1000 100 100 20 10 9.8}))
B = double(subs(subs(B), {M m1 m2 l1 l2 g},{1000 100 100 20 10 9.8}))




Cm = ctrb(A, B);

disp('--------------------------------------------------------------------------------')
disp('Controllability Test using rank condition\n')
disp('--------------------------------------------------------------------------------')
fprintf(['Rank of Controllability matrix ' ...
    'is : %i\n'], rank(ctrb(A, B)))

if rank(ctrb(A, B)) == 6
    disp('System is Controllable.\n')
else 
    disp('System is Uncontrollable.\n')
end

Q = [100 0 0 0 0 0;
    0 0 0 0 0 0; 
    0 0 1000 0 0 0; 
    0 0 0 0 0 0;
    0 0 0 0 1000 0;
    0 0 0 0 0 0]       
R = 0.1 ;              
K = lqr(A,B,Q,R)

Af = A-B*K
Bf = B
Cf = C
Df = D


fprintf(['Eigen values of A :\n'])
eigs(10*Af)

sysf = ss(Af,Bf,Cf,Df);

x0 = [0;0;10;0;20;0];
initial(sysf,x0)
