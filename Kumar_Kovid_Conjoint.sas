title ***Conjoint Analysis on cars Data***;
data Cars;
input Brand $1-8 BodyType $9-15 Price $16-26 Rating;
datalines;
Toyota	Sedan		25000	7
Toyota	Sedan		30000 	6
Toyota	SUV			25000	6
Toyota	SUV			30000 	4
VW		Sedan		25000	9
VW		Sedan		30000	8
VW		SUV			25000	9
VW		SUV			30000	7
;
title ***Conjoint Analysis on cars Data***;
proc print data = Cars;
run;
proc transreg data = Cars  utilities;
model identity(Rating) = class (Brand BodyType Price / zero = sum);
run;
