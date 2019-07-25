#!/bin/bash

file=$((`curl -s "http://legacy.handbook.unsw.edu.au/vbook2018/brCoursesByAtoZ.jsp?StudyLevel=Undergraduate&descr=O" | grep "<TD"`| grep 'OPTM'))
echo $file
