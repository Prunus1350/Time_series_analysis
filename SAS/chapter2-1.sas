%let indir = /folders/myfolders/Time_series_analysis/data/;

data price4;
    infile "&indir.price4.csv" dsd missover firstobs = 2;
    attrib time  length = 8 label = "Time"
           x5202 length = 8 label = "板硝子"
           x7272 length = 8 label = "ヤマハ"
           x4927 length = 8 label = "ポーラHD"
           x4502 length = 8 label = "武田薬品";
    input time x5202 x7272 x4927 x4502;
run;

proc sgplot data = price4;
    series x = time y = x5202;
run;

proc sgplot data = price4;
    series x = time y = x4927;
run;

proc sgplot data = price4;
    series x = time y = x7272;
run;

proc sgplot data = price4;
    series x = time y = x4502;
run;


data price4_2;
    set price4;
    if _n_ eq 1 then do;
        x5202_1 + x5202;
        x4927_1 + x4927;
        x7272_1 + x7272;
        x4502_1 + x4502;
    end;
    r_x5202 = x5202 / x5202_1;
    r_x4927 = x4927 / x4927_1;
    r_x7272 = x7272 / x7272_1;
    r_x4502 = x4502 / x4502_1;
run;

proc sgplot data = price4_2;
    series x = time y = r_x5202;
run;

proc sgplot data = price4_2;
    series x = time y = r_x4927;
run;

proc sgplot data = price4_2;
    series x = time y = r_x7272;
run;

proc sgplot data = price4_2;
    series x = time y = r_x4502;
run;


data price4_3;
    set price4;
    dl_x5202 = dif(log(x5202)) * 100;
    dl_x4927 = dif(log(x4927)) * 100;
    dl_x7272 = dif(log(x7272)) * 100;
    dl_x4502 = dif(log(x4502)) * 100;
run;

proc sgplot data = price4_3;
    series x = time y = dl_x5202;
run;

proc sgplot data = price4_3;
    series x = time y = dl_x4927;
run;

proc sgplot data = price4_3;
    series x = time y = dl_x7272;
run;

proc sgplot data = price4_3;
    series x = time y = dl_x4502;
run;


proc sql noprint;
    select min(dl_x5202), max(dl_x5202) into :ymin, :ymax from price4_3;
quit;

proc sgplot data = price4_3;
    series x = time y = dl_x5202;
    yaxis min = &ymin. max = &ymax.;
run;

proc sgplot data = price4_3;
    series x = time y = dl_x4927;
    yaxis min = &ymin. max = &ymax.;
run;

proc sgplot data = price4_3;
    series x = time y = dl_x7272;
    yaxis min = &ymin. max = &ymax.;
run;

proc sgplot data = price4_3;
    series x = time y = dl_x4502;
    yaxis min = &ymin. max = &ymax.;
run;




