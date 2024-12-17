#!/bin/bash

source_dir=/example/opt/dir


file_count=$(find "$source_dir" -type f | wc -l)


echo "Number of files in $source_dir: $file_count"