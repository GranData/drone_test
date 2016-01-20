#!/bin/bash
LAST_COMMIT=$(git log -n 1 --pretty=format:%h  -- package.json)

if [ -z "$LAST_COMMIT" ]; then
  LAST_COMMIT="default"
fi

echo "Last commit that changed 'package.json': $LAST_COMMIT"

PACKAGES_VERSION=$LAST_COMMIT

