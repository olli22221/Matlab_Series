x = [0 1 2 3 4];
y = [1 -1 3 1 2];

polynom_1 = polyfit(x,y,1);
polynom_2 = polyfit(x,y,2);
polynom_3 = polyfit(x,y,3);
polynom_4 = polyfit(x,y,4);

poly_evals_1 = polyval(polynom_1,x);
poly_evals_2 = polyval(polynom_2,x);
poly_evals_3 = polyval(polynom_3,x);
poly_evals_4 = polyval(polynom_4,x);

q_err_1 = quaderror(poly_evals_1,y);
q_err_2 = quaderror(poly_evals_2,y);
q_err_3 = quaderror(poly_evals_3,y);
q_err_4 = quaderror(poly_evals_4,y);

x_1 = 0:0.1:4;
y_1 = polyval(polynom_1,x_1);
y_2 = polyval(polynom_2,x_1);
y_3 = polyval(polynom_3,x_1);
y_4 = polyval(polynom_4,x_1);

plot(x,y,'o',x_1,y_1,'r',x_1,y_4,'y',x_1,y_2,'b',x_1,y_3,'g')