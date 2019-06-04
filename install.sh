#!/usr/bin/env bash
# Convenience script to copy config files to user's homedir

tools=$(find . -type d -d 1 -not -path "*/\.*" -print | cut -c3-)
for t in $tools
do
   echo "Installing $t configs"
   ( cd $t && ls | xargs -I '{}' cp -r ./'{}' ~/.'{}' )
done
echo "Done"
