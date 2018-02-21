function x1=dynam(t,h,x,traj,elapsed)
u=quadtraj(traj(1:5),traj(6:10),x(1),x(2),x(3),elapsed);
n=t/h;
for i=1:n
k1=solver(x,u);
k2=solver(x+k1*h/2,u);
k3=solver(x+k2*h/2,u);
k4=solver(x+k3*h,u);
x=x+h/6*(k1'+2*k2'+2*k3'+k4');
end
x1=x;