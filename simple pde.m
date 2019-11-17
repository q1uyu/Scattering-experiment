x = linspace(0,1,40);
t = linspace(0,2,100);
m = 0;
sol = pdepe(m,@pdex1pde,@pdex1ic,@pdex1bc,x,t);
u = sol(:,:,1);
    
surf(x,t,u)    
xlabel('Distance x')
ylabel('Time t')

function [c,f,s] = pdex1pde(x,t,u,DuDx)
c = 20;
f = DuDx;
s = 0;
end

function u0 = pdex1ic(x)
u0 = 1-0.5*x;
end

function [pl,ql,pr,qr] = pdex1bc(xl,ul,xr,ur,t)
pl = ul-exp(-0.5*t);
ql = 0;
pr = ur-0.5*exp(-t);
qr = 0;
end