#!/bin/bash

 cat access.log | awk '{print $1}' | sort | uniq -c | sort -nr | tail -10
