#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

yarn run build:debug

catout() {
  cat out.txt
}
RUST_BACKTRACE=short yarn test 2>out.txt || true

catout
