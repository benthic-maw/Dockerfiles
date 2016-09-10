#!/bin/bash
docker run -d --name="calibre" -e EDGE="0" -e WIDTH="1280" -e HEIGHT="720" -e LIBRARYINTERNALPATH=/config/Library -v `pwd`/config:/config:rw -p 3389:3389 -p 8080:8080 -p 8081:8081 benthicmaw/calibre
