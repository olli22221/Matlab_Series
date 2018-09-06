x_n = [0,1,2,3,4];
y_n = [2,1,3,5,3];
f1 = (@(x) exp(0*x));
f2 = (@(x) exp(x));
f3 = (@(x) exp(-x));
coeff = sigapp(x_n,y_n,{f1,f2,f3});

x = linspace(0,4);

f_app = @(x) coeff(1)* exp(0*x)+coeff(2)* exp(x)+coeff(3)* exp(-x);

fplot(f_app,[0,4],'b')
hold on
plot(x_n,y_n,'o')
hold off

f_app = f_app(x_n);

disp(quaderror(y_n,f_app))
