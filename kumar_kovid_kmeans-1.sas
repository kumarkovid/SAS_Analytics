title "Clustering for Connecticut state";
libname clust_01 "E:\SASHome\BIA 672\SAS_data";
run;
proc copy in = clust_01 out = work;
select  income_byzip_pct;
run;

proc fastclus data =income_byzip_pct
maxclusters =3 out=K_mean;
var Returns_pct1 Returns_pct2 Returns_pct3 Returns_pct4 Returns_pct5 Returns_pct6;
id zipcode;
where STATEFIPS = 09 ;
run;
proc print data = K_mean;
var zipcode cluster ;
run;

title "Clustering for Alabama state"
libname clust_01 "E:\SASHome\BIA 672\SAS_data";
run;
proc copy in = clust_01 out = work;
select  income_byzip_pct;
run;
proc fastclus data =income_byzip_pct
maxclusters =3 out=K_mean;
var Returns_pct1 Returns_pct2 Returns_pct3 Returns_pct4 Returns_pct5 Returns_pct6;
id zipcode;
where STATEFIPS = 01 ;
run;
proc print data = K_mean;
var zipcode cluster ;
run;
