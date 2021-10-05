data WORK.IMPORT;
	length Race_Label $ 10;
	set WORK.IMPORT;

	select (race);
		when ('W') Race_Label='White';
		when ('B') Race_Label='Black';
		when ('N') Race_Label='Native';
		when ('A') Race_Label='Asian';
		when ('H') Race_Label='Hispanic';
		when ('O') Race_Label='Other';
		otherwise Race_Label=race;
	end;
run;

data WORK.IMPORT;
	length Race_Coded $ 10;
	set WORK.IMPORT;

	select (race);
		when ('W') Race_Coded='0';
		when ('H') Race_Coded='0';
		when ('O') Race_Coded='0';
		when ('B') Race_Coded='1';
		when ('N') Race_Coded='1';
		when ('A') Race_Coded='1';
		otherwise Race_Coded=race;
	end;
run;