#!/bin/bash

# TODO: Remove this file since it's from the tutorial.

ADD_RESULT=$(("${PARAM_NUMA}" + "${PARAM_NUMB}"))
echo $ADD_RESULT
touch /tmp/ADD_RESULT.txt
echo $ADD_RESULT > /tmp/ADD_RESULT.txt
