FinalProject_PartD
    
C1=[1 0 0 0 0 0];                                               % C matrix for X as output 
C2=[0 0 1 0 0 0; 0 0 0 0 1 0];                                  % C matrix for theta1,theta2 as output 
C3=[1 0 0 0 0 0; 0 0 0 0 1 0];                                  % C matrix for X,theta2 as output 
C4=[1 0 0 0 0 0; 0 0 1 0 0 0; 0 0 0 0 1 0];                     % C matrix for X,theta1,theta2 as output 



%% Check for Observability of output - X 
O1 =[C1 ;C1*A; C1*A^2; C1*A^3; C1*A^4; C1*A^5];
rank(O1)
% As a result, because rank is 6, it can be seen. 
%% Check for Observability of output - theta1,theta2
O2 =[C2 ;C2*A; C2*A^2; C2*A^3; C2*A^4; C2*A^5];
rank(O2)
%Thus it is not observable since rank is 4. 

%% Check for Observability of output - X,theta2
O3 =[C3 ;C3*A; C3*A^2; C3*A^3; C3*A^4; C3*A^5];
rank(O3)

%Thus it is observable since rank is 6. 
%% Check for Observability of output - X,theta1,theta2
O4=[C4 ;C4*A; C4*A^2; C4*A^3; C4*A^4; C4*A^5];
rank(O4)
%Thus it is observable since rank is 6. 