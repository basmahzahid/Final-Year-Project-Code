data WORK.IMPORT;
	length Region $ 20;
	set WORK.IMPORT;

	if state='IA' or state='IL' or state='IN' or state='KS' or state='MI' or 
		state='MN' or state='MO' or state='ND' or state='NE' or state='OH' or 
		state='SD' or state='WI' then
			Region='Midwest';

	if state='CT' or state='MA' or state='ME' or state='NH' or state='NJ' or 
		state='NY' or state='PA' or state='RI' or state='VT' 
		then Region='Northeast';
		
	if state='AL' or state='AR' or state='DE' or state='FL' or state='GA' or 
		state='KY' or state='LA' or state='MD' or state='MS' or state='NC' or 
		state='SC' or state='TN' or state='VA' or state='WV' then
			Region='Southeast';
			
	if state='AZ' or state='NM' or state='OK' or state='TX' then
			Region='Southwest';			
	
	if state='AK' or state='CA' or state='CO' or state='DC' or state='HI' or 
		state='ID' or state='MT' or state='NV' or state='OR' or state='UT' or 
		state='WY' then Region='West';
	
	
