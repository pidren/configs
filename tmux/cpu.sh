#!/usr/bin/env bash
top -l 1 | head -4 | tail -1 | awk '{printf "%3d%%\n",$3}'
