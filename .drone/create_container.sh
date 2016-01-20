#!/bin/bash
LAST_COMMIT=$(git log -n 1 --pretty=format:%h  -- package.json)

if [ -z "$LAST_COMMIT" ]; then
  LAST_COMMIT="default"
fi

echo "Last commit that changed 'package.json': $LAST_COMMIT"

# PACKAGES_VERSION=$LAST_COMMIT

NPM_PREV_VERSION=$(cat ../node_modules/.packages_version)

echo "Last build was: $NPM_PREV_VERSION. Next: $LAST_COMMIT"

echo $LAST_COMMIT > ../node_modules/.packages_version

