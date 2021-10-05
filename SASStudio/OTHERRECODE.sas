data WORK.IMPORT;
length MannerofDeath $ 20;
set WORK.IMPORT;

select (manner_of_death);
when ('shot') MannerofDeath='Shot';
when ('shot and Tasered') MannerofDeath ='Shot and Tasered';
otherwise MannerofDeath = manner_of_death;
end;
run;



data WORK.IMPORT;
length threatlevel $ 20;
set WORK.IMPORT;

select (threat_level);
when ('other') threatlevel ='Other';
when ('attack') threatlevel ='Attack';
when ('undetermined') threatlevel ='Undetermined';
otherwise threatlevel = threat_level;
end;
run;

