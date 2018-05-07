for file in $(ls *.fasta)
do
while read line
do
    if [[ ${line:0:1} == '>' ]]
    then
        outfile=$file.${line#>}.fasta
        echo $line > $outfile
    else
        echo $line >> $outfile
    fi
done
done
