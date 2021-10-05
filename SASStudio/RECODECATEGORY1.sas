data WORK.IMPORT;
	length Armed_Category $ 50;
	set WORK.IMPORT;

	if armed='unarmed' then
		Armed_Category='Unarmed';

	if armed='toy weapon' then
		Armed_Category='Toy Weapon';

	if armed='undetermined' or armed='unknown weapon'  then
		Armed_Category='Undetermined';
	
	
	if armed='claimed to be armed' then
		Armed_Category='False Claim';

	if armed='air conditioner' or armed='barstool' or armed='beer bottle' or 
		armed='binoculars'or armed='bottle' or armed='chain' or armed='chair'or 
		armed='fireworks' or armed='flashlight' or armed='garden tool' or 
		armed='grenade' or armed='incendiary device' or armed='metal object' or 
		armed='microphone'or armed='pepper spray' or armed='Taser' or 
		armed='tire iron' or armed='wasp spray' then
			Armed_Category='Other Weapon';

	if armed='Airsoft pistol' or armed='air pistol' or armed='BB gun and vehicle' or 
		armed='BB gun' or armed='bean-bag gun' or armed='gun' or 
		armed='guns and explosives' or armed='gun and vehicle'or armed='gun and knife' or 
		armed='gun and car'or armed='gun and machete' or armed='gun and sword' or 
		armed='nail gun' or armed='pellet gun' then
			Armed_Category='Gun';

	if armed='baseball bat' or armed='baseball bat and bottle' or armed='baseball bat and fireplace poker' or
	armed='baseball bat and knife' or armed='blunt object' or armed='brick' or 
		armed='crowbar' or armed='hammer' or armed='hand torch' or 
		armed='metal hand tool' or armed='oar'or armed='piece of wood' or 
		armed='rock'or armed='screwdriver' or armed='shovel' or armed='stapler' or 
		armed='wrench' then
			Armed_Category='Blunt Weapon';

	if armed='baton' or armed='flagpole' or armed='metal pipe' or armed='pipe' or 
		armed='metal stick' or armed='metal pole' or armed='pole' or 
		armed='pole and knife'or armed='walking stick' then
			Armed_Category='Rods';

	if armed='car, knife and mace' or armed='motorcycle'or armed='vehicle'or 
		armed='vehicle and gun'or armed='vehicle and machete' then
			Armed_Category='Vehicle';

	if armed='ax' or armed='bayonet' or armed='bow and arrow' or 
		armed='box cutter' or armed='carjack' or armed='chainsaw' or 
		armed='chain saw' or armed='cordless drill'or armed='crossbow' or 
		armed='glass shard'or armed='hatchet' or armed='hatchet and gun' or 
		armed='ice pick' or armed='knife' or armed='knife and vehicle' or 
		armed='lawn mower blade' or armed='machete' or armed='machete and gun' or 
		armed='meat cleaver' or armed='metal rake' or armed='pen' or armed='pick-axe' 
		or armed='pitchfork' or armed='railroad spikes' or armed='samurai sword' or 
		armed='scissors'or armed='sharp object' or armed='spear' or 
		armed='straight edge razor' or armed='sword' then
			Armed_Category='Sharp Weapon';
