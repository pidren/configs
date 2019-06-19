#!/usr/bin/env bash
# Convenience script to copy config files to user's homedir

tools=$(find . -depth -maxdepth 1 -type d -not -path '*/\.*' -print | cut -c3-)
for t in $tools
do
   echo "Installing $t configs"
   ( cd $t && ls | xargs -I '{}' sh -c "rm -rf ~/.'{}' && cp -r ./'{}' ~/.'{}'" )
done

sudo cp motd /etc/motd

echo "Done"
