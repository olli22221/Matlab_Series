r_imp = ones(1,10);

plot(r_imp)

r_imp_conv = conv(r_imp,r_imp);

for n = 1:10
    
plot(r_imp_conv)

pause(5)
r_imp_conv = conv(r_imp_conv,r_imp);

end