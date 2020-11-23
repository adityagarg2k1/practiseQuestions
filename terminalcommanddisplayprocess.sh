#!/bin/bash

ps | awk '{print $1"   "$2"    "$8}'
