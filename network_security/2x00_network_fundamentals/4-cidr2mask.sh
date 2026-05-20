#!/bin/bash
b=$(printf "%0${1}d" | tr '0' '1'; printf "%0$((32-$1))d"); printf "%d.%d.%d.%d\n" $(bc <<< "ibase=2; ${b:0:8}") $(bc <<< "ibase=2; ${b:8:8}") $(bc <<< "ibase=2; ${b:16:8}") $(bc <<< "ibase=2; ${b:24:8}")
