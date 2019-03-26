#!/bin/bash

if [ ! -d '/ghost-data/content' ]
then
  rsync -avxHAX --no-t --progress $HOME/ghost-install/content /ghost-data/
fi

if [ ! -d '/ghost-data/versions' ]
then
  rsync -avxHAX --no-t --progress $HOME/ghost-install/versions /ghost-data/
fi

if [ ! -d '/ghost-data/current' ]
then
  ln -s /ghost-data/versions/2.* /ghost-data/current
fi
