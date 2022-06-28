#!/usr/bin/awk -f 

BEGIN 	{   interested="false" ; whichone=0 }

		{
			if ($1 ~ "Capítulo")   
			{		interested = "true" ;
					whichone+=1;
				#	outfile = substr($2, 1, length($2) - 2) 
					outfile = "ejercicio."whichone 
			}
			else if ($1 ~ "hastaaqui")  
				interested = "false" 
			else
				finalif
		}
		{	if ( interested == "true" )
			print $0 > outfile
		}
#interested  { print $0 }

#run in cli with $ awk -f thisawkfile.awk inputfile
