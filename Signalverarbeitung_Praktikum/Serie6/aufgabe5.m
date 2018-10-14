r_imp  = rechteckimpuls(10, 20, 256);

r_dct = dct(r_imp);
r_idct = idct(r_dct);

subplot(5,1,1)
plot(r_imp)
title('Ausgangssignal')

r_dct(33:256) = 0;
r_idct = idct(r_dct);
subplot(5,1,2)
plot(r_idct)
title('S = 32')

r_dct(33:64) = 1;
r_idct = idct(r_dct);
subplot(5,1,3)
plot(r_idct)
title('S = 64')

r_dct(65:128) = 1;
r_idct = idct(r_dct);
subplot(5,1,4)
plot(r_idct)
title('S = 128')

r_dct(129:196) = 1;
r_idct = idct(r_dct);
subplot(5,1,5)
plot(r_idct)
title('S = 196')