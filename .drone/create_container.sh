#!/bin/bash
LAST_COMMIT=$(git log -n 1 --pretty=format:%h  -- package.json)

if [ -z "$LAST_COMMIT" ]; then
  LAST_COMMIT="default"
fi

echo $LAST_COMMIT