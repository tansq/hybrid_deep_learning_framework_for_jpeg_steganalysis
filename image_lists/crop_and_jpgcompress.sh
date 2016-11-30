#!/bin/bash

IMAGE_LIST=./basic5000k.list

FALL_WHOLE=../fall11_whole/
TARGET_IMAGE_DIR=./basic5000k/cover/

echo $TARGET_IMAGE_DIR

cat $IMAGE_LIST | while read line
do 
   target=${line/JPEG/jpg}                                 
   if [ -e "${TARGET_IMAGE_DIR}""$target" ]                                                                          
   then                                                              
       echo "${line} exits!"                                                
   else                                                                                   
       convert ${FALL_WHOLE}$line -format jpg -quality 75 -gravity NorthWest -crop 256x256+0+0 -colorspace gray ${TARGET_IMAGE_DIR}$target      
       echo "${target} is conveted!"                  
   fi                                  
done
 
