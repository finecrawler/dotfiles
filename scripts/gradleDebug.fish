#!/usr/local/bin/fish
set -x GRADLE_OPTS "-Xmx1024M -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=512M -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"