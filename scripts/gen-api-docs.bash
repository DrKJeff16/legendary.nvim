#!/usr/bin/env bash

lemmy-help -fact \
  ./lua/legendary/init.lua \
  ./lua/legendary/filters.lua \
  ./lua/legendary/toolbox.lua \
  ./lua/legendary/ui/format.lua \
  ./lua/legendary/extensions/init.lua >| doc/legendary-api.txt

echo -e "$(sed 's/^[ \t]*//;s/[ \t]*$//' < ./doc/legendary-api.txt)" >| doc/legendary-api.txt

exit 0
