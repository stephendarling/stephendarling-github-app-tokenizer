#!/bin/bash

echo "workdir workspace ="
ls -la
echo "github workspace = "
ls -la $GITHUB_WORKSPACE

echo "executing python"
python token_generator.py