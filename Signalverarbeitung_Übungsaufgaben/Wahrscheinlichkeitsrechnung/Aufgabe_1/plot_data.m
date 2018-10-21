fid = fopen('daten_256_100_cm.txt');

x_vector = [];
y_vector = [];

while ~feof(fid)
    cur_cell = strsplit(fgetl(fid));
    x_vector = [x_vector cur_cell(1)];
    y_vector = [y_vector cur_cell(2)];
    
end

x_vector = str2double(x_vector);
y_vector = str2double(y_vector);


plot(x_vector, y_vector)
