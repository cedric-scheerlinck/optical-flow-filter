kk

n = 1e3;
b = 1e-2;
a = m/log(b*m+1);

c = 1;

x = 1:n;
y = x;
m = max(x);
% a = m/log(m+1);
% b = 1;
    y = a*log(b*x+c);


plot(x,y,'.')







