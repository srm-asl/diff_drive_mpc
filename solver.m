function y=solver(x,u)
y(1)=180*((u(1)+u(2))*0.04*cos(x(3)))/2;
y(2)=180*((u(1)+u(2))*0.04*sin(x(3)))/2;
y(3)=180*((u(1)-u(2))*0.04)/0.1;