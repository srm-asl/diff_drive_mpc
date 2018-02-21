function [y,Bconv]=refgen(traj,tinit,tend,disc)
n=(tend-tinit)/disc;
tinit=tinit+disc;
C=zeros(2,3);
C(1,1)=1;
C(2,2)=1;
A=eye(3);
D=zeros(2,2);
j=1;
for i=1:2:2*n
z(i)=traj(1)*tinit^4+traj(2)*tinit^3+traj(3)*tinit^2+traj(4)*tinit+traj(5);
z(i+1)=traj(6)*tinit^4+traj(7)*tinit^3+traj(8)*tinit^2+traj(9)*tinit+traj(10);
tinit=tinit+disc;
B(3*j-2:3*j,:)=[0.04*cos(atan(z(i)/z(i+1)))*0.1 0.04*cos(atan(z(i)/z(i+1)))*0.1;0.04*sin(atan(z(i)/z(i+1)))*0.1 0.04*sin(atan(z(i)/z(i+1)))*0.1;0.5556 -0.5556];
j=j+1;
end
y=z';
Bconv=[C*B(1:3,:) D D D D D D D D D D D;C*A*B(4:6,:) C*B(4:6,:) D D D D D D D D D D;C*A*B(7:9,:) C*A*B(7:9,:) C*B(7:9,:) D D D D D D D D D;...
    C*A*B(10:12,:) C*A*B(10:12,:) C*A*B(10:12,:) C*B(10:12,:) D D D D D D D D;C*A*B(13:15,:) C*A*B(13:15,:) C*A*B(13:15,:) C*A*B(13:15,:) C*B(13:15,:) D D D D D D D;...
    C*A*B(16:18,:) C*A*B(16:18,:) C*A*B(16:18,:) C*A*B(16:18,:) C*A*B(16:18,:) C*B(16:18,:) D D D D D D;...
    C*A*B(19:21,:) C*A*B(19:21,:) C*A*B(19:21,:) C*A*B(19:21,:) C*A*B(19:21,:) C*A*B(19:21,:) C*B(19:21,:) D D D D D;C*A*B(22:24,:) C*A*B(22:24,:) C*A*B(22:24,:) C*A*B(22:24,:) C*A*B(22:24,:) C*A*B(22:24,:) C*A*B(22:24,:) C*B(22:24,:) D D D D;...
    C*A*B(25:27,:) C*A*B(25:27,:) C*A*B(25:27,:) C*A*B(25:27,:) C*A*B(25:27,:) C*A*B(25:27,:) C*A*B(25:27,:) C*A*B(25:27,:) C*B(25:27,:) D D D;C*A*B(28:30,:) C*A*B(28:30,:) C*A*B(28:30,:) C*A*B(28:30,:) C*A*B(28:30,:) C*A*B(28:30,:) C*A*B(28:30,:) C*A*B(28:30,:) C*A*B(28:30,:) C*B(28:30,:) D D;...
    C*A*B(31:33,:) C*A*B(31:33,:) C*A*B(31:33,:) C*A*B(31:33,:) C*A*B(31:33,:) C*A*B(31:33,:) C*A*B(31:33,:) C*A*B(31:33,:) C*A*B(31:33,:) C*A*B(31:33,:) C*B(31:33,:) D;C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*A*B(34:36,:) C*B(34:36,:)];
