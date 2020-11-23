#!/bin/bash

cat access.log|awk '{if ($4=="[05/Oct/2020:03:45:05")print $9 " " $10}'|sort |head -4
