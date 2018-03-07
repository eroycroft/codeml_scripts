#!/bin/bash

# generates many codeml control files, where only the alignment, treefile and output differ, based on a user provided list
# please check the settings in the example control file before proceeding. As a default, the example provided with this script
# executes the alternative hypothesis (H1) of the branch-site model (trees must be labelled) 
# -s is a unix format plain-text list of alignments/tree names (not including the file suffix.phy/.tree)

shopt -s expand_aliases
source /etc/profile

TEMP=`getopt -o s: --long args: -- "$@"`
eval set -- "$TEMP"

while true ; do
    case "$1" in
        -s|--args)
            case "$2" in
                "") shift 2 ;;
                *) ARG_S=$2 ; shift 2 ;;
            esac ;;

        --) shift ; break ;;
        *) echo "Internal error!" ; exit 1 ;;
    esac
done


readarray -t S < $ARG_S 
for i in "${S[@]}"
do

sed "s/example.phy/$i.phy/g" example_H0.ctl > $i.phy.ctl &&

sed -i "s/example.out/$i.H1.out/g" $i.phy.ctl

sed -i "s/example.tree/$i.tree/g" $i.phy.ctl

done

echo "Control files written to current directory"


