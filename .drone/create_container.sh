#!/bin/bash
PACKAGES_VERSION_FILE="node_modules/.packages_version"

LAST_COMMIT=$(git log -n 1 --pretty=format:%h  -- package.json)

if [ -z "$LAST_COMMIT" ]; then
  LAST_COMMIT="default"
fi

echo "Last commit that changed 'package.json': $LAST_COMMIT"

# PACKAGES_VERSION=$LAST_COMMIT

if [[ ! -f $PACKAGES_VERSION_FILE ]]; then
  NPM_PREV_VERSION=0
else
  NPM_PREV_VERSION=`cat $PACKAGES_VERSION_FILE`
fi


echo "Last build was: $NPM_PREV_VERSION. Next: $LAST_COMMIT"

echo $LAST_COMMIT > $PACKAGES_VERSION_FILE

