#!/bin/bash

cat access.log | awk '{print $11}' | sort | uniq -c | sort -rn | head -4
