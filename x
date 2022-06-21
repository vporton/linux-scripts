#!/bin/bash

cmd="$1"
if ! { which "$cmd" > /dev/null; }; then
    echo "x: $cmd not found."
else
    "$@" >/dev/null 2>&1 &
    disown
fi
