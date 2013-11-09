#!/bin/sh

# Strips out lines starting with a pound symbol (shell comment)
sed '/^#/d' tagfile.comments > tagfile
