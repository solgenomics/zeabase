# ~/code/code_bash_shell/Partition_Pedigree_Into_Line_Tester3.sh single_trial_EE-SC445-1-1_rep1_sorted.csv
# ~/code/code_bash_shell/Partition_Pedigree_Into_Line_Tester3.sh unique_pedigree.txt

while read line; do

trial_name=`echo "$line" | cut -f5`
pedigree=`echo "$line" |cut -f14`

Pedi_line=`echo "$line" |cut -f59`
Pedi_tester=`echo "$line" |cut -f60`

trial_ped="$trial_name"-"unknowline"
trial_tester="$trial_name"-"unknowtester"
#echo "trial"

#pedigree=`echo "$line" |cut -f1`

if echo "$pedigree" | grep -qi '('
then
    #echo "$pedigree"
    c=(`echo "$pedigree" | grep -b -o \( |cut -d":" -f1`)
    nc=`echo ${c[0]}`

#    echo "$nc"

    d=(`echo "$pedigree" | grep -b -o \) |cut -d":" -f1`)
    nd=`expr ${#d[@]}-1`
    ndd=`echo ${d[nd]}`

#    echo "$ndd"

    if echo "$pedigree" | grep -qi '//'
    then
        a=(`echo "$pedigree" |grep -b -o // |cut -d":" -f1`)
        na=`expr ${#a[@]}-1`
        naa=`echo ${a[$na]}`
#        echo $naa
        naaa=$(($naa+3))
#        echo $naaa
          if [[ $naa -ne 0 ]] && [[ $naa -gt $nc && $naa -lt $ndd ]]
          then
	      if echo "$pedigree" | grep -qi '/'
	      then
	          b=(`echo "$pedigree" | grep -b -o / |cut -d":" -f1`)
	          nb=`expr ${#b[@]}-1`
	          nbb=`echo ${b[$nb]}`
#	          echo $nbb
	          nbbb=$(($nbb+2))
#	          echo $nbbb
	          if [[ $nbb -ne 0 ]] && [[ $nbb -gt $nc && $nbb -lt $ndd ]]
                  then 


                      	if [ "$pedigreepart1" != "$Pedi_line"  ]
			    then
			    pedigreepart1="$Pedi_line"
			fi          
			#fi

			if [ "$pedigreepart2" != "$Pedi_tester" ]
			    then
			    pedigreepart2="$Pedi_tester"
			fi  

 	              echo -e "$pedigreepart1\t$pedigreepart2"




		     # echo -e "$pedigree\t$trial_tester"
                  else 
                      pedigreepart1=`echo "$pedigree" | cut -c1-$nbb`
 	              pedigreepart2=`echo "$pedigree" | cut -c$nbbb-`


                      	if [ "$pedigreepart1" != "$Pedi_line"  ]
			    then
			    pedigreepart1="$Pedi_line"
			fi          
			#fi

			if [ "$pedigreepart2" != "$Pedi_tester" ]
			    then
			    pedigreepart2="$Pedi_tester"
			fi  

 	              echo -e "$pedigreepart1\t$pedigreepart2"
 	          fi
              else  
                  echo -e "$pedigree\$trial_tester"
              fi
          else
 	      pedigreepart1=`echo "$pedigree" | cut -c1-$naa`
 	      pedigreepart2=`echo "$pedigree" | cut -c$naaa-`
 	     
              
	      	if [ "$pedigreepart1" != "$Pedi_line"  ]
		   then
		   pedigreepart1="$Pedi_line"
		fi          
			#fi

		if [ "$pedigreepart2" != "$Pedi_tester" ]
		   then
		   pedigreepart2="$Pedi_tester"
		fi  

	        echo -e "$pedigreepart1\t$pedigreepart2"

        fi
    else
	if echo "$pedigree" | grep -qi '/'
	then
	    b=(`echo "$pedigree" | grep -b -o / |cut -d":" -f1`)
	    
	    mb=`echo ${b[0]}`
            mbb=$(($mb+2)) 


	    nb=`expr ${#b[@]}-1`
	    nbb=`echo ${b[$nb]}`
#	    echo $nbb
	    nbbb=$(($nbb+2))
#	    echo $nbbb
	        if [[ $nbb -ne 0 ]] && [[ $nbb -gt $nc && $nbb -lt $ndd ]]
                then
                     if [[ $mb -lt $nc ]]
                     then
			 pedigreepart1=`echo "$pedigree" | cut -c1-$mb`
 	                 pedigreepart2=`echo "$pedigree" | cut -c$mbb-`
 	                # echo -e "$pedigreepart1\t$pedigreepart2"
			 echo -e "$pedigreepart2\t$pedigreepart1"
                     else
			echo -e "$pedigree\t$trial_tester"
                     fi
                else 
                     pedigreepart1=`echo "$pedigree" | cut -c1-$nbb`
 	             pedigreepart2=`echo "$pedigree" | cut -c$nbbb-`
 	             echo -e "$pedigreepart1\t$pedigreepart2"
 	        fi
        else


             	if [ "$pedigreepart1" != "$Pedi_line"  ]
		     then
		     pedigreepart1="$Pedi_line"
	        fi          
			#fi

		if [ "$pedigreepart2" != "$Pedi_tester" ]
		     then
		     pedigreepart2="$Pedi_tester"
		fi  

            #echo -e "$pedigree\t$trial_tester"

              echo -e "$pedigreepart1\t$pedigreepart2"
 
	fi
    fi

else
    if echo "$pedigree" | grep -qi '//'
    then
	a=(`echo "$pedigree" |grep -b -o // |cut -d":" -f1`)
	na=`expr ${#a[@]}-1`
	naa=`echo ${a[$na]}` #13
	#echo $naa

		if echo "$pedigree" | grep -qi '/'
		then
		    b=(`echo "$pedigree" | grep -b -o / |cut -d":" -f1`)
		    nb=`expr ${#b[@]}-1`
		    nbb=`echo ${b[nb]}` #14
                    mb=`echo ${b[0]}` #6
                    naaa=`expr "$naa"+1`
                    
		    if [[ $nbb -eq $naaa ]]
		    then
                    #echo $nbb
		    pedigreepart1=`echo "$pedigree" | cut -c1-$naa`
		    nbbb=$(($nbb+2))
	            #echo $nbbb
	            pedigreepart2=`echo "$pedigree" | cut -c$nbbb-`

			if [ "$pedigreepart1" != "$Pedi_line"  ]
			    then
			    pedigreepart1="$Pedi_line"
			fi          
			#fi

			if [ "$pedigreepart2" != "$Pedi_tester" ]
			    then
			    pedigreepart2="$Pedi_tester"
			fi
			#fi

			echo -e "$pedigreepart1\t$pedigreepart2"





#	            echo -e "$pedigreepart2\t$pedigreepart1"




                    else
			pedigreepart1=`echo "$pedigree" | cut -c1-$naa`
			naaa=$(($naa+3))
#	#echo $naaa

			pedigreepart2=`echo "$pedigree" | cut -c$naaa-`

			if [ "$pedigreepart1" != "$Pedi_line"  ]
			    then
			    pedigreepart1="$Pedi_line"
			fi          
			#fi

			if [ "$pedigreepart2" != "$Pedi_tester" ]
			    then
			    pedigreepart2="$Pedi_tester"
			fi
			#fi

			echo -e "$pedigreepart1\t$pedigreepart2"
		    fi
		fi

#	else
#	    echo -e "$pedigree\t$trial_tester"

     else
	if echo "$pedigree" | grep -qi '/'
	then
	    b=(`echo "$pedigree" | grep -b -o / |cut -d":" -f1`)
	    nb=`expr ${#b[@]}-1`
	    nbb=`echo ${b[nb]}`
	    #echo $nbb
	    pedigreepart1=`echo "$pedigree" | cut -c1-$nbb`
	    nbbb=$(($nbb+2))
	    #echo $nbbb
	    pedigreepart2=`echo "$pedigree" | cut -c$nbbb-`
  
             	if [ "$pedigreepart1" != "$Pedi_line"  ]
		    then
		       pedigreepart1="$Pedi_line"
		fi          
			#fi

		if [ "$pedigreepart2" != "$Pedi_tester" ]
		    then
		      pedigreepart2="$Pedi_tester"
		fi
			#fi
	    echo -e "$pedigreepart1\t$pedigreepart2"

	else
	   # echo -e "$pedigree\t$trial_tester"


	   # echo -e "$trial_ped\t$trial_tester"
	    echo -e "$Pedi_line\t$Pedi_tester"
	fi
    fi
fi

#if !(echo "$pedigree" | grep -qi -e '//' -e '/' -e '(' -e ')')

#echo -e "\n"

done < $1