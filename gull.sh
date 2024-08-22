#!/usr/bin/env bash
# JETHI 05


PULL_DIC="$(ls -l /home/jeremia/development/)"
echo "$PULL_DIC"
for REPO in "$PULL_DIC"; do
    echo "$(ls -l $REPO)"
done
