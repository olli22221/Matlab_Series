x_n = [0,1,2,3,4,5];
y_n = [8,7,8,4,7,11];
f1 = (@(x) cos(0.*x));
f2 = (@(x) cos(x));
f3 = (@(x) cos(2.*x));
f4 = (@(x) cos(3.*x));
coeff = sigapp(x_n,y_n,{f1,f2,f3,f4});

x = linspace(0,5);

f_app = @(x) coeff(1)*cos(0.*x)+coeff(2)* cos(x)+coeff(3)* cos(2.*x)+coeff(4)*cos(3.*x);

fplot(f_app,[0,5],'b')
hold on
plot(x_n,y_n,'o')
hold off

f_app = f_app(x_n);

disp(quaderror(y_n,f_app))
