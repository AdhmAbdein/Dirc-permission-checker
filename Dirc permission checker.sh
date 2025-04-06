#!/bin/bash

dirc=($1 $2)

for i in "${dirc[@]}"
do
   perm=$(stat -c "%A" "$i")

   if [ "$perm" != "drwx------" ]
   then
      echo "dangerous..... this file have full permission "$perm" from all user"
   else
        echo " directory  "$i" is secure and permission is "$perm" "

   fi
done
