#!/bin/bash

# sshの設定
unzip ~/Downloads/key\ pair-*.zip; mv key\ pair ~/.ssh
cd; chmod 700 .ssh
cd .ssh; chmod 600 config; chmod 700 secret; chmod 600 secret/*
