dt = 0.01;
tmin = -4;
tmax = 4;

t1 = tmin:dt:tmax;
t2 = tmin:dt:tmax;

ts = min(t1) + min(t2);
te = max(t1) + max(t2);

t = ts:dt:te;

x = 2 * (heaviside(t1+1) - heaviside(t1-1));
y = (heaviside(t2+2) - heaviside(t2-2));

z = conv(x,y) * dt;

% x over t
subplot(3, 1, 1);
plot(t1, x); 
grid on;
xlabel('t');
ylabel('x');
title('Plot of x on t');
axis([-4 4 -1 5]);

% y over t
subplot(3, 1, 2);
plot(t2, y); 
grid on;
xlabel('t');
ylabel('y');
title('Plot of y on t');
axis([-4 4 -1 5]);

% z over t
subplot(3,1,3);
plot(t, z); 
grid on;
xlabel('t');
ylabel('z');
title('Plot of z on t');
axis([-4 4 -1 5]);