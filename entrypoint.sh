#!/bin/bash

echo "workdir workspace ="
ls -la
echo "github workspace = "
ls -la $GITHUB_WORKSPACE

echo "executing python"
python /usr/bin/github_token_generator.py $1 $2