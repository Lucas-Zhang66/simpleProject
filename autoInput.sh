#!/bin/bash
#author: Lucas

read -p "Input ip Address: " ip
int=0
while(( $int<=255 ))
do
  echo "ip "$int" localip" $ip | awk 'BEGIN{FS=OFS="."}{$NF+='$int';print}' >> file.txt
  let "int++"
done