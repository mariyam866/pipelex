#!/bin/bash

UV_VERSION=$(awk '/^\[tool.uv\]/{f=1;next} f==1&&/^version/{print $3;exit}' pyproject.toml | tr -d '"')
if [ -z "$UV_VERSION" ]; then
  echo "Error: UV version not found in pyproject.toml"
  exit 1
fi
echo "UV_VERSION=$UV_VERSION" >> $GITHUB_ENV 