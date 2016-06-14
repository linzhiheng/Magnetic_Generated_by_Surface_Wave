% Save to excel
function Save_toExcel(h1,h2,h3,D,fileName)
z = -2000:1:-1;
data1 = abs(h1(z));

z = 0:1:D;
data2 = abs(h2(z));

z = D+1:1:3000;
data3 = abs(h3(z));

data = [data1,data2,data3];

xlswrite(fileName,data);