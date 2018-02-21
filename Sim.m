sig=traj([1;1],[5;3],5);
x=[1;1;1];
for t=0:0.01:5
x=dynam(0.01,10^-3,x,sig,t);
end