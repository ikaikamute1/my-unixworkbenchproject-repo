#!/usr/bin/env bash
#File:  number_of_files.sh

function number_of_files {

filenumb=$(pwd | ls | wc -l)

echo $filenumb

}

