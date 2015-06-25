#~/code/code_bash_shell/BatchCopyOrMoveFiles.sh 380_exp_files.txt

while read line; do

f=`echo "$line"`
echo "$f"
cp "$f" ~/DataFromVahid/Data4EachTrialAfterQC/.

done < $1