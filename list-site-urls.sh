#!/usr/bin/env sh

# A script to get all the urls on a site,
# sorted alphabetically with duplicates removed.

# Usage: sh list-site-urls.sh <http-resource>

wget --spider -r --no-parent $1 2>&1 | grep '^--' | awk '{ print $3 }' > urls.m3u
sort urls.m3u | uniq - pages.m3u
rm urls.m3u
