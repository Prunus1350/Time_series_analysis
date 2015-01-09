%let indir = /folders/myfolders/Time_series_analysis/data/;

data return4;
    infile "&indir.return4.csv" dsd missover firstobs = 2;
    attrib time  length = 8 label = "Time"
           x5202 length = 8 label = "板硝子"
           x7272 length = 8 label = "ヤマハ"
           x4927 length = 8 label = "ポーラHD"
           x4502 length = 8 label = "武田薬品";
    input time x5202 x7272 x4927 x4502;
run;


proc means data = return4 mean;
    var x5202 x4927 x7272 x4502;
run;


proc means data = return4 std;
    var x5202 x4927 x7272 x4502;
run;


proc sgplot data = return4;
    histogram x5202 / scale = count;
run;

proc sgplot data = return4;
    histogram x4927 / scale = count;
run;

proc sgplot data = return4;
    histogram x7272 / scale = count;
run;

proc sgplot data = return4;
    histogram x4502 / scale = count;
run;

