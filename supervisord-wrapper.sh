#!/bin/bash

if [ ! -f /opt/DCEM/DCEM_HOME/x_HazelcastClusterConfig.xml ]
then
  echo "Configuration not found - starting setup script"
  cd /opt/DCEM/sh && ./runSetup.sh
else
  echo "Found configuration - launching application"
  cd /opt/DCEM/sh && ./runDcemApplication.sh
fi
