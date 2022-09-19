#!/bin/sh -l

regolith install-all
regolith unlock
regolith run $1
echo "$PWD"