#! /bin/bash
pushd src/ && gitbook build && popd && rsync -a src/_book/* ./
