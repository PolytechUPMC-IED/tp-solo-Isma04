#! /bin/bash

repertoire=$1
`cd $1`
list=`ls`
for i in $list; do 
extension="${i##*.}"
  if $extension=tar.gz
  then tar xzvf $i.tar.gz 

#POur la question 3, il s'agit de l'option -L


