#!/usr/bin/env bash
set -euo pipefail

hr () {
  echo
  echo ............................................................
  echo
}

_x () {
  ( set -x ; "$@" )
  hr
}


_x cat /etc/os-release

_x ssh -V

for n in $(ssh -Q help)
do
  _x ssh -Q "$n"
done

_x ssh -G example@example.com

_x sshd -T
