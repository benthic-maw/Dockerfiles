#!/bin/bash
docker run -t --name="dfterm2" -p 8000:8000 -v `pwd`/config:/config -v `pwd`/games:/games benthicmaw/dfterm2
docker exec dfterm2 dfterm2_configure --conffile /config/dfterm2.conf --adduser admin password admin
