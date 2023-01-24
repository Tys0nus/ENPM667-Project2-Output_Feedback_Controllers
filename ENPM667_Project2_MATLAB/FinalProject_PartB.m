syms M m1 m2 l1 l2 g F
syms x theta1 theta2 
syms x_dot theta1_dot theta2_dot
syms x_double_dot theta1_double_dot theta2_double_dot


A = [ 0 1 0 0 0 0;
      0 0 -g*m1/M 0 -g*m2/M 0;
      0 0 0 1 0 0;
      0 0 -g*(M+m1)/(M*l1) 0 -g*m2/(M*l1) 0;
      0 0 0 0 0 1;
      0 0 -g*m1/(M*l2) 0 -g*(M+m2)/(M*l2) 0
    ]

B = [0; 1/M; 0; 1/(M*l1); 0; 1/(M*l2)]

C = [1 0 0 0 0 0; 0 1 0 0 0 0; 0 0 1 0 0 0; 0 0 0 1 0 0; 0 0 0 0 1 0; 0 0 0 0 0 1]

D = [0; 0; 0; 0; 0; 0]