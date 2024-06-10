#!/usr/bin/env bash
set -euo pipefail

hr () { echo ............................................................ ; }

hr

cat /etc/os-release

hr

ssh -V

hr

ssh -Q help

hr
