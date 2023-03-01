#!/bin/bash

# Command to execute
execute_cmd=mv

path="/home/featurebase-docs"

# Files inside actual_dir has to be moved
actual_dir="$path/help-on-help"

# This is the directory where files will be moved and kept
backup_dir="$path/assets/images/sql-guide"

# Move each file from actual_dir to backup_dir

echo "Moving files to backup_dir"

for f in $(find $actual_dir -type f -name *.xlsx); ## used find here, with semicolon
do
 echo $f
 $execute_cmd $f $backup_dir
done

echo "Moving of files completed"
