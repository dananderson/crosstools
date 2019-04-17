#!/usr/bin/env bash

export PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )/../bin:$PATH"

rm -rf node_modules package-lock.json yarn.lock

cross rpi yarn --force
