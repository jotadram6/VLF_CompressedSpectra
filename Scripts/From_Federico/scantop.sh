if (("$#" != 2)); 
    then echo " illegal number of parameters ("$#"): ifilenum ffilenum"
else
 make compile_ROOT_Delphes
 typeset -i start=$1
 typeset -i end=$2

 for ((j=$start;j<=$end;j++))
        do
	      #ln -sf /DiscoB/temp/temp_cavila/singletop/results/singletop$j.txt OUTFILE.TXT
	      ln -sf singletop/results/singletop$j.txt OUTFILE.TXT
       ./scan /DiscoB/temp/temp_cavila/singletop/tag_1_delphes_events$j.root  
  done
fi
