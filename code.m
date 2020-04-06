% zb1=46.33;
z_a1=110.01;
z_a2=71.43;
m_a1=1.1;
k_a1=2;
clc

[z1_a1,z2_a1,th1_a1,th2_a1]=myfun1(z_a1,m_a1,k_a1);

fprintf('z_a1= %0.4f,  z1_a1=%0.4f,  z2_a1=%0.4f,  th1_a1=%0.4f,  th2_a1=%0.4f,  m_a1=%0.4f,  k_a1=%0.4f\n', ...
    z_a1, z1_a1, z2_a1, th1_a1, th2_a1, m_a1, k_a1)

th1_a2 = th1_a1;
k_a2 = k_a1;

[z1_a2, z2_a2, m_a2,th2_a2] = myfun2(z_a2,th1_a2,k_a2);

fprintf('z_a2= %0.4f,  z1_a2=%0.4f,  z2_a2=%0.4f,  th1_a2=%0.4f,  th2_a2=%0.4f,  m_a2=%0.4f,  k_a2=%0.4f\n', ...
    z_a2, z1_a2, z2_a2, th1_a2, th2_a2, m_a2, k_a2)


function [z1,z2,th1,th2] = myfun1(z,m,k)

th1=atand(1/m);
th2=atand(2*cotd(2*th1));
z1=m*z;
z2=z1/k;

end
% 
% function [z1, z2, m, th2] = myfun2(z,th1,k)
% 
% th2=atand(2*cotd(2*th1));
% m=cotd(th1);
% z1=m*z;
% z2=z1/k;
% 
% end