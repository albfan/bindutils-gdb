#!/bin/sh

gcc sighandler.c -g -o sighandler -rdynamic

./sighandler
