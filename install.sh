#!/bin/sh

ln -sf ~/dots/.profile ~
ln -sf ~/dots/.inputrc ~

[[ $OSTYPE == "darwin"* ]] && ln -sf ~/dots/.zshrc ~ || ln -sf ~/dots/.bashrc ~

