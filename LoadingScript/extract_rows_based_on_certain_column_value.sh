#!/bin/bash
usage()
{
cat << EOF
usage: $0 options
This script scans given input file for specified regex in the input column #   
OPTIONS:
   -h      Show usage instructions
   -f      input data file name
   -r      regular expression to match
   -j      column number
EOF
}   
# process inputs to the script
DATA_FILE=
COL_NUM=
REG_EX=
while getopts ":j:f:r:h" OPTION
do
     case $OPTION in
         f) DATA_FILE="$OPTARG" ;;
         r) REG_EX="$OPTARG" ;;
         j) COL_NUM="$OPTARG" ;;
         \?) usage
             exit 1 ;;
         h)
             usage
             exit 1 ;;
     esac
done   
if [[ -z $DATA_FILE ]] || [[ -z $COL_NUM ]] || [[ -z $REG_EX ]]
then
     usage
     exit 1
fi

awk -v J=${COL_NUM} -v R="${REG_EX}" '{if (match($J, R)) print $0;}' "${DATA_FILE}"

