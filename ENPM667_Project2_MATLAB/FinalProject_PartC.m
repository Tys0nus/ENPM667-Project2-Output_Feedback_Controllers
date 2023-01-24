disp('Conditions on M,m1,m2,l1,l2 for which the linearized system is controllable \n')


FinalProject_PartB

%Cm = ctrb(A, B) // Since ctrb only uses numeric inputs, the
%controllability matrix is developed manually from equations
Cm = [B A*B A*A*B A*A*A*B A*A*A*A*B A*A*A*A*A*B];

%det(Cm)
Det = simplify(det(Cm))
