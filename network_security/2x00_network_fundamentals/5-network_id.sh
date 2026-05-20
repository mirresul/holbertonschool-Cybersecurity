#!/bin/bash
IFS='.'; ip=($1); mask=($2); echo "$((ip[0] & mask[0])).$((ip[1] & mask[1])).$((ip[2] & mask[2])).$((ip[3] & mask[3]))"
