#!/bin/bash

#
# Test the JMeter Docker image using a trivial test plan.
# Example for using User Defined Variables with JMeter
# These will be substituted in JMX test script
# 

export THREADS="20"
export RAMPUP="20"
export DURATION="240"
export SCRIPT="test/JMeterDocker_Toolbox.jmx"
export JTL="test/JMeterDocker_Toolbox.jtl"
export LOG="test/JMeterDocker_Toolbox.log"

rm -f ${JTL} ${LOG}

./run.sh \
	-n -t ${SCRIPT} \
	-l ${JTL} \
	-j ${LOG} \
	-Jthreads=${THREADS} \
	-Jrampup=${RAMPUP} \
	-Jduration=${DURATION}