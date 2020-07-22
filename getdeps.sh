#!/bin/bash
git clone https://github.com/jaagr/polybar.git
pushd polybar && git submodule update --init --recursive && popd
