#!/usr/bin/sh

#================================
#
# Replace all files in current directory.
#
# *Before Replace
#  hogehoge
#  hugahuga
#
#   ||
#   vv
#
# *After Replace
#  ===filename===
#  hogehoge hugahuga
#
#================================
for file in `ls`; do echo "==="$file"===="; perl -pe 's/\n/ /g' $file; echo ''; done
